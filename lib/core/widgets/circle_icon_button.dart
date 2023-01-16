import 'package:flutter/material.dart';
import 'package:ulula/core/constants/constants.dart';

class CircleIconButton extends StatelessWidget {
  const CircleIconButton({
    super.key,
    required this.icon,
    this.backgroundColor = AppColors.color3,
    this.size = 54,
  });

  final Widget icon;
  final Color backgroundColor;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(92)),
        onTap: () {},
        child: Center(
          child: icon,
        ),
      ),
    );
  }
}
