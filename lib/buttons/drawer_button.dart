
import 'package:flutter/material.dart';
import '../constants/app_text_style.dart';

class DrawerButton extends StatelessWidget {
  const DrawerButton({
    Key? key,
    required this.icon,
    required this.text,
    this.onTap,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final dynamic onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.blue, // splash color
      onTap: onTap, // button pressed
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 28,
            color:Colors.cyan
          ),
          const SizedBox(width: 40), // icon
          Text(
            text,
            style: AppTextStyle.drawerTextStyle,
          ), // text
        ],
      ),
    );
  }
}
