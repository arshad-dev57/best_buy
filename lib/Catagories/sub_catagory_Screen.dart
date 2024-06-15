import 'package:best_buy/button.dart';
import 'package:flutter/material.dart';

class SubCatagoryScreen extends StatelessWidget {
  const SubCatagoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        title: Text(
          "Women's Top",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [Icon(Icons.search)],
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              shrinkWrap: true,
              padding: EdgeInsets.only(right: 10),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Button( text1: 'T-Shirt', ontap: () {  },);
              },
            ),
          ),
        ],
      ),
    );
  }
}
