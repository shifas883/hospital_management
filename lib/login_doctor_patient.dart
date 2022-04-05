import 'package:flutter/material.dart';
import 'package:hospital_management/patient/menu_page_viewed_patient.dart';
import 'package:hospital_management/patient/register_patient.dart';

class LoginHospital extends StatefulWidget {
  const LoginHospital({Key? key}) : super(key: key);

  @override
  _LoginHospitalState createState() => _LoginHospitalState();
}

class _LoginHospitalState extends State<LoginHospital> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: "User Name",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(10),)
              ),),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(labelText: "Password",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(10),)
              ),obscureText: true,),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 280, 0),
              child: TextButton( onPressed: () {  },
              child: Text("Forgot Password"),),
            ),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(400, 45),
                  maximumSize: Size(400, 45),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MenuPage1()),
                  );
                },
                child: Text('Login')),
            Text("or"),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(400, 45),
                  maximumSize: Size(400, 45),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PatientRegister()));
                }
                , child: Text("Register Patient"))

          ],
        ),
      ),
    );
  }
}
