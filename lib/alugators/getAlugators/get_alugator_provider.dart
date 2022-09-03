import 'package:api_example/alugators/usecase/alugators_usecase.dart';
import 'package:api_example/shared/api_firebase/models/alugators_response.dart';
import 'package:api_example/shared/repository_firebase/alugator_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final alugatorsUseCase = Provider((ref) {
  return AlugatorUseCase(repository: ref.read(alugatorRepositoryProvider));
});

final getAlugatorsProvider =
    FutureProvider.family<AlugatorResponse, String>((ref, id) async {
  return ref.read(alugatorsUseCase).getById(id);
});
