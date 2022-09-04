import 'package:api_example/alugators/formAlugators/model/form_alugator_inputs.dart';
import 'package:flutter/material.dart';

class FormAlugator extends StatelessWidget {
  const FormAlugator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<TextEditingController> titleController = List.generate(
      FormAlugatorInputs().inputController.length,
      (index) => TextEditingController(),
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text("FormAlugator"),
            ...FormAlugatorInputs()
                .inputController
                .map(
                  (e) => TextField(
                    controller: titleController[
                        FormAlugatorInputs().inputController.indexOf(e)],
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: e,
                    ),
                  ),
                )
                .toList(),
            TextButton(
              onPressed: () {
                print(titleController.map((e) => e.text).toList());
              },
              child: const Text("Adicioanr no firebase"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("voltar"),
            )
          ],
        ),
      ),
    );
  }
}
