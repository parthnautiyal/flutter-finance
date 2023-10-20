import 'package:flutter/cupertino.dart';
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
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
        backgroundColor: Color(0xff368983),
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(
              CupertinoIcons.settings,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top: 16.0),
                        width: 150,
                        height: 150,
                        child: ClipRRect(
                            borderRadius: const BorderRadius.all(
                                Radius.circular(10.0)),
                            child: Image.asset("images/Keerthi.png"))),
                    const Padding(
                      padding: EdgeInsets.only(top: 16.0 / 2),
                      child: Text("Keerthi Prasanna"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 16 / 2),
                      child: Text("keerthiprasanna@gmail.com"),
                    ),
                    const Chip(
                      label: Text("Edit profile"),
                      backgroundColor: Colors.lightGreen,
                    )
                  ],
                ),
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Account",
                        style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            color: Color(0xFF3a4d62), fontWeight: FontWeight.w800)),
                    const SizedBox(
                      height: 16,
                    ),
                    buildProfileTile(context,
                        imageUrl: "images/user.png",
                        title: "My Account",
                       ),
                    buildProfileTile(context,
                        imageUrl: "images/bell.png",
                        title: "Notification",
                    ),
                    buildProfileTile(context,
                        imageUrl: "images/lock-on.png",
                        title: "Privacy",
                        ),
                    buildProfileTile(context,
                        imageUrl: "images/info-circle.png",
                        title: "About",
                        )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProfileTile(BuildContext context,
      {required String imageUrl, required String title, String? subtitle}) {
    return ListTile(
        leading: Image.asset(imageUrl),
        title: Text(title,
            style: Theme.of(context)
                .textTheme
                .subtitle2
                ?.copyWith(color: Color(0xFF3a4d62), fontSize: 18,fontWeight: FontWeight.w600)),
        subtitle: Text(subtitle ?? "",
            style: Theme.of(context)
                .textTheme
                .bodyText2
                ?.copyWith(color: Color(0xFFb5b5b5), fontSize: 18,fontWeight: FontWeight.w400)),
        trailing: Padding(
          padding: const EdgeInsets.only(bottom: 22),
          child: Icon(
            Icons.arrow_forward_ios_rounded,
            size: 24,
            color: Colors.black26,
          ),
        ));
  }
}