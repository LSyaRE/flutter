import 'package:flutter/material.dart';
import 'package:flutterlistado/widgets/widgets.dart';

import '../themes/theme.dart';

class UserFormScreen extends StatelessWidget {
  const UserFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> myFormValues = {
      'name': '',
      'lastname': '',
      'email': '',
      'password': '',
      'role': ''
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Form Page'),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Center(
            widthFactor: 30,
            child: Card(
                color: const Color.fromARGB(255, 252, 237, 237),
                child: Form(
                    key: myFormKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          CustomInputField(
                            formProperty: 'name',
                            formValues: myFormValues,
                            sufixIcon: const Icon(Icons.people,
                                color: AppTheme.primary),
                            iconEntry: const Icon(Icons.people,
                                color: AppTheme.primary),
                            labelTxt: 'Nombre',
                            autoFocus: true,
                            hintTxt: 'Ingrese el nombre',
                          ),
                          CustomInputField(
                            formProperty: 'lastname',
                            formValues: myFormValues,
                            sufixIcon: const Icon(Icons.data_usage_rounded,
                                color: AppTheme.primary),
                            iconEntry: const Icon(Icons.data_usage_rounded,
                                color: AppTheme.primary),
                            labelTxt: 'Apellido',
                            hintTxt: 'Ingrese el apellido',
                          ),
                          CustomInputField(
                              formProperty: 'name',
                              formValues: myFormValues,
                              sufixIcon: const Icon(Icons.mail,
                                  color: AppTheme.primary),
                              iconEntry: const Icon(Icons.mail,
                                  color: AppTheme.primary),
                              labelTxt: 'Correo',
                              hintTxt: 'Ingrese el correo',
                              keyBoardType: TextInputType.emailAddress),
                          CustomInputField(
                            formProperty: 'name',
                            formValues: myFormValues,
                            sufixIcon:
                                const Icon(Icons.key, color: AppTheme.primary),
                            iconEntry:
                                const Icon(Icons.key, color: AppTheme.primary),
                            labelTxt: 'Password',
                            hintTxt: 'Ingrese el password',
                            helperTxt:
                                'Ingrese una password con caracteres especiales',
                            keyBoardType: TextInputType.emailAddress,
                            obscureText: true,
                          ),
                          CustomDropdown(
                              item: [],
                              hintTxt: 'Hola',
                              function: (value) {
                                myFormValues['role'] = value ?? '';
                              }),
                          ElevatedButton.icon(
                            onPressed: () {
                              print(myFormValues);
                            },
                            icon: const Icon(Icons.save),
                            label: const Text('Guardar'),
                          )
                        ],
                      ),
                    ))),
          ),
        ));
  }
}
