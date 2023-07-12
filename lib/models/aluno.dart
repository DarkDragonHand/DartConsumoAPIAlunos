import 'dart:convert';
import 'package:consumo_api_alunos/models/endereco.dart';
import 'curso.dart';
class Aluno {
  int id;
  String nome;
  int? idade;
  List<String> nomeCursos;
  List<Curso> cursos;
  Endereco endereco;

  Aluno(this.id, this.nome, this.idade, this.nomeCursos, this.cursos,
      this.endereco);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      'id': id,
      'nome': nome,
      'nomeCursos': nomeCursos,
      'cursos': cursos.map((curso) => curso.toMap()).toList(),
      'endereco': endereco.toMap(),
    };
    if (idade != null) {
      map['idade'] = idade;
    }

    return map;
  }
  String toJson() => jsonEncode(toMap());

  factory Aluno.fromJson(String json) => Aluno.fromMap(jsonDecode(json));
  factory Aluno.fromMap(Map<String, dynamic> map) {
    return Aluno(
        map['id'] ?? 0, 
        map['nome'] ?? '',
        map['idade'] ?? 0, 
        List<String>.from(map['nomeCursos'] ?? <String>[]).toList(),
        map['cursos']
        .map<Curso>((cursoMap) => Curso.fromMap(cursoMap))
        .toList() ?? <Curso>[],
        Endereco.fromMap(map['endereco'] ?? <String, dynamic>{}),
      );
    }

  @override
  String toString() {
    return 'Aluno(id: $id, nome: $nome)';
  }
}
