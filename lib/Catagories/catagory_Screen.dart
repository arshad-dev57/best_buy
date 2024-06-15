import 'package:best_buy/Catagories/women_catagory.dart';
import 'package:flutter/material.dart';
class CatagoryScreen extends StatelessWidget {
  const CatagoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: 
        AppBar(
          leading:  IconButton(onPressed: (){
         Navigator.pop(context);

          }, icon: Icon(Icons.arrow_back_ios)),
          centerTitle: true,
          title: const Text('Catagories'),
          actions: const [
            Icon(Icons.search),
          ],
          bottom:  const TabBar(
            indicatorColor: Color(0xffDB3022),
          indicatorSize: TabBarIndicatorSize.label,
            tabs:  [
        Tab(child: Text('Women',style: TextStyle(fontSize: 15),)),
         Tab(child: Text('Men',style: TextStyle(fontSize: 15),)),
        Tab(child: Text('Kids',style: TextStyle(fontSize: 15),)),



          ]),
        ),
        body:
        const TabBarView(children: [
          WomenCatagory(),
           WomenCatagory(),
            WomenCatagory(),
        ])
       
      ),
    );
  }
}