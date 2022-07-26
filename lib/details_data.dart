import 'package:flutter/material.dart';
import 'details_screen.dart';

class DetailData extends ChangeNotifier {
  List<Details> myDetailsList = [];

  int get listDetailCount {
    return myDetailsList.length;
  }

  void addDetails(
      String titleDetail, contentDetail, detailFolder, int detailCounter) {
    myDetailsList.add(Details(
        titleDetail: titleDetail,
        contentDetail: contentDetail,
        detailOfFolder: detailFolder,
        detailCounter: detailCounter));
    notifyListeners();
  }

  void deleteDetails(String title) {
    for (int i = 0; i < myDetailsList.length; i++) {
      if (myDetailsList[i].titleDetail == title) {
        myDetailsList.removeAt(i);
        break;
      }
    }
    notifyListeners();
  }

  void upDateList(String findTitle) {
    List<Details> tempSearchList = [];
    tempSearchList.addAll(myDetailsList);
    if (findTitle.isNotEmpty) {
      List<Details> tempList = [];
      for (var element in tempSearchList) {
        if (element.titleDetail.contains(findTitle)) {
          tempList.add(element);
        }
      }
      myDetailsList.clear();
      myDetailsList.addAll(tempList);
    } else {
      myDetailsList.clear();
      myDetailsList.addAll(tempSearchList);
    }
    notifyListeners();
  }

  List createList() {
    return myDetailsList;
  }
}
