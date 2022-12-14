import 'package:code/Screen/Login_Screen.dart';
import 'package:code/database/user_class.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Widget.dart';
import '../database/dbHelper.dart';
import '../main.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  DBHelper? dbHelper;
  List<UserClass> userData = [];

  @override
  void initState() {
    super.initState();

    setState(() {
      dbHelper = DBHelper();
    });
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final signUpProv = Provider.of<SignUpScreenProvider>(context);
    dbHelper!.getUser().then((value) {
      setState(() {
        userData = value;
      });
    });

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: primaryColor,
      appBar: AppBar(
        foregroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.close, size: 30),
          )
        ],
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: HomeContainer(
            context: context,
            gradient: false,
            width: MediaQuery.of(context).size.width / 1.25,
            child: Column(
              children: [
                Image.network(
                  "https://res.cloudinary.com/angelo-della-morte-company/image/upload/v1664288499/Deus%20Vult%20MarketPlace/deus_vult_ldopaf.png",
                  width: 200,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.values.first,
                  child: Column(
                    children: [
                      MyTextInput(
                        textEditingController: signUpProv.email,
                        type: TextInputType.emailAddress,
                        subtitle: "Email",
                        onChanged: (val) {
                          signUpProv.email = val;
                        },
                      ),
                      SizedBox(height: 15),

                      // Name
                      MyTextInput(
                        textEditingController: signUpProv.name,
                        type: TextInputType.name,
                        subtitle: "Nama",
                        onChanged: (val) {
                          signUpProv.name = val;
                        },
                      ),
                      SizedBox(height: 15),

                      // HP
                      MyTextInput(
                        textEditingController: signUpProv.hp,
                        type: TextInputType.number,
                        subtitle: "Nomor HP",
                        onChanged: (val) {
                          signUpProv.hp = val;
                        },
                      ),
                      SizedBox(height: 15),

                      // Password
                      MyTextInput(
                        textEditingController: signUpProv.password,
                        type: TextInputType.name,
                        subtitle: "Password",
                        secure: signUpProv.isSecure,
                        onChanged: (val) {
                          signUpProv.password = val;
                        },
                      ),
                      SizedBox(height: 15),

                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.centerRight,
                        child: MyPrimaryTextButton(
                          text: "SignUp",
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          elevation: 1,
                          onPressed: () async {
                            await dbHelper!.insertUser(UserClass(
                              id: userData.length,
                              username: signUpProv.username.text,
                              name: signUpProv.name.text,
                              email: signUpProv.email.text,
                              hp: signUpProv.hp.text,
                              password: signUpProv.password.text,
                            ));
                            if (_formKey.currentState!.validate()) {
                              dbHelper!.getUser().then((value) => print(value));
                              Navigator.pop(context);
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignUpScreenProvider extends ChangeNotifier {
  // id
  TextEditingController _username = TextEditingController();
  TextEditingController get username => this._username;
  set username(value) {
    this._username.text = value;
    this._username.selection = TextSelection.fromPosition(
      TextPosition(offset: this._username.text.length),
    );
    notifyListeners();
  }

  // Name
  TextEditingController _name = TextEditingController();
  TextEditingController get name => this._name;
  set name(value) {
    this._name.text = value;
    this._name.selection = TextSelection.fromPosition(
      TextPosition(offset: this._name.text.length),
    );
    notifyListeners();
  }

  // Email
  TextEditingController _email = TextEditingController();
  TextEditingController get email => this._email;
  set email(value) {
    this._email.text = value;
    this._email.selection = TextSelection.fromPosition(
      TextPosition(offset: this._email.text.length),
    );
    notifyListeners();
  }

  // HP
  TextEditingController _hp = TextEditingController();
  TextEditingController get hp => this._hp;
  set hp(value) {
    this._hp.text = value;
    this._hp.selection = TextSelection.fromPosition(
      TextPosition(offset: this._hp.text.length),
    );
    notifyListeners();
  }

// Password
  TextEditingController _password = TextEditingController();
  TextEditingController get password => this._password;
  set password(value) {
    this._password.text = value;
    this._password.selection = TextSelection.fromPosition(
      TextPosition(offset: this._password.text.length),
    );
    notifyListeners();
  }

  // Security
  bool _isSecure = true;
  bool get isSecure => this._isSecure;

  set setSecure(bool value) {
    this._isSecure = value;
    notifyListeners();
  }
}
