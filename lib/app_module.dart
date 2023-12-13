import 'package:flutter_modular/flutter_modular.dart';

import 'home_module.dart';
import 'onboarding_module.dart';

class AppModule extends Module {
  AppModule();

  @override
  List<Module> get imports => [];
  @override
  final List<Bind> binds = [];
  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/onboarding', module: OnboardingModule()),
        ModuleRoute('/home', module: HomeModule()),
      ];
}
