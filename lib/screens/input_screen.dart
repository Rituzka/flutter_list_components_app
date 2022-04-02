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
                    CustominputField(
                        labelText: 'Nombre',
                        hintText: 'Nombre del usuario',
                        formProperty: 'first_name',
                        formValues: formValues),
                    const SizedBox(height: 30),
                    CustominputField(
                        labelText: 'Apellido',
                        hintText: 'Apellido del usuario',
                        formProperty: 'last_name',
                        formValues: formValues),
                    const SizedBox(height: 30),
                    CustominputField(
                        labelText: 'Email',
                        hintText: 'Email del usuario',
                        keyboard: TextInputType.emailAddress,
                        formProperty: 'email',
                        formValues: formValues),
                    const SizedBox(height: 30),
                    CustominputField(
                        labelText: 'Contraseña',
                        hintText: 'Contraseña del usuario',
                        obscure: true,
                        formProperty: 'password',
                        formValues: formValues),
                    const SizedBox(height: 30),
                    DropdownButtonFormField<String>(
                        items: const [
                          DropdownMenuItem(
                              value: 'Admin', child: Text('Admin')),
                          DropdownMenuItem(
                              value: 'Superuser', child: Text('Superuser')),
                          DropdownMenuItem(
                              value: 'Developer', child: Text('Developer')),
                          DropdownMenuItem(
                              value: 'Jr.Developer',
                              child: Text('Jr.Developer')),
                        ],
                        onChanged: (value) {
                          print(value);
                          formValues['role'] = value ?? 'Admin';
                        }),
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
