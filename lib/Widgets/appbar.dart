import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? leftIconPath;
  final String? rightIconPath;
  final Color? backGround;
  final VoidCallback? onLeftIconTap;
  final VoidCallback? onTitleTap;
  final VoidCallback? onRightIconTap;

  const CustomAppBar({
    Key? key,
    this.title,
    this.leftIconPath,
    this.rightIconPath,
    this.backGround,
    this.onLeftIconTap,
    this.onTitleTap,
    this.onRightIconTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(90.0),
      child: Container(
        color: backGround ?? Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: backGround ?? Colors.white, // Set AppBar color
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: onLeftIconTap,
                  child: SvgPicture.asset(leftIconPath ?? ""),
                ),
                Flexible(
                  flex: 1,
                  child: GestureDetector(
                    onTap: onTitleTap,
                    child: Text(
                      title ?? "",
                      style: const TextStyle(
                        fontFamily: "DMSans",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: onRightIconTap,
                  child: SvgPicture.asset(rightIconPath ?? " "),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(90.0);
}
