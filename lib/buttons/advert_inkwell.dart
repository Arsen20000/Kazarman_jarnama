
import 'package:flutter/material.dart';

import '../constants/app_text_style.dart';

class AdvertListInkWell extends StatelessWidget {
  const AdvertListInkWell({
    required this.title,
    this.price,
    required this.data,
    Key? key,
  }) : super(key: key);

  final String title;
  final String? price;
  final String data;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.blueGrey,
      borderRadius: BorderRadius.circular(10),
      onTap: () {},
      splashColor: Colors.blueAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset('assets/images/toyota_200.jpg'),
          ),
          Row(
            children: [
              Text(title, style: AppTextStyle.titleStyle),
               
            ],
          ),
          Text(price!, style: AppTextStyle.priceStyle),
          const SizedBox(width: 30),
          Text(data, style: AppTextStyle.dataStyle),
        ],
      ),
    );
  }
}
