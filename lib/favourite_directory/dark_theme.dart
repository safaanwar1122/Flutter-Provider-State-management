import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider_directory/theme_changer_provider.dart';

class DarkThemeScreen extends StatefulWidget {
  const DarkThemeScreen({Key? key}) : super(key: key);

  @override
  State<DarkThemeScreen> createState() => _DarkThemeScreenState();
}

class _DarkThemeScreenState extends State<DarkThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChnager = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
       // backgroundColor: Colors.pinkAccent,
        title: Text('Dark Theme'),
      ),
      body: Column(
        children: [
          //you can use switch tile instaed of RadioListTile button
          RadioListTile<ThemeMode>(
            title: Text('Light Mode'),
            value: ThemeMode.light,
            groupValue: themeChnager.themeMode,
            onChanged: themeChnager.setTheme,
          ),

          RadioListTile<ThemeMode>(
              title: Text('Dark Mode'),
            value: ThemeMode.dark,
            groupValue: themeChnager.themeMode,
            onChanged: themeChnager.setTheme,
          ),
          RadioListTile<ThemeMode>(
            title: Text('System Mode'),
            value: ThemeMode.system,
            groupValue: themeChnager.themeMode,
            onChanged: themeChnager.setTheme,
          ),
          Icon(Icons.favorite),
        ],
      ),
    );
  }
}
