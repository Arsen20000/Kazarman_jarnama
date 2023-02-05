import 'package:flutter/material.dart';
import 'package:kazarman_jarnama/view/add_advert_view/add_advert_view.dart';
import 'package:kazarman_jarnama/view/main_view.dart';

import '../../constants/custom_text_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:const [
              Text('Бул баракчага ким экенинизди айтып катоодон отунуз керек болот!', 
              style: TextStyle(fontSize: 22, color:Colors.blue),),
              SizedBox(height: 24),
              // CustomTextField(),
               SizedBox(height: 14 ),
              // CustomTextField(
              //   // controller: controller.password,
              //   labelText: 'Password',
              //   hinText: 'Enter your Password',
              // ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const AdvertAddView()));
              },
              child:const Text('Жарнама беруу', style:TextStyle(fontSize: 20)))
        ],
      ),
    ));
  }
}
