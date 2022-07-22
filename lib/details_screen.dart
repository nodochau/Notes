import 'package:flutter/material.dart';

// import 'package:provider/provider.dart';

class Details extends StatelessWidget {
  final String titleDetail;
  final String contentDetail;
  final int detailCounter;
  const Details({
    Key? key,
    required this.titleDetail,
    required this.contentDetail,
    required this.detailCounter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(detailCounter.toString(),
                  style: TextStyle(color: Colors.amber)),
              Text(
                titleDetail,
                style: TextStyle(color: Colors.amber),
              )
            ],
          ),
          Text(
            contentDetail,
            style: TextStyle(color: Colors.amber),
          )
        ],
      ),
    );
    // return ListView.builder(
    //     itemCount: Provider.of<FolderData>(context).listCount,
    //     itemBuilder: (BuildContext context, int index) {
    //       return Column(
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           Container(
    //             padding:
    //                 const EdgeInsets.only(top: 20.0, left: 50.0, right: 50.0),
    //             child: Provider.of<FolderData>(context).myfolders[index],
    //           ),
    //         ],
    //       );
    //     });
  }
}
