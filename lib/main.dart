import 'package:cad_produto2/telas/lista_produto.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const produtos_cadastro());
}

// ignore: camel_case_types
class produtos_cadastro extends StatelessWidget {
  const produtos_cadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.pink[700],
          appBarTheme: AppBarTheme(color: Colors.pinkAccent[700]),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: Colors.pink[700]),
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.pink[700],
            textTheme: ButtonTextTheme.primary,
          )),
      home: const lista_produto(),
    );
  }
}