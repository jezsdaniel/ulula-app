import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:ulula/core/constants/constants.dart';

class DottedIconButton extends StatelessWidget {
  const DottedIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.size = 54,
  });

  final Widget icon;
  final VoidCallback onPressed;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(92),
        ),
      ),
      child: DottedBorder(
        dashPattern: const [5, 5],
        color: AppColors.color4,
        borderType: BorderType.Circle,
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(92)),
          onTap: onPressed,
          child: SizedBox.expand(
            child: icon,
          ),
        ),
      ),
    );
  }
}
