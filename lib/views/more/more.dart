import 'package:chance_app/constants.dart';
import 'package:flutter/material.dart';

class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: defaultMargin,
            ),
            Container(
              padding: EdgeInsets.all(defaultPadding),
              width: MediaQuery.of(context).size.width - 20,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: primaryColor, width: 0.5),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(defaultPadding),
                leading: Stack(
                  children: [
                    CircleAvatar(backgroundColor: primaryColor),
                    Positioned(
                      bottom: 10,
                      right: 5,
                      child: Icon(
                        Icons.person_outline,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 25,
                      child: Container(
                          height: 20,
                          width: 15,
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            child: Icon(
                              Icons.star,
                              color: Colors.yellowAccent,
                              size: 12,
                            ),
                          )),
                    )
                  ],
                ),
                title: Text('Upgrade'),
                subtitle: Text('Get unlimited matches'),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
            SizedBox(
              height: defaultMargin * 2,
            ),
            Container(
              padding: EdgeInsets.all(defaultPadding),
              width: MediaQuery.of(context).size.width - 20,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: primaryColor, width: 0.5),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(defaultPadding),
                leading: Stack(
                  children: [
                    CircleAvatar(backgroundColor: primaryColor),
                    Positioned(
                      bottom: 10,
                      right: 5,
                      child: Icon(
                        Icons.person_outline,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 25,
                      child: Container(
                          height: 20,
                          width: 15,
                          child: CircleAvatar(
                              backgroundColor: Colors.black,
                              child: Icon(
                                Icons.contact_page_rounded,
                                size: 12,
                                color: Colors.yellowAccent,
                              ))),
                    )
                  ],
                ),
                title: Text('Get ID Verified'),
                subtitle: Text(
                    'Join our trusted community and find your ideal roomate!'),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.all(defaultPadding),
              leading:  ImageIcon(
            AssetImage('assets/images/love.png')
           ),
              title: Text('Bookmarks'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    indent: 60.0,
                    endIndent: 10.0,
                    thickness: 0.5,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
            ListTile(
              contentPadding: EdgeInsets.all(defaultPadding),
              leading:  ImageIcon(
            AssetImage('assets/images/single-user.png')
           ),
              title: Text('Who Likes Me'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            ListTile(
              contentPadding: EdgeInsets.all(defaultPadding),
              leading:  ImageIcon(
            AssetImage('assets/images/menu.png')
           ),
              title: Text('My Listings (2)'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    indent: 60.0,
                    endIndent: 10.0,
                    thickness: 0.5,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
            ListTile(
              contentPadding: EdgeInsets.all(defaultPadding),
              leading:  ImageIcon(
            AssetImage('assets/images/settings.png')
           ),
              title: Text('App Settings'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            ListTile(
              contentPadding: EdgeInsets.all(defaultPadding),
              leading: ImageIcon(
            AssetImage('assets/images/information.png')
           ),
              title: Text('FAQ'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            ListTile(
              contentPadding: EdgeInsets.all(defaultPadding),
              leading: ImageIcon(
            AssetImage('assets/images/customer-service.png')
           ),
              title: Text('Support'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            )
          ]),
        ),
      ),
    );
  }
}
