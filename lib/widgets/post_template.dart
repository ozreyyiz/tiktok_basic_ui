import 'package:flutter/material.dart';

import 'activity_button.dart';

class PostTemplate extends StatelessWidget {
  final String username;
  final String videoDescription;
  final String numberOfLikes;
  final String numberOfComments;
  final String numberOfShares;
  final userPost;

  const PostTemplate(
      {Key? key,
      required this.username,
      required this.videoDescription,
      required this.numberOfLikes,
      required this.numberOfComments,
      required this.numberOfShares,
      this.userPost})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          userPost,


          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: const Alignment(-1, -1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "@" + username,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  RichText(
                    text: TextSpan(children:  [
                      TextSpan(text: videoDescription),
                      TextSpan(
                          text: " #flutter #mobile",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                    ]),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(1, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children:  [
                  ActivityButton(
                    icon: Icons.favorite,
                    number: numberOfLikes,
                  ),
                  ActivityButton(
                    icon: Icons.chat_bubble_outline_outlined,
                    number: numberOfComments,
                  ),
                  ActivityButton(
                    icon: Icons.send,
                    number: numberOfShares,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
