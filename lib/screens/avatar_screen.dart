import 'package:flutter/material.dart';
import 'package:flutter_list_components_app/themes/app_theme.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stan Lee'),
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 10),
              child: const CircleAvatar(
                child: Text('SL'),
                backgroundColor: Color.fromARGB(255, 235, 200, 212),
              ))
        ],
      ),
      body: const Center(
        child: CircleAvatar(
            maxRadius: 200,
            backgroundImage: NetworkImage(
                'https://en.maremagnum.com/uploads/page/image/226/stacci.png')),
      ),
    );
  }
}
