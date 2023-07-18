import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagemnet_mvvm_architecture_rest_apis/provider_directory/count_provider.dart';
import 'package:provider_statemanagemnet_mvvm_architecture_rest_apis/provider_directory/example_one_provider.dart';
import 'package:provider_statemanagemnet_mvvm_architecture_rest_apis/provider_directory/favourite_provider.dart';
import 'package:provider_statemanagemnet_mvvm_architecture_rest_apis/provider_directory/theme_changer_provider.dart';
import 'package:provider_statemanagemnet_mvvm_architecture_rest_apis/screens_directory/count_example.dart';
import 'package:provider_statemanagemnet_mvvm_architecture_rest_apis/screens_directory/example_one.dart';
import 'package:provider_statemanagemnet_mvvm_architecture_rest_apis/statefull_widget_screen.dart';
import 'package:provider_statemanagemnet_mvvm_architecture_rest_apis/stateless_widget_home_screen.dart';
import 'package:provider_statemanagemnet_mvvm_architecture_rest_apis/why_provider.dart';

import 'favourite_directory/dark_theme.dart';
import 'favourite_directory/favourite_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CountProvider()),
          ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
          ChangeNotifierProvider(create: (_) => FavouriteItemProvider()),
          ChangeNotifierProvider(create: (_) => ThemeChanger()),
        ],
        child: Builder(
          builder: (BuildContext context) {
            final themeChanger=Provider.of<ThemeChanger>(context);
            return MaterialApp(
              title: 'Flutter Demo',
              themeMode: themeChanger.themeMode,
              theme: ThemeData(
                brightness: Brightness.light,
              primarySwatch: Colors.red,
              ),
              darkTheme: ThemeData(
                brightness: Brightness.dark,
                primarySwatch: Colors.yellow,
                primaryColor: Colors.purple,
                appBarTheme: AppBarTheme(
                  backgroundColor: Colors.teal,
                ),
                iconTheme: IconThemeData(
                  color: Colors.pink,
                ),
              ),
              home: const FavouriteScreen(),
            );
          },
        ));
  }
}
