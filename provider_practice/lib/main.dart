import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/provider/Theme_changer_provider.dart';
import 'package:provider_practice/screen/Theme_screen.dart';


void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> ThemeChanger())
      ],
      child: Builder(builder: (BuildContext context){
        final themeChanger = Provider.of<ThemeChanger>(context);
        return MaterialApp(
        themeMode: themeChanger.themeMode,
        debugShowCheckedModeBanner: false,
        home:const  DarkTheme(),
      );
      })
    );
  }
}