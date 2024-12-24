import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'layout sample',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Padding titleSection =  Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text("아보카도 양파볶음",
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          Text("아보카도와 양파가 만나 영양소가 두 배!",
              style: TextStyle(fontSize: 16, color: Colors.grey[800]))
        ],
      ),
    );
    Row iconSection = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.people, color: Colors.grey,),
        Container(
          margin: const EdgeInsets.only(left: 4),
          child: Text(
            "4인분",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
        )
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('recipe example'),
      ),
      body: Column(
        children: [
          Image.asset('assets/image01.png'),
         titleSection,
          iconSection,
        ],
      ),
    );
  }
}
