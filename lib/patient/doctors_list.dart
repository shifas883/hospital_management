import 'package:flutter/material.dart';
import 'package:hospital_management/patient/add_feedback.dart';
import 'package:hospital_management/patient/doc_view.dart';
import 'doc_list.dart';
import 'payment_page.dart';


class DoctorsList extends StatefulWidget {
  const DoctorsList({Key? key}) : super(key: key);

  @override
  _DoctorsListState createState() => _DoctorsListState();
  static String routeName='docslist';
}


final searchcontroller=TextEditingController();


class _DoctorsListState extends State<DoctorsList> {
  var list1=ListDoc;
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
            ListTile(leading: Icon(Icons.book,color: Colors.indigo,),
              title: Text('Lab Test Booking',style: TextStyle(fontSize: 18),),
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
            ListTile(leading: Icon(Icons.feedback,color: Colors.indigo,),
                title: Text('Add Feedback',style: TextStyle(fontSize: 18),),
                onTap: ()  {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FeedbackPage()),
                  );
                }
            ),
          ],
        ),
      ),
      appBar: AppBar(title: Text("Doctor's List"),),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 50,width: 100,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: TextField(controller: searchcontroller,
                decoration: InputDecoration(hintText: "TYPE IN BLOCK LETTERS",
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {

                  });
                    list1=ListDoc.where((element) => (element['Name']as String).contains(searchcontroller.text)).toList();
                  },icon: Icon(Icons.search_rounded),)),),),
          ),
          ListView.builder(physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: list1.length,itemBuilder: (context,index){
            return Card(
              child: ListTile(leading: CircleAvatar(backgroundImage: NetworkImage(list1[index]["image"].toString(),),),
              title: Text(list1[index]["Name"].toString()),
                subtitle: Text(list1[index]['status'].toString()),
                onTap: () {

                 Navigator.of(context).pushNamed(DocViewPage.routeName,arguments: index);

                },
              ),
            );

          })
        ],
      ),
    );
  }
}
