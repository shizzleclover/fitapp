import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fitapp/widgets/appbar.dart'; // Adjust import path as per your project structure

class WorkoutdetailScreen extends StatelessWidget {
  const WorkoutdetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leftIconPath: "Assets/Images/Arrow.svg",
        backGround: Color.fromARGB(255, 255, 234, 241),
        onLeftIconTap: () {
          Navigator.of(context).pop();
        },
      ),
      body: Container(
        color: const Color.fromARGB(255, 255, 234, 241),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              children: [
                Center(
                  child: ClipOval(
                    child: Image.asset(
                      "Assets/Images/lift.png",
                      width: 200, // Adjust the width as needed
                      height: 200, // Adjust the height for a perfect circle
                      fit: BoxFit
                          .contain, // Use contain to maintain aspect ratio
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
                      "Easy 4 min",
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
                  "Full-Body Workout",
                  style: TextStyle(
                    fontFamily: "DMSans",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Shift stubborn fat and build muscle",
                  style: TextStyle(
                    fontFamily: "DMSans",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 155, 155, 155),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 50,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 370,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: 50),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Excercises",
                                  style: TextStyle(
                                    fontFamily: "DMSans",
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 155, 155, 155),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              BtsContain(
                                svgPath1: "Assets/Images/bicep.svg",
                                txt1: "Biceps",
                                svgPath2: "Assets/Images/smallarrow.svg",
                              ),
                              SizedBox(height: 15),
                              BtsContain(
                                svgPath1: "Assets/Images/back.svg",
                                txt1: "Body-Back",
                                svgPath2: "Assets/Images/smallarrow.svg",
                              ),
                              SizedBox(height: 15),
                              BtsContain(
                                svgPath1: "Assets/Images/butt.svg",
                                txt1: "Body-Butt",
                                svgPath2: "Assets/Images/smallarrow.svg",
                              ),
                              SizedBox(height: 15),
                              BtsContain(
                                svgPath1: "Assets/Images/legs.svg",
                                txt1: "Legs and Core",
                                svgPath2: "Assets/Images/smallarrow.svg",
                              ),
                              SizedBox(height: 15),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: -50, // Adjust the top value to control the overlap
                      child: Image.asset(
                        "Assets/Images/Play.png",
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BtsContain extends StatelessWidget {
  final String? txt1;
  final double? width;
  final double? height;
  final double? borderRad;
  final String? svgPath1;
  final String? svgPath2;
  final Color? txtColor;
  final Color? backGround;

  const BtsContain({
    Key? key,
    this.txt1,
    this.width,
    this.height,
    this.borderRad,
    this.backGround,
    this.svgPath1,
    this.svgPath2,
    this.txtColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 70,
      width: width ?? 400,
      decoration: BoxDecoration(
        color: backGround ?? Colors.white,
        borderRadius: BorderRadius.circular(borderRad ?? 35),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(svgPath1 ?? ""),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  txt1 ?? "",
                  style: TextStyle(
                    color: txtColor ?? const Color.fromARGB(255, 0, 0, 0),
                    fontFamily: "DMSans",
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [SvgPicture.asset(svgPath2 ?? "")],
            ),
          ],
        ),
      ),
    );
  }
}
