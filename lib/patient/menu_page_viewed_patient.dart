import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hospital_management/login_doctor_patient.dart';
import 'package:hospital_management/patient/add_feedback.dart';
import 'package:hospital_management/patient/book_lab_test.dart';
import 'package:hospital_management/patient/doctors_list.dart';
import 'package:hospital_management/patient/payment_page.dart';
import 'package:hospital_management/patient/upload_pre_report.dart';

class MenuPage1 extends StatefulWidget {
  const MenuPage1({Key? key}) : super(key: key);

  @override
  _MenuPage1State createState() => _MenuPage1State();
}

class _MenuPage1State extends State<MenuPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/photos/modern-hospital-building-picture-id1312706413?b=1&k=20&m=1312706413&s=170667a&w=0&h=VRi3w2E1UqvCCcK-nDV6mH7FhDZoTU9MM2QKSom96X4="),fit: BoxFit.fill),
                color: Colors.blue,
              ),
              child: Text('Username'),
            ),
            ListTile(leading: Icon(Icons.person,color: Colors.indigo,),
              title: Text('Profile',style: TextStyle(fontSize: 18),),
              onTap: () {

              },
            ),

            ListTile(leading: Icon(Icons.payment,color: Colors.indigo,),
              title: Text('Payments',style: TextStyle(fontSize: 18),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentMethod()),
                );
              },
            ),
            ListTile(leading: Icon(Icons.settings,color: Colors.indigo,),
                title: Text('Settings',style: TextStyle(fontSize: 18),),
                onTap: ()  {}
            ),
            ListTile(leading: Icon(Icons.assignment_late_outlined,color: Colors.indigo,),
                title: Text('About',style: TextStyle(fontSize: 18),),
                onTap: ()  {}
            ),
            ListTile(leading: Icon(Icons.logout,color: Colors.indigo,),
                title: Text('Logout',style: TextStyle(fontSize: 18),),
                onTap: ()  {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginHospital())
              );
                }
            )
          ],
        ),
      ),
      appBar: AppBar(title: Text("E-Hospital"),),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(height: 200,width: double.infinity,decoration: BoxDecoration(image:DecorationImage(
            image: NetworkImage("https://p1.pxfuel.com/preview/937/818/491/stethoscope-doctor-md-medical-health-hospital-royalty-free-thumbnail.jpg"),fit: BoxFit.fill),borderRadius:
            BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
                ),),
            GridView(
              physics: NeverScrollableScrollPhysics(),

              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 2,
                  mainAxisExtent: 150
              ),
              children: [
                InkWell(
                  child: Container(decoration: BoxDecoration(image: DecorationImage(
                      image: NetworkImage("https://img.freepik.com/free-vector/doctor-background-design_1270-62.jpg"),
                      fit: BoxFit.cover),borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 115, 0, 0),
                    child: Container(height: 100,width: 20,
                      decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10),),color: Colors.teal,),
                      child: Center(child: Text("Doctors",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),),
                  ),),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DoctorsList()),
                    );
                  },
                ),
                InkWell(
                  child: Container(decoration: BoxDecoration(image: DecorationImage(
                      image: NetworkImage("https://cdn2.vectorstock.com/i/1000x1000/62/16/medical-scientist-test-tube-laboratory-icons-vector-12016216.jpg"),
                      fit: BoxFit.cover),borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 115, 0, 0),
                      child: Container(height: 100,width: 20,
                        decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),color: Colors.teal,),
                        child: Center(child: Text("Lab Test",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),),
                    ),),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LabTest())
                    );
                  },
                ),
                InkWell(
                  child: Container(decoration: BoxDecoration(image: DecorationImage(
                      image: NetworkImage("https://i.pinimg.com/originals/65/43/7c/65437c12eb32af540223984e1f394ac8.jpg"),
                      fit: BoxFit.cover),borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 115, 0, 0),
                      child: Container(height: 100,width: 20,
                        decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                          color: Colors.teal,),
                        child: Center(child: Text("Report",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),),
                    ),),
                  onTap: (){
                  },
                ),
                InkWell(
                  child: Container(decoration: BoxDecoration(image: DecorationImage(
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF8MVKa5Y5BK4joJA3Xjb9DieKUXNXWawuBBZkT3FVPBbtsAq0bMNIriC7bDxBVCRbJi4&usqp=CAU"),
                      fit: BoxFit.cover),borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 115, 0, 0),
                      child: Container(height: 100,width: 20,
                        decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                          color: Colors.teal,),
                        child: Center(child: Text("Prescription",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),),
                    ),),
                  onTap: (){
                  },
                ),

              ],
              padding: EdgeInsets.all(10),
              shrinkWrap: true,
            )
          ],
        ),
      ),
      bottomNavigationBar:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton.icon(
                icon: Icon(Icons.camera),
                label: Text('Upload'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>UploadReport()),);
                },
              ),
              TextButton.icon(
                icon: Icon(Icons.person),
                label: Text('Profile'),
                onPressed: () {},
              ),
              TextButton.icon(
                icon: Icon(Icons.feedback),
                label: Text('Feedback'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FeedbackPage()),
                  );
                },
              ),
            ],
          ),
    );
  }
}
