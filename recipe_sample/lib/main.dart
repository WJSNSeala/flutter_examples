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
    Widget titleSection = Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text("아보카도 양파볶음",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          Text("아보카도와 양파가 만나 영양소가 두 배!",
              style: TextStyle(fontSize: 16, color: Colors.grey[800]))
        ],
      ),
    );
    Widget iconSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildIconRow(
          Icons.people,
          '4인분',
          Colors.grey,
        ),
        buildIconRow(
          Icons.alarm,
          '15분 이내',
          Colors.grey,
        ),
        buildIconRow(
          Icons.star,
          '아무나',
          Colors.grey,
        ),
      ],
    );
    Widget stepSection = Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '조리순서',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(right: 8), child: Text("1", style: Theme.of(context).textTheme.titleLarge,),),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  "[양파브로콜리 볶음] 양파와 브로콜리를 잘게 잘라준다.",
                  style: TextStyle(
                    fontSize: 16
                  )
                )
              ),
              Image.asset('assets/step01.png', width: MediaQuery.of(context).size.width * 0.3, fit: BoxFit.contain),

            ],
          ),
          buildIconRow(Icons.lightbulb, '크기가 작은 브로콜리를 사용해도 좋아요', Colors.teal),
          buildIconRow(Icons.shopping_cart, '라오메뜨 천연세라믹 양면 도마', Colors.grey)
        ],
      )
    );


    return Scaffold(
      appBar: AppBar(
        title: Text('recipe example'),
      ),
      body: ListView(
        children: [
          Image.asset('assets/image01.png'),
          titleSection,
          iconSection,
          stepSection,
        ],
      ),
    );
  }

  Row buildIconRow(
      IconData icon, String label, Color color
      ) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: color,
          ),
          Container(
            margin: const EdgeInsets.only(left: 4),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
          )
        ],
      );
  }
}
