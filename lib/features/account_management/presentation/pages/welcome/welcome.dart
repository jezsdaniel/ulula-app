import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ulula/core/constants/assets.dart';
import 'package:ulula/core/constants/colors.dart';
import 'package:ulula/features/account_management/presentation/pages/sign_up/sign_up.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              AppAssets.welcomeLogo,
              height: 118,
              fit: BoxFit.cover,
            ),
            const Spacer(),
            Image.asset(
              AppAssets.welcomeImage,
              height: 200,
              fit: BoxFit.cover,
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, SignUpPage.route());
                },
                child: const Text('Acceder'),
              ),
            ),
            const SizedBox(
              width: double.infinity,
              height: 10,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: AppColors.color2,
                  side: const BorderSide(
                    color: AppColors.color4,
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(92),
                  ),
                ),
                onPressed: () => Navigator.pushNamed(context, '/register'),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.electric_bolt),
                    Text('Visitante'),
                    Icon(Icons.navigate_next),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: double.infinity,
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
