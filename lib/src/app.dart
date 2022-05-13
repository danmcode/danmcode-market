import 'package:danmcode_market/src/providers/ui_provider.dart';
import 'package:danmcode_market/src/routes/routes.dart';
import 'package:danmcode_market/src/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UiProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        routes: AppRoutes.routes,
        theme: LightTheme.lightTheme,
        initialRoute: 'home',
      ),
    );
  }
}
