import 'package:flutter/material.dart';
import 'package:ptf/pages/workpage/work_custom_data.dart';

class WorkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        WorkCustomData(
          title: "Flutter + Dart Development  At JAML 46",
          subTitle: "",
          duration: "July - 2020 to until Now",
        ),
        WorkCustomData(
          title: "Android Development  At JAML 46",
          subTitle: "",
          duration: "July - 2020 to until Now",
        ),
        WorkCustomData(
          title:
              "Freelancer - Flutter | Dart Mobile App Developer |Android Mobile App Developer",
          subTitle: "",
          duration: "July - 2020 to until Now",
        ),

      ],
    );
  }
}
