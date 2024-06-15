import 'package:best_buy/HomePage/Cartlist.dart';
import 'package:best_buy/button.dart';
import 'package:best_buy/widgets/headingtext.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late TabController _tabcontrolller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabcontrolller=TabController(length: 5, vsync:this);
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Color(0xffFFFFFF),
bottomSheet:TabBar(
        controller: _tabcontrolller,
        labelColor:Color(0xffDB3022),
        unselectedLabelColor: Colors.grey,
        indicatorColor: const Color.fromARGB(255, 223, 223, 223),

        tabs: const [
          Tab(
            text: 'Home',
            // ignore: deprecated_member_use
            icon:Icon(Icons.home_outlined),
          ),
          Tab(
            text: 'Shop',
            icon: Icon(Icons.shop_outlined),
          ),
          Tab(
            text: 'Bag',
            icon: Icon(Icons.shopping_bag_outlined),
          ),
          Tab(
            text: "Favorite",
            icon: Icon(Icons.favorite_border),
          ),
           Tab(
            text: "profile",
            icon: Icon(Icons.account_circle_outlined),
          ),
          
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 600,
              width: double.infinity,
              child: Stack(
                children: [
                  Image(
                      width: double.infinity,
                      fit: BoxFit.contain,
                      image: AssetImage('main.jpg')),
                  Positioned(
                      bottom: 190,
                      left: 10,
                      child: Text(
                        'Fashion\nSale',
                        style: TextStyle(
                            fontSize: 48,
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w900),
                      )),
                  Positioned(
                      bottom: 120,
                      left: 10,
                      child: Button(text1: 'Check', ontap: () {  },
                      
                      ))
                ],
              ),
            ),
           HeadingText(maintext: 'New', undertext: 'You have never seen it before', textbutton: 'View all',),
           SizedBox(height: 10,),
          CartList(),
          SizedBox(height: 20,),
          HeadingText(maintext: 'Sale', undertext: 'Super Summer sale', textbutton: 'View all'),
          SizedBox(height: 10,),
          CartList(),

          ],
        ),
      ),
    );
  }
}
