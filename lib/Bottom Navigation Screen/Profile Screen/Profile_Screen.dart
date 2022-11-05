import 'package:code/Widget.dart';
import 'package:code/database/dbHelper.dart';
import 'package:code/database/user_class.dart';

import 'package:code/main.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  DBHelper? dbHelper;
  List<UserClass> userData = [];

  @override
  void initState() {
    super.initState();

    setState(() {
      dbHelper = DBHelper();
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    dbHelper!.closeDB();
  }

  Future<int> _checkUser(List<UserClass> userData) async {
    if (userData.length > 0) {
      return 1;
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    dbHelper!.getUser().then((value) {
      setState(() {
        userData = value;
      });
    });

    return HomeContainer(
      gradient: false,
      bgColor: primaryColor,
      context: context,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                FutureBuilder(
                  future: _checkUser(userData),
                  builder: (context, snapshot) {
                    if (snapshot.hasData && snapshot.data == 1) {
                      return Column(
                        children: List.generate(
                          userData.length,
                          (index) {
                            var data = userData[index];

                            return ListTile(
                              title: Text("${data.name}"),
                              subtitle: Text("${data.username}"),
                              trailing: IconButton(
                                onPressed: () async {
                                  await dbHelper!.removeUser(data);
                                },
                                icon: Icon(Iconsax.profile_delete5),
                              ),
                            );
                          },
                        ),
                      );
                    }
                    return AlertDialog(
                      alignment: Alignment.center,
                      backgroundColor: Colors.white.withOpacity(.75),
                      elevation: 24.0,
                      actionsPadding: EdgeInsets.all(16),
                      actions: [
                        MyPrimaryTextButton(
                          text: "Login",
                          elevation: 1,
                          onPressed: () =>
                              Navigator.pushNamed(context, '/login_screen'),
                        ),
                      ],
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                      content: Column(
                        children: [
                          Text("Silahkan login terlebih dahulu"),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
