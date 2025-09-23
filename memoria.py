def memoria():
    estagio = 1
    historico = {}  # salva {estagio: {"pos": X, "num": Y}}

    print("Digite 'sair' para encerrar.")

    while True:
        display = input(f"\n[Estágio {estagio}] O display mostra: ")

        if display.lower() == 'sair':
            break

        display = int(display)

        pos = None
        num = None

        if estagio == 1:
            if display in (1, 2):
                pos = 2
                print("Pressione o botão na posição 2")
                num = int(input("Qual o número desse botão? "))
            elif display == 3:
                pos = 3
                print("Pressione o botão na posição 3")
                num = int(input("Qual o número desse botão? "))
            elif display == 4:
                pos = 4
                print("Pressione o botão na posição 4")
                num = int(input("Qual o número desse botão? "))
            historico[1] = {"pos": pos, "num": num}

        elif estagio == 2:
            if display == 1:
                num = 4
                print("Pressione o botão com o número 4")
                pos = int(input("Qual a posição desse botão? "))
            elif display == 2:
                pos = historico[1]["pos"]
                print(f"Pressione o botão na posição {pos}")
                num = int(input("Qual o número desse botão? "))
            elif display == 3:
                pos = 1
                print("Pressione o botão na posição 1")
                num = int(input("Qual o número desse botão? "))
            elif display == 4:
                pos = historico[1]["pos"]
                print(f"Pressione o botão na posição {pos}")
                num = int(input("Qual o número desse botão? "))
            historico[2] = {"pos": pos, "num": num}

        elif estagio == 3:
            if display == 1:
                num = historico[2]["num"]
                print(f"Pressione o botão com o número {num}")
                pos = int(input("Qual a posição desse botão? "))
            elif display == 2:
                num = historico[1]["num"]
                print(f"Pressione o botão com o número {num}")
                pos = int(input("Qual a posição desse botão? "))
            elif display == 3:
                pos = 3
                print("Pressione o botão na posição 3")
                num = int(input("Qual o número desse botão? "))
            elif display == 4:
                num = 4
                print("Pressione o botão com o número 4")
                pos = int(input("Qual a posição desse botão? "))
            historico[3] = {"pos": pos, "num": num}

        elif estagio == 4:
            if display == 1:
                pos = historico[1]["pos"]
                print(f"Pressione o botão na posição {pos}")
                num = int(input("Qual o número desse botão? "))
            elif display == 2:
                pos = 1
                print("Pressione o botão na posição 1")
                num = int(input("Qual o número desse botão? "))
            elif display == 3:
                pos = historico[2]["pos"]
                print(f"Pressione o botão na posição {pos}")
                num = int(input("Qual o número desse botão? "))
            elif display == 4:
                pos = historico[2]["pos"]
                print(f"Pressione o botão na posição {pos}")
                num = int(input("Qual o número desse botão? "))
            historico[4] = {"pos": pos, "num": num}

        elif estagio == 5:
            if display == 1:
                num = historico[1]["num"]
                print(f"Pressione o botão com o número {num}")
            elif display == 2:
                num = historico[2]["num"]
                print(f"Pressione o botão com o número {num}")
            elif display == 3:
                num = historico[4]["num"]
                print(f"Pressione o botão com o número {num}")
            elif display == 4:
                num = historico[3]["num"]
                print(f"Pressione o botão com o número {num}")

        estagio += 1
        if estagio > 5:
            print("\nMódulo de memória completo!")
            break
