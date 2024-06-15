import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fitapp/Widgets/appbar.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
          title: "Discover",
          leftIconPath: "Assets/Images/Close.svg",
          rightIconPath: "Assets/Images/Navigation.svg"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  "Assets/Images/girlblack.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Discover Nearby",
                style: TextStyle(
                  fontFamily: "DMSans",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center, // Ensure the text is centered
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Explore around to find workouts \n with new friends",
                style: TextStyle(
                    fontFamily: "DMSans",
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Color.fromRGBO(107, 107, 107, 1)),
                textAlign: TextAlign.center, // Ensure the text is centered
              ),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: OverlappingImages(),
              ),
              const SizedBox(
                height: 16,
              ),
              const Btscontainer(
                txt1: "Indoor run",
                txt2: "35 min",
                svgPath1: "Assets/Images/run.svg",
                txt3: "7.12km",
                txt4: "452 kcal",
                svgPath2: "Assets/Images/calories.svg",
                txtColor: Colors.black,
              ),
              const SizedBox(
                height: 16,
              ),
              const Btscontainer(
                txt1: "Outdoor Cycling",
                txt2: "40 min",
                svgPath1: "Assets/Images/cycling.svg",
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
    return SizedBox(
      height: 100, // Set a fixed height for the overlapping images
      width: 180, // Set a fixed width to ensure finite size for the Stack
      child: Stack(
        children: imagePaths.asMap().entries.map((entry) {
          int idx = entry.key;
          String imagePath = entry.value;
          return Positioned(
            right: idx * 20,
            child: Image.asset(imagePath, width: 100),
          );
        }).toList(),
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
