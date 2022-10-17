import 'package:chance_app/constants.dart';
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
            margin: const EdgeInsets.only(bottom: 100.0),
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
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          SizedBox(
                          height: defaultMargin*2,
                        ),
                        Text(
                          'About Me',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: defaultMargin,
                        ),
                        Text(
                          currentMatch.bio,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        )
                      ]),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
                  constraints: BoxConstraints(
                    maxHeight: double.infinity,
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                           SizedBox(
                          height: defaultMargin*2,
                        ),
                        Text(
                          'My Preferences',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                           SizedBox(
                          height: defaultMargin,
                        ),
                        Wrap(
                          spacing: 8.0, // gap between adjacent chips
                          runSpacing: 4.0, // gap between lines
                          children: currentMatch.preferences.map((e) {
                            var _icon;
                            switch (e['title']) {
                              case 'Gender':
                                _icon = Icons.transgender_rounded;
                                break;
                              case 'Age':
                                _icon = Icons.date_range_outlined;
                                break;
                              case 'Kids':
                                _icon = Icons.child_friendly_outlined;
                                break;
                              case 'Pets':
                                _icon = Icons.pets_outlined;
                                break;
                              case 'Location':
                                _icon = Icons.location_on_outlined;
                                break;
                              case 'Lease':
                                _icon = Icons.document_scanner_outlined;
                                break;
                              case 'Smoking':
                                _icon = Icons.smoking_rooms_outlined;
                                break;

                              default:
                            }
                            return Material(
                              child: Chip(
                                label: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    if (_icon != null)
                                      Icon(
                                        _icon,
                                        color: primaryColor,
                                      ),
                                    Text(
                                      "${e['title']}: ",
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
                  decoration: BoxDecoration(
                      border: Border.all(
                          color:Color.fromARGB(255, 158, 168, 176),
                          width: 0.3)),
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
                    heroTag: "swipeLeft",
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
                    heroTag: "superLike",
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
                    heroTag: "swipeRight",
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
