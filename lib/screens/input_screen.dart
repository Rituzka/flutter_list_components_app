import 'package:flutter/material.dart';

import '../widgets/custom_input_field.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs & Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                children: const [
                  CustominputField(
                      labelText: 'Nombre', hintText: 'Nombre del usuario'),
                  SizedBox(height: 30),
                  CustominputField(
                      labelText: 'Apellido', hintText: 'Apellido del usuario'),
                  SizedBox(height: 30),
                  CustominputField(
                      labelText: 'Email',
                      hintText: 'Email del usuario',
                      keyboard: TextInputType.emailAddress),
                  SizedBox(height: 30),
                  CustominputField(
                    labelText: 'Contraseña',
                    hintText: 'Contraseña del usuario',
                    obscure: true,
                  ),
                  SizedBox(height: 30),
                ],
              )),
        ));
  }
}
