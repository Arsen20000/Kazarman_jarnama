import 'package:flutter/material.dart';
import 'package:kazarman_jarnama/view/drawer_view/media_view.dart';

import '../../constants/app_text.dart';
import '../../buttons/drawer_button.dart';

class DrawerDrawer extends StatelessWidget {
  const DrawerDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor:Colors.blue,
        child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 165,
                child: DrawerHeader(
                  // ignore: sort_child_properties_last
                  child: Column(
                    children: [
                      DrawerButton(
                        icon: Icons.phone,
                        text: AppText.title,
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      DrawerButton(
                        icon: Icons.call,
                        text: AppText.data,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                               builder: (BuildContext context) =>
                                  const MediaView(),
                             )
                          );
                        },
                      ),
                    ],
                  ),
                  decoration:
                      const BoxDecoration(color: Color.fromARGB(255, 7, 26, 237)),
                ),
              ),
            ]));
  }
}
