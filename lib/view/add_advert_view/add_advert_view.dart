import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kazarman_jarnama/services/image_picer_service.dart';

import '../main_view.dart';

class AdvertAddView extends StatefulWidget {
  const AdvertAddView({super.key});

  @override
  State<AdvertAddView> createState() => _AdvertAddViewState();
}

class _AdvertAddViewState extends State<AdvertAddView> {
  final _title = TextEditingController();
  final _titleDescription = TextEditingController();
  final _descriptions = TextEditingController();
  final _phone = TextEditingController();
  final _userName = TextEditingController();
  final _address = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('reklama beruuu'),
        ),
        body: ListView(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
          children: [
            ImageContainer(images: [],),
            TexttformField(
              controller: _title,
              hintText: 'title',
            ), 
            const SizedBox(height: 12),
            TexttformField(
              controller: _titleDescription,
              hintText: 'titleDescription',
            ),
            const SizedBox(height: 12),
            TexttformField(
              maxLines: 6,
              controller: _descriptions,
              hintText: 'descriptions',
            ),
            const SizedBox(height: 12),
            TexttformField(
              controller: _phone,
              hintText: 'phone',
            ),
            const SizedBox(height: 12),
            TexttformField(
              controller: _userName,
              hintText: 'userName',
            ),
            const SizedBox(height: 12),
            TexttformField(
              controller: _address,
              hintText: 'address',
            ),
            const SizedBox(height: 12),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.publish),
                label: const Text('Add to firebase'))
          ],
        ));
  }
}

// ignore: must_be_immutable
class ImageContainer extends StatefulWidget {
   ImageContainer({
   required this.images,
    
    super.key,
  });

   List<XFile> images;

  @override
  State<ImageContainer> createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
  final service = ImagePickerService();

  @override
  Widget build(BuildContext context) {
   
    return Container(
        width: double.infinity,
        height: 300,
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(20)),
        child: widget.images.isNotEmpty
            ? Wrap(
                children: widget.images.map((e) => Expanded(child: Image.file(File(e.path)))).toList(),
              )
            : Center(
                child: IconButton(  
                  icon: const Icon(
                      Icons.camera_enhance,
                      size: 40,
                    ),
                    onPressed: () async {
                      final value = await service.pickImages();
                      if (value != null) {
                        widget.images = value;
                        setState(() {});
                      }
                
                    },)
                  
              ));
  }
}
