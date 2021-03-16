import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> drawerItemTitle = [
    'My Account',
    'My orders',
    'Categories',
    'Favourties',
  ];

  List<IconData> drawerItemIcon = [
    Icons.account_circle,
    Icons.shopping_basket,
    Icons.category,
    Icons.info
  ];

  List<String> itemImage = [
    'assets/pic2.jpeg', 'assets/pic3.jpg', 'assets/pic4.jpg', 'assets/pic5.jpg', 'assets/pic4.jpg', 'assets/pic5.jpg'
  ];

  List<String> image_Cat = [
    'assets/pic6.png', 'assets/pic7.png','assets/pic8.png', 'assets/pic9.png','assets/pic11.png'
  ];

  List<String> image_caption =[
    'jacket', 'trousers','blouse','coat','dress','fdsf'
  ];

  int current = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blueGrey[800],
        title: Text('Clothes Shop'),
        actions: [
           Icon(Icons.search),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 4,
              child: UserAccountsDrawerHeader(
                accountName: Text('MaRio'),
                accountEmail: Text('marioyasser0@gmail.com '),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/my.jfif',),
                  radius: 100,
                ),
                decoration: BoxDecoration(
                    color: Colors.blueGrey[800],
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 1, color: Colors.transparent)),
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height -
                    MediaQuery.of(context).size.height / 3,
                child: ListView.builder(
                  itemCount: drawerItemTitle.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: ListTile(
                        leading: Icon(
                          drawerItemIcon[index],
                          color: Colors.blueGrey[800],
                          size: 20,
                        ),
                        title: Text(
                          drawerItemTitle[index],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    );
                  },
                )
            ),
          ],
        )
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3.5,
            child: Carousel(
              boxFit: BoxFit.fill,
              images: [
                AssetImage('assets/pic2.jpeg'),
                AssetImage('assets/pic3.jpg'),
                AssetImage('assets/pic4.jpg'),
                AssetImage('assets/pic5.jpg'),
              ],
              autoplay: true,
              animationCurve: Curves.fastOutSlowIn,
              dotSize: 0,
              dotColor: Colors.transparent,
              indicatorBgPadding: 0,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10,right: 250),
            child: Text(
              'Categories',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 103,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: image_Cat.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 85,
                  width: 90,
                  child: ListTile(
                    title: Image.asset(
                      image_Cat[index],
                      fit: BoxFit.cover,
                      width: 70,
                      height: 85,
                    ),
                    subtitle: Container(
                      height: 15,
                        alignment: Alignment.topCenter,
                        child: Text(image_caption[index],
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold))),
                  ),
                );
              },
            ),
          ),
             Container(
               height: MediaQuery.of(context).size.height -
                   (MediaQuery.of(context).size.height / 1.5 ),
               child: ListView(
                 children: [
                   Container(
                     //padding: EdgeInsets.all(5),
                     height: MediaQuery.of(context).size.height-(MediaQuery.of(context).size.height / 1.5 ),
                     child: GridView.builder(
                       itemCount: itemImage.length,
                       gridDelegate:
                       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                       itemBuilder: (context, index) {
                         return Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Container(
                             alignment: Alignment.bottomLeft,
                             child: Container(
                               color: Colors.white,
                               height: 40,
                               child: ListTile(
                                 leading: Icon(Icons.shopping_basket,size: 20,color:Colors.blueGrey[800]),
                                 title: Text(image_caption[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                 trailing: Icon(Icons.favorite,size: 20,color:Colors.blueGrey[800]),
                               ),
                             ),
                             height: MediaQuery.of(context).size.height /8,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(10.0),),
                                 image: DecorationImage(
                                     image: AssetImage(itemImage[index]),
                                     fit: BoxFit.fill
                                 )
                             ),
                           ),
                         );
                       },
                     ),
                   )
                 ],
               ),
             )
        ],
      ),
    );
  }
}
