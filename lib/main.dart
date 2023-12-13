import 'package:asuka/asuka.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_module.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/onboarding/');
    return MaterialApp.router(
      builder: Asuka.builder,
      title: 'teste willpop with modular',
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
    );
  }
}
