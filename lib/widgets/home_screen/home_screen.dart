import 'package:flutter/material.dart';
import 'package:shogi_proverbs/localizations.dart';
import 'package:shogi_proverbs/widgets/home_screen/proverbs_tab/proverbs_tab.dart';
import 'package:shogi_proverbs/widgets/home_screen/settings_tab/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.appTitle),
      ),
      body: _currentIndex == 0 ? ProverbsTab() : SettingsTab(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text(AppLocalizations.homeScreenProversTabTitleText),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text(AppLocalizations.homeScreenSettingsTabTitleText),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}
