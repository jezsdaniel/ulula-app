import 'package:flutter/material.dart';
import 'package:ulula/core/constants/constants.dart';

class CircleIconButton extends StatelessWidget {
  const CircleIconButton({
    super.key,
    required this.icon,
    this.backgroundColor = AppColors.color3,
    this.borderColor,
    this.size = 54,
    required this.onPressed,
  });

  final Widget icon;
  final Color backgroundColor;
  final Color? borderColor;
  final double size;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
        border: borderColor != null
            ? Border.all(
                color: borderColor!,
              )
            : null,
      ),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(92)),
        onTap: onPressed,
        child: Center(
          child: icon,
        ),
      ),
    );
  }
}
