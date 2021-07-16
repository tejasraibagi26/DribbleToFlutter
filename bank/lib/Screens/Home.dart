import 'package:bank/Screens/Login.dart';
import 'package:bank/Screens/Recents.dart';
import 'package:bank/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    height: size.height * .5,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 4),
                          color: primaryColor.withOpacity(.1),
                          blurRadius: 12,
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.menu),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.more_vert),
                            )
                          ],
                        ),
                        Image.asset(
                          "images/profile.png",
                          scale: 1.8,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Hira Riaz",
                          style: TextStyle(
                            color: primaryColor,
                            fontFamily: "RedHat",
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          "UX / UI Designer",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "RedHat",
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  " \$8900",
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontFamily: "RedHat",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Income",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "RedHat",
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 50,
                              width: 2,
                              color: Colors.grey.withOpacity(.15),
                            ),
                            Column(
                              children: [
                                Text(
                                  " \$5500",
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontFamily: "RedHat",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Expense",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "RedHat",
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 50,
                              width: 2,
                              color: Colors.grey.withOpacity(.15),
                            ),
                            Column(
                              children: [
                                Text(
                                  " \$890",
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontFamily: "RedHat",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Loan",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "RedHat",
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Overview",
                            style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.notifications_active_outlined,
                            color: Colors.black45,
                          )
                        ],
                      ),
                      Text(
                        "July 16, 2021",
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Payments(
                    size: size,
                    icon: Icons.arrow_upward_rounded,
                    title: "Sent",
                    subTitle: "Sending Payments to Clients",
                    cost: "150",
                  ),
                  Payments(
                    size: size,
                    icon: Icons.arrow_downward_rounded,
                    title: "Receive",
                    subTitle: "Receiving Salary from Company",
                    cost: "250",
                  ),
                  Payments(
                    size: size,
                    icon: Icons.arrow_downward_rounded,
                    title: "Receive",
                    subTitle: "Receiving Salary from Company",
                    cost: "250",
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: bgColor,
          elevation: 0,
          selectedItemColor: primaryColor,
          unselectedItemColor: primaryColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: 1,
          onTap: (val) {
            Navigator.of(context)
                .push(CupertinoPageRoute(builder: (context) => Recents()));
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.home_outlined,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.credit_card_outlined,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.add,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.price_change_outlined),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(Icons.person_outline),
            )
          ],
        ));
  }
}

class Payments extends StatelessWidget {
  const Payments({
    Key? key,
    required this.size,
    required this.title,
    required this.subTitle,
    required this.icon,
    required this.cost,
  }) : super(key: key);

  final Size size;
  final String title;
  final String subTitle;
  final IconData icon;
  final String cost;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 75,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            color: primaryColor.withOpacity(.1),
            blurRadius: 12,
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: primaryColor.withOpacity(.15),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  color: primaryColor.withOpacity(.1),
                  blurRadius: 12,
                )
              ],
            ),
            child: Icon(icon),
          ),
          Container(
            height: 50,
            width: size.width * .5,
            // color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          Text(
            "\$$cost",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
