import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppButton extends StatelessWidget {
  final Color? textColor;
  final Color? backgroundColor;
  final String? text;
  final String? iconSvgPath; // Changed to iconSvgPath
  final double? width;
  final double? height;
  final double? radius;
  final double? fsize;
  final String? fweight;
  final String? ffamily;
  final Color? border;
  final String? icon;
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
    this.iconSvgPath, // Changed to iconSvgPath
    this.radius,
    this.onTap,
    this.border,
    this.icon,
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
              if (iconSvgPath != null) // Changed to iconSvgPath
                SvgPicture.asset(
                  iconSvgPath!,
                  width: 24, // Adjust the width of the icon as needed
                  height: 24, // Adjust the height of the icon as needed
                ),
              if (iconSvgPath != null) SizedBox(width: 8),
              if (text != null)
                Text(
                  text!,
                  style: TextStyle(
                    color: textColor,
                    fontSize: fsize,
                    fontFamily: ffamily,
                    fontWeight: fweight != null
                        ? FontWeight
                            .w400 // Use FontWeight.w400 if fweight is not provided
                        : FontWeight.normal,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
