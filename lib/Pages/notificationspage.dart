import 'package:flutter/material.dart';
import 'package:fitapp/Widgets/appbar.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        leftIconPath: "Assets/Images/Close.svg",
        title: "Notifications",
        rightIconPath: "Assets/Images/Navigation.svg",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Today",
                style: TextStyle(
                  fontFamily: "DMSans",
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 40),
              Btscontainer(
                txt1: "Catfit",
                txt2: "Your duel with Alex starts today. Be \n well prepared",
                svgPath1: "Assets/Images/Ca.png",
                txt3: "02:01 PM",
              ),
              Divider(
                height: 1,
                color: Color.fromRGBO(211, 211, 211, 1),
              ),
              Btscontainer(
                txt1: "Alina Jen",
                txt2: "Started following you!",
                svgPath1: "Assets/Images/Al.png",
                txt3: "10:32 AM",
              ),
              Divider(
                height: 1,
                color: Color.fromRGBO(211, 211, 211, 1),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Yesterday",
                style: TextStyle(
                  fontFamily: "DMSans",
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Btscontainer(
                txt1: "Monica Kim",
                txt2: "Started following you!",
                svgPath1: "Assets/Images/Mo.png",
                txt3: "02:01 PM",
              ),
              Divider(
                height: 1,
                color: Color.fromRGBO(211, 211, 211, 1),
              ),
              Btscontainer(
                txt1: "Catfit",
                txt2: "Started following you!",
                svgPath1: "Assets/Images/Ca.png",
                txt3: "10:32 AM",
              ),
              Divider(
                height: 1,
                color: Color.fromRGBO(211, 211, 211, 1),
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
      height: height ?? 130,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        color: backGround ?? Colors.white,
        borderRadius: BorderRadius.circular(borderRad ?? 10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(svgPath1 ?? ""),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          txt1 ?? "",
                          style: TextStyle(
                            fontFamily: 'DMSans',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: txtColor ?? Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        txt3 ?? "",
                        style: TextStyle(
                          fontFamily: 'DMSans',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: txtColor ??
                              const Color.fromARGB(255, 165, 165, 165),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    txt2 ?? "",
                    style: TextStyle(
                      fontFamily: 'DMSans',
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: txtColor ?? Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
