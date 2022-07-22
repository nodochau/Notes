import 'package:flutter/material.dart';
import 'folders_screen.dart';

class FolderData extends ChangeNotifier {
  List<Folders> myfolders = [
    const Folders(title: 'Programs'),
    const Folders(title: 'Okuma'),
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

  // EditFolder editFolder(String title) {
  //   for (int i = 0; i < myfolders.length; i++) {
  //     if (myfolders[i].title == title) {
  //       //Do something
  //       return EditFolder(folderName: title);
  //     }
  //   }
  //   notifyListeners();
  // }
}
