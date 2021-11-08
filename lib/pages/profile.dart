import 'package:flutter/material.dart';
import 'package:tiktokbasic/widgets/profiletab_1.dart';
import 'package:tiktokbasic/widgets/profiletab_2.dart';
import 'package:tiktokbasic/widgets/profiletab_3.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Tiktok UI Design",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.person_add, color: Colors.black),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Icon(Icons.menu, color: Colors.black),
            )
          ],
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            //profile photo
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                shape: BoxShape.circle,
              ),
            ),

            //username
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "@createbyreyyiz",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            //follows likes followers
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text(
                        "37",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Text(
                      "Following",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text(
                        "56",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Text(
                      "Followers",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text(
                        "280",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Text(
                      "Likes",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                      ),
                    )
                  ],
                ),
              ],
            ),
            // buttons
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 13, horizontal: 40),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(5)),
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.grey[800],
                        )),
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(
                        Icons.bookmark_border,
                        color: Colors.green[800],
                      )),
                ],
              ),
            ),
            //bio
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                "bio here",
                style: TextStyle(color: Colors.green[700]),
              ),
            ),
            //tab controller
            TabBar(tabs: [
              Tab(icon: Icon(Icons.grid_3x3, color: Colors.black)),
              Tab(icon: Icon(Icons.favorite, color: Colors.black)),
              Tab(icon: Icon(Icons.lock_outline_rounded, color: Colors.black)),
            ]),
            Expanded(
              child: TabBarView(children: [
                FirstTab(),
                SecondTab(),
                ThirdTab(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
