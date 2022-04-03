import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_list_components_app/themes/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
              min: 50,
              max: 400,
              activeColor: AppTheme.primary,
              value: _sliderValue,
              onChanged: _sliderEnabled
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null),
          //Checkbox
          /* Checkbox(
              value: _sliderEnabled,
              activeColor: AppTheme.primary,
              onChanged: (value) {
                _sliderEnabled = value ?? true;
                setState(() {});
              }), */

          //CheckboxListTile
          CheckboxListTile(
              title: const Text('Enable Slider'),
              activeColor: AppTheme.primary,
              value: _sliderEnabled,
              onChanged: (value) => setState(() {
                    _sliderEnabled = value ?? true;
                  })),
          SwitchListTile.adaptive(
              title: const Text('Enable Slider'),
              activeColor: AppTheme.primary,
              value: _sliderEnabled,
              onChanged: (value) => setState(() {
                    _sliderEnabled = value;
                  })),

          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://w7.pngwing.com/pngs/952/17/png-transparent-asajj-ventress-star-wars-the-clone-wars-count-dooku-palpatine-others-purple-war-fictional-character.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),

          const AboutListTile()
        ],
      ),
    );
  }
}
