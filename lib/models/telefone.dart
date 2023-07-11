import 'dart:convert';

class Telefone {
  int ddd;
  String numero;

  Telefone(this.ddd, this.numero);

  //*toMap
  //*Metodo que pega o nosso objeto e transforma em um Objeto Map<String, dynamic>
  //*Passo 1 da Serialização
  Map<String, dynamic> toMap() {
    return {'ddd': ddd, 'numero': numero};
  }

  //*toJson
  //*Metodo que pega um Map<String, dynamic> e transforma em um json pelo pacote dart:convert (jsonEncode)
  //*Passo 2 da Serialização
  String toJson() => jsonEncode(toMap());
  

  //*Passo 1 da desserialização
  factory Telefone.fromJson(String json) => Telefone.fromMap(jsonDecode(json));

  //*Passo 2 da desserialização
  factory Telefone.fromMap(Map<String, dynamic> map) {
    return Telefone(
      map['ddd'] ?? 0,
      map['numero'] ?? '',
    );
  }
}
