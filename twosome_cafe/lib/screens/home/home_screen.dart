import "package:carousel_slider/carousel_slider.dart";
import "package:flutter/material.dart";
import "package:twosome_cafe/screens/menu/coffee_menu_screen.dart";
import "package:twosome_cafe/widgets/today_menu_widget.dart";

import "../../widgets/banner_widget.dart";

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

    List<String> bannerItemImgUrl = [
      "assets/images/banner01.jpg",
      "assets/images/banner02.jpg",
    ];

    return DefaultTabController(
      length: menuItems.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "메뉴",
            style: TextStyle(color: Colors.black),
          ),
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
          Column(
            children: [
              BannerWidget(bannerItemImgUrl: bannerItemImgUrl),
              TodayMenuWidget(),
            ],
          ),
          CoffeeMenuScreen(),
          Center(child: Text("빙수&아이스크림 화면")),
          Center(child: Text("케이크 화면")),
        ]),
      ),
    );
  }
}
