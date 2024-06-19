import 'package:fitapp/Pages/bodybackpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fitapp/Widgets/appbar.dart';
import 'package:fitapp/Widgets/button.dart';
import 'package:fitapp/Pages/bodypageback_2.dart';
import 'package:fitapp/Pages/startworkoutpage.dart';
import 'package:fitapp/Pages/notificationspage.dart';

class WorkScreen extends StatelessWidget {
  const WorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: "Workouts",
          leftIconPath: "Assets/Images/Arrow.svg",
          rightIconPath: "Assets/Images/Filter.svg",
          onLeftIconTap: () {
            Navigator.pop(context);
          },
          onRightIconTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Startworkoutscreen()));
          }),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 400,
                height: 285,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 232, 234),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset("Assets/Images/crown.svg"),
                        const SizedBox(
                          height: 17,
                        ),
                        const Text(
                          "Join the community",
                          style: TextStyle(
                              fontFamily: "DMSans",
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Our community of experts will \n help you achieve your goal.",
                          style: TextStyle(
                              fontFamily: "DMSans",
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Color.fromARGB(255, 114, 114, 114)),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(
                          height: 17,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: AppButton(
                            text: "Join",
                            fsize: 18,
                            backgroundColor: Color.fromRGBO(255, 112, 134, 1),
                            height: 60,
                            width: 275,
                            textColor: Colors.white,
                            radius: 10,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          NotificationsScreen()));
                            },
                          ),
                        )
                      ]),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Get started",
                  style: TextStyle(
                      fontFamily: "DMSans",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 122, 122, 122)),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const BtsContain(
                svgPath1: "Assets/Images/bicep.svg",
                txt1: "Biceps",
                svgPath2: "Assets/Images/smallarrow.svg",
              ),
              const SizedBox(
                height: 15,
              ),
              BtsContain(
                  svgPath1: "Assets/Images/back.svg",
                  txt1: "Body-Back",
                  svgPath2: "Assets/Images/smallarrow.svg",
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (contex) => const BodyScreen()));
                  }),
              const SizedBox(
                height: 15,
              ),
              const BtsContain(
                svgPath1: "Assets/Images/butt.svg",
                txt1: "Body-Butt",
                svgPath2: "Assets/Images/smallarrow.svg",
              ),
              const SizedBox(
                height: 15,
              ),
              const BtsContain(
                svgPath1: "Assets/Images/legs.svg",
                txt1: "Legs and Core",
                svgPath2: "Assets/Images/smallarrow.svg",
              ),
              const SizedBox(
                height: 15,
              ),
            ],
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
  final VoidCallback? ontap;

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
    this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onDoubleTap: ontap,
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
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      txt1 ?? "",
                      style: TextStyle(
                          color: txtColor ?? const Color.fromARGB(255, 0, 0, 0),
                          fontFamily: "DMSans",
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [SvgPicture.asset(svgPath2 ?? "")],
                )
              ],
            ),
          ),
        ));
  }
}
