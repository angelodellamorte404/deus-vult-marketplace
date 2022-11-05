import 'package:code/Model/all_model.dart';
import 'package:code/Screen/Product_Screen.dart';
import 'package:code/Widget.dart';
import 'package:code/main.dart';
import 'package:flutter/material.dart';

final allModel = AllModelClass();

class KategoriNavigationScreen extends StatefulWidget {
  final Map kategori;

  const KategoriNavigationScreen({
    Key? key,
    required this.kategori,
  }) : super(key: key);

  @override
  State<KategoriNavigationScreen> createState() =>
      _KategoriNavigationScreenState();
}

class _KategoriNavigationScreenState extends State<KategoriNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    final _kategoriData = allModel.allModel
        .where((element) => element['kategori'] == widget.kategori['name'])
        .toList();

    return HomeContainer(
      gradient: true,
      context: context,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          title: Text(widget.kategori["name"]),
          bgColor: primaryColor,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              childAspectRatio: .75,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              physics: NeverScrollableScrollPhysics(),
              children: List.generate(
                _kategoriData.length,
                (index) {
                  var data = _kategoriData[index];
                  return ProductCard(
                    context,
                    data: data,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductScreen(product: data),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
