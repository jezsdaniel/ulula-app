import 'package:flutter/material.dart';

import 'package:ulula/core/constants/constants.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    super.key,
    required this.icon,
    this.backgroundColor = AppColors.color3,
    this.borderRadius = 16,
    this.borderColor,
    this.size = 54,
    required this.onPressed,
  });

  final Widget icon;
  final Color backgroundColor;
  final Color? borderColor;
  final double borderRadius;
  final double size;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: backgroundColor,
        border: borderColor != null
            ? Border.all(
                color: borderColor!,
              )
            : null,
      ),
      child: InkWell(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        onTap: onPressed,
        child: Center(
          child: icon,
        ),
      ),
    );
  }
}
