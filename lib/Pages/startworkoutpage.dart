import 'package:flutter/material.dart';
import 'package:fitapp/Widgets/appbar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fitapp/Pages/bodybackpage.dart';
import 'package:fitapp/Pages/workpage.dart';

class Startworkoutscreen extends StatelessWidget {
  const Startworkoutscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Start workout",
        leftIconPath: "Assets/Images/Close.svg",
        onLeftIconTap: () {
          Navigator.of(context).pop();
        },
        rightIconPath: "Assets/Images/Navigation.svg",
        backGround: const Color.fromARGB(255, 255, 207, 214),
      ),
      body: Container(
        color: const Color.fromARGB(255, 255, 207, 214),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              children: [
                SizedBox(
                    height: MediaQuery.of(context).size.height *
                        0.07), // Reduced height
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(height: 50),
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
                            BtsContain(
                              svgPath1: "Assets/Images/pec.svg",
                              txt1: "Legs and Core",
                              svgPath2: "Assets/Images/smallarrow.svg",
                            ),
                            SizedBox(height: 15),
                            BtsContain(
                              svgPath1: "Assets/Images/core.svg",
                              txt1: "Legs and Core",
                              svgPath2: "Assets/Images/smallarrow.svg",
                            ),
                            SizedBox(height: 15),
                            BtsContain(
                              svgPath1: "Assets/Images/bench.svg",
                              txt1: "Legs and Core",
                              svgPath2: "Assets/Images/smallarrow.svg",
                            ),
                            SizedBox(height: 15),
                            BtsContain(
                              svgPath1: "Assets/Images/loss.svg",
                              txt1: "Legs and Core",
                              svgPath2: "Assets/Images/smallarrow.svg",
                            ),
                            SizedBox(height: 15),
                            BtsContain(
                              svgPath1: "Assets/Images/front.svg",
                              txt1: "Legs and Core",
                              svgPath2: "Assets/Images/smallarrow.svg",
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.1 -
                    75, // Adjust as needed
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Bodypackscreen()));
                  },
                  child: Image.asset(
                    "Assets/Images/Play.png",
                    width: 100,
                    height: 100,
                  ),
                )),
          ],
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
                if (txt1 != null)
                  Text(
                    txt1!,
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
