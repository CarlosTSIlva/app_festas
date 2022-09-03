import 'package:api_example/alugators/alugators_provider.dart';
import 'package:api_example/alugators/getAlugators/args/get_alugators_args.dart';
import 'package:api_example/routes/kids_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AlugatorsPage extends ConsumerWidget {
  const AlugatorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getAlugatorsProvider = ref.watch(alugatorsProvider);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: getAlugatorsProvider.when(
              data: (data) => Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: data.alugatorResponse
                            .map((e) => Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: Container(
                                      color: Colors.amber,
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.pushNamed(
                                            context,
                                            KidsRoutes.details,
                                            arguments:
                                                GeatAlugatorsArgs(id: e.id),
                                          );
                                        },
                                        child: Text(e.clientName),
                                      ),
                                    ),
                                  ),
                                ))
                            .toList(),
                      ),
                    ],
                  ),
              error: (error, stackTrace) => const Text('Ooops, erro!'),
              loading: () => const CircularProgressIndicator()),
        ),
      ),
    );
  }
}
