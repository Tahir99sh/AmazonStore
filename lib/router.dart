import 'package:amazon_clone_node/features/screens/auth_screen.dart';
import 'package:flutter/material.dart';


Route<dynamic> generateRoute (RouteSettings routeSettings) {
 
  switch(routeSettings.name){
    case AuthScreen.routName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_)=> const AuthScreen(),
      );
    
    default:
    return MaterialPageRoute(
        settings: routeSettings,
        builder: (_)=> const Scaffold(
          body: Center(
             child: Text('Screen Does not exist'),
          ),
        ),
      );
  
  }
}