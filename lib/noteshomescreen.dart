import 'package:flutter/material.dart';
import 'package:my_notes/add_floder.dart';
import 'folder_list.dart';
import 'add_floder.dart';

class NotesHomeScreen extends StatelessWidget {
  const NotesHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 5, 6, 84),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Container(
                  color: const Color.fromARGB(255, 60, 116, 213),
                  child: AddFolders(),
                ),
              ),
            ),
          );
        },
        child: const Icon(
          Icons.folder_open,
          color: Colors.yellowAccent,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('NOTE FOLDERS'),
      ),
      body: FolderList(),
    );
  }
}
