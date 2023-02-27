import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ulula/core/constants/colors.dart';
import 'package:ulula/features/account/ui/pages/sign_up/widgets/widgets.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const SignUpPage(),
    );
  }

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
                  SignUpHeader(),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                  ),
                  SignUpForm(),
                  Spacer(),
                  SignUpButtons(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
