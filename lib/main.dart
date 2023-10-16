import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  // late TabController _tabController;

  @override
  // void initState() {
  //   super.initState();
  //   _tabController = TabController(length: 4, vsync: this);
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        // backgroundColor: Color.fromARGB(255, 5, 17, 31),
        appBar: AppBar(
          elevation: 20,
          title: Text("Profile", style: GoogleFonts.lobster(
            letterSpacing: 2.3,
          ),),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(IconlyLight.setting)),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF0b090a),
                  Color(0xFF001845),
                ],
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            // General
            General(), //End Geneal Row

            SizedBox(
              height: 25,
            ),

           //End  Sub 1 General
            Favourite(), //End  Sub 1 General

             SizedBox(
              height: 10,
            ),
            Notification(), //End  Sub 2 General

             SizedBox(
              height: 10,
            ),

            My_Cards(), //End  Sub 3 General

             SizedBox(
              height: 10,
            ),

            Rate_Us(), //End  Sub 4 General

             SizedBox(
              height: 25,
            ),

            // About App
            About_App_Title(), //End About App Row

            SizedBox(
              height: 25,
            ),

           // Sub 1 About App
            About_app_sub(), //End  Sub 1 About App
             SizedBox(
              height: 10,
            ),

            Privacy(), //End  Sub 2 About App

             SizedBox(
              height: 10,
            ),

            Terms(), //End  Sub 3 About App
             SizedBox(
              height: 10,
            ),

            Help(), //End  Sub 4 About App

             SizedBox(
              height: 10,
            ),

            Sign_In(), //End  Sub 5 About App

          ],
        ),

        bottomNavigationBar: Buttom_bar(),
      ),
    );
  }
}

class Buttom_bar extends StatelessWidget {
  const Buttom_bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF0b090a),
            Color(0xFF001845),
          ],
        ),
      ),
      child: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        shape: CircularNotchedRectangle(),
        child: TabBar(
          // controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(IconlyBroken.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(IconlyBroken.ticket),
              text: 'Bookings',
            ),
            Tab(
              icon: Icon(IconlyLight.heart),
              text: 'Hospitals',
            ),
            Tab(
              icon: Icon(IconlyBroken.profile),
              text: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

class Sign_In extends StatelessWidget {
  const Sign_In({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Container(
          height: 40,
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(IconlyBroken.login),
                color: Colors.black,
              ),
              Text("Sign In",
                  style: TextStyle(color: Colors.black, fontSize: 15)),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(IconlyLight.arrow_right_2),
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}

class Help extends StatelessWidget {
  const Help({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Container(
          height: 40,
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(IconlyBroken.calling),
                color: Colors.black,
              ),
              Text("Help & Support",
                  style: TextStyle(color: Colors.black, fontSize: 15)),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(IconlyLight.arrow_right_2),
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}

class Terms extends StatelessWidget {
  const Terms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Container(
          height: 40,
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(IconlyBroken.document),
                color: Colors.black,
              ),
              Text("Terms & Conditions",
                  style: TextStyle(color: Colors.black, fontSize: 15)),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(IconlyLight.arrow_right_2),
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}

class Privacy extends StatelessWidget {
  const Privacy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Container(
          height: 40,
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(IconlyBroken.shield_done),
                color: Colors.black,
              ),
              Text("Privacy Policy",
                  style: TextStyle(color: Colors.black, fontSize: 15)),
           Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(IconlyLight.arrow_right_2),
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}

class About_app_sub extends StatelessWidget {
  const About_app_sub({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Container(
          height: 40,
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(IconlyBroken.info_circle),
                color: Colors.black,
              ),
              Text("About App",
                  style: TextStyle(color: Colors.black, fontSize: 15)),
              Spacer(), // Spacer widget to push the arrow to the right
              IconButton(
                onPressed: () {},
                icon: Icon(IconlyLight.arrow_right_2),
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}

class About_App_Title extends StatelessWidget {
  const About_App_Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 5,
        child: Container(
          height: 40,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 5.0),
            child: Text(
              "About App".toUpperCase(),
              style: TextStyle(fontSize: 18, color: Colors.white,letterSpacing: 1.0),
            ),
          ),
          decoration: BoxDecoration(color: Color(0xff2b2d42)),
        ),
      ),
    ]);
  }
}

class Rate_Us extends StatelessWidget {
  const Rate_Us({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Container(
          height: 40,
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(IconlyBroken.star),
                color: Colors.black,
              ),
              Text("Rate Us",
                  style: TextStyle(color: Colors.black, fontSize: 15)),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(IconlyLight.arrow_right_2),
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}

class My_Cards extends StatelessWidget {
  const My_Cards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Container(
          height: 40,
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(IconlyBroken.ticket),
                color: Colors.black,
              ),
              Text("My Cards",
                  style: TextStyle(color: Colors.black, fontSize: 15)),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(IconlyLight.arrow_right_2),
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}

class Notification extends StatelessWidget {
  const Notification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Container(
          height: 40,
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(IconlyBroken.notification),
                color: Colors.black,
              ),
              Text("Notifications",
                  style: TextStyle(color: Colors.black, fontSize: 15)),
           Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(IconlyLight.arrow_right_2),
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}

class Favourite extends StatelessWidget {
  const Favourite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Container(
          height: 40,
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(IconlyLight.heart),
                color: Colors.black,
              ),
              Text("Favourite Doctor",
                  style: TextStyle(color: Colors.black, fontSize: 15)),
              Spacer(), // Spacer widget to push the arrow to the right
              IconButton(
                onPressed: () {},
                icon: Icon(IconlyLight.arrow_right_2),
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}

class General extends StatelessWidget {
  const General({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 1,
        child: Container(
          height: 40,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 5.0),
            child: Text(
              "General".toUpperCase(),
              style: TextStyle(fontSize: 18, color: Colors.white,letterSpacing: 1.0),
            ),
          ),
          decoration: BoxDecoration(color: Color(0xff2b2d42)),
        ),
      ),
    ]);
  }
}
