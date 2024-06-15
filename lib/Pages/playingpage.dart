import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import "package:fitapp/Widgets/appbar.dart";

class PlayingScreen extends StatelessWidget {
  const PlayingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
          title: "Playing",
          leftIconPath: "Assets/Images/Close.svg",
          rightIconPath: "Assets/Images/Navigation.svg"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "Assets/Images/circle1.png",
                    width: 500,
                  ),
                  Image.asset(
                    "Assets/Images/circle3.png",
                    width: 240,
                  ),
                  Image.asset(
                    "Assets/Images/circle2.png",
                    width: 165,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Today \n 2100 \n \n Kcal",
                        style: TextStyle(
                          fontFamily: "DMSans",
                          fontSize: 15,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Btscontainer(
                txt1: "Sarah Jay",
                svgPath1: "Assets/Images/sara.png",
                txt2: "8 workouts ",
                txt4: "460kcal",
                svgPath2: "Assets/Images/calories.svg",
                backGround: const Color.fromRGBO(255, 112, 134, 1),
              ),
              const SizedBox(height: 30),
              Btscontainer(
                txt1: "Jessica john",
                svgPath1: "Assets/Images/jess.png",
                txt2: "8 workouts ",
                txt4: "460kcal",
                svgPath2: "Assets/Images/calories.svg",
                backGround: Color.fromARGB(255, 0, 0, 0),
                txtColor: Colors.white,
              ),
              const SizedBox(height: 30),
              Btscontainer(
                txt1: "Lina Smith",
                svgPath1: "Assets/Images/lin.png",
                txt2: "8 workouts ",
                txt4: "460kcal",
                svgPath2: "Assets/Images/calories.svg",
                backGround: const Color.fromRGBO(255, 112, 134, 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Btscontainer extends StatelessWidget {
  final String? txt1;
  final String? txt2;
  final String? txt3;
  final String? txt4;
  final double? width;
  final double? height;
  final double? borderRad;
  final String? svgPath1;
  final String? svgPath2;
  final Color? txtColor;
  final Color? backGround;

  const Btscontainer({
    Key? key,
    this.txt1,
    this.txt2,
    this.txt3,
    this.txt4,
    this.width,
    this.height,
    this.borderRad,
    this.svgPath1,
    this.svgPath2,
    this.txtColor,
    this.backGround,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 70,
      width: width ?? 350,
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
                Image.asset(svgPath1 ?? ""),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      txt1 ?? "",
                      style: TextStyle(
                        fontFamily: 'DMSans',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: txtColor ?? Colors.black,
                      ),
                    ),
                    Text(
                      txt2 ?? "",
                      style: TextStyle(
                        fontFamily: 'DMSans',
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: txtColor ?? Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  txt3 ?? "",
                  style: TextStyle(
                    fontFamily: 'DMSans',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: txtColor ?? Colors.black,
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      svgPath2 ?? "",
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      txt4 ?? "",
                      style: TextStyle(
                        fontFamily: 'DMSans',
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: txtColor ?? Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
