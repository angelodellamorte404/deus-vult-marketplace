import 'package:code/Bottom%20Navigation%20Screen/Home%20Screen/Provider/search_provider.dart';
import 'package:code/Widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchNavigation extends StatefulWidget {
  const SearchNavigation({Key? key}) : super(key: key);

  @override
  State<SearchNavigation> createState() => _SearchNavigationState();
}

class _SearchNavigationState extends State<SearchNavigation> {
  @override
  Widget build(BuildContext context) {
    final _prov = Provider.of<HomeSearchProvider>(context);

    return Scaffold(
      appBar: MyAppBar(
        leading: IconButton(
          onPressed: () {
            _prov.controller = "";
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
        title: TextFormField(
          controller: _prov.controller,
          onChanged: (val) {
            _prov.controller = val;
          },
        ),
      ),
    );
  }
}
