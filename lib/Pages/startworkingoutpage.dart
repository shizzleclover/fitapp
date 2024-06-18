import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fitapp/Widgets/appbar.dart';
import 'package:fitapp/Pages/workoutdetailspage.dart';

class Startworkingoutpage extends StatelessWidget {
  const Startworkingoutpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leftIconPath: "Assets/Images/Close.svg",
        title: "Start Workout",
        rightIconPath: "Assets/Images/Navigation.svg",
        onLeftIconTap: () {
          Navigator.of(context).pop();
        },
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Challenges",
                      style: TextStyle(
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    SvgPicture.asset("Assets/Images/option.svg"),
                  ],
                ),
                const SizedBox(height: 20), // Add some space between elements
                Container(
                  height: 250, // Adjust the height as needed
                  child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return BtsImage(
                          imagePath: "Assets/Images/blacklift.png",
                          txt1: "Full-Body workout",
                          txt2: "Shift stubborn fat \n and build muscle",
                          onClick: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const WorkoutdetailScreen()));
                          },
                        );
                      } else {
                        return const BtsImage(
                          imagePath: "Assets/Images/pinklift.png",
                          txt1: "Small-waist workout",
                          txt2: "Getting a smaller waist \n but with focus",
                        );
                      }
                    },
                    scrollDirection: Axis.horizontal,
                  ),
                ),

                const SizedBox(
                  height: 35,
                ),

                Container(
                  // ignore: prefer_const_constructors
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Categories",
                                style: TextStyle(
                                  fontFamily: 'DMSans',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "8 Categories",
                                style: TextStyle(
                                  fontFamily: "DMSans",
                                  fontSize: 12,
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
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(223, 253, 173, 217),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //1
                          Column(
                            children: [
                              SvgPicture.asset("Assets/Images/special.svg"),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Special",
                                style: TextStyle(
                                    fontFamily: "DMSans",
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromRGBO(39, 39, 39, 1)),
                              )
                            ],
                          ),
                          //2

                          Column(
                            children: [
                              Stack(
                                children: [
                                  SvgPicture.asset("Assets/Images/special.svg"),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Beach Rea..",
                                style: TextStyle(
                                    fontFamily: "DMSans",
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromRGBO(39, 39, 39, 1)),
                              )
                            ],
                          ),
                          //3
                          Column(
                            children: [
                              SvgPicture.asset("Assets/Images/special.svg"),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Full-Body",
                                style: TextStyle(
                                    fontFamily: "DMSans",
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromRGBO(39, 39, 39, 1)),
                              )
                            ],
                          ),
                          //4
                          Column(
                            children: [
                              SvgPicture.asset("Assets/Images/special.svg"),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Challenge",
                                style: TextStyle(
                                    fontFamily: "DMSans",
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                    color: Color.fromRGBO(39, 39, 39, 1)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
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

class BtsImage extends StatelessWidget {
  final String? imagePath;
  final String? txt1;
  final String? txt2;
  final VoidCallback? onClick;

  const BtsImage({Key? key, this.imagePath, this.txt1, this.txt2, this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onClick,
        child: SizedBox(
          width: 250,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      imagePath ?? "Assets/Images/pinklift.png",
                      fit: BoxFit.cover,
                      width: 180,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                txt1 ?? "",
                style: const TextStyle(
                  fontFamily: "DMSans",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                txt2 ?? "",
                style: const TextStyle(
                  fontFamily: "DMSans",
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(225, 150, 150, 150),
                ),
              ),
            ],
          ),
        ));
  }
}
