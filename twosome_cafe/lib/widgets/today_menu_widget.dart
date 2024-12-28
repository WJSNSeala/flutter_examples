import "package:flutter/material.dart";

class TodayMenuWidget extends StatelessWidget {
  const TodayMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> todayMenuImgUrl = [
      "assets/images/cake01.jpg",
      "assets/images/cake02.jpg",
      "assets/images/dessert01.jpg",
      "assets/images/dessert02.jpg",
      "assets/images/cake03.jpg",
    ];

    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("오늘의 인기 메뉴", style: Theme.of(context).textTheme.titleLarge),
          GridView.builder(
              shrinkWrap: true,
              itemCount: todayMenuImgUrl.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "${todayMenuImgUrl[index]}",
                    ));
              })
        ]),
      ),
    );
  }
}
