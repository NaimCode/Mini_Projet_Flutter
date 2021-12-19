// ignore_for_file: non_constant_identifier_names

import 'package:api_football/Utils/theme.dart';
import 'package:api_football/Widgets/menu_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Rx<Widget> SideBar = Container().obs;

class Root extends StatefulWidget {
  final Widget page;
  const Root({Key? key, required this.page}) : super(key: key);

  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const MenuBar(),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
            child: widget.page,
          )),
          Container(
            width: 300,
            padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border(
                left: BorderSide(color: Theme.of(context).dividerColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}