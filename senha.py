def senha():
    palavras = [
        "acesa", "ajuda", "amigo", "antes", "arcos",
        "baile", "balas", "bispo", "chefe", "cheio",
        "cinto", "cravo", "etapa", "etnia", "flora",
        "lazer", "legal", "lugar", "parte", "parto",
        "perto", "porta", "regra", "resto", "salve",
        "sente", "setor", "sexta", "tecla", "tinta",
        "torta", "touro", "trato", "valer", "veado"
    ]

    posicao = 1
    TAM = 5  # palavras de 5 letras

    print("Digite as letras possíveis de CADA POSIÇÃO (ex.: 'LDJSGU'). Digite 'sair' para encerrar.\n")

    while True:
        letras = input(f"Posição {posicao}: ").strip()
        if letras.lower() == 'sair':
            break

        # normaliza: minúsculas e sem espaços/duplicadas
        letras = ''.join(dict.fromkeys(letras.lower().replace(' ', '')))

        # filtra mantendo palavras cuja letra nessa posição esteja no conjunto informado
        palavras = [p for p in palavras if p[posicao - 1] in letras]

        if not palavras:
            print("Nenhuma palavra possível. Revise as letras dessa posição.\n")
            break

        print("\nPalavras possíveis:")
        for p in palavras:
            print(f" - {p}")
        print()

        # terminou?
        if len(palavras) == 1:
            print(f"Resposta: {palavras[0]}")
            break

        posicao += 1
        if posicao > TAM:
            # Já coletamos 5 posições; se ainda restaram múltiplas, há conflito nas letras
            print("Ainda há mais de uma opção após 5 posições. Revise alguma posição anterior.")
            break
