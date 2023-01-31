import 'package:flutter/material.dart';
import 'package:kazarman_jarnama/view/add_advert_view.dart';
import 'package:kazarman_jarnama/view/advert_view.dart';

import '../constants/text_form_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Form(
            // key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:const [
                CustomTextField(
                  // controller: controller.email,
                  labelText: 'Email',
                  hinText: 'Enter your Email',
                ),
                 SizedBox(
                  height: 14,
                ),
                CustomTextField(
                  // controller: controller.password,
                  labelText: 'Password',
                  hinText: 'Enter your Password',
                ),
              ],
            ),
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
              child:const Text('asdsada', style:TextStyle(fontSize: 20)))
        ],
      ),
    ));
  }
}
