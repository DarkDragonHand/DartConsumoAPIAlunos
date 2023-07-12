import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/aluno.dart';

class AlunoRepository {
  Future<List<Aluno>> buscarTodos() async {
    //*Chamada para o backend
    final alunosResponse = await http.get(Uri.parse('http://localhost:8080/alunos'));
    //*Convertendo o json que veio no alunosResponse
    final alunosList = jsonDecode(alunosResponse.body);
    //*Transformando cada um dos dados em map<String, dynamic> e convertendo pra uma List
    final todosAlunos = alunosList.map<Aluno>((alunoMap) => Aluno.fromMap(alunoMap)).toList();
    return todosAlunos;
    //*return alunosList.map<Aluno>((alunoMap) => Aluno.fromMap(alunoMap)).toList();
  }

  Future<Aluno> buscarAlunoPorId(int id) async {
    final alunosResponse = await http.get(Uri.parse('http://localhost:8080/alunos/$id'));
    return Aluno.fromJson(alunosResponse.body);
  }
}