class Coffee {
  final String id;
  final String title;
  final String price;
  final String imageUrl;
  final String icedImageUrl;

  Coffee({
    required this.id,
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.icedImageUrl,
});
}

List<Coffee> coffees = [
  Coffee(
    id: "01",
    title: "(1호점)신촌커피",
    price: "6100",
    imageUrl: "assets/images/coffee01.jpg",
    icedImageUrl: "assets/images/coffee01_ice.jpg",
  ),
  Coffee(
    id: "02",
    title: "아메리카노",
    price: "4500",
    imageUrl: "assets/images/coffee02.jpg",
    icedImageUrl: "assets/images/coffee02_ice.png",
  ),
  Coffee(
    id: "03",
    title: "카페라떼",
    price: "5000",
    imageUrl: "assets/images/coffee03.jpg",
    icedImageUrl: "assets/images/coffee03_ice.png",
  ),
  Coffee(
    id: "04",
    title: "바닐라카페라떼",
    price: "5500",
    imageUrl: "assets/images/coffee04.png",
    icedImageUrl: "assets/images/coffee04_ice.png",
  ),
];
