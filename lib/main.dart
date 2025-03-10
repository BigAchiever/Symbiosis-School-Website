import 'package:flutter/material.dart';
import 'package:symbiosis_school_jabalpur/routes/router.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  runApp(const MyApp());
  setPathUrlStrategy();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: (context, child) {
        final mediaQueryData = MediaQuery.of(context);
        final scale = mediaQueryData.textScaler
            .clamp(minScaleFactor: 1.0, maxScaleFactor: 1.3);
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: scale),
          child: child!,
        );
      },
      title: 'Symbiosis Group of School, Jabalpur, M.P',
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
