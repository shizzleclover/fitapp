import 'package:flutter/material.dart';

class Cont extends StatelessWidget {
  final String? txt1;
  final String? txt2;
  final String? txt3;
  final double? height;
  final double? width;
  final double borderRadius;
  final Color? cl;
  final Color? txtCOlor;
  final Color? txt3BackgroundColor; // New parameter for txt3 background color

  const Cont({
    Key? key,
    this.txt1,
    this.txt2,
    this.txt3,
    this.width,
    this.height,
    this.borderRadius = 20.0,
    this.cl,
    this.txtCOlor,
    this.txt3BackgroundColor, // Initialize the new parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? 200,
      decoration: BoxDecoration(
        color: cl ?? const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4.0,
            spreadRadius: 1.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (txt1 != null)
                  Text(
                    txt1!,
                    style: TextStyle(
                      fontFamily: "DMSans",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: txtCOlor ?? Color.fromARGB(255, 0, 0, 0),
                    ),
                    textAlign: TextAlign.center,
                  ),
                if (txt2 != null)
                  Text(
                    txt2!,
                    style: const TextStyle(
                      fontFamily: "DMSans",
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
              ],
            ),
          ),
          Divider(height: 1, color: Colors.grey),
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(borderRadius),
              bottomRight: Radius.circular(borderRadius),
            ),
            child: Container(
              width: double.infinity,
              color: txt3BackgroundColor ??
                  cl ??
                  const Color.fromRGBO(255, 112, 134, 1),
              // Use txt3BackgroundColor if provided, else use cl as fallback
              padding: const EdgeInsets.all(
                16.0,
              ), // Increased padding for larger content
              child: txt3 != null
                  ? Text(
                      txt3!,
                      style: TextStyle(
                        fontFamily: "DMSans",
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: cl ??
                            Colors
                                .white, // Adjust text color based on background
                      ),
                      textAlign: TextAlign.center,
                    )
                  : const SizedBox.shrink(),
            ),
          ),
        ],
      ),
    );
  }
}
