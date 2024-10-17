import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 16.0,right: 16.0,),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Image.asset('assets/profile cover.jpg',)),
            ),
            SizedBox(height: 10,),
            Stack(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/pic12.jpg'),
                  radius: 60,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 13.0,right: 13.0),
              child: Container(
                width: 370,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 13.0,right: 13.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '  Sapna',
                        enabledBorder: InputBorder.none,
                        prefix: Icon(Icons.person)
                    ),
                    style: TextStyle(),

                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 13.0,right: 13.0),
              child: Container(
                width: 370,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 13.0,right: 13.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '  0300 1234567',
                        enabledBorder: InputBorder.none,
                        prefix: Icon(Icons.phone)
                    ),
                    style: TextStyle(),

                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 13.0,right: 13.0),
              child: Container(
                width: 370,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 13.0,right: 13.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '  Sapnaafazal@gmail.com',
                        enabledBorder: InputBorder.none,
                        prefix: Icon(Icons.email)
                    ),
                    style: TextStyle(),

                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 13.0,right: 13.0),
              child: Container(
                width: 370,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 13.0,right: 13.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '  Pakistan',
                        enabledBorder: InputBorder.none,
                        prefix: Icon(Icons.location_on)
                    ),
                    style: TextStyle(),

                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 13.0,right: 13.0),
              child: Container(
                width: 370,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 13.0,right: 13.0),
                  child: TextField(
                    maxLines: 10,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Description',
                        hintText: 'Hello, This is Sapna Fazal a professional flutter developer .........',
                        enabledBorder: InputBorder.none,
                    ),
                    style: TextStyle(),

                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 13.0,right: 13.0),
              child: Container(
                width: 370,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 13.0,right: 13.0),
                  child: TextField(
                    maxLines: 10,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'About Me',
                      enabledBorder: InputBorder.none,
                    ),
                    style: TextStyle(),

                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
        
            // Save Button
            ElevatedButton(
              onPressed: () {
                // Add save functionality here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text('SAVE', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
            ),
        
          ],
        ),
      ),

    );
  }
}
