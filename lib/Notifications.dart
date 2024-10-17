import 'package:flutter/material.dart';
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 13.0,left: 13.0,top: 50.0),
              child: Align(
                  alignment:Alignment.topLeft ,
                  child: Text('Notification',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),)),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 13.0,right: 13.0),
              child: Align(
                  alignment:Alignment.topLeft ,
                  child: Text('Today, March 25 2022',style: TextStyle(color: const Color.fromARGB(255, 117, 117, 117)),)),
            ),
            SizedBox(height: 10,),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 370,
          height: 90,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: Container(
            decoration: BoxDecoration(
              // border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(20) ),
              color: const Color(0xFFFF6D1D9),
            ),

            child: Row(
              children: [
                Container(
                    width:90,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft:Radius.circular(20) ),
                        child: Image.asset('assets/clock.jpg',fit: BoxFit.cover,))),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Class Alarm',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    Text('Your class will be start after 15 minutes.\nStay with the app and take care',style: TextStyle(color:Colors.grey[500] ,fontSize: 13),),
                  ],
                )
              ],
            ),
          ),

        ),
      ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 370,
                height: 90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Container(
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(20) ),
                    color: Colors.grey[200],
                  ),

                  child: Row(
                    children: [
                      Container(
                          width:90,
                          height: 120,
                          child: ClipRRect(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft:Radius.circular(20) ),
                              child: Image.asset('assets/check.jpg',fit: BoxFit.cover,))),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Class Confirmed',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          Text('Class Confirmed Adam Smith call will be\nheld at 11:00 AM| 26 March 2022',style: TextStyle(color:Colors.grey[500] ,fontSize: 13),),
                        ],
                      )
                    ],
                  ),
                ),

              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 13.0,right: 13.0),
              child: Align(
                  alignment:Alignment.topLeft ,
                  child: Text('Yesterday, March 24 2022',style: TextStyle(color: const Color.fromARGB(255, 117, 117, 117)),)),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 370,
                height: 90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Container(
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(20) ),
                    color: Colors.grey[200],
                  ),

                  child: Row(
                    children: [
                      Container(
                          width:90,
                          height: 120,
                          child: ClipRRect(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft:Radius.circular(20) ),
                              child: Image.asset('assets/check.jpg',fit: BoxFit.cover,))),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Class Confirmed',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          Text('Class Confirmed Adam Smith call will be\nheld at 11:00 AM| 26 March 2022',style: TextStyle(color:Colors.grey[500] ,fontSize: 13),),
                        ],
                      )
                    ],
                  ),
                ),

              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 13.0,right: 13.0),
              child: Align(
                  alignment:Alignment.topLeft ,
                  child: Text('Monday, March 23 2022',style: TextStyle(color: const Color.fromARGB(255, 117, 117, 117)),)),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 370,
                height: 90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Container(
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(20) ),
                    color: const Color(0xFFFF6D1D9),
                  ),

                  child: Row(
                    children: [
                      Container(
                          width:90,
                          height: 120,
                          child: ClipRRect(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft:Radius.circular(20) ),
                              child: Image.asset('assets/clock.jpg',fit: BoxFit.cover,))),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Class Alarm',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          Text('Your class will be start after 15 minutes.\nStay with the app and take care',style: TextStyle(color:Colors.grey[500] ,fontSize: 13),),
                        ],
                      )
                    ],
                  ),
                ),

              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 370,
                height: 90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Container(
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(20) ),
                    color: Colors.grey[200],
                  ),

                  child: Row(
                    children: [
                      Container(
                          width:90,
                          height: 120,
                          child: ClipRRect(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft:Radius.circular(20) ),
                              child: Image.asset('assets/check.jpg',fit: BoxFit.cover,))),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Class Confirmed',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          Text('Class Confirmed Adam Smith call will be\nheld at 11:00 AM| 26 March 2022',style: TextStyle(color:Colors.grey[500] ,fontSize: 13),),
                        ],
                      )
                    ],
                  ),
                ),

              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 13.0,right: 13.0),
              child: Align(
                  alignment:Alignment.topLeft ,
                  child: Text('Last Week, March 20 2022',style: TextStyle(color: const Color.fromARGB(255, 117, 117, 117)),)),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 370,
                height: 90,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Container(
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(20) ),
                    color: Colors.grey[200],
                  ),

                  child: Row(
                    children: [
                      Container(
                          width:90,
                          height: 120,
                          child: ClipRRect(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft:Radius.circular(20) ),
                              child: Image.asset('assets/check.jpg',fit: BoxFit.cover,))),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Class Confirmed',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          Text('Class Confirmed Adam Smith call will be\nheld at 11:00 AM| 26 March 2022',style: TextStyle(color:Colors.grey[500] ,fontSize: 13),),
                        ],
                      )
                    ],
                  ),
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
