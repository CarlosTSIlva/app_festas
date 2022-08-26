import 'package:api_example/alugators/alugators_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AlugatorsPage extends ConsumerWidget {
  const AlugatorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getAlugatorsProvider = ref.watch(alugatorsProvider);

    return Scaffold(
      body: Center(
        child: getAlugatorsProvider.when(
            data: (data) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: data.alugatorResponse
                      .map((e) => Text(e.clientName))
                      .toList(),
                ),
            error: (error, stackTrace) => const Text('Ooops, erro!'),
            loading: () => const CircularProgressIndicator()),
      ),
    );
  }
}
