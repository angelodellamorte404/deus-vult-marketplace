import 'package:code/Bottom%20Navigation%20Screen/Profile%20Screen/Navigation/edit_user_navigation.dart';
import 'package:code/Bottom%20Navigation%20Screen/Profile%20Screen/Provider/data_provider.dart';
import 'package:code/Widget.dart';
import 'package:code/database/user_class.dart';
import 'package:code/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List? userData = [];

  @override
  void initState() {
    super.initState();

    _loadUser();
  }

  Future<void> _loadUser() async {
    dbHelper.readData().then((value) {
      setState(() {
        userData = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return HomeContainer(
      gradient: false,
      bgColor: primaryColor,
      context: context,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: Text(
            "Profile",
            style: TextStyle(letterSpacing: 3),
          ),
          elevation: 0,
          bgColor: Colors.transparent,
          spacing: 20,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 90,
                  backgroundImage: NetworkImage(
                      "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1665237301/Deus%20Vult%20MarketPlace/039b2bcf17a73484f964771ac08f63fd_e3sqvu.jpg"),
                ),
                SizedBox(height: 10),

                Column(
                  children: List.generate(userData!.length,
                      (index) => Text(userData![index].toString())),
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return EditUserNavigation();
                        },
                      ),
                    );
                  },
                  child: Text("Edit Data"),
                ),

                // Nama Lengkap
                // SizedBox(height: 10),
                // _DataDiri(
                //   context,
                //   subtitle: "Nama Lengkap",
                //   type: "nama",
                // ),
                // SizedBox(height: 20),

                // // Email
                // _DataDiri(
                //   context,
                //   subtitle: "Email",
                //   type: "email",
                // ),
                // SizedBox(height: 20),

                // // Nomor HP
                // _DataDiri(
                //   context,
                //   subtitle: "Nomor HP",
                //   type: "number",
                // ),
                // SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
