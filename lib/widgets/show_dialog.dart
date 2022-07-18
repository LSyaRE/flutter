import 'package:flutter/material.dart';

class ShowDialog extends StatelessWidget {
  final String titleDialog;
  final String imageUrl;
  final String? textBody;

  const ShowDialog(
      {Key? key,
      required this.titleDialog,
      required this.imageUrl,
      this.textBody})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(titleDialog),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            Text(textBody ?? 'Sin contenido que agregar'),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Image(
                image: NetworkImage(imageUrl),
                width: 100,
                height: 100,
              ),
            )
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
            onPressed: () => Navigator.pop(context, 'Ok'),
            child: const Text('Ok')),
      ],
    );
  }
}
