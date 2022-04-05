import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class UploadReport extends StatefulWidget {
  const UploadReport({Key? key}) : super(key: key);

  @override
  _UploadReportState createState() => _UploadReportState();
}

class _UploadReportState extends State<UploadReport> {
  @override
  var saveImage;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Upload Report"),),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () async{
            final uploadImage=ImagePicker();
            final uploadFile = await uploadImage.pickImage(source: ImageSource.camera);
            final appDir = await getApplicationDocumentsDirectory();

            if(uploadFile != null){
              final fileName = basename(uploadFile.path);
              final temp= await File(uploadFile.path).copy(appDir.path + '/' +fileName);
              setState(() {
                saveImage=temp;
              });
            }
          },
              child: Text("Upload")),
          saveImage != null
              ?Container(child: Image.file(saveImage),):
          Container(),

        ],
      ),
    );
  }
}
