import 'package:api_example/shared/api_firebase/alugators_endpoint_provider.dart';
import 'package:api_example/shared/repository_firebase/alugator_repository.dart';
import 'package:riverpod/riverpod.dart';

final alugatorRepositoryProvider = Provider((ref) {
  return AlugatorRepository(
      alugatorsEndpoint: ref.read(alugatorsEndpointProvider));
});
