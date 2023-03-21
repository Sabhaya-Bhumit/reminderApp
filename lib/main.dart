import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:reminder_app/helpers/dbHelper.dart';
import 'package:reminder_app/views/screens/homePage.dart';
import 'package:sizer/sizer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DBHelper.dbHelper.fetchAllRecords();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          theme: ThemeData(
              colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: Colors.red,
            primary: Colors.red,
          )),
          darkTheme: ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        );
      },
    );
  }
}
