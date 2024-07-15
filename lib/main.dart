import 'package:flutter/material.dart';
import 'package:portfolioapp_test/state_mgmt_provider/current_app_state_provider.dart';
import 'package:portfolioapp_test/state_mgmt_provider/theme_provider.dart';
import 'package:portfolioapp_test/ui/screens/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CurrentAppState()),
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
