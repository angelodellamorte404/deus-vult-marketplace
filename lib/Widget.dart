import 'package:code/Bottom%20Navigation%20Screen/Home%20Screen/Home_Screen.dart';
import 'package:code/main.dart';
import 'package:flutter/material.dart';

AppBar MyAppBar({
  Widget? title,
  List<Widget>? actions,
  bool? center,
  Widget? leading,
  bool? border,
  double? height,
  Color? bgColor,
  Color? foreColor,
  double? elevation,
  double? spacing,
}) {
  return AppBar(
    title: title,
    actions: actions,
    centerTitle: center,
    leading: leading,
    toolbarHeight: height,
    backgroundColor: bgColor ?? Colors.white,
    foregroundColor: foreColor ?? Colors.black,
    elevation: elevation ?? 20,
    shadowColor: Colors.black.withOpacity(.25),
    shape: border == true
        ? Border(bottom: BorderSide(color: Colors.black, width: .2))
        : null,
    titleSpacing: spacing ?? 0,
    primary: true,
  );
}

Widget MyInkWell({
  required Widget child,
  Function()? onTap,
  Function(TapDownDetails)? onTapDown,
  Function()? onTapCancel,
  Function(bool)? onHover,
  Function()? onLongPress,
  BorderRadius? radius,
}) {
  return InkWell(
    splashFactory: NoSplash.splashFactory,
    child: child,
    onTap: onTap,
    onTapDown: onTapDown,
    onTapCancel: onTapCancel,
    onHover: onHover,
    borderRadius: radius,
    onLongPress: onLongPress,
    focusColor: Colors.black.withOpacity(.25),
    hoverColor: Colors.black.withOpacity(.25),
    splashColor: Colors.black.withOpacity(.25),
    highlightColor: Colors.black.withOpacity(.25),
    overlayColor: MaterialStateProperty.all(Colors.black.withOpacity(.25)),
  );
}

Widget ProductCard(BuildContext context,
    {required Map data, Function()? onTap}) {
  Future<String> _loadImage() async {
    var _image = await NetworkImage(data["image"]);
    return _image.url;
  }

  return Material(
    color: primaryColor,
    child: MyInkWell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FutureBuilder(
              future: _loadImage(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Image.network(data["image"]);
                }
                return Image.asset(BlurLoading);
              },
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  data["name"],
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                Text(
                  "Rp ${format.format(data['harga'])},",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.25,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      onTap: onTap,
    ),
  );
}

Widget HomeContainer({
  required BuildContext context,
  required Widget child,
  required bool gradient,
  Color? bgColor,
}) {
  return GestureDetector(
    onTap: () {
      FocusScope.of(context).unfocus();
    },
    child: Container(
      decoration: BoxDecoration(
        gradient: gradient == true ? MyLinearGradient : null,
        color: bgColor ?? null,
      ),
      height: MediaQuery.of(context).size.height,
      child: child,
    ),
  );
}

final MyLinearGradient = LinearGradient(
  colors: [
    Color.fromARGB(255, 74, 179, 177),
    Color.fromARGB(255, 210, 255, 254),
  ],
  begin: Alignment.bottomCenter,
  end: Alignment.topCenter,
);
