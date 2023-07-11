import 'dart:convert';

import 'package:consumo_api_alunos/models/cidade.dart';
import 'package:consumo_api_alunos/models/telefone.dart';

class Endereco {
  String rua;
  int numero;
  String cep;
  Cidade cidade;
  Telefone telefone;

  Endereco(this.rua, this.numero, this.cep, this.cidade, this.telefone);

  Map<String, dynamic> toMap() {
    return {
      'rua': rua,
      'numero': numero,
      'CEP': cep,
      'cidade': cidade.toMap(),
      'telefone': telefone.toMap(),
    };
  }
  String toJson() => jsonEncode(toMap());

  factory Endereco.fromJson(String json) => Endereco.fromMap(jsonDecode(json));
  factory Endereco.fromMap(Map<String, dynamic> map) {
    return Endereco(
      map['rua'] ?? '', 
      map['numero'] ?? 0, 
      map['CEP'] ?? '', 
      Cidade.fromMap(map['cidade'] ?? <String, dynamic>{}), 
      Telefone.fromMap(map['telefone'] ?? <String, dynamic>{}),
    );
  }
}
