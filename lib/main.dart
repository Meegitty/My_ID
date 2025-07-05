

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomePage() ,
));


//Home Page:
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Text('WELCOME',
        style: TextStyle(
          color: Colors.white,
        ),),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow,
          ),
          onPressed: () {
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyCard()),);
          }, 
          child: Text(
            'View ID',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),          ),
      ),
    );
  }
}


//ID Card Page: 
class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('My ID Card',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        
      ),
      
      

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Meera-s1-EL.jpg'),
                radius: 80,
                
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            Text(
              'Meera',
              style: TextStyle(
                color: Colors.yellow,
                letterSpacing: 2.0,
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'AGE',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            Text(
              '20',
              style: TextStyle(
                color: Colors.yellow,
                letterSpacing: 2.0,
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'DOB',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            Text(
              '22 June 2005',
              style: TextStyle(
                color: Colors.yellow,
                letterSpacing: 2.0,
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
             SizedBox(height: 30.0,),
            Text(
              'CURRENT EDUCATION',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            Text(
              'B.Tech ELE',
              style: TextStyle(
                color: Colors.yellow,
                letterSpacing: 2.0,
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 30.0,),
           


            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0),
                Text(
                  'meerajune2000@gmail.com',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 20,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            



          ],
        ),
      ),



    );
  }
}