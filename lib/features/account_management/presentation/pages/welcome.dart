import 'package:flutter/material.dart';
import 'package:ulula/core/constants/assets.dart';
import 'package:ulula/core/constants/colors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                onPressed: () => Navigator.pushNamed(context, '/login'),
                child: const Text('Login'),
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
                    Text('Register'),
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
