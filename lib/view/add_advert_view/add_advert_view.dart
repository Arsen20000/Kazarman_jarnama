
import 'package:flutter/material.dart';

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
            title: Text('reklama beruuu'),
          ),
        body: ListView(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
          children: [
            TexttformField(
              controller: _title,
              hintText: 'title',
            ),
            TexttformField(
              controller: _titleDescription,
              hintText: 'titleDescription',
            ),
            TexttformField(
              controller: _descriptions,
              hintText: 'descriptions',
            ),
            TexttformField(
              controller: _phone,
              hintText: 'phone',
            ),
            TexttformField(
              controller: _userName,
              hintText: 'userName',
            ),
            TexttformField(
              controller: _address,
              hintText: 'address',
            ),
            ElevatedButton.icon(onPressed: (){}, 
            icon:const Icon(Icons.publish),
            label:const Text('Add to firebase')
            )
          ],
        ));
  }
}
