import 'package:flutter/material.dart';
import 'package:my_notes/folder_data.dart';
import 'package:provider/provider.dart';

class AddFolders extends StatelessWidget {
  const AddFolders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late String newfolder;
    return Container(
      color: const Color.fromARGB(255, 0, 13, 7),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Folder',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 16, 106, 148),
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            TextField(
                textAlign: TextAlign.center,
                showCursor: true,
                autofocus: true,
                onChanged: (newText) {
                  newfolder = newText;
                }),
            TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 16, 106, 148),
                  ),
                ),
                onPressed: () {
                  Provider.of<FolderData>(context, listen: false)
                      .addFolder(newfolder);
                  Navigator.pop(context);
                },
                child: const Text(
                  'ADD',
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
