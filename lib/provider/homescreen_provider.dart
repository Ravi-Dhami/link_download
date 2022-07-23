import 'package:appdownload/screens/browser_page.dart';
import 'package:flutter/material.dart';
import '../screens/link_past_page.dart';
class HomeProvider extends ChangeNotifier{
  int currentIndex = 0;

  bottomNavigationTap(val){
    currentIndex = val;
    notifyListeners();
  }


  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(icon: Icon(Icons.add_link),label: 'Add'),
    BottomNavigationBarItem(icon: Icon(Icons.add),label: 'Add'),
  ];

  List page = [
    LinkPastPage(),
    BrowserPage(),
  ];

}