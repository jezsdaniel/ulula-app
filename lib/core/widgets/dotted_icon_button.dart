import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:ulula/core/constants/constants.dart';

class DottedIconButton extends StatelessWidget {
  const DottedIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final Widget icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      dashPattern: const [5, 5],
      color: AppColors.color4,
      borderType: BorderType.Circle,
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(50)),
        onTap: onPressed,
        child: Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child: icon,
        ),
      ),
    );
  }
}
