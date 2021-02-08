import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:traders_billing/constants.dart';
import 'package:traders_billing/loacator.dart';
import 'package:traders_billing/provider/app_provider.dart';
import 'package:traders_billing/routing/route_names.dart';
import 'package:traders_billing/routing/router.dart';
//import 'package:traders_billing/views/login/loginView.dart';
import 'package:traders_billing/widgets/layout/layout.dart';

void main() {
  setupLocator();
  //runApp(MyApp());
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider.value(value: AppProvider.init()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Traders Billing',
      theme: ThemeData(
        primaryColor: kprimaryYellow,
        scaffoldBackgroundColor: kBgGrey,
        fontFamily: 'Segoe-UI',
      ),
      onGenerateRoute: generateRoute,
      initialRoute: PageControllerRoute,
      //initialRoute: HomeRoute,
      //home: LoginView(),
    );
  }
}

class AppPagesController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutTemplate();
  }
}
