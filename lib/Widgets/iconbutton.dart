import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


//This is for buttons with just icons in them, no text ;
class ButtonIcon extends StatelessWidget {
  final Color backgroundColor;
  final String svgPath;
  final double width;
  final double height;
  final double radius;
  final Color? bord;
  final VoidCallback onTap;

  const ButtonIcon({
    Key? key,
    required this.backgroundColor,
    required this.svgPath,
    required this.width,
    required this.height,
    required this.radius,
    required this.onTap, 
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
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Center(
          child: SvgPicture.asset(
            'svgPath',
            width: width * 0.5,  
            height: height * 0.5,  
          ),
        ),
      ),
    );
  }
}
