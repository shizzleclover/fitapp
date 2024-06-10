import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Color? textColor;
  final Color? backgroundColor;
  final String? text;
  final Widget? icon;
  final double? width;
  final double? height;
  final double? radius;
  final double? fsize;
  final String? fweight;
  final String? ffamily;
  final Color? border;
  final VoidCallback? onTap;

  const AppButton({
    Key? key,
    this.backgroundColor,
    this.text,
    this.width,
    this.height,
    this.textColor,
    this.fsize,
    this.ffamily,
    this.fweight,
    this.icon,
    this.radius,
    this.onTap,
    this.border,
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
          borderRadius: BorderRadius.circular(radius ?? 0),
          border: Border.all(color: border ?? Colors.transparent),
        ),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) icon!,
              if (icon != null) SizedBox(width: 8),
              if (text != null)
                Text(
                  text!,
                  style: TextStyle(
                    color: textColor,
                    fontSize: fsize,
                    fontFamily: ffamily,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
