import 'package:api_example/alugators/getAlugators/args/get_alugators_args.dart';
import 'package:api_example/alugators/getAlugators/get_alugator_page.dart';
import 'package:api_example/alugators/getAlugators/get_alugator_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GetAlugator extends ConsumerWidget {
  final GeatAlugatorsArgs args;
  const GetAlugator({Key? key, required this.args}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getByAlugator = ref.watch(getAlugatorsProvider(args.id));
    return Scaffold(
      body: SafeArea(
        child: getByAlugator.when(
            data: (data) => GetAlugatorPage(alugator: data),
            error: (error, stackTrace) => TextButton(
                onPressed: () {
                  print("error : $error, stackTrace : $stackTrace");
                },
                child: const Text("Ops algo deu erro")),
            loading: () => const CircularProgressIndicator()),
      ),
    );
  }
}
