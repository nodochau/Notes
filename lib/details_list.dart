import 'package:flutter/material.dart';
import 'details_data.dart';
import 'package:provider/provider.dart';

class DetailsList extends StatelessWidget {
  const DetailsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Provider.of<DetailData>(context).listDetailCount,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 50.0, right: 50.0),
                child: Provider.of<DetailData>(context).myDetailsList[index],
              ),
            ],
          );
        });
  }
}
