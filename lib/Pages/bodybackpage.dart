import 'package:flutter/material.dart';
import 'package:fitapp/Widgets/appbar.dart';

class Bodypackscreen extends StatelessWidget {
  const Bodypackscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        leftIconPath: "Assets/Images/Close.svg",
        rightIconPath: "Assets/Images/Navigation.svg",
        title: "Body-Back",
        backGround: Color.fromARGB(255, 255, 255, 255), // Set AppBar color
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Image.asset("Assets/Images/card2.png"),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Image.asset("Assets/Images/card1.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
