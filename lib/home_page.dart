import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Home Page',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 3,
        backgroundColor: Colors.blue[800],
        actions: [
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
          SizedBox(width: 15),
          Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          SizedBox(width: 15),
        ],
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      // body: Container(
      //   padding: const EdgeInsets.all(8.0),
      //   width: 300,
      //   height: 300,
      //   decoration: BoxDecoration(
      //       color: Colors.blue[800], borderRadius: BorderRadius.circular(10)),
      //   child: Image.network('https://picsum.photos/200/300'),
      // ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            width: 300,
            height: 300,
            decoration: BoxDecoration(
                color: Colors.blue[800],
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset('assets/images/img3.jpg'),
          ),
          Image.asset('assets/images/img3.jpg'),
          const CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage('https://picsum.photos/200/300'),
          )
        ],
      ),
    );
  }
}
