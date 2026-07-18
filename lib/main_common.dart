import 'package:flutter/material.dart';
import 'package:flutter_template/flavors/flavor_config.dart';
import 'core/theme/app_theme.dart';
import 'features/home/presentation/myapp_home.dart';

void mainCommon({
  required Flavor flavor,
  required String name,
  required String baseUrl,
}) {
  FlavorConfig(flavor: flavor, name: name, baseUrl: baseUrl);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter App',
      theme: AppTheme.lightTheme, // Use the light theme defined in AppTheme
      darkTheme: AppTheme.darkTheme, // Use the dark theme defined in AppTheme
      themeMode: ThemeMode.system, // Use system theme mode (light/dark)
      home: const MyHomePage(title: 'Flutter App Home Page'),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Flutter APP - ${FlavorConfig.instance.name}'),
//         ),
//         body: Center(child: Text(FlavorConfig.instance.baseUrl)),
//       ),
//     );
//   }
// }
