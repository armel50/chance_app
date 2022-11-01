import 'package:chance_app/constants.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
      ),
      body: Container(
          padding: EdgeInsets.only(left: defaultPadding, right: defaultPadding),
          margin: EdgeInsets.only(bottom: defaultMargin*3),
          child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: defaultMargin * 1.5,
          ),
          Align(
            child: Container(
              height: 150,
              width: 150,
              child: CircleAvatar(
                backgroundColor: primaryColor,
                child: Text('CK',
                style: TextStyle(fontSize: defaultTitleFontSize*2, fontWeight: FontWeight.bold, color: AppBarTextColor),)
              ),
            ),
          ),
            SizedBox(
            height: defaultMargin ,
          ),
            Text('Chance Kassi, 25', 
            style:  TextStyle(fontSize: defaultTitleFontSize, fontWeight: FontWeight.bold),),
           SizedBox(
            height: defaultMargin * 2,
          ),
            ListTile(
              contentPadding: EdgeInsets.all(defaultPadding),
              title: Text('Edit Profile'),
              trailing:  ImageIcon(
            AssetImage('assets/images/pen.png')
           ),
            ),
            
             ListTile(
              contentPadding: EdgeInsets.all(defaultPadding),
              title: Text('Roommate Preferences'),
              trailing:   ImageIcon(
            AssetImage('assets/images/setting-lines.png')
           ),
            ),
                ListTile(
              contentPadding: EdgeInsets.all(defaultPadding),
              title: Text('Safety'),
              trailing:   ImageIcon(
            AssetImage('assets/images/shield.png')
           ),
            ),
                ListTile(
              contentPadding: EdgeInsets.all(defaultPadding),
              title: Text('What Works'),
              trailing:   ImageIcon(
            AssetImage('assets/images/lightbulb.png')
           ),
            ),

        ]),
      )),
    );
  }
}
