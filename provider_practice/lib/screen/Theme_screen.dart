import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/Theme_changer_provider.dart';

class DarkTheme extends StatefulWidget {
  const DarkTheme({super.key});

  @override
  State<DarkTheme> createState() => _DarkThemeState();
}

class _DarkThemeState extends State<DarkTheme> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme Screen",style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: Text('Light Mode'),
            value: ThemeMode.light,
             groupValue: themeChanger.themeMode, 
             onChanged: themeChanger.setTheme
             ),
              RadioListTile<ThemeMode>(
            title: Text('Dark Mode'),
            value: ThemeMode.dark,
             groupValue: themeChanger.themeMode, 
             onChanged: themeChanger.setTheme
             ),
              RadioListTile<ThemeMode>(
            title: Text('System Mode'),
            value: ThemeMode.system,
             groupValue: themeChanger.themeMode, 
             onChanged: themeChanger.setTheme
             )
        ],
      ),
    );
  }
}