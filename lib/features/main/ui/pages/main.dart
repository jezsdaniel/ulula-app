import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ulula/features/main/ui/pages/widgets/widgets.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const MainPage(),
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
    );
  }
}
