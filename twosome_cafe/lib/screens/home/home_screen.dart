import "package:flutter/material.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> menuItems = [
      "New",
      "커피&음료",
      "아이스크림&빙수",
      "케이크",
    ];

    return DefaultTabController(
        length: menuItems.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("메뉴", style: TextStyle(color: Colors.black),),
            centerTitle: true,
            backgroundColor: Colors.white,
            leading: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            bottom: TabBar(
                tabs: List.generate(
                    menuItems.length, (index) => Tab(text: menuItems[index])),
                unselectedLabelColor: Colors.black38,
              labelColor: Colors.black,
              indicatorColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              isScrollable: true,
            ),


          ),
          body: TabBarView(children: [
            Center(child: Text("New 화면")),
            Center(child: Text("커피&음료 화면")),
            Center(child: Text("빙수&아이스크림 화면")),
            Center(child: Text("케이크 화면")),
          ]),
        ),

    );
  }
}
