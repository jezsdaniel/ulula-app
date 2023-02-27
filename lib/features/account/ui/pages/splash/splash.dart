import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:ulula/core/constants/constants.dart';
import 'package:ulula/features/account/ui/pages/welcome/welcome.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const SplashPage(),
    );
  }

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future<void>.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushAndRemoveUntil(
          context,
          WelcomePage.route(),
          (route) => false,
        );
        FlutterNativeSplash.remove();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.color2,
    );
  }
}
