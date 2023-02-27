import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ulula/core/constants/colors.dart';
import 'package:ulula/di/di.dart';
import 'package:ulula/features/account/ui/bloc/sign_in/sign_in_bloc.dart';
import 'package:ulula/features/account/ui/pages/sign_in/widgets/widgets.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const SignInPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInBloc(
        Injector.instance!.getDependency(),
      ),
      child: const _SignInView(),
    );
  }
}

class _SignInView extends StatelessWidget {
  const _SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: AppColors.color2,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark,
        ),
      ),
      backgroundColor: AppColors.color2,
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: const [
                  Spacer(),
                  SignInHeader(),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                  ),
                  SignInForm(),
                  Spacer(),
                  SignInButtons(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
