local function memoria()
   local estagio = 1
   local historico = {} -- salva {estagio: {"pos": X, "num": Y}}

   print("Digite 'sair' para encerrar.")

   while true do
      io.write('\n[Estágio ' .. estagio .. '] O display mostra: ')
      local display = io.read()

      if display:lower() == 'sair' then
         break
      end

      display = tonumber(display)

      local pos = nil
      local num = nil

      if estagio == 1 then
         if display == 1 or display == 2 then
            pos = 2
            print("Pressione o botão na posição 2")
            io.write("Qual o número desse botão? ")
            num = tonumber(io.read())
         elseif display == 3 then
            pos = 3
            print("Pressione o botão na posição 3")
            io.write("Qual o número desse botão? ")
            num = tonumber(io.read())
         elseif display == 4 then
            pos = 4
            print("Pressione o botão na posição 4")
            io.write("Qual o número desse botão? ")
            num = tonumber(io.read())
         end
         historico[1] = { ["pos"] = pos, ["num"] = num }
      elseif estagio == 2 then
         if display == 1 then
            num = 4
            print("Pressione o botão com o número 4")
            io.write("Qual a posição desse botão? ")
            pos = tonumber(io.read())
         elseif display == 2 then
            pos = historico[1]["pos"]
            print("Pressione o botão na posição " .. pos)
            io.write("Qual o número desse botão? ")
            num = tonumber(io.read())
         elseif display == 3 then
            pos = 1
            print("Pressione o botão na posição 1")
            io.write("Qual o número desse botão? ")
            num = tonumber(io.read())
         elseif display == 4 then
            pos = historico[1]["pos"]
            print("Pressione o botão na posição " .. pos)
            io.write("Qual o número desse botão? ")
            num = tonumber(io.read())
         end
         historico[2] = { ["pos"] = pos, ["num"] = num }
      elseif estagio == 3 then
         if display == 1 then
            num = historico[2]["num"]
            print("Pressione o botão com o número " .. num)
            io.write("Qual a posição desse botão? ")
            pos = tonumber(io.read())
         elseif display == 2 then
            num = historico[1]["num"]
            print("Pressione o botão com o número " .. num)
            io.write("Qual a posição desse botão? ")
            pos = tonumber(io.read())
         elseif display == 3 then
            pos = 3
            print("Pressione o botão na posição 3")
            io.write("Qual o número desse botão? ")
            num = tonumber(io.read())
         elseif display == 4 then
            num = 4
            print("Pressione o botão com o número 4")
            io.write("Qual a posição desse botão? ")
            pos = tonumber(io.read())
         end
         historico[3] = { ["pos"] = pos, ["num"] = num }
      elseif estagio == 4 then
         if display == 1 then
            pos = historico[1]["pos"]
            print("Pressione o botão na posição " .. pos)
            io.write("Qual o número desse botão? ")
            num = tonumber(io.read())
         elseif display == 2 then
            pos = 1
            print("Pressione o botão na posição 1")
            io.write("Qual o número desse botão? ")
            num = tonumber(io.read())
         elseif display == 3 then
            pos = historico[2]["pos"]
            print("Pressione o botão na posição " .. pos)
            io.write("Qual o número desse botão? ")
            num = tonumber(io.read())
         elseif display == 4 then
            pos = historico[2]["pos"]
            print("Pressione o botão na posição " .. pos)
            io.write("Qual o número desse botão? ")
            num = tonumber(io.read())
         end
         historico[4] = { ["pos"] = pos, ["num"] = num }
      elseif estagio == 5 then
         if display == 1 then
            num = historico[1]["num"]
            print("Pressione o botão com o número " .. num)
         elseif display == 2 then
            num = historico[2]["num"]
            print("Pressione o botão com o número " .. num)
         elseif display == 3 then
            num = historico[4]["num"]
            print("Pressione o botão com o número " .. num)
         elseif display == 4 then
            num = historico[3]["num"]
            print("Pressione o botão com o número " .. num)
         end
      end

      estagio = estagio + 1
      if estagio > 5 then
         print("\nMódulo de memória completo!")
         break
      end
   end
end

return memoria
