import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/MedRecords.dart';

class DetailedRecordScreen extends StatelessWidget {
  static const routeName = '/record-detail';
  @override
  Widget build(BuildContext context) {
    final recordId = ModalRoute.of(context).settings.arguments as String;
    final loadedRecord =
        Provider.of<MedRecords>(context, listen: false).findById(recordId);
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedRecord.illness),
      ),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.orange[100],
              Colors.green[100],
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0, 1],
          ),
        ),
        child: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Text(
              loadedRecord.dignosingDate,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              loadedRecord.dignosingDoc,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              loadedRecord.perscription,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        )),
      ),
    );
  }
}
