import 'package:flutter/material.dart';
import 'folder_data.dart';
import 'package:provider/provider.dart';

class FolderList extends StatelessWidget {
  const FolderList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Provider.of<FolderData>(context).listCount,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 50.0, right: 50.0),
                child: Provider.of<FolderData>(context).myfolders[index],
              ),
            ],
          );
        });
  }
}
