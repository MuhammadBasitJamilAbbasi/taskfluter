import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextviewWidget extends StatelessWidget{

  String textdata;
  TextviewWidget({ required this.textdata});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Padding(
       padding: const EdgeInsets.all(8.0),
       child: Text(textdata),
     ) ;
  }

}