import 'package:flutter/material.dart';
import './MedRecord.dart';

class MedRecords with ChangeNotifier {
  List<MedRecord> _recordItem = [
    MedRecord(
      id: 'mr1',
      index: 0,
      illness: 'Flu',
      dignosingDoc: 'Dr. Y.N Mtetwa',
      dignosingDate: '10 October 2020',
      perscription: 'Alegex',
    ),
    MedRecord(
        id: 'mr2',
        index: 1,
        illness: 'Spinal Compression fracture',
        dignosingDoc: 'Dr. Y.N Mtetwa',
        dignosingDate: '17 January 2020',
        perscription: 'None'),
  ];

  List<MedRecord> get recordItem {
    return [..._recordItem];
  }

  MedRecord findById(String id) {
    return recordItem.firstWhere((element) => element.id == id);
  }

  // Future<void> fetchAndSetRecords() async {
  //   const url = "https://pocketdoctor-8d0b0.firebaseio.com/medrecords.json";
  //   try {
  //     final response = await http.get(url);
  //     final extractedData = json.decode(response.body) as Map<String, dynamic>;
  //     if (extractedData == null) {
  //       return;
  //     }
  //     final List<MedRecord> loadedRecords = [];
  //     extractedData.forEach((recordId, recordValue) {
  //       loadedRecords.add(MedRecord(
  //         index: recordValue['index'],
  //         id: recordId,
  //         illness: recordValue['illness'],
  //       ));
  //     });
  //     _recordItem = loadedRecords;
  //     notifyListeners();
  //   } catch (error) {
  //     throw error;
  //   }
  // }
}
