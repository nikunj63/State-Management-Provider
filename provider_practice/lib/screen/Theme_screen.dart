import 'package:flutter/material.dart';

class DarkTheme extends StatefulWidget {
  const DarkTheme({super.key});

  @override
  State<DarkTheme> createState() => _DarkThemeState();
}

class _DarkThemeState extends State<DarkTheme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Screen"),
      ),
    );
  }
}