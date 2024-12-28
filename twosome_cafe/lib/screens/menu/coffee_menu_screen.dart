import "package:flutter/material.dart";
import "package:twosome_cafe/models/coffee.dart";

class CoffeeMenuScreen extends StatelessWidget {
  const CoffeeMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(coffees.length, (index) {
        return Container(
          height: 150,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Image.asset("${coffees[index].imageUrl}"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${coffees[index].title}",
                          style: Theme.of(context).textTheme.titleLarge),
                      Text("${coffees[index].price}",
                          style: Theme.of(context).textTheme.titleLarge)
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
