import 'package:flutter/material.dart';
import 'package:kazarman_jarnama/constants/app_text_style.dart';
import 'package:kazarman_jarnama/view/login_view/login_view.dart';

import '../constants/app_text.dart';
import 'drawer_view/drawer_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, actions: [
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const LoginView(),
                  ));
            },
            icon: const Icon(Icons.add)),
      ]),
      drawer: const DrawerDrawer(),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
        child: ListView(
          children: const [
            AdvertListInkWell(
                title: AppText.title, price: AppText.price, data: AppText.data),
            AdvertListInkWell(
                title: AppText.title, price: AppText.price, data: AppText.data),
            AdvertListInkWell(
                title: AppText.title, price: AppText.price, data: AppText.data),
            AdvertListInkWell(
                title: AppText.title, price: AppText.price, data: AppText.data),
          ],
        ),
      ),
    );
  }
}

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
      onTap: () {},
      splashColor: const Color.fromARGB(255, 242, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset('assets/images/toyota_200.jpg'),
          ),
          Row(
            children: [
              Text(title, style: AppTextStyle.titleStyle),
              // const Icon(Icons.favorite, size: 20, color:Colors.red),
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
