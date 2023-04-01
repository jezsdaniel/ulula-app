import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ulula/core/constants/constants.dart';
import 'package:ulula/features/home/ui/pages/home/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const HomePage(),
    );
  }

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
      body: const SafeArea(
        child: HomeFeed(),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 72,
        decoration: const BoxDecoration(
          color: AppColors.color5,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(
                Icons.widgets_outlined,
                color: AppColors.color3,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.add_outlined,
                color: AppColors.color3,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.search_outlined,
                color: AppColors.color3,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
