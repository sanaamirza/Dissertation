import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/Logo_Name.png", fit: BoxFit.cover, height: 58,),
        backgroundColor: Color.fromARGB(255, 45, 64, 89),
        ),
      body: Center(
        child: Padding(padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Welcome Back", 
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Text("Name",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              ActionChip(label: Text("Log Out"), onPressed: () {},)

            ],)),)

    );
  }
}