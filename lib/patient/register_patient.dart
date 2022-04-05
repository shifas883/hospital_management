import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hospital_management/login_doctor_patient.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class PatientRegister extends StatefulWidget {
  const PatientRegister({Key? key}) : super(key: key);

  @override
  _PatientRegisterState createState() => _PatientRegisterState();
}

class _PatientRegisterState extends State<PatientRegister> {
  final NameController=TextEditingController();
  final AgeController=TextEditingController();
  final GenderController=TextEditingController();
  final EmailController=TextEditingController();
  final MobileController=TextEditingController();

  var PatientList=[];

  PatientData(String name,String age,String gender,String email,String mobile) async{
    final path = await getDatabasesPath();
    final data = await openDatabase(join(path,"database"),onCreate: (db,version){
      db.execute("CREATE TABLE patient(name VARCHAR,age VARCHAR,gender VARCHAR,email VARCHAR,mobile VARCHAR)");

    },
    version: 1
    );
    final insertData=await data.insert('patient',
        {'name':name,'age':age,'gender':gender,'email':email,'mobile':mobile});
    final patient=await data.rawQuery('SELECT * FROM patient');
    print(patient);
    return patient;
  }

  @override
  Widget build(BuildContext context) {
    NameController.clear();
    AgeController.clear();
    GenderController.clear();
    EmailController.clear();
    MobileController.clear();

    return Scaffold(

      appBar: AppBar(title: Center(child: Text("Register patient")),),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
              SizedBox(height: 20,),

              TextField(controller: NameController,
                decoration: InputDecoration(hintText: "patient Name",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.red),
                    borderRadius: BorderRadius.circular(10),)
              ),),
              SizedBox(height: 12,),
              TextField(controller: AgeController,
                decoration: InputDecoration(hintText: "Age",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.red),
                    borderRadius: BorderRadius.circular(10),)
              ),),
              SizedBox(height: 12,),
              TextField(controller: GenderController,
                decoration: InputDecoration(hintText: "Gender",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.red),
                    borderRadius: BorderRadius.circular(10),)
              ),),
              SizedBox(height: 12,),
              TextField(controller: EmailController,
                decoration: InputDecoration(hintText: "Email",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.red),
                    borderRadius: BorderRadius.circular(10),)
              ),),
              SizedBox(height: 12,),
              TextField(controller: MobileController,
                  decoration: InputDecoration(hintText: "Mobile No",
                  enabledBorder: OutlineInputBorder(
                    borderSide:  BorderSide(width: 1, color: Colors.red),
                    borderRadius: BorderRadius.circular(10),)
              ),
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly
                ]
              ),
            ElevatedButton(onPressed: ()async{

              PatientList=await PatientData(NameController.text, AgeController.text, GenderController.text, EmailController.text, MobileController.text);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginHospital()),
              );
            },
              child: Text("Register"),)



            ],),
          ),
        ),
      ),

    );
  }
}
