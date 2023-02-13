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
  List<XFile> images = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('reklama beruuu'),
        ),
        body: ListView(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
          children: [
            ImageContainer(
              images: images,
              onPicked: (value) => images = value,
              delete: (xfile) => images.remove(xfile),
            ),
             const SizedBox(height: 12),
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
    Key? key,
    required this.images,
    required this.onPicked,
    required this.delete,
  }) : super(key: key);

  List<XFile> images;
  final void Function(List<XFile> images) onPicked;

  final void Function(XFile) delete;
  @override
  State<ImageContainer> createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
  final service = ImagePickerService();

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        // height: 300,
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(20)),
        child: widget.images.isNotEmpty
            ? SizedBox(
                height: 300,
                child: Stack(
                  children:[
                     GridView.builder(
                      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisExtent: 120,   
                              ),
                      itemCount:widget.images.length,
                      itemBuilder:(BuildContext context, int index) {
                        return ImageCard(
                          widget.images[index],
                          delete: (xfile) {
                            widget.images.remove(xfile);
                            widget.delete(xfile);
                            setState(() {
                              
                            });
                          },
                        );
                      }),
               Positioned(
                bottom: 4,
                right: 4,
                 child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: IconButton(
                    icon: const Icon(
                      Icons.camera_enhance,
                      size: 20,
                    ),
                    onPressed: () async {
                      final value = await service.pickImages();
                      if (value != null) {
                        widget.onPicked(value);
                        widget.images = value;
                        setState(() {});
                      }
                    },
                  ),
                             ),
               )

                  ]
                ),
              )
            : Center(
                child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: IconButton(
                  icon: const Icon(
                    Icons.camera_enhance,
                    size: 60,
                  ),
                  onPressed: () async {
                    final value = await service.pickImages();
                    if (value != null) {
                      widget.onPicked(value);
                      widget.images = value;
                      setState(() {});
                    }
                  },
                ),
              )));
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard(
    this.file, {
    super.key,
    required this.delete,
  });

  final XFile file;
  final void Function(XFile) delete;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,  
      width: double.infinity,
        child: Stack(
          children: [
            Image.file(
              File(file.path),
              height: 120,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Positioned(
              top:4,
              right: 4,
              child: InkWell(
                  onTap: () => delete(file),
                  child: const Icon(Icons.delete, 
                  color: Color.fromARGB(255, 229, 57, 5))),
            ),
          ],
        ));
  }
}
