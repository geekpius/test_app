import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/classes/theme.dart';
import 'package:test_app/route_generator.dart';
import 'package:test_app/views/home_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    initializeProviders(context);
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: MyTheme.lightTheme,
        initialRoute: HomeView.routeName,
        onGenerateRoute: RouteGenerator.generateRoute,
        navigatorKey: RouteGenerator.navigatorKey,
      ),
    );
  }

  void initializeProviders(BuildContext context){

  }
}