import 'dart:convert';

class Curso {
  int id;
  String nome;
  bool isAluno;

  Curso(this.id, this.nome, this.isAluno);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'isAluno': isAluno,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory Curso.fromJson(String json) => Curso.fromMap(jsonDecode(json));
  factory Curso.fromMap(Map<String, dynamic> map) {
    return Curso(map['id'] ?? 0, map['nome'] ?? '', map['isAluno'] ?? false);
  }
}