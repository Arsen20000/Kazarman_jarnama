import 'package:flutter/material.dart';

import '../../buttons/alerd_dailog.dart';
import '../../buttons/custom_cart.dart';
import '../../constants/app_text.dart';

class MediaView extends StatelessWidget {
  const MediaView({super.key, this.onPressed});

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 36, 89),
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Colors.blue,
        centerTitle: false,
        title:  const Text(AppText.price,
        style:TextStyle(fontSize: 20)),
        leading: IconButton(
          onPressed: () {
          Navigator.pop(context);},
          icon: const Icon(Icons.menu, size: 24,),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon:const Icon(Icons.search, size: 24,),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
        margin: const EdgeInsets.all(10),
        // color:Color.fromARGB(255, 22, 158, 17),
        width: 500,
        height: 400,
        child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FlutterLogo(size: 50),
                const SizedBox(width: 10),
               Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                   Text('data',style: TextStyle(fontSize: 20),),
                    Text('12.23.32'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40),
            CustomCard(
              icon: Icons.star,
              text:'Baloo',
              onTap: () {},
            ),
            const SizedBox(height: 14),
            CustomCard(
              icon: Icons.share,
              text: 'bolyshu',
              onTap: () {},
            ),
            const SizedBox(height: 14),
            CustomCard(
              icon: Icons.chat_sharp,
              text: 'synysh',
              onTap: () {},
            ),
            const SizedBox(height: 14),
            CustomCard(
                icon: Icons.call,
                text: 'bailanush',
                onTap: () {
                  Navigator.push(context,
                   MaterialPageRoute(builder: (context) => const AlertDailog()));
                }),
            const SizedBox(height: 14),
          ],
        ),
      ),
    );
  }
}
