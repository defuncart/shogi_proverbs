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
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Theme.of(context).scaffoldBackgroundColor),
        child: BottomNavigationBar(
          items: [
            _ShiftingBottomNavBarItem(
              icon: Icons.book,
              label: AppLocalizations.homeScreenProversTabTitleText,
              color: _currentIndex == 0 ? Theme.of(context).accentColor : Theme.of(context).disabledColor,
            ),
            _ShiftingBottomNavBarItem(
              icon: Icons.settings,
              label: AppLocalizations.homeScreenSettingsTabTitleText,
              color: _currentIndex == 1 ? Theme.of(context).accentColor : Theme.of(context).disabledColor,
            ),
          ],
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
          type: BottomNavigationBarType.shifting,
        ),
      ),
    );
  }
}

class _ShiftingBottomNavBarItem extends BottomNavigationBarItem {
  _ShiftingBottomNavBarItem({IconData icon, String label, Color color})
      : super(
          icon: Icon(
            icon,
            color: color,
          ),
          // TODO once 1.23 is stable, update to label
          // ignore: deprecated_member_use
          title: Text(
            label,
            style: TextStyle(color: color),
          ),
        );
}
