import 'package:api_example/alugators/model/alugators_view_data.dart';

class AlugatorsFomData extends AlugatorsViewData {
  AlugatorsFomData({
    required String initialDate,
    required String finalDate,
    required String clientName,
    required String clientPhone,
    required String clientEndereco,
    required String brinquedosAlugados,
  }) : super(
          initialDate: initialDate,
          finalDate: finalDate,
          clientName: clientName,
          clientPhone: clientPhone,
          clientEndereco: clientEndereco,
          brinquedosAlugados: brinquedosAlugados,
        );

  copyWidth({
    String? initialDate,
    String? finalDate,
    String? clientName,
    String? clientPhone,
    String? clientEndereco,
    String? brinquedosAlugados,
  }) {
    return AlugatorsViewData(
      initialDate: initialDate ?? this.initialDate,
      finalDate: finalDate ?? this.finalDate,
      clientName: clientName ?? this.clientName,
      clientPhone: clientPhone ?? this.clientPhone,
      clientEndereco: clientEndereco ?? this.clientEndereco,
      brinquedosAlugados: brinquedosAlugados ?? this.brinquedosAlugados,
    );
  }

  toJson() {
    return {
      'initialDate': initialDate,
      'finalDate': finalDate,
      'clientName': clientName,
      'clientPhone': clientPhone,
      'clientEndereco': clientEndereco,
      'brinquedosAlugados': brinquedosAlugados,
    };
  }
}
