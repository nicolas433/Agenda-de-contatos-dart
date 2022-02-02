# Agenda-de-contatos-dart
# Avaliação 1 PDM

Data de Entrega: 24/12 <br />
Entrega via Google Classroom <br />
Pontuação: 10 pontos <br />
Pontuação máxima: 12 pontos <br />
Obs: Ganha 2 pontos extras se fizer um vídeo e compartilhar com a turma como <br />
fez o exercício. Eu irei colocar o vídeo após a data de entrega. <br />
Vocês vão me apresentar na minha mesa, senão apresentar fica com 5. <br />
Pode ser em dupla. <br />

1. Seu trabalho será fazer uma agenda de contatos utilizando a <br />
linguagem Dart. O analista já fez o trabalho difícil e disse como quer <br />
o sistema para você. As instruções estão abaixo: <br />
A classe Contato será abstrata e terá 3 atributos: <br />
- Nome
- Telefone
- Data em que o contato foi adicionado na agenda<br />

O sistema terá dois tipos de Contatos:<br />
1. Contato Profissional<br />
<br />
- Além dos atributos de contato terá também um atributo<br />
chamado empresa (empresa na qual o contato trabalha).<br />
<br />
2. Contato Pessoal<br />
- Além dos atributos de contato terá também um atributo<br />
Endereço.<br />
- O atributo Endereço será uma classe e conterá os seguintes<br />
campos: Rua, Número da Casa e Bairro.<br />
<br />
O sistema também terá uma classe que será a classe Agenda. A agenda<br />
possui uma lista de Contatos.<br />
As operações (métodos) de Agenda serão:<br />
● Adicionar contato: Esse método recebe um contato como<br />
parâmetro e o adiciona na lista de contatos.<br />
● Excluir contato: Esse método recebe um contato como<br />
parâmetro e o remove da lista de contatos.<br />
● Mostrar todos os contatos: Esse método percorre toda a lista<br />
de contatos e imprime o nome e telefone de todos os contatos<br />
da Agenda.<br />
● Pesquisar contato: Esse método é responsável por verificar<br />
se determinado contato já existe na agenda. Caso ele exista,<br />
imprima a mensagem “Contato existe na agenda!”. Caso<br />
contrário (ele não exista) imprima a mensagem “Contato não<br />
existe na Agenda”.<br />
<br />
No método principal faça o seguinte:<br />
● Cadastre pelo menos 4 contatos (2 pessoal, 2 profissional).<br />
● Exclua um dos contatos.<br />
● Imprima a nova lista com o contato excluído.<br />
● Pesquise por um contato que já exista.<br />
● Pesquisar por um contato que não exista no sistema.<br />