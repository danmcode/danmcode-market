import 'package:danmcode_market/src/screens/configuration_screen.dart';
import 'package:danmcode_market/src/screens/favorites_screen.dart';
import 'package:danmcode_market/src/screens/my_shopping_screen.dart';
import 'package:danmcode_market/src/screens/profile_screen.dart';
import 'package:danmcode_market/src/screens/screens.dart';
import 'package:danmcode_market/src/screens/search_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (_) => const HomeScreen(),
    'search': (_) => const SerachScreen(),
    'profile': (_) => const ProfileScreen(),
    'configuration': (_) => const ConfigurationScreen(),
    'favorites': (_) => const FavoritesScreen(),
    'myShopping': (_) => const MyShoppingScreen(),
  };
}
