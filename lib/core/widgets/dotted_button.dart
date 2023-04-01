import 'package:flutter/material.dart';

import 'package:dotted_border/dotted_border.dart';

import 'package:ulula/core/constants/constants.dart';

class DottedButton extends StatelessWidget {
  const DottedButton({
    super.key,
    required this.child,
    required this.onPressed,
  });

  final Widget child;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(92),
        ),
      ),
      child: DottedBorder(
        dashPattern: const [5, 5],
        color: AppColors.color3,
        borderType: BorderType.RRect,
        radius: const Radius.circular(92),
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(92)),
          onTap: onPressed,
          child: SizedBox.expand(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
