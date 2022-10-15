import 'package:chance_app/views/roommates/userCard.dart';
import 'package:flutter/material.dart';

class Preference {
  int id;
  String gender;
  String ageRange;
  String kidsNumber;
  bool petsAllowed;
  String idealLocation;
  String lease;
  List<String> housingType;
  String smoking;
  bool privateBedroom;
  bool privateBathroom;

  Preference({
    required this.id,
    required this.gender,
    required this.ageRange,
    required this.kidsNumber,
    required this.petsAllowed,
    required this.idealLocation,
    required this.lease,
    required this.housingType,
    required this.smoking,
    required this.privateBedroom,
    required this.privateBathroom,
  });
}

class User {
  int id;
  int voucherId;
  String name;
  String email;
  String profileImg;
  int age;
  String bio;
  List<String> hobbies;
  List<dynamic> preferences;
  String jobTitle;
  bool emailVerified;
  bool premiumUser;
  bool owner;

  User({
    required this.id,
    required this.voucherId,
    required this.name,
    required this.email,
    required this.profileImg,
    required this.age,
    required this.bio,
    required this.hobbies,
    required this.preferences,
    required this.jobTitle,
    required this.emailVerified,
    required this.premiumUser,
    required this.owner,
  });
}

List<User> users = [
  User(
      id: 1,
      voucherId: 0,
      email: 'johndoe@gmail.com.com',
      name: 'John Doe',
      profileImg:
          'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      age: 30,
      bio:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed.',
      hobbies: ['Dancing', 'Gym', 'Drawing'],
      preferences: [
        {'title': 'Gender', 'resp': "All"},
        {"title": "Age Range", "resp": "18 - 100"},
        {"title": "Number of Kids", "resp": "0"},
        {"title": "Pets Allowed", "resp": "Yes"},
        {"title": "Ideal Location", "resp": "Arlington, Tx"},
        {"title": "Lease", "resp": "4 months"},
        {"title": "Smoking?", "resp": "Outside only"},
        {'title': "Appartment", "resp": "Yes"},
        {"title": "House", "resp": "Yes"},
        {"title": "Condo", "resp": "Yes"},
        {"title": "Private Bathroom", "resp": "Yes"},
        {"title": "Private Bedroom", "resp": "Yes"}
      ],
      jobTitle: 'Actor',
      emailVerified: true,
      premiumUser: true,
      owner: true),
  User(
      id: 2,
      voucherId: 1,
      email: 'rizkysabriansyah@gmail.com',
      name: 'Rizky Sabriansyah',
      profileImg:
          'https://images.unsplash.com/photo-1664725587354-5738005137f5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      age: 22,
      bio:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed.',
      hobbies: ['Dancing'],
      preferences: [
        {'title': 'Gender', 'resp': "All"},
        {"title": "Age Range", "resp": "18 - 100"},
        {"title": "Number of Kids", "resp": "0"},
        {"title": "Pets Allowed", "resp": "Yes"},
        {"title": "Ideal Location", "resp": "Arlington, Tx"},
        {"title": "Lease", "resp": "4 months"},
        {"title": "Smoking?", "resp": "Outside only"},
        {'title': "Appartment", "resp": "Yes"},
        {"title": "House", "resp": "Yes"},
        {"title": "Condo", "resp": "Yes"},
        {"title": "Private Bathroom", "resp": "Yes"},
        {"title": "Private Bedroom", "resp": "Yes"}
      ],
      jobTitle: 'Business Owner',
      emailVerified: true,
      premiumUser: true,
      owner: true),
  User(
      id: 3,
      voucherId: 1,
      email: 'frankdoew@gmail.com',
      name: 'Frank Doe',
      profileImg:
          'https://images.unsplash.com/photo-1544348817-5f2cf14b88c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      age: 30,
      bio:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed.',
      hobbies: ['Dancing'],
      preferences: [
        {'title': 'Gender', 'resp': "All"},
        {"title": "Age Range", "resp": "18 - 100"},
        {"title": "Number of Kids", "resp": "0"},
        {"title": "Pets Allowed", "resp": "Yes"},
        {"title": "Ideal Location", "resp": "Arlington, Tx"},
        {"title": "Lease", "resp": "4 months"},
        {"title": "Smoking?", "resp": "Outside only"},
        {'title': "Appartment", "resp": "Yes"},
        {"title": "House", "resp": "Yes"},
        {"title": "Condo", "resp": "Yes"},
        {"title": "Private Bathroom", "resp": "Yes"},
        {"title": "Private Bedroom", "resp": "Yes"}
      ],
      jobTitle: 'Engineer',
      emailVerified: true,
      premiumUser: true,
      owner: true),
  User(
      id: 4,
      voucherId: 4,
      email: 'derickfall@gmail.com',
      name: 'Derick Fall',
      profileImg:
          'https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fGZhY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
      age: 21,
      bio:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed.',
      hobbies: ['Dancing'],
      preferences: [
        {'title': 'Gender', 'resp': "All"},
        {"title": "Age Range", "resp": "18 - 100"},
        {"title": "Number of Kids", "resp": "0"},
        {"title": "Pets Allowed", "resp": "Yes"},
        {"title": "Ideal Location", "resp": "Arlington, Tx"},
        {"title": "Lease", "resp": "4 months"},
        {"title": "Smoking?", "resp": "Outside only"},
        {'title': "Appartment", "resp": "Yes"},
        {"title": "House", "resp": "Yes"},
        {"title": "Condo", "resp": "Yes"},
        {"title": "Private Bathroom", "resp": "Yes"},
        {"title": "Private Bedroom", "resp": "Yes"}
      ],
      jobTitle: 'Artist',
      emailVerified: true,
      premiumUser: true,
      owner: true),
  User(
      id: 5,
      voucherId: 4,
      email: 'summerjolie@gmail.com',
      name: 'Summer Jolie',
      profileImg:
          'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fGZhY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
      age: 40,
      bio:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed.',
      hobbies: ['Dancing'],
      preferences: [
        {'title': 'Gender', 'resp': "All"},
        {"title": "Age Range", "resp": "18 - 100"},
        {"title": "Number of Kids", "resp": "0"},
        {"title": "Pets Allowed", "resp": "Yes"},
        {"title": "Ideal Location", "resp": "Arlington, Tx"},
        {"title": "Lease", "resp": "4 months"},
        {"title": "Smoking?", "resp": "Outside only"},
        {'title': "Appartment", "resp": "Yes"},
        {"title": "House", "resp": "Yes"},
        {"title": "Condo", "resp": "Yes"},
        {"title": "Private Bathroom", "resp": "Yes"},
        {"title": "Private Bedroom", "resp": "Yes"}
      ],
      jobTitle: 'Actor',
      emailVerified: true,
      premiumUser: true,
      owner: true),
  User(
      id: 6,
      voucherId: 5,
      email: 'laviadoe@gmail.com',
      name: 'Lavia Doe',
      profileImg:
          'https://images.unsplash.com/photo-1549351512-c5e12b11e283?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fGZhY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
      age: 25,
      bio:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed.',
      hobbies: ['Dancing'],
      preferences: [
        {'title': 'Gender', 'resp': "All"},
        {"title": "Age Range", "resp": "18 - 100"},
        {"title": "Number of Kids", "resp": "0"},
        {"title": "Pets Allowed", "resp": "Yes"},
        {"title": "Ideal Location", "resp": "Arlington, Tx"},
        {"title": "Lease", "resp": "4 months"},
        {"title": "Smoking?", "resp": "Outside only"},
        {'title': "Appartment", "resp": "Yes"},
        {"title": "House", "resp": "Yes"},
        {"title": "Condo", "resp": "Yes"},
        {"title": "Private Bathroom", "resp": "Yes"},
        {"title": "Private Bedroom", "resp": "Yes"}
      ],
      jobTitle: 'Chef',
      emailVerified: true,
      premiumUser: true,
      owner: true),
  User(
      id: 7,
      voucherId: 3,
      email: 'fernadotoress@gmail.com',
      name: 'Fernado Torres',
      profileImg:
          'https://images.unsplash.com/photo-1595956553066-fe24a8c33395?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDl8fGZhY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
      age: 27,
      bio:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed.',
      hobbies: ['Dancing'],
      preferences: [
        {'title': 'Gender', 'resp': "All"},
        {"title": "Age Range", "resp": "18 - 100"},
        {"title": "Number of Kids", "resp": "0"},
        {"title": "Pets Allowed", "resp": "Yes"},
        {"title": "Ideal Location", "resp": "Arlington, Tx"},
        {"title": "Lease", "resp": "4 months"},
        {"title": "Smoking?", "resp": "Outside only"},
        {'title': "Appartment", "resp": "Yes"},
        {"title": "House", "resp": "Yes"},
        {"title": "Condo", "resp": "Yes"},
        {"title": "Private Bathroom", "resp": "Yes"},
        {"title": "Private Bedroom", "resp": "Yes"}
      ],
      jobTitle: 'Engineer',
      emailVerified: true,
      premiumUser: true,
      owner: true),
  User(
      id: 8,
      voucherId: 4,
      email: 'michealdoe@gmail.com',
      name: 'Micheal Doe',
      profileImg: 'https://unsplash.com/photos/DzAFv1iVMGg',
      age: 26,
      bio:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed.',
      hobbies: ['Dancing'],
      preferences: [
        {'title': 'Gender', 'resp': "All"},
        {"title": "Age Range", "resp": "18 - 100"},
        {"title": "Number of Kids", "resp": "0"},
        {"title": "Pets Allowed", "resp": "Yes"},
        {"title": "Ideal Location", "resp": "Arlington, Tx"},
        {"title": "Lease", "resp": "4 months"},
        {"title": "Smoking?", "resp": "Outside only"},
        {'title': "Appartment", "resp": "Yes"},
        {"title": "House", "resp": "Yes"},
        {"title": "Condo", "resp": "Yes"},
        {"title": "Private Bathroom", "resp": "Yes"},
        {"title": "Private Bedroom", "resp": "Yes"}
      ],
      jobTitle: 'Student',
      emailVerified: true,
      premiumUser: true,
      owner: true),
  User(
      id: 9,
      voucherId: 6,
      email: 'frederickdoe@gmail.com',
      name: 'Frederick Doe',
      profileImg:
          'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTJ8fGZhY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
      age: 24,
      bio:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed.',
      hobbies: ['Dancing'],
      preferences: [
        {'title': 'Gender', 'resp': "All"},
        {"title": "Age Range", "resp": "18 - 100"},
        {"title": "Number of Kids", "resp": "0"},
        {"title": "Pets Allowed", "resp": "Yes"},
        {"title": "Ideal Location", "resp": "Arlington, Tx"},
        {"title": "Lease", "resp": "4 months"},
        {"title": "Smoking?", "resp": "Outside only"},
        {'title': "Appartment", "resp": "Yes"},
        {"title": "House", "resp": "Yes"},
        {"title": "Condo", "resp": "Yes"},
        {"title": "Private Bathroom", "resp": "Yes"},
        {"title": "Private Bedroom", "resp": "Yes"}
      ],
      jobTitle: 'Business Owner',
      emailVerified: true,
      premiumUser: true,
      owner: true),
  User(
      id: 10,
      voucherId: 8,
      email: 'dorinesdoe@gmail.com',
      name: 'Dorine Doe',
      profileImg:
          'https://images.unsplash.com/photo-1530785602389-07594beb8b73?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTd8fGZhY2V8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
      age: 25,
      bio:
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed.',
      hobbies: ['Dancing'],
      preferences: [
        {'title': 'Gender', 'resp': "All"},
        {"title": "Age Range", "resp": "18 - 100"},
        {"title": "Number of Kids", "resp": "0"},
        {"title": "Pets Allowed", "resp": "Yes"},
        {"title": "Ideal Location", "resp": "Arlington, Tx"},
        {"title": "Lease", "resp": "4 months"},
        {"title": "Smoking?", "resp": "Outside only"},
        {'title': "Appartment", "resp": "Yes"},
        {"title": "House", "resp": "Yes"},
        {"title": "Condo", "resp": "Yes"},
        {"title": "Private Bathroom", "resp": "Yes"},
        {"title": "Private Bedroom", "resp": "Yes"}
      ],
      jobTitle: 'Student',
      emailVerified: true,
      premiumUser: true,
      owner: true),
];

class Roommate extends StatefulWidget {
  const Roommate({Key? key}) : super(key: key);

  @override
  State<Roommate> createState() => _RoommateState();
}

class _RoommateState extends State<Roommate> {
  var currentMatch = users[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleSpacing: 20,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundColor: Colors.green,
              child: const Text('AH'),
            ),
            Text(
              'Roomies',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black),
            ),
            IconButton(
              icon: const Icon(
                Icons.message_outlined,
                color: Colors.black,
              ),
              tooltip: 'Open shopping cart',
              onPressed: () {
                // handle the press
              },
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(bottom: 150.0),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height - 400,
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 20),
                    child: userCard(
                        age: currentMatch.age,
                        name: currentMatch.name,
                        jobTitle: currentMatch.jobTitle,
                        profileImg: currentMatch.profileImg),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 10),
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 10),
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
                          return Chip(
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
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: FloatingActionButton(
                      onPressed: () {
                        // Add your onPressed code here!
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
                        // Add your onPressed code here!
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
                        // Add your onPressed code here!
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
      ),
    );
  }
}
