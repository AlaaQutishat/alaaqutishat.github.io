import 'package:meta/meta.dart';

class Project {
  final String image;
  final String title;
  final String description;
  final String githubURL;
  final String webURL;
  Project({
    @required this.image,
    @required this.title,
    @required this.description,
    @required this.githubURL,
    this.webURL,
  });
}

final List<Project> projectList = [
  Project(
      image: "assets/projects/b2b.png",
      title: "BitsToBytes",
      description:
          "This is the responsive website for our college's official programing club BitsToBytes. "
          "As the developer of my club I have created this website and I am continuously maintaing"
          " this website's repo on github",
      githubURL: "https://github.com/Bits-to-Bytes/BitsToBytes",
      webURL: "https://bitstobytes.in/"),
  Project(
      image: "assets/projects/covbit.png",
      title: "CovBit",
      description:
          "An all in one application to get updated with COVID-19 news, "
          "to do self-assessment, to get notification "
          "of nearby people to maintain social distancing and to track the location of COVID-19 positive user.",
      githubURL: "https://github.com/GajjarMiten/CovBit"),
  Project(
      image: "assets/projects/tictactoe.png",
      title: "Tic Tac Toe",
      description: "A simple Tic Tac Toe game made with Flutter framework."
          " Used Bloc pattern for state managment. User can play with human as well as three types of bot. "
          "Difficult level bot uses minimax algorithm for predicting opponents's next move.",
      githubURL: "https://github.com/GajjarMiten/Flutter-tic-tac-toe.git"),
];
