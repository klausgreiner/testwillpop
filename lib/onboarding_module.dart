import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class OnboardingModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, __) => const SplashScreenPage(),
        ),
        ChildRoute(
          '/usage_policy',
          child: (_, __) => const UsagePolicyPage(),
        ),
        ChildRoute(
          '/carousel',
          child: (_, __) => const OnboardingCarouselPage(),
        ),
      ];
}

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    print('entrando na SplashScreenPage');
    print(Modular.to.navigateHistory.map((route) => route.name).join(', '));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('SplashScreenPage'),
        TextButton(
          onPressed: () async {
            print(Modular.to.navigateHistory
                .map((route) => route.name)
                .join(', '));
            Modular.to.navigate("/onboarding/carousel");
          },
          child: const Text('carousel'),
        )
      ],
    );
  }
}

class OnboardingCarouselPage extends StatefulWidget {
  const OnboardingCarouselPage({super.key});

  @override
  State<OnboardingCarouselPage> createState() => _OnboardingCarouselPageState();
}

class _OnboardingCarouselPageState extends State<OnboardingCarouselPage> {
  @override
  void initState() {
    print('entrando na OnboardingCarouselPage');
    print(Modular.to.navigateHistory.map((route) => route.name).join(', '));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('OnboardingCarouselPage'),
        ElevatedButton.icon(
          onPressed: () async {
            print(Modular.to.navigateHistory
                .map((route) => route.name)
                .join(', '));
            Modular.to.navigate("/onboarding/usage_policy");
          },
          icon: const Icon(Icons.ac_unit),
          label: const Text('usage policy'),
        )
      ],
    );
  }
}

class UsagePolicyPage extends StatefulWidget {
  const UsagePolicyPage({super.key});

  @override
  State<UsagePolicyPage> createState() => _UsagePolicyPageState();
}

class _UsagePolicyPageState extends State<UsagePolicyPage> {
  @override
  void initState() {
    print('entrando na UsagePolicyPage');
    print(Modular.to.navigateHistory.map((route) => route.name).join(', '));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('UsagePolicyPage'),
        ElevatedButton.icon(
          onPressed: () async {
            print(Modular.to.navigateHistory
                .map((route) => route.name)
                .join(', '));
            Modular.to.navigate("/home/");
          },
          icon: const Icon(Icons.ac_unit),
          label: const Text('home'),
        )
      ],
    );
  }
}
