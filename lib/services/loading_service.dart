import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingService{
  void showLoading(BuildContext context) { 
    
    showDialog(
      context: context,
      builder: (context) {
        return const CupertinoAlertDialog(
          title: Text("Alert Dialog title"),
         content: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: CupertinoActivityIndicator(
              radius: 20,
              color: Colors.blue,
            ),
            ),
          ),
        );
      },
    );
  }
}