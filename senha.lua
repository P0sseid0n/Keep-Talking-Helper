local function senha()
   local palavras = {
      "acesa", "ajuda", "amigo", "antes", "arcos",
      "baile", "balas", "bispo", "chefe", "cheio",
      "cinto", "cravo", "etapa", "etnia", "flora",
      "lazer", "legal", "lugar", "parte", "parto",
      "perto", "porta", "regra", "resto", "salve",
      "sente", "setor", "sexta", "tecla", "tinta",
      "torta", "touro", "trato", "valer", "veado"
   }

   local posicao = 1
   local TAM = 5 -- palavras de 5 letras

   print("Digite as letras possíveis de CADA POSIÇÃO (ex.: 'LDJSGU'). Digite 'sair' para encerrar.\n")

   while true do
      io.write(string.format("Posição %d: ", posicao))
      local input_letras = io.read()

      if not input_letras or string.lower(input_letras) == "sair" then
         break
      end

      -- normaliza para minúsculas
      local letras = string.lower(input_letras)

      -- filtra mantendo palavras cuja letra nessa posição esteja no conjunto informado
      local novas_palavras = {}
      for _, p in ipairs(palavras) do
         local letra_atual = string.sub(p, posicao, posicao)

         -- verifica se a letra da palavra existe no input do usuário
         if string.find(letras, letra_atual, 1, true) then
            table.insert(novas_palavras, p)
         end
      end
      palavras = novas_palavras

      if #palavras == 0 then
         print("Nenhuma palavra possível. Revise as letras dessa posição.\n")
         break
      end

      print("\nPalavras possíveis:")
      for _, p in ipairs(palavras) do
         print(string.format(" - %s", p))
      end
      print() -- Linha em branco

      -- terminou? (# é o operador de tamanho em Lua)
      if #palavras == 1 then
         print(string.format("Resposta: %s", palavras[1]))
         break
      end

      posicao = posicao + 1
      if posicao > TAM then
         print("Ainda há mais de uma opção após 5 posições. Revise alguma posição anterior.")
         break
      end
   end
end

return senha
