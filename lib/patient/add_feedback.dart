import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}
class _FeedbackPageState extends State<FeedbackPage> {
  @override
  void initState() {
    // TODO: implement initState
    getFeed();
  }
  var feedbackcontroller=TextEditingController();
  var feed=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Feedback'),),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Center(child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                child: TextField(style: TextStyle(fontSize: 20),decoration: InputDecoration(filled: true),
                  controller: feedbackcontroller,),),
            ),

            ),
            ElevatedButton(onPressed: (){
              SaveFeed();
            },child: Text("Sent Feedback"),),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: feed.length,itemBuilder: (context,index){
              return Card(
                child: ListTile(title: Text(feed[index])
                ),
              );
            })



          ],
        ),
      ),
    );
  }
  Future<void>SaveFeed()async{
    feed.insert(0, feedbackcontroller.text);
    //feed.add(feedbackcontroller.text);
    SharedPreferences Pref =await SharedPreferences.getInstance();
    final text = await Pref.setString('text',feedbackcontroller.text);
    feedbackcontroller.clear();
    setState(() {

    });
  }
  Future<void>getFeed()async {
    SharedPreferences Pref = await SharedPreferences.getInstance();
    feedbackcontroller.text = await Pref.getString('text') ?? '';
    feedbackcontroller.clear();
    setState(() {

    });
  }
}
