import 'package:flutter/material.dart';
import 'package:fitapp/Widgets/appbar.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BodyScreen extends StatelessWidget {
  const BodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        leftIconPath: "Assets/Images/Arrow.svg",
        rightIconPath: "Assets/Images/Navigation.svg",
        title: "Body-Back",
        backGround: Color.fromARGB(255, 255, 234, 241), // Set AppBar color
      ),
      body: Container(
        color: const Color.fromARGB(255, 255, 234, 241),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Column(
                  children: [
                    Center(
                      child: ClipOval(
                        child: Image.asset(
                          "Assets/Images/last.png",
                          width: 200, // Adjust the width as needed
                          height: 200, // Adjust the height for a perfect circle
                          fit: BoxFit
                              .contain, // Use contain to maintain aspect ratio
                        ),
                      ),
                    ),
                    const SizedBox(
                        height: 60), // Space for the overlapping button

                    Container(
                      width: double.infinity,
                      height: 370,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InfoCard(
                                  svgPath: "Assets/Images/heart.svg",
                                  mainText: "246kcal",
                                  subText: "Last 7 days",
                                  textColor: Colors.black,
                                ),
                                InfoCard(
                                  svgPath: "Assets/Images/drop.svg",
                                  mainText: "84kcal",
                                  subText: "All time",
                                  textColor: Colors.black,
                                ),
                                InfoCard(
                                  svgPath: "Assets/Images/shock.svg",
                                  mainText: "72kcal",
                                  subText: "Average",
                                  textColor: Colors.black,
                                ),
                              ],
                            ),
                            const SizedBox(
                                height:
                                    35), // Space between InfoCards and new row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Information",
                                  style: TextStyle(
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                SvgPicture.asset("Assets/Images/option.svg"),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Shift stubborn fat and build muscle with this total body workout",
                              style: TextStyle(
                                fontFamily: 'DMSans',
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                color: Color.fromARGB(255, 150, 150, 150),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              "If you’re an experienced gym-goer hitting the weights room for long sessions several times a week, the chances are you have a structured training plan that targets different areas of the body with each workout.",
                              style: TextStyle(
                                fontFamily: 'DMSans',
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                                color: Color.fromARGB(255, 150, 150, 150),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 210, // Adjust the top value to control the overlap
                  child: Image.asset(
                    "Assets/Images/Play.png",
                    width: 100,
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String svgPath;
  final String mainText;
  final String subText;
  final Color textColor;

  const InfoCard({
    Key? key,
    required this.svgPath,
    required this.mainText,
    required this.subText,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 40), // Adjust the height as needed
        SvgPicture.asset(svgPath),
        Text(
          mainText,
          style: TextStyle(
            fontFamily: 'DMSans',
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: textColor,
          ),
        ),
        Text(
          subText,
          style: const TextStyle(
            fontFamily: 'DMSans',
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: Color.fromARGB(255, 185, 185, 185),
          ),
        ),
      ],
    );
  }
}
