import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Alert Title'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('This is the content of the alert'),
                SizedBox(height: 10),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child:
                      const Text('Ok', style: TextStyle(color: Colors.indigo))),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelled',
                      style: TextStyle(color: Colors.red)))
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible:
            false, //con esto toco en lo gris y vuelve a la pantalla anterior
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Alert Title'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('This is the content of the alert'),
                SizedBox(height: 10),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelled',
                      style: TextStyle(color: Colors.indigo)))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            child: const Text('Show Alert', style: TextStyle(fontSize: 16)),
            onPressed: () => Platform.isAndroid
                ? displayDialogAndroid(context)
                : displayDialogIOS(context),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
