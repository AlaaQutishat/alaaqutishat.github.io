import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';


class Skill {
  final Widget icon;
  final String name;
  final double value;
  final List<Color> gradient;
  Skill({this.icon, this.name, this.gradient, this.value});
}

final Skill flutter = Skill(
  icon: FlutterLogo(),
  name: "Flutter",
  gradient: [
    Color(0xff36D1DC),
    Color(0xff5B86E5),
  ],
  value: 75
);



final Skill html = Skill(
  icon: Icon(FlutterIcons.html5_faw, color: Colors.white),
  name: "HTML",
  gradient: [
    Color(0xffcb2d3e),
    Color(0xffef473a),
  ],
    value: 50
);

final Skill css = Skill(
  icon: Icon(FlutterIcons.css3_faw, color: Colors.white),
  name: "CSS",
  gradient: [
    Color(0xff00d2ff),
    Color(0xff928DAB),
  ],
    value: 50
);

final Skill git = Skill(
  icon: Icon(
    FlutterIcons.git_mco,
    color: Colors.white,
  ),
  name: "Git",
  gradient: [
    Color(0xffFF416C),
    Color(0xffFF4B2B),
  ],
    value: 75
);


final Skill firebase = Skill(
  icon: Icon(
    FlutterIcons.firebase_mco,
    color: Colors.white,
  ),
  name: "Firebase",
  gradient: [
    Color(0xfff46b45),
    Color(0xffeea849),
  ],
    value: 75
);





final Skill sql = Skill(
  icon: Icon(
    FlutterIcons.database_ent,
    color: Colors.white,
  ),
  name: "SQL",
  gradient: [
    Color(0xff4776E6),
    Color(0xff8E54E9),
  ],
    value: 85
);
final Skill java = Skill(
  icon: Icon(
    FlutterIcons.java_faw5d,
    color: Colors.white,
  ),
  name: "Java",
  gradient: [
    Color(0xff4776E6),
    Color(0xff8E54E9),
  ],
    value: 90
);
final Skill kotlin = Skill(
  icon: Image.asset('assets/kotlin.png',width: 25,height: 25,  scale: 1,),
  name: "Kotlin",
  gradient: [
    Color(0xff4776E6),
    Color(0xff8E54E9),
  ],
    value: 90
);
List<Skill> chartdata = [flutter, firebase, git, ];
List<Skill> allSkill = [
  flutter,
  firebase,

  git,
  html,
  css,
  kotlin,java,


  sql
];
List<Skill> skillsetA = [flutter, firebase, git];
List<Skill> skillsetB = [html, css];
List<Skill> skillsetC = [kotlin,java, sql];
