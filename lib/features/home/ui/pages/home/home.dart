import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      bottomNavigationBar: const HomeBottom(),
    );
  }
}
