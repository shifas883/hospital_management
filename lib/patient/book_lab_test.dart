import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'doc_list.dart';

class LabTest extends StatefulWidget {
  const LabTest({Key? key}) : super(key: key);

  @override
  _LabTestState createState() => _LabTestState();
}


class _LabTestState extends State<LabTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab Tests"),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: TestData.length,
          itemBuilder: (BuildContext ctx, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(TestData[index]["imgTest"].toString())),
                      borderRadius: BorderRadius.circular(20)),
                  child:
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 90, 0, 0),
                    child: Container(height: 40,width: 200,
                      decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),color: Colors.blue),
                    child:Center(child: Text(TestData[index]["Test"].toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),),
                  ),
                ),
                onTap: (){

                },
              ),
            );
          }),
    );
  }
}
//
