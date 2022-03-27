import 'package:flutter/material.dart';

class CustominputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboard;
  final bool obscure;

  const CustominputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboard,
    this.obscure = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboard,
      obscureText: obscure,
      onChanged: (value) {
        print('value: $value');
      },
      validator: (value) {
        if (value == null) return 'Required field';
        //si tiene menos de 3 letras retornar string sino retornar un null
        return value.length < 3 ? 'Minimun 3 characters' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        //counterText: '3 characters',
        //prefixIcon: Icon(Icons.verified_user_outlined, color: Colors.pink),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
