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
          // Positioned.fill(
          //   child: Image.asset(
          //     'Assets/Images/Path.png',
          //   ),
          // ),
          // Positioned.fill(
          //   child: Image.asset(
          //     'Assets/Images/Path2.png',  
          //   ),
          // ),
          // Positioned.fill(
          //   child: Image.asset(
          //     'Assets/Images/Path3.png',  
          //   ),
          // ),
          // Positioned.fill(
          //   child: Image.asset(
          //     'Assets/Images/Path4.png',  
          //   ),
          // ),
          // Positioned.fill(
          //   child: Image.asset(
          //     'Assets/Images/Path5.png',  
          //   ),
          // ),
          // Positioned.fill(
          //   child: Image.asset(
          //     'Assets/Images/Path6.png',  
          //   ),
          // ),
          // Positioned.fill(
          //   child: Image.asset(
          //     'Assets/Images/Path7.png',  
          //     width: 1,
          //   ),
          // ),
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
                SizedBox(height: 100), // Raise the content a bit higher
                Text(
                  'Pump House',
                  style: TextStyle(
                    color: path,
                    fontSize: 48,
                    fontFamily: 'DMSans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'FIND OUT EXACTLY WHAT DIET & TRAINING WILL WORK SPECIFICALLY FOR YOU',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: path,
                    fontSize: 16,
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
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(height: 300), 
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 0.0), // Space between image and bottom of the screen
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
