import 'package:api_example/alugators/model/alugators_view_data.dart';
import 'package:api_example/shared/repository_firebase/alugator_repository.dart';

extension AlugatorMapper on AlugatorReturn {
  List<AlugatorsViewData> toViewData() {
    return alugatorResponse
        .map((e) => AlugatorsViewData(
              initialDate: e.initialDate,
              finalDate: e.finalDate,
              clientName: e.clientName,
              clientPhone: e.clientPhone,
              clientEndereco: e.clientEndereco,
              brinquedosAlugados: e.brinquedosAlugados,
            ))
        .toList();
  }
}
