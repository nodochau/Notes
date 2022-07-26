import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:my_notes/edit_folders.dart';
import 'package:provider/provider.dart';
import 'folder_data.dart';

class Folders extends StatelessWidget {
  final String title;
  const Folders({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: ValueKey(title),
      endActionPane: ActionPane(

          //dismissible: DismissiblePane(onDismissed: () {}),
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext contex) {
                  return EditFolder(folderName: title);
                }));
              },
              backgroundColor: const Color(0xFFFE4A49),
              foregroundColor: Colors.white,
              icon: Icons.edit,
              label: 'View',
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0)),
            ),
            SlidableAction(
              onPressed: (context) {
                Provider.of<FolderData>(context, listen: false)
                    .deleteFolder(title);
              },
              backgroundColor: const Color(0xFFFE4A49),
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0)),
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Colors.yellowAccent,
                fontSize: 25.0,
                fontWeight: FontWeight.w500),
          ),
          const Icon(
            Icons.folder_open,
            color: Colors.yellowAccent,
            size: 60.0,
          ),
        ],
      ),
    );
  }
}
