import 'package:api_example/shared/api_firebase/alugators_endpoint.dart';
import 'package:api_example/shared/api_firebase/models/alugators_response.dart';

class AlugatorRepository {
  final AlugatorsEndpoint alugatorsEndpoint;

  AlugatorRepository({required this.alugatorsEndpoint});

  Future<AlugatorReturn> getAllCharacters() async {
    final result = await alugatorsEndpoint.getAllAlugator().then(
          (value) => value.docs.map(
            (e) {
              final value = e.data();
              return AlugatorResponse(
                value['initialDate'],
                value["finalDate"],
                value["clientName"],
                value["clientPhone"],
                value["clientEndereco"],
                value["brinquedosAlugados"],
              );
            },
          ).toList(),
        );

    return AlugatorReturn(alugatorResponse: result);
  }
}

class AlugatorReturn {
  List<AlugatorResponse> alugatorResponse;
  AlugatorReturn({required this.alugatorResponse});
}
