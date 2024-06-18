import 'package:flutter/material.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:fitapp/Widgets/ImageCont.dart';
import 'package:fitapp/Widgets/container.dart';
import 'package:fitapp/Widgets/button.dart';
import 'package:fitapp/Widgets/appbar.dart';
import "package:fitapp/Pages/discoverpage.dart";
import "package:fitapp/Pages/friendspage.dart";

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({super.key});

  @override
  _WorkoutScreenState createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  int _selectedSegment = 1; // Default selected segment

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Workout",
        leftIconPath: "Assets/Images/Close.svg",
        rightIconPath: "Assets/Images/Navigation.svg",
        onLeftIconTap: () {
          Navigator.of(context).pop(); // Navigate back
        },
        onRightIconTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const DiscoverScreen()),
          );
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
          child: Column(
            children: [
              const ContainerGirl(
                rightSideImage: "Assets/Images/girl.png",
                txt1: "Flat 50% \n Discount",
                txt2: "Shape your \n body with \n pump house",
                borderRadius: 10,
                height: 200,
                width: 370,
              ),
              const SizedBox(height: 27),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Unlock Unlimited Access",
                  style: TextStyle(
                      fontFamily: "DMSans",
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Activate this exercise so you can practice with your friends",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "DMSans",
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 136, 136, 136),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CustomSlidingSegmentedControl<int>(
                children: const {
                  1: Text(
                    'Yearly',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "DMSans",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(255, 112, 134, 1),
                    ),
                  ),
                  2: Text(
                    'Monthly',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "DMSans",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                },
                onValueChanged: (int value) {
                  setState(() {
                    _selectedSegment = value;
                  });
                },
                initialValue: _selectedSegment,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFFDE8E9),
                ),
                thumbDecoration: BoxDecoration(
                  color: _selectedSegment == 2
                      ? const Color.fromRGBO(255, 112, 134, 1)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 4.0,
                      spreadRadius: 1.0,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                curve: Curves.easeInOut,
                height: 55,
                fixedWidth: 130,
                innerPadding: EdgeInsets.zero,
              ),
              const SizedBox(height: 30),
              const Cont(
                txt1: "Basic",
                txt2: "\$119 /Year",
                txt3: "\$9.99 /Monthly billed annually",
                txt3BackgroundColor: Color.fromARGB(255, 211, 211, 211),
              ),
              const SizedBox(height: 30),
              const Cont(
                txt1: "Pro",
                txt2: "\$239 /Year",
                txt3: "\$19.99 /Monthly billed annually",
                txtCOlor: Color.fromRGBO(255, 112, 134, 1),
              ),
              const SizedBox(height: 30),
              AppButton(
                text: "Payment",
                textColor: const Color.fromARGB(255, 255, 255, 255),
                backgroundColor: const Color.fromRGBO(255, 112, 134, 1),
                radius: 10,
                height: 50,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
