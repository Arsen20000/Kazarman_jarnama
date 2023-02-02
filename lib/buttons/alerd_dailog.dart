
import 'package:flutter/material.dart';

class AlertDailog extends StatelessWidget {
  const AlertDailog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // backgroundColor: Color.fromARGB(255, 32, 120, 163),
      actions: [
        Column(
          children: [
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text( '0999771661',
                    style:TextStyle(fontSize: 15)
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('0502771661',
                    style:TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Gmail.com',
                   style:TextStyle(fontSize: 15),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('WhatsApp',
                    style:TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          ],
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text(
            'OK',
            style:TextStyle(fontSize: 15),
          ),
        ),
      ],
    );
  }
}
