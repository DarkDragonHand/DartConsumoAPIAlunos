import 'dart:convert';

class Cidade {
  int id;
  String nome;

  Cidade(this.id, this.nome);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
    };
  }
  String toJson() => jsonEncode(toMap());

  factory Cidade.fromJson(String json) => Cidade.fromMap(jsonDecode(json));
  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(
      map['id'] ?? 0, 
      map['nome'] ?? '',
    );
  }
}
