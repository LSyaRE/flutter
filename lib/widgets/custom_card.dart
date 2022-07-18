import 'package:flutter/material.dart';
import 'package:flutterlistado/widgets/widgets.dart';

import '../themes/theme.dart';

class CustomCard extends StatelessWidget {
  final String? name;
  final String imageUrl;

  const CustomCard({Key? key, required this.imageUrl, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(children: [
        Container(
          alignment: AlignmentDirectional.center,
          padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
          child: Text(name ?? 'Sin Título'),
        ),
        FadeInImage(
          placeholder: const AssetImage('assets/images/image-not-found.png'),
          image: NetworkImage(imageUrl),
          width: double.infinity,
          height: 240,
          fit: BoxFit.cover,
          fadeInDuration: const Duration(milliseconds: 1000),
        ),

        //Boton show dialog
        Container(
          alignment: AlignmentDirectional.centerEnd,
          padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
          child: TextButton(
              onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) => const ShowDialog(
                        titleDialog: 'Hola este es mi show dialog',
                        imageUrl:
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Question_Mark.svg/1200px-Question_Mark.svg.png',
                      )),
              child: const Text("Info")),
        )
      ]),
    );
  }
}
