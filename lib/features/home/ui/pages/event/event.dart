import 'package:flutter/material.dart';

import 'package:ulula/features/guest/ui/pages/event/widgets/widgets.dart';

class EventDetailsPage extends StatelessWidget {
  const EventDetailsPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(
      builder: (_) => const EventDetailsPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const _EventDetailsView();
  }
}

class _EventDetailsView extends StatelessWidget {
  const _EventDetailsView();

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
