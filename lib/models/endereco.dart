import 'package:consumo_api_alunos/models/cidade.dart';
import 'package:consumo_api_alunos/models/telefone.dart';

class Endereco {
  String rua;
  int numero;
  String cep;
  Cidade cidade;
  Telefone telefone;

  Endereco(this.rua, this.numero, this.cep, this.cidade, this.telefone);
}