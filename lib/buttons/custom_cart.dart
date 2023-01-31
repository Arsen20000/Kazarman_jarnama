import 'package:flutter/material.dart';

import '../constants/app_text_style.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
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
      splashColor:Colors.cyanAccent, 
      highlightColor:Color.fromARGB(255, 181, 163, 63),
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 20,
            color: Colors.indigo,
          ),
          const SizedBox(width: 8),
          Text(text, style: AppTextStyle.cardTextStyles),
        ],
      ),
    );
  }
}