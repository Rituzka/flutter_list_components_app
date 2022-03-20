import 'package:flutter/material.dart';
import 'package:flutter_list_components_app/themes/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageURL;
  final String? nameImage;

  const CustomCardType2({Key? key, required this.imageURL, this.nameImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 30,
        shadowColor: AppTheme.primary.withOpacity(0.6),
        child: Column(
          children: [
            FadeInImage(
              placeholder: const AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(imageURL),
              width: double.infinity,
              height: 230,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 300),
            ),
            if (nameImage != null)
              Container(
                  alignment: AlignmentDirectional.centerEnd,
                  padding:
                      const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                  child: Text(nameImage!))
          ],
        ));
  }
}
