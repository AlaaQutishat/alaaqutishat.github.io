import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'FeatureProject.dart';
import 'MainTiitle.dart';


import 'package:ptf/helper/CustomTheme.dart';

import 'package:responsive_builder/responsive_builder.dart';

class Certificate extends StatefulWidget {
  @override
  _CertificateState createState() => _CertificateState();
}

class _CertificateState extends State<Certificate> with customTheme {
  final double fraction = 4;

  double fSize = 18;
  Size profileSize = Size(350, 350);

  Alignment textAlignment = Alignment.bottomLeft;
  Alignment profileAlignment = Alignment.topRight;
  TextAlign textAlign = TextAlign.center;

  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center;
  double width = 0.5;

  EdgeInsetsGeometry padding = EdgeInsets.only(left: 30);

  void switchToDesktop() {
    fSize = 18;
    textAlignment = Alignment(-0.6, 1);
    profileAlignment = Alignment(0.8, -0.45);
    width = 0.4;
    profileSize = Size(325, 325);
    padding = EdgeInsets.only(left: 0);
  }

  void switchToTab() {
    fSize = 18;
    textAlignment = Alignment(-0.7, 1);
    profileAlignment = Alignment(0.8, -0.25);
    width = 0.4;
    profileSize = Size(300, 300);
    padding = EdgeInsets.only(left: 15);
  }

  void switchToMobile() {
    fSize = 16;
    textAlignment = Alignment.center;
    profileAlignment = Alignment(0, 0.6);
    width = 0.65;
    profileSize = Size(225, 225);
    padding = EdgeInsets.only(left: 0);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isDesktop) {
          switchToDesktop();
        } else if (sizingInformation.isTablet) {
          switchToTab();
        } else {
          switchToMobile();
        }
        return Container(
          padding: padding,
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            primary: true,
            scrollDirection: Axis.vertical,
           child:Column(
             children: [
               MainTiitle(
                 number: "",
                 text: "Certificate",
               ),
               FeatureProject(
                 imagePath: "assets/certificate/android.jpg",
                 ontab: () {

                 },
                 projectDesc:
                 "A Android Developer Certificate From Udacity.",
                 projectTitle: "Android Certificate",
                 tech1: "Android",
                 tech2: "Xml",
                 tech3: "Java",
               ),
               FeatureProject(
                 imagePath: "assets/certificate/BigData.jpg",
                 ontab: () {

                 },
                 projectDesc:
                 "A BigData Certificate From huawei.",
                 projectTitle: "BigData Certificate",
                 tech1: "BigData",

               ),
               FeatureProject(
                 imagePath: "assets/certificate/flutter.jpg",
                 ontab: () {

                 },
                 projectDesc:
                 "A Flutter Certificate From Udemy.",
                 projectTitle: "Flutter Certificate",
                 tech1: "Flutter",
                 tech2: "Dart",
               ),
               FeatureProject(
                 imagePath: "assets/certificate/java.jpg",
                 ontab: () {

                 },
                 projectDesc:
                 "A Java Certificate From SoloLearn.",
                 projectTitle: "Java Certificate",
                 tech1: "Java",

               ),
               FeatureProject(
                 imagePath: "assets/certificate/css.jpg",
                 ontab: () {

                 },
                 projectDesc:
                 "A css Certificate From SoloLearn.",
                 projectTitle: "css Certificate",
                 tech1: "css",

               ),
               FeatureProject(
                 imagePath: "assets/certificate/javascript.jpg",
                 ontab: () {

                 },
                 projectDesc:
                 "A javascript Certificate From SoloLearn.",
                 projectTitle: "javascript Certificate",
                 tech1: "javascript",

               ),
             ],
           ),
          ),
        );
      },
    );
  }




}



