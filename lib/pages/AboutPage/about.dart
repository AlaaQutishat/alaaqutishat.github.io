import 'package:flutter/material.dart';
import 'package:ptf/helper/CustomTheme.dart';
import 'package:ptf/helper/FadeAnimationWidget.dart';
import 'package:ptf/helper/SlideAnimation.dart';
import 'package:ptf/helper/particles/particle.dart';
import 'package:ptf/components/AnimatedString/latter.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> with customTheme {
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



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isDesktop) {
          switchToDesktop();
        } else if (sizingInformation.isTablet) {
          switchToTab();
        } 
        return Container(
          padding: padding,
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Particle(size.height, size.width),
              Align(
                alignment: textAlignment,
                child: FadeAnimatedWidget(
                  widget: Container(
                    alignment: Alignment.center,
                    height: size.height * 0.7,
                    width: size.width * width + 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SlideAnimatedWidget(
                          begin: Offset(0, 0.4),
                          end: Offset(0, 0),
                          widget: Row(
                            mainAxisAlignment: mainAxisAlignment,
                            children: [
                              Word("A"),
                              Word("b"),
                              Word("o"),
                              Word("u"),
                              Word("t"),
                              Word(" "),
                              Word("M"),
                              Word("e"),
                            ],
                          ),
                          fraction: fraction,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          myAbout,
                          textAlign: textAlign,
                          style: TextStyle(
                            fontFamily: "Acme",
                            color: customTheme.textColor,
                            fontSize: fSize,
                          ),
                        )
                      ],
                    ),
                  ),
                  fraction: fraction,
                ),
              ),
              Align(
                alignment: profileAlignment,
                child: SlideAnimatedWidget(
                  widget: myProfile(profileSize),
                  fraction: fraction,
                  begin: Offset(1, 0.2),
                  end: Offset(0, 0.2),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  String myAbout = "Hey!! I am Alaa Qutishat. "
      " A 23years old Software Engineer . "
      " I prefer to keep learning, continue challenging myself,"
      " and do interesting things .\n"
      "I am passionate about building excellent "
      "software that improves the lives of peaopl around me.\n"
        "If you are looking for someone who is passionate about technology, programming and self-development, do not hesitate to contact me so that we can do it together and be part of a unified team 😉. "
  ;

  Widget myProfile(Size size) => Container(
        width: size.height,
        height: size.height,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            alignment: Alignment.centerRight,
            fit: BoxFit.contain,
            image: Image.asset(
              "assets/profile.jfif",
              scale: 1,
            ).image,
          ),
        ),
      );
}
