import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PagesModel{
  @required IconData? icon;
  @required String? text;
  @required Color? color;
  PagesModel({this.icon,this.color,this.text});

 static List<PagesModel>pagesModel=[
    PagesModel(icon: FontAwesomeIcons.userFriends,text: "Friends",color: Colors.blue),
    PagesModel(icon: FontAwesomeIcons.save,text: "Save",color: Colors.purple),
    PagesModel(icon: FontAwesomeIcons.timesCircle,text:"Memories",color:Colors.amber ),
    PagesModel(icon: FontAwesomeIcons.flag,text: "Pages",color:Colors.orange),
    PagesModel(icon: FontAwesomeIcons.chevronDown,text: "See More",color:Colors.black),

  ];

}