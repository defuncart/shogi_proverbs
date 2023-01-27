import 'package:flutter/material.dart';
import 'package:shogi_proverbs/localizations.dart';
import 'package:shogi_proverbs/widgets/home_screen/proverbs_tab/proverbs_tab.dart';
import 'package:shogi_proverbs/widgets/home_screen/settings_tab/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final _searchQueryController = TextEditingController();
  bool _isSearching = false;
  String _searchQuery = '';

  bool get _canSearch => _currentIndex == 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: _canSearch && _isSearching
            ? BackButton(onPressed: () {
                _searchQueryController.clear();
                setState(() {
                  _isSearching = false;
                  _searchQuery = '';
                });
              })
            : const SizedBox.shrink(),
        title: _canSearch && _isSearching
            ? TextField(
                controller: _searchQueryController,
                autofocus: true,
                decoration: InputDecoration(
                  hintText: AppLocalizations.homeScreenSearchHintText,
                  border: InputBorder.none,
                  hintStyle: Theme.of(context).textTheme.titleLarge!.apply(
                        color: Colors.white.withOpacity(0.4),
                      ),
                ),
                cursorColor: Colors.white,
                style: Theme.of(context).textTheme.titleLarge!.apply(color: Colors.white),
                onChanged: (value) => setState(() => _searchQuery = value),
              )
            : Text(AppLocalizations.appTitle),
        actions: [
          if (_canSearch && !_isSearching)
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () => setState(() => _isSearching = true),
            ),
          if (_canSearch && _isSearching)
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                if (_searchQuery.isEmpty) {
                  setState(() => _isSearching = false);
                } else {
                  _searchQueryController.clear();
                  setState(() => _searchQuery = '');
                }
              },
            ),
        ],
      ),
      body: _currentIndex == 0
          ? ProverbsTab(
              filterTerm: _searchQuery,
            )
          : const SettingsTab(),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Theme.of(context).scaffoldBackgroundColor),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.book),
              label: AppLocalizations.homeScreenProversTabTitleText,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              label: AppLocalizations.homeScreenSettingsTabTitleText,
            ),
          ],
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Theme.of(context).colorScheme.secondary,
          unselectedItemColor: Theme.of(context).disabledColor,
        ),
      ),
    );
  }
}
