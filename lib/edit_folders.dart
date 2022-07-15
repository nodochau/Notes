import 'package:flutter/material.dart';

class EditFolder extends StatelessWidget {
  final String folderName;
  const EditFolder({Key? key, required this.folderName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController editingControler = TextEditingController();
    final items = List<String>.generate(1000, (i) => "$folderName $i");
    List<String> myItems = [];
    //Create function to search item in list
    List searchItems(String item) {
      List<String> tempSearchList = [];
      tempSearchList.addAll(items);
      if (item.isNotEmpty) {
        List<String> itemFound = [];
        for (var element in tempSearchList) {
          if (element.contains(item)) {
            itemFound.add(element);
          }
        }
        myItems.clear();
        myItems.addAll(itemFound);
      } else {
        myItems.clear();
        myItems.addAll(items);
      }
      return myItems;
    }

    //Create function to show list of items
    void updateItemList() {
      items.clear();
      items.addAll(myItems);
    }

    return Scaffold(
        backgroundColor: Colors.grey[900],
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 5, 6, 84),
          onPressed: () {},
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
                  searchItems(value);
                  updateItemList();
                },
                controller: editingControler,
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
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      items[index],
                      style: const TextStyle(color: Colors.amberAccent),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
