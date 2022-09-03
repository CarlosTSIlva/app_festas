import 'package:api_example/alugators/alugators_page.dart';
import 'package:api_example/alugators/getAlugators/args/get_alugators_args.dart';
import 'package:api_example/alugators/getAlugators/get_alugator.dart';
import 'package:flutter/material.dart';

class KidsRoutes {
  static const String list = '/';
  static const String details = '/kids';

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case list:
        return MaterialPageRoute(builder: (_) => const AlugatorsPage());
      case details:
        final args = settings.arguments as GeatAlugatorsArgs;
        return MaterialPageRoute(
          builder: (_) => GetAlugator(
            args: args,
          ),
        );
      default:
        return null;
    }
  }
}
