import 'package:flutter/material.dart';
import 'package:tiktokbasic/widgets/post_template.dart';

class MyPost2 extends StatelessWidget {
  const MyPost2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: "muallim",
      numberOfLikes: "12K",
      numberOfComments: "7826",
      numberOfShares: "9965",
      videoDescription: "bu hayatta hızlı olan kazanır",
      userPost: Container(
        color: Colors.lime,
      ),
    );
  }
}