import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'customicons.dart';
import 'style.dart';
import 'model/model.dart';
import 'widgets/ProductCard.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    )
  );
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
       return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  int _currentIndex;

  void initState() {
    super.initState();
    _currentIndex=0;
  }

  void changePage(int index) {
    setState(() {
      _currentIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf3f6fb),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 16,right: 16,top: 30,bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {
                    },
                   ),
                  IconButton(
                    icon: Icon(Icons.shopping_cart),
                   onPressed: () {
                    },
                  ),

                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text("Shop",style:headingStyle),
            ),
            SizedBox(height: 22,),
            Container(
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.symmetric(horizontal: 22),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.12),
                    offset: Offset(0,10),
                    blurRadius: 30
                  )
                ]
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 18,right: 12),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search...",
                      hintStyle: searchBarStyle,
                      suffixIcon: Icon(Icons.search)
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40,),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text("Headphones", style: headingStyle,),
            ),
            SizedBox(height: 16,),
            Container(
              height: 200,
              child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  var product=products[index];
                  return ProductCard(
                    imgUrl: product.image,
                    name: product.title,
                    color: product.color
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 190,
              margin: EdgeInsets.symmetric(horizontal: 22),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 5, top: 20.0),
                    child: Text("Speakers", style: headingStyle,),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0,6),
                              blurRadius: 6
                            )
                          ]
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 22, top: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Rallis", style: productTitleStyle,),
                              SizedBox(height: 4,),
                              Text("Haute Red, Slate Blue, \nMist Grey", style: speakerdescStyle,)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 15,
                    top: 90,
                    child: Image.asset("assets/speaker.jpg",fit: BoxFit.contain, width: 85, height: 80,),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 12),
        child: BubbleBottomBar(
          backgroundColor: Colors.transparent,
          opacity: 1,
          elevation: 0,
          currentIndex: _currentIndex,
          onTap: changePage,
          items: <BubbleBottomBarItem> [

            BubbleBottomBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.home, color: Colors.black,),
              activeIcon: Icon(Icons.home, color: Colors.white,),
              title: Text("Home", style: bottomBarItemStyle,)
            ),

            BubbleBottomBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.shop, color: Colors.black,),
                activeIcon: Icon(Icons.shop, color: Colors.white,),
                title: Text("Shop", style: bottomBarItemStyle,)
            ),

            BubbleBottomBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.favorite_border, color: Colors.black,),
                activeIcon: Icon(Icons.favorite_border, color: Colors.white,),
                title: Text("Favorites", style: bottomBarItemStyle,)
            ),

            BubbleBottomBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.person, color: Colors.black,),
                activeIcon: Icon(Icons.person, color: Colors.white,),
                title: Text("Profile", style: bottomBarItemStyle,)
            ),
          ]
        ),
      ),
    );
  }
}
