import 'curso.dart';
import 'package:consumo_api_alunos/models/endereco.dart';

class Aluno {
  int id;
  String nome;
  int? idade;
  List<String> nomeCursos;
  List<Curso> cursos;
  Endereco endereco;

  Aluno(this.id, this.nome, this.idade, this.nomeCursos, this.cursos, this.endereco);
}