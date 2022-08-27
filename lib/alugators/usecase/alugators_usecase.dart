import 'package:api_example/alugators/model/alugators_form_data.dart';
import 'package:api_example/shared/api_firebase/models/alugators_response.dart';
import 'package:api_example/shared/repository_firebase/alugator_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AlugatorUseCase {
  final AlugatorRepository repository;
  AlugatorUseCase({required this.repository});

  Future<AlugatorReturn> execute() async {
    final response = await repository.getAllCharacters();

    return response;
  }

  Future<AlugatorResponse> getById(String id) async {
    final response = await repository.getById(id);

    return response;
  }

  Future<void> deleteAlugator(String id) async {
    return repository.deleteAlugator(id);
  }

  Future<void> putAlugator(String id, AlugatorsFomData alugator) async {
    return repository.putAlugator(id, alugator);
  }

  Future<DocumentReference<Map<String, dynamic>>> createAlugator(
      AlugatorsFomData alugator) async {
    return repository.createAlugator(alugator);
  }
}
