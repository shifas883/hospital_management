import 'package:flutter/material.dart';
import 'doc_list.dart';

class DocViewPage extends StatefulWidget {
  const DocViewPage({Key? key}) : super(key: key);

  @override
  _DocViewPageState createState() => _DocViewPageState();
  static String routeName='docview';
}

class _DocViewPageState extends State<DocViewPage> {
  @override
  Widget build(BuildContext context) {
    final index=ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(appBar: AppBar(),
    body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [


          Container(height: 200,width: 200,
            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(ListDoc[index]['image'].toString()),fit: BoxFit.cover)),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(ListDoc[index]['Name'].toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          Text(ListDoc[index]['status'].toString(),style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
          Text(ListDoc[index]['Email'].toString(),style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
          Text(ListDoc[index]['mob'].toString(),style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
          Text(ListDoc[index]['qualification'].toString(),style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
          Text(ListDoc[index]['Experience'].toString(),style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),

          ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 35),
                maximumSize: Size(double.infinity, 35),
              ),
              onPressed: () {},
              child: Text('Book Now')),

        ],
      ),
    ),);
  }
}
// https://www.kindpng.com/picc/m/11-116060_clip-art-male-doctor-hd-png-download.png