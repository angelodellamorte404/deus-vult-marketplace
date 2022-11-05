import 'package:code/Screen/SignUp_Screen.dart';
import 'package:code/Widget.dart';
import 'package:code/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final loginProv = Provider.of<LoginScreenProvider>(context);
    final bottomProv = Provider.of<BottomNavProvider>(context);

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        foregroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
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
                    "Login",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                  ),
                ),
                SizedBox(height: 10),

                // Email
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      MyTextInput(
                        textEditingController: loginProv.email,
                        type: TextInputType.emailAddress,
                        subtitle: "Email",
                        onChanged: (val) {
                          loginProv.email = val;
                        },
                      ),
                      SizedBox(height: 15),

                      // Password
                      MyTextInput(
                        textEditingController: loginProv.password,
                        type: TextInputType.text,
                        subtitle: "Password",
                        onChanged: (val) {
                          loginProv.password = val;
                        },
                        secure: loginProv.isSecure,
                      ),

                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Column(
                          children: [
                            // Login
                            MyPrimaryTextButton(
                              text: "Login",
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  Navigator.pop(context);
                                }
                              },
                            ),

                            // SignUp
                            MySecondaryTextButton(
                              text: "SignUp",
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              bgColor: primaryColor,
                              elevation: 1,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUpScreen(),
                                  ),
                                );
                              },
                            ),
                          ],
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

class LoginScreenProvider extends ChangeNotifier {
  TextEditingController _email = TextEditingController();
  TextEditingController get email => this._email;

  set email(value) {
    this._email.text = value;
    this._email.selection = TextSelection.fromPosition(
      TextPosition(offset: this._email.text.length),
    );
    notifyListeners();
  }

  TextEditingController _password = TextEditingController();
  TextEditingController get password => this._password;

  set password(value) {
    this._password.text = value;
    this._password.selection = TextSelection.fromPosition(
      TextPosition(offset: this._password.text.length),
    );
    notifyListeners();
  }

  bool _isSecure = true;
  bool get isSecure => this._isSecure;

  set setSecure(bool value) {
    this._isSecure = value;
    notifyListeners();
  }
}
