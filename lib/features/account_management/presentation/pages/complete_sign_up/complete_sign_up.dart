import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ulula/core/constants/constants.dart';
import 'package:ulula/features/account_management/presentation/pages/complete_sign_up/widgets/widgets.dart';

class CompleteSignUpPage extends StatelessWidget {
  const CompleteSignUpPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const CompleteSignUpPage(),
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
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(
                width: double.infinity,
                height: 50,
              ),
              CompleteSignUpHeader(),
              SizedBox(
                width: double.infinity,
                height: 50,
              ),
              SignUpCompleteForm(),
              SizedBox(
                width: double.infinity,
                height: 50,
              ),
              SignUpCompleteButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
