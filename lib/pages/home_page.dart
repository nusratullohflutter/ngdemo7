import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Localization"),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "welcome".tr(),
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {
                        context.setLocale(Locale('en', 'US'));
                      },
                      height: 45,
                      color: Colors.green,
                      child: Text(
                        "lan_english".tr(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {
                        context.setLocale(Locale('ru', 'RU'));
                      },
                      height: 45,
                      color: Colors.green,
                      child: Text(
                        "lan_russian".tr(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {
                        context.setLocale(Locale('uz', 'UZ'));
                      },
                      height: 45,
                      color: Colors.green,
                      child: Text(
                        "lan_uzbek".tr(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {
                        context.setLocale(Locale('ko', 'KR'));
                      },
                      height: 45,
                      color: Colors.green,
                      child: Text(
                        "lan_korean".tr(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
