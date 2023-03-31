import 'package:flutter/material.dart';

import 'package:ulula/core/widgets/widgets.dart';

class EventHeader extends StatelessWidget {
  const EventHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const ImagesCarousel(
      height: 375,
      images: [
        'assets/img/event-sample.png',
        'assets/img/event-sample.png',
        'assets/img/event-sample.png',
        'assets/img/event-sample.png',
      ],
    );
  }
}
