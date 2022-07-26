import 'package:flutter/material.dart';
import 'package:my_notes/add_details.dart';
import 'package:my_notes/details_data.dart';
import 'package:my_notes/details_list.dart';
import 'package:provider/provider.dart';

class EditFolder extends StatelessWidget {
  final String folderName;
  const EditFolder({Key? key, required this.folderName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
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
                    child: AddDetails(
                      detailOfFolderName: folderName,
                    ),
                  ),
                ),
              ),
            );
          },
          child: const Icon(Icons.save_as_rounded),
        ),
        appBar: AppBar(
          title: Text(folderName),
        ),
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, top: 40.0, right: 10.0),
              child: TextField(
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.amberAccent),
                onChanged: (value) {
                  Provider.of<DetailData>(context, listen: false)
                      .upDateList(value);
                },
                decoration: const InputDecoration(
                    hintStyle: TextStyle(color: Colors.amberAccent),
                    hintText: 'Type to search',
                    labelText: '',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.blueAccent,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
            Expanded(
              child: DetailsList(detailOfFolderName: folderName),
            ),
          ],
        ));
  }
}
