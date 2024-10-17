import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  List<String>pics1=[
    'assets/pic1.jpg',
    'assets/pic2.jpg',
    'assets/pic3.jpg',
    'assets/pic5.jpg',
    'assets/pic6.jpg',
    'assets/pic7.jpg',
  ];
  List<String>pics2=[
    'assets/m1.jpg',
    'assets/m2.jpg',
    'assets/m3.jpg',
    'assets/m4.jpg',
    'assets/m5.jpg',
    'assets/m6.jpg',

  ];
   List<String>names=[
     'SAPNA',
     'TAIBA',
     'MARYUM',
     'NAJEEBA',
     'LINTA',
     'NAZISH',
   ];
  List<String>name=[
    'ROMAN',
    'TAYAB',
    'ARSALAN',
    'ALI',
    'NOMI',
    'SAFA',
  ];

  bool isUpcomingSelected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text('English TalkE',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 13.0,left: 13.0),
              child: Align(
                alignment:Alignment.topLeft ,
                child: Text('Classes',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),)),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isUpcomingSelected = true; // Select Upcoming
                    });
                  },
                  child: Container(
                    width: 170,
                    height: 40,
                    decoration: BoxDecoration(
                      color: isUpcomingSelected ? Colors.amber : Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.amber),
                    ),
                    child: Center(
                      child: Text(
                        'Upcoming',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: isUpcomingSelected ? Colors.white : Colors.amber,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isUpcomingSelected = false; // Select Past
                    });
                  },
                  child: Container(
                    width: 170,
                    height: 40,
                    decoration: BoxDecoration(
                      color: isUpcomingSelected ? Colors.transparent : Colors.amber,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.amber),
                    ),
                    child: Center(
                      child: Text(
                        'Past',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: isUpcomingSelected ? Colors.amber : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 13.0,right: 13.0),
              child: Container(
                width: 370,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 13.0,right: 13.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    hintText: 'Search',
                      enabledBorder: InputBorder.none,
                      suffix: Icon(Icons.search)
                    ),
                    style: TextStyle(),

                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 13.0, right: 13.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  isUpcomingSelected ? 'Tomorrow, March 27 2022' : 'Last Month, February 2022',
                  style: const TextStyle(color: Color.fromARGB(255, 117, 117, 117)),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 320,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 370,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Row(
                        children: [
                          Container(
                            width:120,
                              height: 120,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft:Radius.circular(20) ),
                                  child: Image.asset(pics1[index],fit: BoxFit.cover,))),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(names[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                              Row(
                                children: [
                                  Text('Video Call '),
                                  Text('- Scheduled',style: TextStyle(color:Colors.blue ),),
                                ],
                              ),
                              Text('11:30 AM'),
                            ],
                          ),

                        ],
                      ),

                    ),
                  );
                }
                )
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 13.0, right: 13.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  isUpcomingSelected ? 'Today, March 25 2022' : 'Last Month, January 2022',
                  style: const TextStyle(color: Color.fromARGB(255, 117, 117, 117)),
                ),
              ),
            ),
            Container(
              height: 300,
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 370,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          child: Row(
                            children: [
                              Container(
                                  width:120,
                                  height: 120,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft:Radius.circular(20) ),
                                      child: Image.asset(pics2[index],fit: BoxFit.cover,))),
                              SizedBox(width: 20,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(name[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                  Row(
                                    children: [
                                      Text('Video Call '),
                                      Text('- InProgress',style: TextStyle(color:Colors.amber ),),
                                    ],
                                  ),
                                  Text('11:30 AM'),
                                ],
                              )
                            ],
                          ),

                        ),
                      );
                    }
                )
            ),
          ],
        ),
      ),
    );
  }
}