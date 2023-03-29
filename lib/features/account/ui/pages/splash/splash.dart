import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:ulula/core/constants/constants.dart';
import 'package:ulula/di/di.dart';
import 'package:ulula/features/account/ui/bloc/splash/splash_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const SplashPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashBloc(
        Injector.instance!.getDependency(),
      ),
      child: const _SplashView(),
    );
  }
}

class _SplashView extends StatefulWidget {
  const _SplashView();

  @override
  State<_SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<_SplashView> {

  @override
  void initState() {
    context.read<SplashBloc>().add(SplashValidateToken());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.color2,
      body: Center(
        child: SpinKitDoubleBounce(
          color: AppColors.color1,
        ),
      ),
    );
  }
}
