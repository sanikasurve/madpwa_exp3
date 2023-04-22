import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  // debugShowCheckedModeBanner: false,
  home: ProfilePage(),
));


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  int accessLevel =1;

  @override
  Widget build(BuildContext context) {

    print("Build method called");
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/images/profile-img.png'),
              ),
            ),
            Divider(
              color: Colors.grey[800],
              height: 50.0,
              thickness: 2.0,
            ),
            Center(
              child: Text(
                'NAME',
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Center(
              child: Text(
                'Sanika Surve',
                style: TextStyle(
                  color: Colors.blue[500],
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  letterSpacing: 2.0,

                ),
              ),
            ),
            SizedBox(height: 30.0),

            Center(
              child: Text(
                'Address',
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Center(
              child: Text(
                'Mumbai',
                style: TextStyle(
                  color: Colors.blue[500],
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Center(
              child: Text(
                'Contact',
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Center(
              child: Text(
                '1234567890',
                style: TextStyle(
                  color: Colors.blue[500],
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Center(
              child: Text(
                'Email',
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Center(
              child: Text(
                'sanika@gmail.com',
                style: TextStyle(
                  color: Colors.blue[500],
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  letterSpacing: 2.0,

                ),
              ),
            ),

            SizedBox(height: 30.0),
           Center(
             child:  Text(
               'Data Access Level',
               style: TextStyle(
                 color: Colors.black,
                 letterSpacing: 2.0,
                 fontSize: 20.0,
               ),
             ),
           ),
            SizedBox(height: 5.0),
            Center(
              child: Text(
                '$accessLevel',
                style: TextStyle(
                  color: Colors.blue[500],
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  letterSpacing: 2.0,
                ),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {

          setState(() {
            accessLevel +=1;
          });


        },
        child: Icon(Icons.move_up),
      ),
    );
  }
}