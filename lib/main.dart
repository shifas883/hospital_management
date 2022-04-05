import 'package:flutter/material.dart';
import 'package:hospital_management/login_doctor_patient.dart';
import 'package:hospital_management/Patient/register_patient.dart';
import 'package:hospital_management/patient/doc_view.dart';
import 'package:hospital_management/patient/doctors_list.dart';
import 'package:hospital_management/patient/menu_page_viewed_patient.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.indigo,
      ),
      home: LoginHospital(),
      routes: {
        DoctorsList.routeName:(context)=>DoctorsList(),
        DocViewPage.routeName:(context)=>DocViewPage(),
      },

    );
  }
}

