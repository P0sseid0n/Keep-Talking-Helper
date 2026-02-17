local function fios_sequenciados()
   local vermelho = 0
   local azul = 0
   local preto = 0

   local aparicoes = {
      ['vermelho'] = {
         'C',
         'B',
         'A',
         'A | C',
         'B',
         'A | C',
         'A | B | C',
         'A | B',
         'B'
      },
      ['azul'] = {
         'B',
         'A | C',
         'B',
         'A',
         'B',
         'B | C',
         'C',
         'A | C',
         'A'
      },
      ['preto'] = {
         'A | B | C',
         'A | C',
         'B',
         'A | C',
         'B',
         'B | C',
         'A | B',
         'C',
         'C'
      }
   }

   while true do
      print('Qual a cor do fio ?')
      io.write('(V)ermelho, (A)zul, (P)reto: ')
      local cor = io.read()

      if cor:lower() == 'v' then
         vermelho = vermelho + 1
         print(vermelho .. 'º fio vermelho')
         print(aparicoes['vermelho'][vermelho])
      elseif cor:lower() == 'a' then
         azul = azul + 1
         print(azul .. 'º fio azul')
         print(aparicoes['azul'][azul])
      elseif cor:lower() == 'p' then
         preto = preto + 1
         print(preto .. 'º fio preto')
         print(aparicoes['preto'][preto])
      elseif cor:lower() == 'sair' then
         break
      else
         print('Cor invalida.')
      end

      print()
   end
end

return fios_sequenciados
