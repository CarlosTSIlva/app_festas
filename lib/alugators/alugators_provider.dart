import 'package:api_example/alugators/usecase/alugators_usecase.dart';
import 'package:api_example/shared/repository_firebase/alugator_repository.dart';
import 'package:api_example/shared/repository_firebase/alugator_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final alugatorsUseCase = Provider((ref) {
  return AlugatorUseCase(repository: ref.read(alugatorRepositoryProvider));
});

final alugatorsProvider = FutureProvider<AlugatorReturn>((ref) async {
  return ref.read(alugatorsUseCase).execute();
});
