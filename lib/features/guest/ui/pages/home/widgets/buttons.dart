import 'package:flutter/material.dart';

import 'package:ulula/core/constants/constants.dart';
import 'package:ulula/core/widgets/widgets.dart';
import 'package:ulula/features/account/ui/pages/sign_up/sign_up.dart';

class GuestHomeButtons extends StatelessWidget {
  const GuestHomeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color.fromRGBO(245, 247, 240, 0),
            const Color(0xffF5F7F0).withOpacity(1),
          ],
        ),
      ),
      child: Center(
        child: CircleIconButton(
          onPressed: () {
            Navigator.push(context, SignUpPage.route());
          },
          backgroundColor: AppColors.color2,
          icon: const Icon(
            Icons.login_outlined,
            color: AppColors.color1,
          ),
        ),
      ),
    );
  }
}
