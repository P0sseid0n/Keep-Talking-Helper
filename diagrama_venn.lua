function diagrama_venn()
   print('Possibilidades do fio:')
   print('(V)ermelho | (A)zul | (L)ed | (E)strela')
   print("Digite 'sair' para encerrar.")

   while true do
      io.write('Como é o fio: ')
      local fio = io.read()
      if fio:lower() == 'sair' then
         break
      end

      local v = fio:lower():find("v", 1, true) ~= nil -- vermelho
      local a = fio:lower():find("a", 1, true) ~= nil -- azul
      local l = fio:lower():find("l", 1, true) ~= nil -- led
      local e = fio:lower():find("e", 1, true) ~= nil -- estrela

      if not v and not a and not l and not e then
         print("Corte o fio") -- branco simples
      elseif v and not a and not l and not e then
         print("Corte o fio se o último dígito do número de série é par")
      elseif not v and a and not l and not e then
         print("Corte o fio se o último dígito do número de série é par")
      elseif v and a and not l and not e then
         print("Corte o fio se o último dígito do número de série é par")
      elseif not v and not a and not l and e then
         print("Corte o fio")
      elseif v and not a and not l and e then
         print("Corte o fio") -- vermelho + estrela
      elseif not v and a and not l and e then
         print("Não corte o fio")
      elseif v and a and not l and e then
         print("Corte se houver porta paralela")
      elseif not v and not a and l and not e then
         print("Não corte o fio")
      elseif v and not a and l and not e then
         print("Corte se tiver 2+ baterias")
      elseif not v and a and l and not e then
         print("Corte se houver porta paralela")
      elseif v and a and l and not e then
         print("Corte o fio se o último dígito do número de série é par")
      elseif not v and not a and l and e then
         print("Corte se tiver 2+ baterias")
      elseif v and not a and l and e then
         print("Corte se tiver 2+ baterias")
      elseif not v and a and l and e then
         print("Corte se houver porta paralela")
      elseif v and a and l and e then
         print("Não corte o fio") -- todas as letras: VALE
      else
         print("Entrada inválida. Use combinações de V, A, L, E.")
      end
   end
end

return diagrama_venn
