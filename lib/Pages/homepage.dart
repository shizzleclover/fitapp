import 'package:fitapp/Widgets/bottomapp.dart';
import 'package:fitapp/Widgets/ImageCont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ContainerGirl(
          leftBottomImage: 'Assets/Images/cont.png',
          rightSideImage: 'Assets/Images/girl.png',
          txt1: 'Today, 8 Jul',
          txt2: '1 883 Kcal',
          buttonText: 'Track your activity', // You can set this to null if no button is needed
        ),
      ),
     
    );
  }
}
