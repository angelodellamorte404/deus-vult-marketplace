import 'package:code/Bottom%20Navigation%20Screen/Home%20Screen/Navigation/Search_Navigation.dart';
import 'package:code/Bottom%20Navigation%20Screen/Home%20Screen/Provider/carousel_slider_provider.dart';
import 'package:code/Bottom%20Navigation%20Screen/Home%20Screen/Provider/scroll_provider.dart';
import 'package:code/Bottom%20Navigation%20Screen/Home%20Screen/Provider/search_provider.dart';
import 'package:code/Bottom%20Navigation%20Screen/Profile%20Screen/Navigation/edit_user_navigation.dart';
import 'package:code/Bottom%20Navigation%20Screen/Profile%20Screen/Provider/data_provider.dart';
import 'package:code/Model/all_model.dart';
import 'package:code/Model/diskon_model.dart';
import 'package:code/Model/rekomendasi_model.dart';
import 'package:code/database/user_db_helper.dart';
import 'package:code/main_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

final dbHelper = UserDBHelper();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await UserDBHelper();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => BottomNavProvider()),
      ChangeNotifierProvider(create: (_) => CarouselSliderProvider()),
      ChangeNotifierProvider(create: (_) => ScrollProvider()),
      ChangeNotifierProvider(create: (_) => HomeSearchProvider()),
      ChangeNotifierProvider(create: (_) => RekomendasiModelClass()),
      ChangeNotifierProvider(create: (_) => RekomendasiModelClass()),
      ChangeNotifierProvider(create: (_) => AllModelClass()),
      ChangeNotifierProvider(create: (_) => DiskonModelClass()),
      ChangeNotifierProvider(create: (_) => DataProvider()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      theme: MyTheme,
      routes: {
        "search_navigation": (context) => SearchNavigation(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

ThemeData MyTheme = ThemeData(
  useMaterial3: true,
  fontFamily: GoogleFonts.poppins().fontFamily,
  pageTransitionsTheme: PageTransitionsTheme(builders: {
    TargetPlatform.android: ZoomPageTransitionsBuilder(),
  }),
  splashColor: Colors.transparent,
  primaryColor: primaryColor,
  buttonTheme: ButtonThemeData(
    splashColor: Colors.transparent,
  ),
  splashFactory: InkRipple.splashFactory,
);

Color primaryColor = Color.fromARGB(255, 19, 153, 151);
