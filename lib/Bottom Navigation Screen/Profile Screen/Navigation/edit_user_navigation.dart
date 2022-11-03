import 'package:code/Bottom%20Navigation%20Screen/Profile%20Screen/Provider/data_provider.dart';
import 'package:code/Widget.dart';
import 'package:code/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class EditUserNavigation extends StatefulWidget {
  const EditUserNavigation({Key? key}) : super(key: key);

  @override
  State<EditUserNavigation> createState() => _EditUserNavigationState();
}

class _EditUserNavigationState extends State<EditUserNavigation> {
  @override
  Widget build(BuildContext context) {
    final dataProv = Provider.of<DataProvider>(context);

    return HomeContainer(
      bgColor: primaryColor,
      context: context,
      gradient: false,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: Text("Edit"),
          bgColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: MediaQuery.of(context).size.width / 1.25,
              child: Column(
                children: [
                  SizedBox(height: 30),
                  _DataDiri(
                    context,
                    subtitle: "Nama Lengkap",
                    type: "name",
                    onChanged: (val) => dataProv.setName = val,
                  ),
                  SizedBox(height: 20),
                  _DataDiri(
                    context,
                    subtitle: "Email",
                    type: "email",
                    onChanged: (val) => dataProv.setEmail = val,
                  ),
                  SizedBox(height: 20),
                  _DataDiri(
                    context,
                    subtitle: "Nomor Handphone",
                    type: "number",
                    onChanged: (val) => dataProv.setNomorHP = val,
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Edit"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan,
                        foregroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(horizontal: 50),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _DataDiri(
  BuildContext context, {
  required String subtitle,
  required String type,
  required void onChanged(val),
}) {
  final dataProv = Provider.of<DataProvider>(context);

  controller(String type) {
    switch (type) {
      case "name":
        return dataProv.getNama;

      case "email":
        return dataProv.getEmail;

      case "number":
        return dataProv.getNomorHP;
    }
  }

  inputType(String type) {
    switch (type) {
      case "name":
        return TextInputType.name;

      case "email":
        return TextInputType.emailAddress;

      case "number":
        return TextInputType.numberWithOptions(decimal: true, signed: false);
    }
  }

  return TextFormField(
    controller: controller(type),
    style: TextStyle(fontSize: 12),
    keyboardType: inputType(type),
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
    onChanged: (val) {
      onChanged(val);
    },
  );
}
