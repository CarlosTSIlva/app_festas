import 'package:json_annotation/json_annotation.dart';
part 'alugators_response.g.dart';

@JsonSerializable()
class AlugatorResponse {
  final String initialDate;
  final String finalDate;
  final String clientName;
  final String clientPhone;
  final String clientEndereco;
  final String brinquedosAlugados;

  AlugatorResponse(
    this.initialDate,
    this.finalDate,
    this.clientName,
    this.clientPhone,
    this.clientEndereco,
    this.brinquedosAlugados,
  );

  factory AlugatorResponse.fromJson(Map<String, dynamic> json) =>
      _$AlugatorResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AlugatorResponseToJson(this);
}
