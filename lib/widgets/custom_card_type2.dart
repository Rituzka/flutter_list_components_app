import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        child: Column(
          children: const [
            FadeInImage(
                placeholder: AssetImage('assets/jar-loading.gif'),
                image: NetworkImage(
                    "https://cdn4.vectorstock.com/i/1000x1000/85/38/layered-landscape-poster-vector-10628538.jpg"))
          ],
        ));
  }
}
