import 'package:api_example/alugators/model/alugators_form_data.dart';
import 'package:api_example/shared/api_firebase/alugators_endpoint.dart';
import 'package:api_example/shared/api_firebase/models/alugators_response.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AlugatorRepository {
  final AlugatorsEndpoint alugatorsEndpoint;

  AlugatorRepository({required this.alugatorsEndpoint});

  Future<AlugatorReturn> getAllCharacters() async {
    final result = await alugatorsEndpoint.getAllAlugator().then(
          (value) => value.docs.map(
            (e) {
              final value = e.data();
              return AlugatorResponse(
                value["id"],
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

  Future<AlugatorResponse> getById(String id) async {
    final result = await alugatorsEndpoint.getByAlugator(id).then((value) {
      return value.docs.map(
        (e) {
          final value = e.data();
          return AlugatorResponse(
            value["id"],
            value['initialDate'],
            value["finalDate"],
            value["clientName"],
            value["clientPhone"],
            value["clientEndereco"],
            value["brinquedosAlugados"],
          );
        },
      ).toList();
    });
    return result.first;
  }

  Future<void> deleteAlugator(String id) async {
    return alugatorsEndpoint.deleteAlugator(id);
  }

  Future<void> putAlugator(String id, AlugatorsFomData alugator) async {
    return alugatorsEndpoint.putAlugator(id, alugator);
  }

  Future<DocumentReference<Map<String, dynamic>>> createAlugator(
      AlugatorsFomData alugator) async {
    return alugatorsEndpoint.createAlugator(alugator);
  }
}

class AlugatorReturn {
  List<AlugatorResponse> alugatorResponse;
  AlugatorReturn({required this.alugatorResponse});
}
