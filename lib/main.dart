import 'package:flutter/material.dart';
import 'package:my_notes/folder_data.dart';
import 'noteshomescreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FolderData(),
      child: const MaterialApp(
        home: NotesHomeScreen(),
      ),
    );
  }
}
