import 'package:flutter/material.dart';
import 'package:paprclip/core/models/overview_model.dart';

class RowWidget extends StatelessWidget {
  final String word;
  final String api;
RowWidget({ Key? key, required this.api, required this.word }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(word,style:const TextStyle(fontSize: 20),),
                      Text(api,style:const TextStyle(fontSize: 15),),
                  ],),
    );
  }
}