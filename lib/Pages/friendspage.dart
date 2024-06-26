import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fitapp/Widgets/button.dart';

class Friendspage extends StatelessWidget {
  const Friendspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SvgPicture.asset("Assets/Images/Arrow.svg"),
                Flexible(
                  flex: 1,
                  child: const Text(
                    "Find Friends",
                    style: TextStyle(
                      fontFamily: "DMSans",
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SvgPicture.asset('Assets/Images/Navigation.svg'),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'Assets/Images/Line.png',
                    width: 300, // Set the width of the line image
                  ),
                  Image.asset(
                    'Assets/Images/girl.png',
                    width: 100, // Set the width of the girl image
                  ),
                ],
              ),
              const SizedBox(height: 20), // Add some spacing below the Stack
              const Flexible(
                child: Text(
                  'Best Fitness app to make Closets Friends',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "DMSans",
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),

              const SizedBox(
                height: 30,
              ),
              AppButton(
                backgroundColor: Colors.white,
                iconSvgPath:
                    'Assets/Images/Facebook.svg', // Use iconSvgPath instead of icon
                // width: 50,
                height: 50,
                radius: 10,
                border: Colors.pink,
                text: 'Invite friends from Facebook', // Set the text property
                textColor: Colors.black, // Set the text color
                fsize: 15, // Set the font size
                onTap: () {}, icon: '',
              ),
              const SizedBox(
                height: 20,
              ),

              AppButton(
                backgroundColor: Colors.white,
                iconSvgPath:
                    'Assets/Images/Group.svg', // Use iconSvgPath instead of icon
                // width: 50,
                height: 50,
                radius: 10,
                border: Colors.pink,
                text: 'Invite friends from Instagram', // Set the text property
                textColor: Colors.black, // Set the text color
                fsize: 15, // Set the font size
                onTap: () {}, icon: '',
              ),
            ],

            // Placeholder for body content
          ),
        ),
      ),
    );
  }
}
