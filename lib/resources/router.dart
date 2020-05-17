import 'package:flutter/material.dart';
import 'package:toko_roti/pages/root_page.dart';
//import 'package:toko_roti/home.dart';
import 'package:toko_roti/screens/auths/splash_scr.dart';
import 'package:toko_roti/services/authentication.dart';

import '../screens/auths/login_scr.dart';

/// making route for the app and callback when enter the wrong routes
class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MySplashScreen());
      case '/auth':
        return MaterialPageRoute(builder: (_) => new RootPage(auth: new Auth()));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
