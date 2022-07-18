import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Card Screen')),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCard(
              name: 'Soy un card',
              imageUrl:
                  'https://www.nationalgeographic.com.es/medio/2018/02/27/playa-de-isuntza-lekeitio__1280x720.jpg',
            ),
            SizedBox(
              height: 20,
            ),
            CustomCard(
              name: 'Soy un card',
              imageUrl:
                  'https://jesusgovea.com/wp-content/uploads/2019/08/cropped-usuarios-arquitectura-1-1-1200x480.jpg',
            )
          ],
        ));
  }
}
