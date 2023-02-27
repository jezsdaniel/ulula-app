import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ulula/core/constants/constants.dart';
import 'package:ulula/features/account/ui/pages/verify/widgets/widgets.dart';

class VerifyAccountPage extends StatelessWidget {
  const VerifyAccountPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const VerifyAccountPage(),
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
                  VerifyHeader(),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                  ),
                  VerifyForm(),
                  Spacer(),
                  VerifyButtons(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
