import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'whatsappcolor.dart';
import 'screenchat.dart';
import 'bottomNavigationBar.dart';
void main (){
  runApp(const ProjectWhatsApp());
}
  class ProjectWhatsApp extends StatelessWidget {
    const ProjectWhatsApp  ({super.key});

    @override

    Widget build(BuildContext context) {

      return MaterialApp(

      theme:ThemeData.dark().copyWith(
  scaffoldBackgroundColor:AppColor.Black,

  ),
        home:const ScreenChat(),

      );


    }
  }

