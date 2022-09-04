import 'package:api_example/shared/api_firebase/models/alugators_response.dart';
import 'package:flutter/material.dart';

class GetAlugatorPage extends StatelessWidget {
  final AlugatorResponse alugator;
  const GetAlugatorPage({Key? key, required this.alugator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(alugator.clientName),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("voltar"),
        )
      ],
    );
  }
}
