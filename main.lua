local fios_sequenciados = require('fios_sequenciados')
local memoria = require('memoria')
local diagrama_venn = require('diagrama_venn')
local senha = require('senha')

if package.config:sub(1, 1) == "\\" then
   os.execute("chcp 65001 > nul")
end

while true do
   ::start::

   local modules = {
      { name = 'Fios Sequenciados', func = fios_sequenciados },
      { name = 'Diagrama de Venn',  func = diagrama_venn },
      { name = 'Memória',           func = memoria },
      { name = 'Senha',             func = senha }
   }

   print('Modulos Disponiveis ===')
   for i, module in pairs(modules) do
      print(i .. ': ' .. module.name)
   end

   print()
   io.write('Modulo: ')
   local menu_typed = tonumber(io.read())

   if not menu_typed then
      print('Entrada invalida. Por favor, insira um numero.')
      goto start
   end

   if modules[menu_typed] then
      modules[menu_typed].func()
   else
      print('Modulo nao encontrado.')
   end
   print()
end
