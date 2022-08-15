// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class trans extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final translator = GoogleTranslator();
    final vari = "Hello";
    return Scaffold(
      appBar: AppBar(title: Text("Trans")),
      body: Container(
          
          child: FlatButton(
            
            child: Text(
              'LogIn',
              style: TextStyle(fontSize: 20.0),
            ),
            color: Colors.blueAccent,
            textColor: Colors.white,
            onPressed: () async {
              var translation = await translator.translate(vari , from: 'en', to: '');
               print(translation);
            },
          
          )),
    );
  }
}
