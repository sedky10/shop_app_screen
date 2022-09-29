import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:item_selector/item_selector.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Screen(),
      theme: ThemeData(
        fontFamily: 'Audio',
        textTheme: const TextTheme(
          bodyText1: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          bodyText2: TextStyle(
            fontSize: 18,
            color: Color(0xffa1a1a1),
          ),
        ),
      ),
    );
  }
}

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  bool fill = false;
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1c1c1c),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              fill ? Icons.favorite : Icons.favorite_border_outlined,
            ),
            onPressed: () {
              setState(() {
                fill = !fill;
              });
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.shopping_bag_outlined,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(

        color: const Color(0xff1c1c1c),
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      decoration: const BoxDecoration(
                        color: Color(0xfff9f9f7),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                      ),
                      height: 334,
                      width: 318,
                      child: CarouselSlider(
                        options: CarouselOptions(
                          height: 450,
                          aspectRatio: 16 / 9,
                          viewportFraction: 1,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 5),
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 1500),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          scrollDirection: Axis.horizontal,
                        ),
                        items: [1, 2, 3, 4, 5].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(15),
                                          bottomRight: Radius.circular(15)),
                                      color: Color(0xfff9f9f7)),
                                  child: const Center(
                                      child: Image(
                                    image: AssetImage(
                                      'assets/image/porugal.jpeg',
                                    ),
                                  )));
                            },
                          );
                        }).toList(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          ShirtSize(size: 'S'),
                          ShirtSize(size: 'l'),
                          ShirtSize(size: 'm'),
                          ShirtSize(size: 'xl'),
                          ShirtSize(size: '2xl'),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Portugal Fifa World Cup ',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Text(
                            'Home Kit 22/23',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              RatingBar.builder(
                                unratedColor: const Color(0xff81272d),
                                itemSize: 27,
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Color(0xffe6323e),
                                ),
                                onRatingUpdate: (rating) {},
                                initialRating: 3,
                                minRating: 1,
                                allowHalfRating: true,
                              ),
                              const Text('4.0'),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff343434),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 5,
                                    bottom: 5,
                                    left: 5,
                                  ),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xffe6323e)),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        number--;
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 45,
                                  height: 25,
                                  margin: const EdgeInsets.only(
                                    right: 20,
                                    left: 20,
                                  ),
                                  child: Center(
                                    child: Text(
                                      number!.toString(),
                                      style: const TextStyle(
                                          fontSize: 25, color: Colors.white),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 5,
                                    bottom: 5,
                                    right: 5,
                                  ),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: const Color(0xffe6323e)),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        number++;
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Details'),
                                Details(field: 'Material:', disc: ' Polyester'),
                                Details(
                                    field: 'Shipping:',
                                    disc: ' in 5 to 6 days'),
                                Details(
                                    field: 'Returns:', disc: ' Within 20 Days'),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xffe6323e),
                                  borderRadius: BorderRadius.circular(10)),
                              width: 100,
                              height: 100,
                              child: MaterialButton(
                                onPressed: () {},
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.shopping_bag_outlined,
                                      color: Colors.white,
                                      size: 35,
                                    ),
                                    Text(
                                      '\$89',
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ShirtSize extends StatefulWidget {
  const ShirtSize({Key? key, required this.size}) : super(key: key);
  final String? size;

  @override
  State<ShirtSize> createState() => _ShirtSizeState();
}

class _ShirtSizeState extends State<ShirtSize> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        color: pressed ? const Color(0xffe6323e) : const Color(0xff2a2a2a),
        onPressed: () {
          setState(() {
            pressed = !pressed;
          });
        },
        child: Text(
          widget.size!.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ));
  }
}

class Details extends StatelessWidget {
  const Details({Key? key, required this.field, required this.disc})
      : super(key: key);
  final String field;
  final String disc;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(field, style: const TextStyle(color: Colors.white)),
        Text(disc),
      ],
    );
  }
}
// margin: const EdgeInsets.only(
// bottom: 15,
// right: 7,
// ),
// width: 69,
// decoration: BoxDecoration(
// color: const Color(0xff2a2a2a),
// borderRadius: BorderRadius.circular(5),
// ),
