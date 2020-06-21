import 'package:flutter/material.dart';
import 'package:flutter_architecture_v3/core/constants/app_contstants.dart';
import 'package:flutter_architecture_v3/provider_setup.dart';
import 'package:flutter_architecture_v3/ui/router.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: RoutePaths.Login,
        onGenerateRoute: Router.generateRoute,
      ),
    );
  }
}