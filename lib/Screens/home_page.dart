import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;

  void _onScroll() {
    print("ss");
  }

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          makePage('assets/images/one.jpg', "USA", 1),
          makePage('assets/images/two.jpg', "India", 2),
          makePage('assets/images/three.jpg', "China", 3),
          makePage('assets/images/four.jpg', "Australia", 4),
          makePage('assets/images/five.jpg', "UK", 5),
          makePage('assets/images/six.jpg', "Germany", 6),
        ],
      ),
    );
  }
}

Widget makePage(String image, String title, int num) {
  return Container(
    child: Container(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  num.toString(),
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "/6",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                        size: 15,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "4.0",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "(2486)",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          stops: [
            0.1,
            0.9,
          ],
          colors: [
            Colors.black.withOpacity(0.9),
            Colors.black.withOpacity(0.2),
          ],
        ),
      ),
    ),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
    ),
  );
}
