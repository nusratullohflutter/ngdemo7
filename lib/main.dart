import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ngdemo7/pages/home_page.dart';
import 'package:ngdemo7/themes/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    supportedLocales: [
      Locale('en', 'US'),
      Locale('ru', 'RU'),
      Locale('uz', 'UZ'),
      Locale('ko', 'KR')
    ],
    path: 'assets/translations',
    fallbackLocale: Locale('en', 'US'),
    child: RunMyApp(),
  ));
}

class RunMyApp extends StatefulWidget {
  const RunMyApp({super.key});

  @override
  State<StatefulWidget> createState() => _RunMyAppState();
}

class _RunMyAppState extends State<RunMyApp> {
  ThemeMode themeMode = ThemeMode.dark;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      // theme: ThemeData.light(useMaterial3: true),
      // darkTheme: ThemeData.dark(useMaterial3: true),
      theme: AppTheme.themeData(false),
      darkTheme: AppTheme.themeData(true),
      themeMode: themeMode,
      home: const HomePage(),
    );
  }
}
