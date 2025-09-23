from fios_sequenciados import fios_sequenciados
from memoria import memoria
from diagrama_venn import diagrama_venn
from senha import senha

while True:
    modules = list({
        'Fios Sequenciados': fios_sequenciados,
        'Diagrama de Venn': diagrama_venn,
        'Memória': memoria,
        'Senha': senha
    }.items())

    print('Modulos Disponiveis ===')
    for i, module in enumerate(modules):
        print(f'\t{i+1}: {module[0]}')
    print()

    menu_typed = input('Modulo: ')

    if not menu_typed.isdigit():
        print('Entrada invalida. Por favor, insira um numero.')
        continue

    menu_typed = (int(menu_typed) - 1)

    if menu_typed in range(len(modules)):
        print(modules[menu_typed][0])
        modules[menu_typed][1]()
    else:
        print('Modulo nao encontrado.')

    print()