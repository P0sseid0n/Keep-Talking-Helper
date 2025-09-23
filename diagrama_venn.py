def diagrama_venn():
    print('Possibilidades do fio:')
    print('(V)ermelho | (A)zul | (L)ed | (E)strela')
    print("Digite 'sair' para encerrar.")

    while True:
        fio = input('Como é o fio: ')
        if fio.lower() == 'sair':
            break

        v = 'v' in fio.lower()   # vermelho
        a = 'a' in fio.lower()   # azul
        l = 'l' in fio.lower()   # led
        e = 'e' in fio.lower()   # estrela

        if not v and not a and not l and not e:
            print("Corte o fio")  # branco simples
        elif v and not a and not l and not e:
            print("Corte o fio se o último dígito do número de série é par")
        elif not v and a and not l and not e:
            print("Corte o fio se o último dígito do número de série é par")
        elif v and a and not l and not e:
            print("Corte o fio se o último dígito do número de série é par")

        elif not v and not a and not l and e:
            print("Corte o fio")
        elif v and not a and not l and e:
            print("Corte o fio")  # vermelho + estrela
        elif not v and a and not l and e:
            print("Não corte o fio")
        elif v and a and not l and e:
            print("Corte se houver porta paralela")

        elif not v and not a and l and not e:
            print("Não corte o fio")
        elif v and not a and l and not e:
            print("Corte se tiver 2+ baterias")
        elif not v and a and l and not e:
            print("Corte se houver porta paralela")
        elif v and a and l and not e:
            print("Corte o fio se o último dígito do número de série é par")

        elif not v and not a and l and e:
            print("Corte se tiver 2+ baterias")
        elif v and not a and l and e:
            print("Corte se tiver 2+ baterias")
        elif not v and a and l and e:
            print("Corte se houver porta paralela")
        elif v and a and l and e:
            print("Não corte o fio")  # todas as letras: VALE

        else:
            print("Entrada inválida. Use combinações de V, A, L, E.")
