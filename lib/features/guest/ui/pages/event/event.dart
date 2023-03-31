import 'package:flutter/material.dart';

import 'package:ulula/features/guest/ui/pages/event/widgets/widgets.dart';

class GuestEventDetailsPage extends StatelessWidget {
  const GuestEventDetailsPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const GuestEventDetailsPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const _GuestEventDetailsView();
  }
}

class _GuestEventDetailsView extends StatelessWidget {
  const _GuestEventDetailsView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: const [
                  EventHeader(),
                  EventBody(),
                  EventButtons(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
