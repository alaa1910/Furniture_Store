import 'package:flutter/material.dart';

class Basket extends StatefulWidget {
  @override
  _BasketState createState() => _BasketState();
}

class _BasketState extends State<Basket> {

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
    );
  }
}
