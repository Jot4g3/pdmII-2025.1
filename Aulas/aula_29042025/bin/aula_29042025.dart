import 'package:aula_29042025/aula_29042025.dart' as aula_29042025;
import 'dart:convert';

class Estudante {
  String nome;
  String matricula;
  int idade;
  String departamento;
  String nivel;

  Estudante(this.nome, this.matricula, this.idade, this.departamento, this.nivel);

  Map toJson() => {
        'nome': nome,
        'id': matricula,
        'idade': idade,
        'departamento': departamento,
        'nivel': nivel
  };
}

class Gerente{
  String nome;
  String id;
  int idade;

  Gerente(this.nome, this.id, this.idade);

  Map toJson() => {
        'nome': nome,
        'id': id,
        'idade': idade
  };

}

class Departamento {
  String nome;
  String id;
  Gerente gerente;

  Departamento(this.nome, this.id, this.gerente);

  Map toJson() => {
    'nome': nome,
    'id': id,
    'gerente': gerente
  };
}

void main() {
  Estudante estudante = Estudante('João Gabriel Aguiar de Senna', '00000000000001', 17, 'Informática', '1000');

  String jsonEstudante = jsonEncode(estudante);
  print(jsonEstudante);

  Gerente gerente = Gerente("Taveira", "1", 57);
  Departamento departamento = Departamento("Telemática", "1", gerente);

  String jsonGerente = jsonEncode(gerente);
  print(jsonGerente);

  String jsonDepartamento = jsonEncode(departamento);
  print(jsonDepartamento);
}