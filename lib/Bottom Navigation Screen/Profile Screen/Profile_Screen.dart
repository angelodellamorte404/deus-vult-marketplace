import 'package:code/Bottom%20Navigation%20Screen/Profile%20Screen/Navigation/edit_user_navigation.dart';
import 'package:code/Bottom%20Navigation%20Screen/Profile%20Screen/Provider/data_provider.dart';
import 'package:code/Screen/Login_Screen.dart';
import 'package:code/Widget.dart';
import 'package:code/database/user_class.dart';
import 'package:code/database/user_db_helper.dart';
import 'package:code/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  UserDBHelper? userDBHelper;
  List? userData = [];

  @override
  void initState() {
    super.initState();

    _loadUser();
  }

  Future<void> _loadUser() async {
    userDBHelper = await UserDBHelper();
    userDBHelper?.readData().then((value) {
      setState(() {
        userData = value;
      });
    });
  }

  Future<int> _checkUser() async {
    if (userData!.length > 0) {
      return 1;
    }
    return 0;
  }

  @override
  void dispose() {
    super.dispose();
    userDBHelper!.closeDB();
  }

  @override
  Widget build(BuildContext context) {
    return HomeContainer(
      gradient: false,
      bgColor: primaryColor,
      context: context,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: FutureBuilder(
          future: _checkUser(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == 0) {
              return Padding(
                padding: EdgeInsets.only(top: 32, left: 8, right: 8),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(.2),
                          ),
                          child: Column(
                            children: [
                              Text(
                                "Silahkan Login terlebih dahulu",
                                style:
                                    TextStyle(fontSize: 30, color: Colors.red),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: MyPrimaryTextButton(
                                  text: "Login",
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, '/login_screen');
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }

            return Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 30),

                    // Profile Picture
                    Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 75,
                        backgroundImage: NetworkImage(
                            "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665237301/Deus%20Vult%20MarketPlace/039b2bcf17a73484f964771ac08f63fd_e3sqvu.jpg"),
                      ),
                    ),
                    SizedBox(height: 10),

                    Column(
                      children: List.generate(
                        userData!.length,
                        (index) => Text(
                          userData![index].toString(),
                        ),
                      ),
                    ),

                    MyPrimaryTextButton(
                      text: "Login",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              if (userData!.length > 0) {
                                return EditUserNavigation();
                              }
                              return LoginScreen();
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
