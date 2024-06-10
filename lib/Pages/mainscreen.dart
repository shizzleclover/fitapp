import 'package:flutter/material.dart';
import 'package:fitapp/Pages/Scroll.dart';
import 'package:fitapp/Pages/homepage.dart';
import 'package:fitapp/Widgets/button.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color back = Color.fromRGBO(255, 96, 121, 1);
    Color path = Color.fromRGBO(255, 255, 255, 1);
    Color def = Color.fromRGBO(0, 0, 0, 1);
    
    return Scaffold(
      backgroundColor: back,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'Assets/Images/PathP.png',
              width: 1,
            ),
          ),
          Positioned.fill(
            child: Image.asset(
              'Assets/Images/Path.png',
            ),
          ),
          Positioned.fill(
            child: Image.asset(
              'Assets/Images/Path2.png',  
            ),
          ),
          Positioned.fill(
            child: Image.asset(
              'Assets/Images/Path3.png',  
            ),
          ),
          Positioned.fill(
            child: Image.asset(
              'Assets/Images/Path4.png',  
            ),
          ),
          Positioned.fill(
            child: Image.asset(
              'Assets/Images/Path5.png',  
            ),
          ),
          Positioned.fill(
            child: Image.asset(
              'Assets/Images/Path6.png',  
            ),
          ),
          Positioned.fill(
            child: Image.asset(
              'Assets/Images/Path7.png',  
              width: 1,
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              'Assets/Images/Oval.png',
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              'Assets/Images/Oval2.png',
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Welcome to FitApp',
                  style: TextStyle(
                    color: path,
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Your journey starts here',
                  style: TextStyle(
                    color: path,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 20),  
                AppButton(
                  backgroundColor: path,
                  text: 'Next',
                  width: 266,
                  height: 63,
                  textColor: def,
                  fsize: 17,
                  ffamily: 'Poppins',
                  fweight: '600',
                  icon: null,
                  radius: 20,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  border: path,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0), // Adjust space between image and bottom of the screen as needed
              child: Image.asset(
                'Assets/Images/girl.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
