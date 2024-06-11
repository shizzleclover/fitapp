import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonIcon extends StatelessWidget {
  final Color? backgroundColor;
  final String? svgPath;
  final double? width;
  final double? height;
  final double? radius;
  final Color? bord;
  final VoidCallback? onTap;

  const ButtonIcon({
    Key? key,
    this.backgroundColor,
    this.svgPath,
    this.width,
    this.height,
    this.radius,
    this.onTap,
    this.bord,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: bord != null ? Border.all(color: bord!) : null,
          borderRadius: BorderRadius.circular(radius ?? 0),
        ),
        child: Center(
          child: SvgPicture.asset(
            svgPath ?? '',
            width: width != null ? width! * 0.5 : null,
            height: height != null ? height! * 0.5 : null,
          ),
        ),
      ),
    );
  }
}
