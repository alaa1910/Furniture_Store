import 'package:flutter/material.dart';
import 'package:hti_pro/home.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> with TickerProviderStateMixin {

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

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();


  TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, initialIndex: 0, vsync: this);
    super.initState();
  }


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
        bottom: PreferredSize(
          preferredSize: Size(0.0, 30.0),
          child: TabBar(
            tabs: [
              Text('Sign In'), Text('Register'),
            ],
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(color: Colors.black, width: 0.5),
                color: Colors.transparent
            ),
            labelColor: Colors.white,
            labelStyle: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle: TextStyle(color: Colors.grey, fontSize: 15.0, fontWeight: FontWeight.bold),
            controller: tabController,
          ),
        ),
      ),
        backgroundColor: Colors.white,
        body: Container(
        margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
    child: TabBarView(
    children: [
      Container(
        margin: EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black, width: 0.5),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red, width: 0.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black, width: 0.5),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blueGrey[800], width: 0.5),
                ),
                enabled: true,
                labelText: 'email',
                hintText: 'email',
                labelStyle: TextStyle(fontSize: 20),
                prefixIcon: Icon(Icons.email, size: 20),
              ),
              controller: emailController,
            ),
            SizedBox(height: 15),

            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black, width: 0.5),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red, width: 0.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black, width: 0.5),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blueGrey, width: 0.5),
                ),
                enabled: true,
                labelText: 'password ',
                hintText: 'password',
                labelStyle: TextStyle(fontSize: 20),
                prefixIcon: Icon(Icons.email, size: 20),
              ),
              controller: passwordController,
            ),
            FlatButton(
              child: Text(
                'Sign In',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              color: Colors.black,
              onPressed: (){
                Navigator.push(context , MaterialPageRoute(builder: (context) => Home()));
              },
            ),

          ],
        ),
      ),
      Container(
        margin: EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black, width: 0.5),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red, width: 0.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black, width: 0.5),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blueGrey[800], width: 0.5),
                ),
                enabled: true,
                labelText: 'email',
                hintText: 'email',
                labelStyle: TextStyle(fontSize: 20),
                prefixIcon: Icon(Icons.email, size: 20),
              ),
              controller: emailController,
            ),
            SizedBox(height: 15),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black, width: 0.5),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red, width: 0.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black, width: 0.5),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blueGrey[800], width: 0.5),
                ),
                enabled: true,
                labelText: 'password ',
                hintText: 'password',
                labelStyle: TextStyle(fontSize: 20),
                prefixIcon: Icon(Icons.email, size: 20),
              ),
              controller: passwordController,
            ),
            SizedBox(height: 15),

            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black, width: 0.5),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red, width: 0.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black, width: 0.5),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blueGrey[800], width: 0.5),
                ),
                enabled: true,
                labelText: 'phone ',
                hintText: 'phone ',
                labelStyle: TextStyle(fontSize: 20),
                prefixIcon: Icon(Icons.phone_android, size: 20),

              ),
              controller: phoneController,
            ),
            SizedBox(height: 15),

            FlatButton(

              shape:OutlineInputBorder(borderRadius:BorderRadius.circular(12),) ,
              child: Text(
                'Done',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              color: Colors.black,
              onPressed: (){},
            ),

          ],
        ),
      )

    ],
    controller: tabController,
    ),
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
