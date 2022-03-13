import 'package:flutter/material.dart';
import 'package:flutter_list_components_app/themes/app_theme.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            Card(
                child: Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.phone_android, color: AppTheme.primary),
                  title: Text("Title"),
                )
              ],
            ))
          ]),
    );
  }
}
