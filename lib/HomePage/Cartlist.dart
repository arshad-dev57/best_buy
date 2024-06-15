
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartList extends StatelessWidget {
  const CartList({super.key});

  @override
  Widget build(BuildContext context) {
    List <String> imagepath = [
'assets/image.jpg',
'assets/eveningdress.png',
'assets/image.jpg',
'assets/eveningdress.png',
]; 
    return   SizedBox(
              width: 1000,
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
               // physics: NeverScrollableScrollPhysics(),
                itemCount: imagepath.length,
                itemBuilder:(context, index) {
                  return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 240,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
           Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                            
                            child: Image.asset(
                              imagepath[index],
                              width: 170,
                              fit: BoxFit.fitWidth, 
                            ),
                          ),
              SizedBox(height: 7),
              Text(
                'Dorothy Perkins',
                style: TextStyle(fontSize: 11, color: Colors.black26),
              ),
              SizedBox(height: 7),
              Text(
                'Evening Dress',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 7),
              Text('120rs'),
            ],
          
          ),
          Positioned(
            top: 5,
            left: 5,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                'Sale',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ),
          const Positioned(
            bottom: 75,
            right: 5,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20,
              child: Icon(
                Icons.favorite_border,
                color: Colors.black38,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
                },),
            );
  }
}