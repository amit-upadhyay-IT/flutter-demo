import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout sample app',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: TheHomePage(title: "something"),
    );
  }

}

class MyButton extends StatelessWidget {
  MyButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(width: 10.0, color: Color(0xFFFFDFDFDF)),
                left: BorderSide(width: 10.0, color: Color(0xFFFFDFDFDF)),
                right: BorderSide(width: 10.0, color: Color(0xFFFF7F7F7F)),
                bottom: BorderSide(width: 10.0, color: Color(0xFFFF7F7F7F)),
              ),
              color: Colors.grey,
            ),
            child: const Text(
              'Don\'t touch it!',
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              )
            ),
        ),
    );
  }
}


class TheHomePage extends StatelessWidget {

  final String title;

  TheHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buy Animals"),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: getAnimalItems(key),
      ),
    );
  }

}


class ItemBox extends StatelessWidget {

  // write a constructor to accept the values to display on the item
  ItemBox({Key key, this.name, this.description, this.price, this.image}):super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(2),
      height: 130,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 3,
              child: Image.asset(
                "assets/cardimages/"+image,
                fit: BoxFit.fitWidth,
              ),
            ),
            // adding image

            Expanded(
            flex: 3,
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(this.name, style: TextStyle(fontWeight: FontWeight.bold),),
                    Text(this.description,),
                    Text("Price: "+this.price.toString()+" ₹",),
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

List<Widget> getAnimalItems(Key key) {
  List<ItemBox> animalItems = new List();
  animalItems.add(new ItemBox(
    key: key,
    name: "Raccoon",
    description: "Mother apparently not available, this one of two was crossing a road in a park.",
    price: 100,
    image: "img1.jpeg",)
  );
  animalItems.add(new ItemBox(key: key, name: "Tiger", description: "Roar!", price: 20000, image: "img2.jpeg",));
  animalItems.add(new ItemBox(key: key, name: "Peacock", description: "Breathing peacock", price: 1300, image: "img3.jpeg",));
  animalItems.add(new ItemBox(key: key, name: "Lizards/loners", description: "This reptiles is assumed to be asocial and behaviorally simple.", price: 15, image: "img6.jpg",));
  animalItems.add(new ItemBox(key: key, name: "Parrot", description: "With strong legs and clawed feet and elliptical wings, and high-speed wings", price: 2500, image: "img4.jpg",));
  animalItems.add(new ItemBox(key: key, name: "Camel", description: "Moving easily across the sand because of its specially designed feet.", price: 3000, image: "img5.jpg",));

  animalItems.add(new ItemBox(key: key, name: "Toucan", description: "a.k.a. an 'egg-sucker'", price: 150, image: "img7.webp",));
  animalItems.add(new ItemBox(key: key, name: "Fox", description: "A warm hearted friend for warm hearted people", price: 8000, image: "img8.jpeg",));
  animalItems.add(new ItemBox(key: key, name: "Meerkat", description: "Small mongoose found in southern Africa.", price: 600, image: "img9.jpeg",));
  animalItems.add(new ItemBox(key: key, name: "Kangaroos", description: "A large marsupials that is brought from Australia.", price: 13000, image: "img10.jpg",));
  return animalItems;
}