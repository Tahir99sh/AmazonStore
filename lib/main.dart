import 'package:amazon_clone_node/constants/global_variables.dart';
import 'package:amazon_clone_node/features/screens/auth_screen.dart';
import 'package:amazon_clone_node/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon',
      theme: ThemeData( 
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.secondaryColor
        ),
        appBarTheme: const AppBarTheme(elevation: 0.0),
        iconTheme:const IconThemeData(color: Colors.black)
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home:  const AuthScreen()
    );
  }
}
 