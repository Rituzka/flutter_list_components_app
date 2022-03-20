import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(
            nameImage: 'Kashyyyk Wookiee homeland',
            imageURL:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAFhC_FzQvr7mNZYVJC5pZo7PgFDYuoOwXtw&usqp=CAU',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            nameImage: 'Mandalore: The Mandalorian land',
            imageURL:
                'https://wallpaperbat.com/img/579756-star-wars-the-mandalorian-1080p-laptop-full-hd-wallpaper-hd-tv-series-4k-wallpaper-image-photo-and-background.jpg',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageURL:
                'https://cdn3.dpmag.com/2021/07/Landscape-Tips-Mike-Mezeul-II.jpg',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            nameImage: 'Coruscant: Jedi Temple',
            imageURL:
                'https://starwarsblog.starwars.com/wp-content/uploads/2015/08/8_15_WDI_003.jpg',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageURL:
                'https://www.mickeyshannon.com/photos/landscape-photography.jpg',
          ),
        ],
      ),
    );
  }
}
