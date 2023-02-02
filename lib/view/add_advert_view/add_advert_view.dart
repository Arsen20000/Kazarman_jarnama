import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kazarman_jarnama/buttons/custom_cart.dart';
import 'package:kazarman_jarnama/buttons/drawer_button.dart';

import '../../constants/custom_text_field.dart';

class AdvertAddView extends StatefulWidget {
  const AdvertAddView({super.key});

  @override
  State<AdvertAddView> createState() => _AdvertAddViewState();
}

class _AdvertAddViewState extends State<AdvertAddView> {
  @override
  File? _image;

  Future getImage(ImageSource sourse) async {
    final image = await ImagePicker().pickImage(source: sourse);
    if (image == null) return;
    final imageTemporary = File(image.path);

    //   File img = File(image.path);
    setState(() {
      _image = imageTemporary;
      //  Navigator.of(context).pop();
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(children: [
        Center(
          child: _image != null
              ? Image.file(
                  _image!,
                  width: 250,
                  height: 300,
                  fit: BoxFit.cover,
                )
              : Image.asset('assets/images/yssyk_kol.jpg'),
        ),
        IconButton(
            onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Жарнаманын суротуy жуктоо'),
                    content:Column(
                      children: [
                        TextButton(
                            onPressed: () => getImage(ImageSource.camera),
                            child: const Text('Камера'),
                          ),
                           TextButton(
                            onPressed: () => getImage(ImageSource.gallery),
                            child: const Text('Галеря'),
                       ),
                      ],
                    ),
                  ),
                ),
            icon: const Icon(Icons.camera_enhance, size: 40,), 
            ),
        const CustomTextField(
          // controller: controller.email,
          labelText: 'Aty',
          hinText: 'Atyn jazunuz',
        ),
        const SizedBox(
          height: 14,
        ),
        const CustomTextField(
          // controller: controller.email,
          labelText: 'malumat',
          hinText: 'kenenirek malymat',
        ),
        const SizedBox(
          height: 14,
        ),
        const CustomTextField(
          // controller: controller.password,
          labelText: 'Baasy',
          hinText: 'Bassyn jazunuz',
        ),
        const SizedBox(
          height: 14,
        ),
        const DrawerButton(icon: Icons.call, text: '1234567890')
      ]),
    );
  }
}
