import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: Container(
          color: Colors.white,
          child: Column(children: [
            24.height,
            Container(
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black12))),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    width: 320,
                    height: 40,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.search),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Search")
                      ],
                    ),
                  ),
                  Icon(Icons.qr_code)
                ],
              ),
            ),
          ])),
    );
  }
}
