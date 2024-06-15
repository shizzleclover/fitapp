import 'package:flutter/material.dart';
import 'package:fitapp/Widgets/appbar.dart';
import "package:fitapp/Widgets/button.dart";

class StartRandom extends StatelessWidget {
  const StartRandom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        leftIconPath: "Assets/Images/Arrow.svg",
        rightIconPath: "Assets/Images/Navigation.svg",
        backGround: Color.fromARGB(255, 255, 234, 241), // Set AppBar color
      ),
      body: Container(
        color: const Color.fromARGB(255, 255, 234, 241),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  // Wrap ClipOval with Center to ensure it stays centered
                  child: ClipOval(
                    child: Image.asset(
                      "Assets/Images/threadmill.png",
                      width: 200, // Adjust the width as needed
                      height:
                          200, // Adjust the height to match the width for a perfect circle
                      fit: BoxFit
                          .contain, // Use contain to maintain the aspect ratio
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 45,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Easy 6 min",
                      style: TextStyle(
                        fontFamily: "DMSans",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Starting Exercise",
                  style: TextStyle(
                    fontFamily: "DMSans",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Regular exercise is one of  the \n  best things",
                  style: TextStyle(
                    fontFamily: "DMSans",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 155, 155, 155),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 270,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 14,
                        ),
                        const Text(
                          "Starting in",
                          style: TextStyle(
                            fontFamily: "DMSans",
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 143, 142, 142),
                          ),
                        ),
                        const Text(
                          "04:24:01",
                          style: TextStyle(
                            fontFamily: "DMSans",
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF000000),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Center(
                          child: OverlappingImages(),
                        ),
                        const Text(
                          "10 people plan to workout",
                          style: TextStyle(
                            fontFamily: "DMSans",
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 122, 122, 122),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppButton(
                              text: "Join",
                              textColor: Colors.white,
                              backgroundColor: Color.fromRGBO(255, 112, 134, 1),
                              width: 200,
                              height: 50,
                              radius: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OverlappingImages extends StatelessWidget {
  OverlappingImages({super.key});
  final List<String> imagePaths = [
    "Assets/Images/More.png",
    "Assets/Images/black.png",
    "Assets/Images/blue.png",
    "Assets/Images/white.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 90,
        width: 160,
        child: Stack(
          alignment: Alignment.centerRight, // Align images to the right
          children: imagePaths.asMap().entries.map((entry) {
            int idx = entry.key;
            String imagePath = entry.value;
            return Positioned(
              right: idx * 20.0, // Adjust position for overlap effect
              child: Image.asset(
                imagePath,
                width: 100, // Fixed width for all images
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
