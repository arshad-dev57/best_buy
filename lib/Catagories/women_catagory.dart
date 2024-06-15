import 'package:flutter/material.dart';

class WomenCatagory extends StatelessWidget {
  const WomenCatagory({super.key});

  @override
  
  Widget build(BuildContext context) {
    List<String> catagorylist =[
  'assets/new.jpg',
  'assets/clothes.jpg'
  'assets/accesories.jpg'
    'assets/shoe.jpg'
    
];

    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(15),
            //  padding: EdgeInsets.all(12),
              height: 100,
              width: double.infinity,
              color: const Color(0xffDB3022),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('SUMMER SALES',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                    
                    Text('Up to 50% off',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),)
                  ],
                ),
              ),
        
            ),
            Container(
              width: 200,
              child: ListView.builder(
                itemCount: catagorylist.length,
                
                 shrinkWrap: true,
                itemBuilder: (context, index) {
                return Container(
                margin: const EdgeInsets.all(15),
              //  padding: EdgeInsets.all(12),
                height: 130,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     const Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text('New',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    ),
                    Image(image: AssetImage(catagorylist[index]))
                  ],
                )
                      
              );
              
              },
                         
              
              ),
            )
             
          ],
        ),
      ),
    );
  }
}