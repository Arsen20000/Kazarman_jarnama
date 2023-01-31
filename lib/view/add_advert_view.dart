import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AdvertAddView extends StatefulWidget {
  const AdvertAddView({super.key});

  @override
  State<AdvertAddView> createState() => _AdvertAddViewState();
}

class _AdvertAddViewState extends State<AdvertAddView> {
  @override
  File? _image;
  Future getImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;
    final imageTemporary = File(image.path);

    //   File img = File(image.path);
    setState(() {
      _image = imageTemporary;
       Navigator.of(context).pop();
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column( 
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        _image != null
            ? Image.file(_image!, width: 250, height: 300, fit: BoxFit.cover)
            : Image.asset('assets/images/yssyk_kol.jpg'),
        TextButton(
            onPressed: () => getImage(ImageSource.gallery),
            child:const Text('galery', style: TextStyle(fontSize: 50),)),
       
        TextButton(
            onPressed: () => getImage(ImageSource.camera),
            child: const Text('camera', style: TextStyle(fontSize: 50),))
        ]
      ),
    );
  }
}
