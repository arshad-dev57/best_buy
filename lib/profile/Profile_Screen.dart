import 'package:best_buy/Auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class profile extends StatefulWidget {
  
   profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> with SingleTickerProviderStateMixin{
    late TabController _tabcontrolller;
  @override
   void initState() {
    // TODO: implement initState
    super.initState();
    _tabcontrolller=TabController(length: 5, vsync:this);
  }
  logout(){
    FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage(),));
  }
  @override
  
  Widget build(BuildContext context) {
    List <String> listiletext=[
    'My Orders',
    "Shipping Adress",
    'Payments Methods',
    "Promocodes",
    "My Reviews",
    "Settings"
  ];
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.search)],
      ),
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


      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              'My Profile',
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 15,
            ),
            
            Row(
              children: [
                CircleAvatar(
                  radius: 38,
                  backgroundColor: Colors.red,
                ),
                Column(
                  children: [
                    Text(
                      'msrins arcus',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'msrins arcus@gmail.com',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 28,),
            SizedBox(
              height: 400,
              child: ListView.builder(
                itemCount: listiletext.length,
                itemBuilder: (context, index) {
                return   ListTile(
                title: Text(listiletext[index],style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                subtitle: Text('Already have 12 orders',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w300),),
                trailing: Icon(Icons.arrow_forward_ios),
              );
              },),
            ),
          SizedBox(height: 28,),
          Row(children: [
     TextButton(onPressed: (){logout();}, child: Text('Logout',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)),
            Icon(Icons.logout)
          ],)
          ],
        ),
      ),
    );
  }
}
