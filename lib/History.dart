import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  List<String> pics1 = [
    'assets/pic1.jpg',
    'assets/pic2.jpg',
    'assets/pic3.jpg',
    'assets/pic5.jpg',
    'assets/pic6.jpg',
    'assets/pic7.jpg',
  ];
  List<String> pics2 = [
    'assets/m1.jpg',
    'assets/m2.jpg',
    'assets/m3.jpg',
    'assets/m4.jpg',
    'assets/m5.jpg',
    'assets/m6.jpg',
  ];
  List<String> names = [
    'SAPNA',
    'TAIBA',
    'MARYUM',
    'NAJEEBA',
    'LINTA',
    'NAZISH',
  ];
  List<String> name = [
    'ROMAN',
    'TAYAB',
    'ARSALAN',
    'ALI',
    'NOMI',
    'SAFA',
  ];

  bool isVoiceCallSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text(
          'English TalkE',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 13.0, left: 13.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'History',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isVoiceCallSelected = true;
                    });
                  },
                  child: Container(
                    width: isVoiceCallSelected ? 200 : 140,
                    height: 50,
                    decoration: BoxDecoration(
                      color: isVoiceCallSelected
                          ? Colors.amber
                          : Colors.transparent,
                      border: Border.all(
                        color: isVoiceCallSelected
                          ? Colors.transparent
                          : Colors.amber,),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Center(
                      child: Text(
                        'Voice Call',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: isVoiceCallSelected
                              ? Colors.white
                              : Colors.amber,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isVoiceCallSelected = false;
                    });
                  },
                  child: Container(
                    width: isVoiceCallSelected ? 160 : 180,
                    height: 50,
                    decoration: BoxDecoration(
                      color: isVoiceCallSelected
                          ? Colors.transparent
                          : Colors.amber,
                      border: Border.all(
                        color: isVoiceCallSelected
                          ? Colors.amber
                          : Colors.transparent,),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Center(
                      child: Text(
                        'Video Call',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: isVoiceCallSelected
                              ? Colors.amber
                              : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 13.0, right: 13.0),
              child: Container(
                width: 370,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                      enabledBorder: InputBorder.none,
                      suffix: Icon(Icons.search),
                    ),
                    style: TextStyle(),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 13.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Today',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 117, 117, 117)),
                ),
              ),
            ),
            Container(
              height: 210,
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 370,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20)),
                              child: Image.asset(
                                pics1[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                names[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Row(
                                children: [
                                  Text(isVoiceCallSelected
                                      ? 'Voice Call '
                                      : 'Video Call '),
                                  Text(
                                    '- Completed',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ],
                              ),
                              Text('Today 11:00 to 11:30 AM'),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Icon(
                              Icons.chevron_right_outlined,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Yesterday, March 25 2022',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 117, 117, 117)),
                ),
              ),
            ),
            Container(
              height: 300,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 370,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20)),
                              child: Image.asset(
                                pics2[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                name[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Row(
                                children: [
                                  Text(isVoiceCallSelected
                                      ? 'Voice Call '
                                      : 'Video Call '),
                                  Text(
                                    '- Completed',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ],
                              ),
                              Text('Yesterday 11:00 to 11:30 AM'),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.chevron_right_outlined,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
