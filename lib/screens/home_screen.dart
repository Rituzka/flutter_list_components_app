import 'package:flutter/material.dart';
import 'package:flutter_list_components_app/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  get center => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Components'),
        backgroundColor: Colors.pink,
        elevation: 0,
      ),
      body: ListView.separated(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) => ListTile(
          leading: const Icon(Icons.abc),
          title: const Text('Titulo'),
          onTap: () {
            Navigator.pushNamed(context, 'alert');
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
