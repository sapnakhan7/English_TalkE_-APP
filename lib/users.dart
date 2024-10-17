import 'package:bottom_navigation_bar_task/profile.dart';
import 'package:flutter/material.dart';
class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  bool isActive=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Column(
      //   children: [
      //     SizedBox(height: 60,),
      //     ClipRRect(
      //         borderRadius: BorderRadius.all(Radius.circular(20)),
      //         child: Image.asset('assets/Screenshot 2024-10-15 154140.png')),
      //   ],
      // ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Card(
              color: Colors.amber,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Image.asset('assets/english talkie logo.png',width: 150,height: 100,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Your total \nbalance',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16)),
                            Text('\$2.4000',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red[900],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text('Withdraw',style: TextStyle(color: Colors.white),),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Stay Active Switch
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Stay Active',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Transform.scale(
                    scale: 0.9,
                    child: Switch(
                      value: isActive,
                      onChanged: (value) {
                        setState(() {
                          isActive = value;
                        });
                      },
                      activeColor: Colors.amber,
                      inactiveThumbColor: Colors.grey,
                      inactiveTrackColor: Colors.grey[400],
                    ),
                  )

                ],
              ),
            ),
            Center(
              child: Text(
                'This will show you active to the student so they ',
                style: TextStyle( fontSize: 12,fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                'can call you anytime',
                style: TextStyle( fontSize: 12,fontWeight: FontWeight.bold),
              ),
            ),
            Divider(thickness: 1),

            // Profile Options List
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Edit Profile',style: TextStyle(fontWeight: FontWeight.bold),),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Profile()),
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.calendar_today),
                    title: Text('Set Date and Time',style: TextStyle(fontWeight: FontWeight.bold),),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text('Notifications',style: TextStyle(fontWeight: FontWeight.bold),),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.message),
                    title: Text('Messages',style: TextStyle(fontWeight: FontWeight.bold),),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.contact_phone),
                    title: Text('Contact',style: TextStyle(fontWeight: FontWeight.bold),),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text('Logout',style: TextStyle(fontWeight: FontWeight.bold),),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Switch to Student Button
            Center(
              child: SizedBox(
                width: 200, // Adjust the width as needed
                height: 40, // Adjust the height as needed
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.repeat, size: 20,color: Colors.white,),
                      Text(
                        'SWITCH TO STUDENT',
                        style: TextStyle(fontSize: 13,color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            )

          ],
        ),
      ),

    );
  }
}
