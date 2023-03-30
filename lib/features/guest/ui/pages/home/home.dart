import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ulula/features/guest/ui/pages/home/widgets/widgets.dart';

class GuestHomePage extends StatelessWidget {
  const GuestHomePage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const GuestHomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const _GuestHomeView();
  }
}

class _GuestHomeView extends StatelessWidget {
  const _GuestHomeView();

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
        child: Stack(
          children: const [
            Positioned.fill(
              child: GuestHomeFeed(),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: GuestHomeButtons(),
            )
          ],
        ),
      ),
    );
  }
}
