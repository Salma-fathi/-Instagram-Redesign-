import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:my_mappp/tabs/Feed_View.dart';
import 'package:my_mappp/tabs/Reals_View.dart';
import 'package:my_mappp/tabs/Tagged_View.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  final List<Widget> tabBarViews = const [Feed(), Reals(), Tagged()];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      "1,2363",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("following", style: TextStyle(color: Colors.grey))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 100, 94, 94)),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("21.13k",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "followers",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Salma fathi <3",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text("|", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("Developer",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Mobile App Developer||Flutter||Linkedin",
                  style: TextStyle(color: Color.fromARGB(255, 58, 57, 57)),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'linkedin.com/salma-fathi',
                  style: TextStyle(color: Color.fromARGB(255, 72, 100, 224)),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black),
                    child: const Center(
                        child: Text(
                      "Edit",
                      style: TextStyle(color: Colors.white),
                    )),
                  )),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 224, 221, 221),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: const Center(
                        child: Text(
                      "Contatc",
                      style: TextStyle(color: Colors.black12),
                    )),
                  )),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.video_collection,
                  color: Colors.grey,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.bookmark,
                  color: Colors.grey,
                ),
              ),
            ]),
            SizedBox(
              height: 10000,
              child: TabBarView(children: tabBarViews),
            )
          ],
        ),
      ),
    );
  }
}
