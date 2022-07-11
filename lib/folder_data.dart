import 'package:flutter/material.dart';
import 'folders.dart';

class FolderData extends ChangeNotifier {
  List<Folders> myfolders = [
    const Folders(title: 'Programs'),
    const Folders(title: 'Banks'),
  ];

  int get listCount {
    return myfolders.length;
  }

  void addFolder(String title) {
    myfolders.add(Folders(title: title));
    notifyListeners();
  }

  void deleteFolder(String title) {
    for (int i = 0; i < myfolders.length; i++) {
      if (myfolders[i].title == title) {
        myfolders.removeAt(i);
        break;
      }
    }
    notifyListeners();
  }
}
