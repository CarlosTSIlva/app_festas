class FormAlugatorInputs {
  final String? brinquedosAlugados;
  final String? clientEndereco;
  final String? clientName;
  final String? clientPhone;
  final String? finalDate;
  final String? initialDate;

  List<String> inputController = [
    "brinquedosAlugados",
    "clientEndereco",
    "clientName",
    "clientPhone",
    "finalDate",
    "initialDate",
  ];
  FormAlugatorInputs({
    this.brinquedosAlugados,
    this.clientEndereco,
    this.clientName,
    this.clientPhone,
    this.finalDate,
    this.initialDate,
  });
}
