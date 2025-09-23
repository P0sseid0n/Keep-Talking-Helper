def fios_sequenciados():
    vermelho = 0
    azul = 0
    preto = 0

    aparicoes = {
        'vermelho': [
            'C',
            'B',
            'A',
            'A | C',
            'B',
            'A | C',
            'A | B | C',
            'A | B',
            'B'
        ],
        'azul': [
            'B',
            'A | C',
            'B',
            'A',
            'B',
            'B | C',
            'C',
            'A | C',
            'A'
        ],
        'preto': [
            'A | B | C',
            'A | C',
            'B',
            'A | C',
            'B',
            'B | C',
            'A | B',
            'C',
            'C'
        ]
    }

    while True:
        print('Qual a cor do fio ?')
        cor = input('(V)ermelho, (A)zul, (P)reto: ')

        if cor.lower() == 'v':
            vermelho += 1
            print(f'{vermelho}º fio vermelho')
            print(f'{aparicoes["vermelho"][vermelho -1]}')
        elif cor.lower() == 'a':
            azul += 1
            print(f'{azul}º fio azul')
            print(f'{aparicoes["azul"][azul -1]}')
        elif cor.lower() == 'p':
            preto += 1
            print(f'{preto}º fio preto')
            print(f'{aparicoes["preto"][preto -1]}')
        elif cor.lower() == 'sair':
            break
        else:
            print('Cor invalida.')

        print()