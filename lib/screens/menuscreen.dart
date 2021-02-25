import 'package:flutter/material.dart';
import 'package:food_delivery/widget/menu.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final controller = PageController(viewportFraction: 1.0);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Menu"),
              backgroundColor: Colors.orange,
              centerTitle: true,
              bottom: TabBar(
                tabs: [
                  Tab(
                    child: Text(
                      "Home",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Tab(
                    child: Text("Quick Bites",
                        style: TextStyle(color: Colors.white)),
                  ),
                  Tab(
                    child: Text("Breakfast",
                        style: TextStyle(color: Colors.white)),
                  ),
                  Tab(
                    child:
                        Text("Dessert", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              leading: Icon(Icons.menu),
              actions: [Icon(Icons.search)],
            ),
            body: TabBarView(
              children: [
                ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    SizedBox(
                      width: 300,
                      height: 300,
                      child: PageView(
                        controller: controller,
                        children: List.generate(
                          6,
                          (_) => Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        "assets/images/french.jpg"))),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 190),
                                  Expanded(
                                    flex: 0,
                                    child: Text("Crust Bistro",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 21)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("You liked similar items before",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18)),
                                  Container(
                                      alignment: Alignment.bottomLeft,
                                      child: SmoothPageIndicator(
                                          controller: controller,
                                          count: 6,
                                          effect: ScaleEffect(
                                              dotColor: Colors.white)))
                                ]),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Menu(),
                    SizedBox(height: 16),
                    Menu(),
                    SizedBox(height: 16),
                    Menu(),
                    SizedBox(height: 16),
                    Menu(),
                    SizedBox(height: 16),
                    Menu(),
                    SizedBox(height: 16),
                    Menu(),
                    SizedBox(height: 16),
                    Menu(),
                    SizedBox(height: 16),
                    Menu(),
                    SizedBox(height: 16),
                    Menu(),
                    SizedBox(height: 16),
                    Menu(),
                    SizedBox(height: 16),
                  ],
                ),
                Center(
                  child: Text("Quick Bites"),
                ),
                Column(
                  children: [Text("Breakfast")],
                ),
                Column(
                  children: [Text("Dessert")],
                ),
              ],
            )));
  }
}
