import 'package:flutter/material.dart';
import 'package:tiktokbasic/widgets/post_template.dart';

class MyPost3 extends StatelessWidget {
  const MyPost3({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: "hafız",
      numberOfLikes: "500M",
      numberOfComments: "1M",
      numberOfShares: "300K",
      videoDescription: "borusana girmiş çalışıyo",
      userPost: Container(
        color: Colors.brown,
      ),
    );
  }
}