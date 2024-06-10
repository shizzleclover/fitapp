// // lib/custom_bottom_nav_bar.dart

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class CustomBottomNavBar extends StatelessWidget {
//   final List<BottomNavigationBarItem> items;
//   final int currentIndex;
//   final Function(int) onTap;
//   final IconData centerIcon;
//   final Function(int) onIconClick; // Function to handle icon click
 
//   final Map<int, dynamic> iconTextMap = {
//     0: {'icon': SvgPicture.asset(), 'text': 'Home'},
//     1: {'icon': SvgPicture.asset(), 'text': 'Search'},
//     2: {'icon': SvgPicture.asset(), 'text': 'Notifications'},
//     3: {'icon': SvgPicture.asset(), 'text': 'Profile'},
//   };

//   CustomBottomNavBar({
//     Key? key,
//     required this.items,
//     required this.currentIndex,
//     required this.onTap,
//     required this.centerIcon,
//     required this.onIconClick,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       color: Colors.white,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           IconButton(
//             icon: Icon(iconTextMap[0]['icon']), // Use icon from map
//             onPressed: () {
//               onIconClick(0); // Call the function to handle icon click
//             },
//           ),
//           IconButton(
//             icon: Icon(iconTextMap[1]['icon']), // Use icon from map
//             onPressed: () {
//               onIconClick(1); // Call the function to handle icon click
//             },
//           ),
//           Expanded(
//             child: SizedBox(), // Spacer to fill the space
//           ),
//           IconButton(
//             icon: Icon(iconTextMap[2]['icon']), // Use icon from map
//             onPressed: () {
//               onIconClick(2); // Call the function to handle icon click
//             },
//           ),
//           IconButton(
//             icon: Icon(iconTextMap[3]['icon']), // Use icon from map
//             onPressed: () {
//               onIconClick(3); // Call the function to handle icon click
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
