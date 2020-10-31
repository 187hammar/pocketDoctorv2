import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/MedRecords.dart';
import '../providers/healthTips.dart';
import '../widgets/recordList.dart';

class RecordsOverview extends StatefulWidget {
  static const routeName = '/record-overview';
  @override
  _RecordsOverviewState createState() => _RecordsOverviewState();
}

class _RecordsOverviewState extends State<RecordsOverview> {
  var _isLoading = false;
  var _isInit = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medical Records"),
      ),
      body: RecordList(),
    );
  }
}
