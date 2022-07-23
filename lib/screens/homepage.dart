import 'package:appdownload/provider/homescreen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeProvider>.value(
        value: HomeProvider(),
        child: Consumer<HomeProvider>(builder: (context, homeProvider, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Video Downloader'),
              backgroundColor: Colors.teal,
            ),
            body: homeProvider.page[homeProvider.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              items: homeProvider.items,
              currentIndex: homeProvider.currentIndex,
              onTap: (val) {
                homeProvider.bottomNavigationTap(val);
              },
            ),
          );
        }));
  }
}
