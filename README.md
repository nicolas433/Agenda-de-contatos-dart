# Agenda-de-contatos-dart
# Avaliação 1 PDM

Data de Entrega: 24/12
Entrega via Google Classroom
Pontuação: 10 pontos
Pontuação máxima: 12 pontos
Obs: Ganha 2 pontos extras se fizer um vídeo e compartilhar com a turma como
fez o exercício. Eu irei colocar o vídeo após a data de entrega.
Vocês vão me apresentar na minha mesa, senão apresentar fica com 5.
Pode ser em dupla.

1. Seu trabalho será fazer uma agenda de contatos utilizando a
linguagem Dart. O analista já fez o trabalho difícil e disse como quer
o sistema para você. As instruções estão abaixo:
A classe Contato será abstrata e terá 3 atributos:
- Nome
- Telefone
- Data em que o contato foi adicionado na agenda

O sistema terá dois tipos de Contatos:
1. Contato Profissional

- Além dos atributos de contato terá também um atributo
chamado empresa (empresa na qual o contato trabalha).

2. Contato Pessoal
- Além dos atributos de contato terá também um atributo
Endereço.
- O atributo Endereço será uma classe e conterá os seguintes
campos: Rua, Número da Casa e Bairro.

O sistema também terá uma classe que será a classe Agenda. A agenda
possui uma lista de Contatos.
As operações (métodos) de Agenda serão:
● Adicionar contato: Esse método recebe um contato como
parâmetro e o adiciona na lista de contatos.
● Excluir contato: Esse método recebe um contato como
parâmetro e o remove da lista de contatos.
● Mostrar todos os contatos: Esse método percorre toda a lista
de contatos e imprime o nome e telefone de todos os contatos
da Agenda.
● Pesquisar contato: Esse método é responsável por verificar
se determinado contato já existe na agenda. Caso ele exista,
imprima a mensagem “Contato existe na agenda!”. Caso
contrário (ele não exista) imprima a mensagem “Contato não
existe na Agenda”.

No método principal faça o seguinte:
● Cadastre pelo menos 4 contatos (2 pessoal, 2 profissional).
● Exclua um dos contatos.
● Imprima a nova lista com o contato excluído.
● Pesquise por um contato que já exista.
● Pesquisar por um contato que não exista no sistema.