import 'package:ecommerce_app_flutter/views/shared/app.style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController = TabController(
    length: 3,
    vsync: this,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(
      //   child: Text('Home page', style: appStyle(40, Colors.black, .bold)),
      // ),
      // body: SizedBox(
      //   height: MediaQuery.of(context).size.height,
      //   child:
      body: Stack(
        children: [
          Container(
            //padding: const EdgeInsets.fromLTRB(16, 45, 0, 0),
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/top_image.png'),
                fit: .cover,
              ),
            ),
          ),
          Positioned(
            top: 75,
            left: 16,
            right: 16,

            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  'Athletics Shoes',
                  style: appStyleWithHeight(42, Colors.white, .bold, 1.5),
                ),
                Text(
                  'Collections',
                  style: appStyleWithHeight(35, Colors.white, .bold, 1.5),
                ),

                SizedBox(height: 10.0),
                TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.transparent,
                  isScrollable: true,
                  labelColor: Colors.white,
                  controller: _tabController,
                  unselectedLabelColor: Colors.grey.shade100,
                  labelStyle: appStyle(24, Colors.white, .bold),
                  tabs: const [
                    Tab(text: "Men Shoes"),
                    Tab(text: "Women Shoes"),
                    Tab(text: "Kids Shoes"),
                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.265,
            ),
            child: TabBarView(
              controller: _tabController,
              children: [
                Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.405,
                      color: Colors.amberAccent,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.405,
                      color: Colors.redAccent,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.405,
                      color: Colors.greenAccent,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      // ),
    );
  }
}
