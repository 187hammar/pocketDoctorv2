import 'package:flutter/foundation.dart';

class MedRecord with ChangeNotifier {
  final String id;
  final int index;
  final String illness;
  final String dignosingDoc;
  final String dignosingDate;
  final String perscription;

  MedRecord({
    @required this.id,
    @required this.index,
    @required this.illness,
    @required this.dignosingDoc,
    @required this.dignosingDate,
    @required this.perscription,
  });
}
