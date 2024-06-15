import 'package:flutter/material.dart';
import 'package:fitapp/Widgets/appbar.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LiveSessionscreen extends StatelessWidget {
  const LiveSessionscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        leftIconPath: "Assets/Images/Close.svg",
        title: "Live Session",
        rightIconPath: "Assets/Images/Navigation.svg",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 16,
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
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '5',
                      style: TextStyle(
                          fontFamily: 'CircularStd', color: Colors.grey),
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      '6',
                      style: TextStyle(
                          fontFamily: 'CircularStd', color: Colors.grey),
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      '7 ',
                      style: TextStyle(
                          fontFamily: 'CircularStd', color: Colors.grey),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      width: 103,
                      height: 24,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 228, 232, 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Center(
                        child: Text(
                          'Today, 8 Jul',
                          style: TextStyle(
                              fontFamily: 'CircularStd',
                              color: Color.fromRGBO(53, 53, 53, 1)),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      ' 9',
                      style: TextStyle(
                          fontFamily: 'CircularStd', color: Colors.grey),
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      '10',
                      style: TextStyle(
                          fontFamily: 'CircularStd', color: Colors.grey),
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      '11',
                      style: TextStyle(
                          fontFamily: 'CircularStd', color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Btscontainer(
                txt1: "Indoor Run",
                txt2: "24 min",
                svgPath1: "Assets/Images/rrun.svg",
                txt3: "5.56km",
                txt4: "340 kcal",
                svgPath2: "Assets/Images/calories.svg",
                txtColor: Colors.black,
              ),
              const SizedBox(
                height: 20,
              ),
              const Btscontainer(
                txt1: "Outdoor Cycling",
                txt2: "24 min",
                svgPath1: "Assets/Images/cyclist.svg",
                txt3: "4.22km",
                txt4: "348 kcal",
                svgPath2: "Assets/Images/calories.svg",
                txtColor: Colors.black,
              ),
              const SizedBox(
                height: 20,
              ),
              const Btscontainer(
                txt1: "Threadmill",
                txt2: "24 min",
                svgPath1: "Assets/Images/mill.svg",
                txt3: "5.56km",
                txt4: "348 kcal",
                svgPath2: "Assets/Images/calories.svg",
                txtColor: Colors.black,
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OverlappingImages extends StatelessWidget {
  OverlappingImages({super.key});
  final List<String> imagePaths = [
    "Assets/Images/black.png",
    "Assets/Images/blue.png",
    "Assets/Images/white.png",
    "Assets/Images/More.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 60, // Adjust the height based on your images
        width: 120, // Adjust the width based on your images
        child: Stack(
          children: imagePaths.asMap().entries.map((entry) {
            int idx = entry.key;
            String imagePath = entry.value;
            return Positioned(
              left: idx * 30.0, // Adjust position for overlap effect
              child: Image.asset(
                imagePath,
                width: 40, // Fixed width for all images
                height: 40, // Fixed height for all images
              ),
            );
          }).toList(),
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
      height: height ?? 80,
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
    );
  }
}
