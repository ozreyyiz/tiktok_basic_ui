import 'package:flutter/material.dart';
import 'package:tiktokbasic/widgets/activity_button.dart';
import 'package:tiktokbasic/widgets/post_template.dart';

class MyPost1 extends StatelessWidget {
  const MyPost1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: "jack",
      numberOfLikes: "125",
      numberOfComments: "25",
      numberOfShares: "30",
      videoDescription: "good old days",
      userPost: Container(
        color: Colors.green,
      ),
    );
  }
}
