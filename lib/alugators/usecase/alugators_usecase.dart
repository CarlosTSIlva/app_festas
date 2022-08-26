import 'package:api_example/shared/repository_firebase/alugator_repository.dart';

class AlugatorUseCase {
  final AlugatorRepository repository;
  AlugatorUseCase({required this.repository});

  Future<AlugatorReturn> execute() async {
    final response = await repository.getAllCharacters();

    return response;
  }

  Future<List> getById() async {
    final response = await repository.getAllCharacters();

    return [];
  }
}
