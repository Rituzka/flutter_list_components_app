import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView 2'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => Text(options[index]),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}
