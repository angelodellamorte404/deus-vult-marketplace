import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:code/Bottom%20Navigation%20Screen/Home%20Screen/Home_Screen.dart';
import 'package:code/Screen/Login_Screen.dart';
import 'package:code/Screen/SignUp_Screen.dart';
import 'package:code/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

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
  return Material(
    color: primaryColor,
    child: MyInkWell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CachedNetworkImage(
              imageUrl: data['image'],
              progressIndicatorBuilder: (context, url, progress) {
                return Align(
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(
                    value: progress.progress,
                  ),
                );
              },
              errorWidget: (context, url, error) {
                return Icon(Icons.error);
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
  double? width,
}) {
  return GestureDetector(
    onTap: () {
      FocusScope.of(context).unfocus();
    },
    child: Container(
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        gradient: gradient == true ? MyLinearGradient : null,
        color: bgColor ?? primaryColor,
      ),
      height: MediaQuery.of(context).size.height,
      child: child,
    ),
  );
}

class MyTextInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final TextInputType type;
  final String subtitle;
  final onChanged;
  final secure;
  final validator;

  const MyTextInput({
    Key? key,
    required this.textEditingController,
    required this.type,
    required this.subtitle,
    required this.onChanged(val),
    bool? this.secure,
    required this.validator(val),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginProv = Provider.of<LoginScreenProvider>(context);
    final signUpProv = Provider.of<SignUpScreenProvider>(context);

    return Stack(
      children: [
        TextFormField(
          controller: textEditingController,
          style: TextStyle(fontSize: 12),
          keyboardType: type,
          enableSuggestions: true,
          inputFormatters:
              type == "number" ? [FilteringTextInputFormatter.digitsOnly] : [],
          decoration: InputDecoration(
            fillColor: Colors.red,
            labelText: subtitle,
            labelStyle: TextStyle(color: Colors.black),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.yellow),
              gapPadding: 5,
            ),
          ),
          obscureText: secure ?? false,
          onChanged: (val) {
            onChanged(val);
          },
          validator: (value) {},
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: IconButton(
            padding: EdgeInsets.only(top: 5),
            onPressed: () {
              loginProv.setSecure = !loginProv.isSecure;
              signUpProv.setSecure = !signUpProv.isSecure;
            },
            icon: Icon(Iconsax.eye),
            color: secure != null ? Colors.cyan : Colors.transparent,
          ),
        ),
      ],
    );
  }
}

class MyPrimaryTextButton extends StatelessWidget {
  final String text;
  var padding;
  final Function() onPressed;
  var elevation;

  MyPrimaryTextButton({
    Key? key,
    required this.text,
    EdgeInsetsGeometry? this.padding,
    required this.onPressed,
    double? this.elevation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.black,
        padding: padding ?? EdgeInsets.zero,
        elevation: elevation ?? 5,
      ),
    );
  }
}

class MySecondaryTextButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  var bgColor;
  var padding;
  var fgColor;
  var elevation;

  MySecondaryTextButton({
    Key? key,
    required this.text,
    required this.onPressed,
    Color? this.bgColor,
    Color? this.fgColor,
    EdgeInsetsGeometry? this.padding,
    double? this.elevation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text),
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: elevation ?? 1,
        backgroundColor: bgColor ?? primaryColor,
        padding: padding ?? EdgeInsets.zero,
        foregroundColor: fgColor ?? Colors.white,
      ),
    );
  }
}

final MyLinearGradient = LinearGradient(
  colors: [
    Color.fromARGB(255, 74, 179, 177),
    Color.fromARGB(255, 210, 255, 254),
  ],
  begin: Alignment.bottomCenter,
  end: Alignment.topCenter,
);
