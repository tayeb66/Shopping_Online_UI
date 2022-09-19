import 'package:flutter/material.dart';
import 'package:shopping_online_ui/json/const.dart';
import 'package:shopping_online_ui/pages/home_page.dart';
import 'package:shopping_online_ui/theme/colors.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  var activeColor = 0;
  AppBar? appBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: getFooter(),
      backgroundColor: white,
      appBar: getAppbar(),
      body: getBody(),
    );
  }

  /// BottomAppbar
  Widget getFooter() {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          color: white,
          border: Border(top: BorderSide(color: grey.withOpacity(0.2)))),
      child: Padding(
        padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            itemsTab.length,
            (index) => IconButton(
              onPressed: () {
                setState(() {
                  activeColor = index;
                });
              },
              icon: itemsTab[index]['icon'],
              iconSize: itemsTab[index]['iconSize'],
              color: activeColor == index ? accent : black,
            ),
          ),
        ),
      ),
    );
  }

  /// Appbar
  AppBar? getAppbar() {
    switch (activeColor) {
      case 0:
        appBar;
        break;
      case 1:
        appBar = null;
        break;
      case 2:
        return AppBar(
          elevation: 0.8,
          backgroundColor: white,
          title: const Text(
            'Account',
            style: TextStyle(color: black),
          ),
          centerTitle: true,
        );
        break;
      case 3:
        return AppBar(
          backgroundColor: white,
          title: const Text(
            'Cart',
            style: TextStyle(color: black),
          ),
          centerTitle: true,
        );
        break;
      case 4:
        return AppBar(
          backgroundColor: white,
          title: const Text(
            'More',
            style: TextStyle(color: black),
          ),
          centerTitle: true,
        );
        break;

      default:
    }
    return null;
  }

  Widget getBody() {
    return IndexedStack(
      index: activeColor,
      children: const [
        HomePage(),
        Center(
          child: Text(
            'Store',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            'Account',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            'Cart',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),

        Center(
          child: Text(
            'More',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
