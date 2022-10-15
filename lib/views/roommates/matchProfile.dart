import 'package:chance_app/views/roommates/roommates.dart';
import 'package:flutter/material.dart';
import 'package:chance_app/views/roommates/userCard.dart';

class matchProfile extends StatelessWidget {
  User currentMatch;
  var updateUser;

  matchProfile({required this.currentMatch, this.updateUser});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(bottom: 150.0),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height - 400,
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                  child: userCard(
                      age: currentMatch.age,
                      name: currentMatch.name,
                      jobTitle: currentMatch.jobTitle,
                      profileImg: currentMatch.profileImg),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
                  width: MediaQuery.of(context).size.width,
                  constraints: BoxConstraints(
                    maxHeight: double.infinity,
                  ),
                  child: Column(children: [
                    Text(
                      'About Me',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      currentMatch.bio,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    )
                  ]),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
                  constraints: BoxConstraints(
                    maxHeight: double.infinity,
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Column(children: [
                    Text(
                      'My Preferences',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Wrap(
                      spacing: 8.0, // gap between adjacent chips
                      runSpacing: 4.0, // gap between lines
                      children: currentMatch.preferences.map((e) {
                        return Material(
                          child: Chip(
                            label: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "${e['title']}:",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(e['resp'])
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    )
                  ]),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          width: MediaQuery.of(context).size.width, // This is the screen size
          bottom: 20,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: FloatingActionButton(
                    onPressed: () {
                      print('swipe left');
                      updateUser();
                    },
                    backgroundColor: Colors.white,
                    child: const Icon(
                      Icons.close,
                      color: Colors.red,
                      size: 40,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: FloatingActionButton(
                    onPressed: () {
                      print('Super like');
                      updateUser();
                    },
                    backgroundColor: Colors.white,
                    child: const Icon(
                      Icons.star_rounded,
                      color: Colors.yellow,
                      size: 40,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    onPressed: () {
                      print('swipe right');
                      updateUser();
                    },
                    backgroundColor: Colors.white,
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.pink,
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
