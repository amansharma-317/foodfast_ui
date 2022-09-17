import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const FOODLIST = [
  {'image': 'burger.jpg', 'name': 'Burger'},
  {'image': 'pizza.jpg', 'name': 'Pizza'},
  {'image': 'fries.jpg', 'name': 'Fries'},
  {'image': 'biryani.jpg', 'name': 'Biryani'},
];

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffF8FAFD),
          resizeToAvoidBottomInset: false,
          body: LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  margin: EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                            ),
                          ],
                        ),
                        child: TextField(
                          style: TextStyle(color: Color(0xff8D9797)),
                          cursorRadius: Radius.circular(10.0),
                          cursorColor: Color(0xff8D9797),
                          decoration: InputDecoration(
                            hintText: 'Search Food Items',
                            hintStyle: TextStyle(
                                color: Color(0xff8D9797),
                            ),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0), borderSide: BorderSide.none),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0xff8D9797),
                              size: 40,
                            )
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //Breakfast good deal - second part of the main column
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              child: Image.asset('assets/images/image1.jpg'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Column(
                              children: [
                                Text(
                                    'BREAKFAST GOOD DEALS',
                                  style:
                                  GoogleFonts.kanit(fontStyle: FontStyle.normal, fontSize: height * 0.03, color: Colors.white),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Discount upto 60%',
                                  style:
                                    GoogleFonts.kanit(fontStyle: FontStyle.italic, fontSize: 20, color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),

                      // scrolling view + food of the day & view all column


                      Stack(
                        children: [
                          Positioned(
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              margin: const EdgeInsets.only(top: 10.0),
                              height: constraints.maxWidth *0.37,
                              width: constraints.maxWidth,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                children: FOODLIST.map((category) => Container(
                                  margin: const EdgeInsets.only(right: 2.0),
                                  width: constraints.maxWidth * 0.25,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(16.0),
                                            child: Image.asset(
                                                "assets/images/${category['image']}",
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            "${category['name']}",
                                            style: GoogleFonts.kanit(fontStyle: FontStyle.normal,fontSize: 20, color: Colors.black),
                                          )
                                        ]
                                      ),
                                    )
                                  ),
                                )).toList(),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),

                      //food of the day and view all section
                      Row(
                        children: [
                          Container(
                            child: Text(
                              'Food of the day',
                              style: GoogleFonts.getFont('Kanit', fontSize: 25, fontWeight: FontWeight.w700, color: Color(0xff81B622)),
                            ),
                            width: constraints.maxWidth * 0.6,
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'View All',
                                style: GoogleFonts.getFont('Kanit', fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                            ),
                          )
                        ],
                      ),

                      SizedBox(height: 10),

                      // the listview vertically scrollable
                      Expanded(
                          child: GridView.count(
                            childAspectRatio: 1 / 1.3,
                            primary: false,
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            padding: const EdgeInsets.all(5),
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(10),
                                  color: Color(0xffDCEEC8),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Expanded(
                                          child: ClipRRect(
                                            child: Image.asset('assets/images/burgerking.jpg'),
                                          ),
                                        ),
                                        Text(
                                          'Burger king',
                                          style: GoogleFonts.getFont('Kanit', fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
                                        ),
                                      ],
                                    ),

                                  ],
                                )
                              ),
                              Container(
                                  padding: const EdgeInsets.all(10),
                                  color: Color(0xffDCEEC8),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          Expanded(
                                            child: ClipRRect(
                                              child: Image.asset('assets/images/kfc.jpg'),
                                            ),
                                          ),
                                          Text(
                                            'KFC',
                                            style: GoogleFonts.getFont('Kanit', fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
                                          ),
                                        ],
                                      ),

                                    ],
                                  )
                              ),
                              Container(
                                  padding: const EdgeInsets.all(10),
                                  color: Color(0xffDCEEC8),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          Expanded(
                                            child: ClipRRect(
                                              child: Image.asset('assets/images/mcdonalds.jpg'),
                                            ),
                                          ),
                                          Text(
                                            'McDonalds',
                                            style: GoogleFonts.getFont('Kanit', fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
                                          ),
                                        ],
                                      ),

                                    ],
                                  )
                              ),
                              Container(
                                  padding: const EdgeInsets.all(10),
                                  color: Color(0xffDCEEC8),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          Expanded(
                                            child: ClipRRect(
                                              child: Image.asset('assets/images/dominos.jpg'),
                                            ),
                                          ),
                                          Text(
                                            'Dominos',
                                            style: GoogleFonts.getFont('Kanit', fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black),
                                          ),
                                        ],
                                      ),

                                    ],
                                  )
                              ),
                            ],
                      )


                      ),
                      BottomNavigationBar(
                        type: BottomNavigationBarType.fixed,
                        selectedFontSize: 13,
                        unselectedFontSize: 13,
                        selectedItemColor: Color(0xff81B622),
                        iconSize: 30,
                        items: [
                          BottomNavigationBarItem(
                            label: 'Home',
                            icon: Icon(Icons.home),
                          ),
                          BottomNavigationBarItem(
                            label: 'My Account',
                            icon: Icon(Icons.account_circle_outlined),
                          )
                        ],
                      )
                    ],
                  )


                );



              },
          ),
        )
    );
  }
}
