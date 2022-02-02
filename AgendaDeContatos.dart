import 'package:intl/intl.dart';

void main(List<String> arguments) {
  var agenda = Agenda();

  var endereco1 = Endereco('Rua blablabla', '1', 'Bairro blablabla');
  var endereco2 = Endereco('Rua blebleble', '2', 'Bairro blebleble');

  var adicionadoEm = DateFormat('dd/MM/yyyy').format(DateTime.now());

  var contato1 = ContatoPessoal('pessoa1', '465454564', adicionadoEm, endereco1);
  var contato2 = ContatoPessoal('pessoa2', '858456856', adicionadoEm, endereco2);
  var contato3 = ContatoProfissional('pessoa3', '565756754', adicionadoEm, 'Empresa1');
  var contato4 = ContatoProfissional('pessoa4', '857456747', adicionadoEm, 'Empresa2');

  agenda.adicionarContato(contato1);
  agenda.adicionarContato(contato2);
  agenda.adicionarContato(contato3);
  agenda.adicionarContato(contato4);

  agenda.deletarContato(contato2);

  agenda.mostrarTodosOsContatos();

  agenda.pesquisarContato(contato1);
  agenda.pesquisarContato(contato2);
}

abstract class Contato {
  String nome;
  String numero;
  String adicionadoEm;

  Contato(this.nome, this.numero, this.adicionadoEm);
}

class ContatoProfissional extends Contato {
  String empresa;

  ContatoProfissional(String nome, String numero, String adicionadoEm, this.empresa) : super(nome, numero, adicionadoEm);
}

class ContatoPessoal extends Contato {
  Endereco endereco;

  ContatoPessoal(String nome, String numero, String adicionadoEm, this.endereco) : super(nome, numero, adicionadoEm);
}

class Endereco {
  String rua;
  String numeroDaCasa;
  String bairro;

  Endereco(this.rua, this.numeroDaCasa, this.bairro);
}

class Agenda {
  List<ContatoPessoal> contatosPessoais = [];
  List<ContatoProfissional> contatosProfissionais = [];

  void adicionarContato(Contato contato) {
    if (contato is ContatoPessoal) {
      contatosPessoais.add(contato);
    }

    if (contato is ContatoProfissional) {
      contatosProfissionais.add(contato);
    }
  }

  void deletarContato(Contato contato) {
    if (contato is ContatoPessoal) {
      contatosPessoais.remove(contato);
    }

    if (contato is ContatoProfissional) {
      contatosProfissionais.remove(contato);
    }
  }

  void mostrarTodosOsContatos() {
    print('Contatos pessoais:');
    contatosPessoais.forEach((contato) => {
      print('${contato.nome} - ${contato.numero} - ${contato.adicionadoEm} - ${contato.endereco.rua} - ${contato.endereco.numeroDaCasa} - ${contato.endereco.bairro}')
    });

    print('\n');

    print('Contatos profissionais:');
    contatosProfissionais.forEach((contato) => {
      print('${contato.nome} - ${contato.numero} - ${contato.adicionadoEm} - ${contato.empresa}')
    });
    print('\n');
  }

  void pesquisarContato(Contato contato) {
    if (contato is ContatoPessoal) {
      if (contatosPessoais.contains(contato)) {
        print('O contato existe na agenda!');
        return;
      }
    }

    if (Contato is ContatoProfissional) {
      if (contatosProfissionais.contains(contato)) {
        print('O contato existe na agenda!');
        return;
      }
    }

    print('O contato não existe na agenda!');
  }
}