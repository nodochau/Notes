import 'package:flutter/material.dart';
import 'package:my_notes/details_data.dart';
import 'package:provider/provider.dart';

class AddDetails extends StatelessWidget {
  const AddDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late String titleNote;
    late String detailsNote;
    int numberOfNote = 0;
    TextEditingController myTitleTextEditingController =
        TextEditingController(text: 'Title: ');
    TextEditingController myDetailsTextEditingController =
        TextEditingController(text: 'Content: ');
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
              'Add Details',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 16, 106, 148),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            TextField(
                controller: myTitleTextEditingController,
                autofocus: true,
                decoration: const InputDecoration(
                  hintText: 'Title: ',
                ),
                onChanged: (newTitle) {
                  titleNote = newTitle;
                }),
            TextField(
                maxLines: null,
                controller: myDetailsTextEditingController,
                autofocus: true,
                decoration: const InputDecoration(
                  hintText: 'Content: ',
                ),
                onChanged: (newDetails) {
                  detailsNote = newDetails;
                }),
            TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 16, 106, 148),
                  ),
                ),
                onPressed: () {
                  numberOfNote++;
                  Provider.of<DetailData>(context, listen: false)
                      .addDetails(titleNote, detailsNote, numberOfNote);
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
