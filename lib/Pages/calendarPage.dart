import "package:flutter/material.dart";
import 'package:fitapp/Widgets/appbar.dart';
import 'package:fitapp/Pages/playingpage.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Calendarpage extends StatelessWidget {
  const Calendarpage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppBar(
        leftIconPath: "Assets/Images/Close.svg",
        onLeftIconTap: () {
          Navigator.pop(context);
        },
        title: "Calendar",
        rightIconPath: "Assets/Images/Navigation.svg",
        backGround: Color.fromARGB(255, 255, 218, 230),
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 218, 230),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    "Assets/Images/Calendar.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 500,
                  height: 300,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(19),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "8 Workouts",
                                  style: TextStyle(
                                    fontFamily: 'DMSans',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "Get ready for workouts",
                                  style: TextStyle(
                                    fontFamily: "DMSans",
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromARGB(225, 150, 150, 150),
                                  ),
                                )
                              ],
                            ),
                            Text(
                              "See All",
                              style: TextStyle(
                                fontFamily: "DMSans",
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(223, 2, 2, 2),
                              ),
                            )
                          ],
                        ),
                        Btscontainer(
                          txt1: "Indoor run",
                          txt2: "35 min",
                          svgPath1: "Assets/Images/run.svg",
                          txt3: "7.12km",
                          txt4: "452 kcal",
                          svgPath2: "Assets/Images/calories.svg",
                          txtColor: Colors.black,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PlayingScreen()));
                          },
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Btscontainer(
                          txt1: "Outdoor Cycling",
                          txt2: "40 min",
                          svgPath1: "Assets/Images/cyclist.svg",
                          txt3: "4.22km",
                          txt4: "452 kcal",
                          svgPath2: "Assets/Images/calories.svg",
                          txtColor: Colors.black,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
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
  final VoidCallback? onTap;

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
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
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
                    SvgPicture.asset(svgPath1 ?? ""),
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
        ));
  }
}
