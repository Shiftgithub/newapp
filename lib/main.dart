import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        child: Stack(
          children: [
            Image(
              image: NetworkImage('https://cdn.pixabay.com/photo/2021/09/02/02/34/sunset-6592545__340.jpg'),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.red,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Text(
                      'Mamun Mia Turan',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    Row(
                      children: [
                        ActionChip(
                          onPressed: () {},
                          label: Text('Click Here'),
                          backgroundColor: Colors.red,
                        ),
                        SizedBox(width: 30),
                        ActionChip(
                          onPressed: () {},
                          label: Text('Click Here'),
                          backgroundColor: Colors.blue,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
