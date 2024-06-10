import 'package:flutter/material.dart';

class ContainerGirl extends StatelessWidget {
  final String leftBottomImage;
  final String rightSideImage;
  final String txt1;
  final String txt2;
  final String? buttonText;
  final double? height;
  final double? width;
  final double borderRadius;

  const ContainerGirl({
    Key? key,
    this.buttonText,
    required this.leftBottomImage,
    required this.rightSideImage,
    required this.txt1,
    required this.txt2,
    this.height,
    this.width,
    this.borderRadius = 16.0, // Default border radius
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color con = Color.fromRGBO(255, 96, 121, 1); 
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        height: height ?? 300, // Use provided height or default to 300
        width: width ?? 300,  // Use provided width or default to 300
        padding: const EdgeInsets.all(16.0), // Add padding to prevent text from touching the edge
        color: con, // Constant color
        child: Stack(
          children: [
            // Image in the left bottom corner
            Positioned(
              left: 0,
              bottom: 0,
              child: Image.asset(
                leftBottomImage,
                // width: 400, // Adjust size as needed
                // // height: 3010, // Adjust size as needed
              ),
            ),
            // Image extending out the container to the screen
            Positioned(
              right: -50, // Adjust to make sure it extends out of the container
              top: 0,
              bottom: 0,
              child: Image.asset(
                rightSideImage,
                fit: BoxFit.cover,
              ),
            ),
            // Column with texts and optional button on top of the left image
            Positioned(
              left: 16, // Add padding to the left
              bottom: 16, // Add padding to the bottom
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    txt1,
                    style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'CircularStd'),
                  ),
                  SizedBox(height: 8),
                  Text(
                    txt2,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  if (buttonText != null) ...[
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        // Define button action here
                      },
                      child: Text(buttonText!, style: TextStyle(color: con,),),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
