import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
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
              onPressed: (context) => Delete(),
              backgroundColor: Color(0xFFFE4A49),
              foregroundColor: Colors.white,
              icon: Icons.edit,
              label: 'Edit',
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0)),
            ),
            SlidableAction(
              onPressed: (context) => Delete(),
              backgroundColor: Color(0xFFFE4A49),
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
              borderRadius: BorderRadius.only(
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

class Delete {}
