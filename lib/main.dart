import 'package:flutter/material.dart';
import 'package:slichot3/screens/days_over_review_Page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';




void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  
   static Color yyellow =    new Color.fromARGB(255, 245, 213, 118);// color yyellow i build
  // This widget is the root of your application.
  // static const List<String> _rtlLanguages = <String>[
  //   'ar', // Arabic
  //   'fa', // Farsi
  //   'he', // Hebrew
  //   'ps', // Pashto
  //   'ur', // Urdu
  // ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ],
  supportedLocales: [
    Locale("he", "IL"), // OR Locale('ar', 'AE') OR Other RTL locales
  ],
  locale: Locale("he", "IL"), // OR Locale('ar', 'AE') OR Other RTL locales,
  


      title: 'אגדות',
     
      
      home: DayOverViewScreen(),
       theme: ThemeData(
      primaryColor: yyellow,
      accentColor: yyellow,
      
      textTheme: TextTheme(
      
     
      title: TextStyle(fontSize: 36.0,color: Colors.white),
     
      
    ),
      
      ),
    );
  }
}
