import 'package:flutter/material.dart';
import 'package:goldy/core/presentation/gold_screen.dart';
import 'package:goldy/core/presentation/sliver_screen.dart';
import 'package:goldy/core/routing/routes.dart';

import '../presentation/home_screen.dart';

class AppRouter{
  Route generateRoute(RouteSettings settings){
    switch(settings.name){
      case AppRoutes.homeScreen:
        return MaterialPageRoute(builder: (context)=>HomeScreen());
        case AppRoutes.goldScreen:
      return MaterialPageRoute(builder: (context)=>GoldScreen());
      case AppRoutes.sliverScreen:
      return MaterialPageRoute(builder: (context)=>SliverScreen());
      default :
        return MaterialPageRoute(
            builder: (context)=>
                Scaffold(body: Center(
                  child: Text('No Route in ${settings.name}'),
                )));
    }
  }
}
