import 'package:code/Widget.dart';
import 'package:code/main.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  final Map product;

  const ProductScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  get product => widget.product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: MyLinearGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MyAppBar(
          bgColor: primaryColor.withOpacity(.5),
          title: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(product['name']),
            ),
            scrollDirection: Axis.horizontal,
          ),
          spacing: -5,
        ),
      ),
    );
  }
}
