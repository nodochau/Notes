import 'package:flutter/material.dart';
import 'details_screen.dart';

class DetailData extends ChangeNotifier {
  List<Details> myDetailsList = [
    const Details(
        titleDetail: 'okuma', contentDetail: 'SP300', detailCounter: 0),
    const Details(
        titleDetail: 'fanuc', contentDetail: 'OP200', detailCounter: 1)
  ];

  int get listDetailCount {
    return myDetailsList.length;
  }

  void addDetails(String titleDetail, contentDetail, int detailCounter) {
    myDetailsList.add(Details(
        titleDetail: titleDetail,
        contentDetail: contentDetail,
        detailCounter: detailCounter));
    notifyListeners();
  }

  void deleteFolder(String title) {
    for (int i = 0; i < myDetailsList.length; i++) {
      if (myDetailsList[i].titleDetail == title) {
        myDetailsList.removeAt(i);
        break;
      }
    }
    notifyListeners();
  }
}
