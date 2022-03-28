import 'package:flutter/material.dart';

import '../widgets/custom_input_field.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Rita',
      'last_name': 'Casiello',
      'email': 'rita@rita.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs & Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Form(
                key: myFormKey,
                child: Column(
                  children: [
                    const CustominputField(
                        labelText: 'Nombre', hintText: 'Nombre del usuario'),
                    const SizedBox(height: 30),
                    const CustominputField(
                        labelText: 'Apellido',
                        hintText: 'Apellido del usuario'),
                    const SizedBox(height: 30),
                    const CustominputField(
                        labelText: 'Email',
                        hintText: 'Email del usuario',
                        keyboard: TextInputType.emailAddress),
                    const SizedBox(height: 30),
                    const CustominputField(
                      labelText: 'Contraseña',
                      hintText: 'Contraseña del usuario',
                      obscure: true,
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      child: const SizedBox(
                          width: double.infinity,
                          child: Center(child: Text('Save'))),
                      onPressed: () {
                        //para esconder teclado
                        FocusScope.of(context).requestFocus(FocusNode());

                        if (!myFormKey.currentState!.validate()) {
                          print('Not valid Form');
                          return;
                        }
                        //TODO print form's
                        print(formValues);
                      },
                    )
                  ],
                ),
              )),
        ));
  }
}
