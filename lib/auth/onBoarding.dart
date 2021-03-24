import 'package:flutter/material.dart';
import 'package:project_coba/auth/slider.dart';
import 'signIn.dart';

class OnBoarding extends StatefulWidget {
  @override
  OnBoardingState createState() => OnBoardingState();
}

class OnBoardingState extends State<OnBoarding> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    SliderPage(
      title: "Learn Online",
      description:
          "Online learning is being done because of the corono virus pandemic that is endemic in our country and online learning is the government's recommendation",
      image: "assets/img/png1.png",
    ),
    SliderPage(
      title: "Team Work",
      description:
          "here students will learn online automatically students will collaborate and be able to build good teamwork",
      image: "assets/img/png2.png",
    ),
    SliderPage(
      title: "Take care of health",
      description:
          "For students who are doing online learning, it is hoped that they will maintain their health and maintain their diet, and parents must supervise their children well",
      image: "assets/img/corona.png",
    ),
  ];

  _onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: _controller,
            itemCount: _pages.length,
            onPageChanged: _onChanged,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(_pages.length, (int index) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    height: 10,
                    width: (index == _currentPage) ? 30 : 10,
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: (index == _currentPage)
                            ? Color(0xfff438b73)
                            : Color(0xfff438b73).withOpacity(0.5)),
                  );
                }),
              ),
              InkWell(
                onTap: () {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 800),
                      curve: Curves.easeInOutQuint);
                },
                child: AnimatedContainer(
                  alignment: Alignment.center,
                  duration: Duration(milliseconds: 300),
                  height: 50,
                  width: (_currentPage == (_pages.length - 1)) ? 100 : 50,
                  decoration: BoxDecoration(
                      color: Color(0xfff438b73),
                      borderRadius: BorderRadius.circular(35)),
                  child: (_currentPage == (_pages.length - 1))
                      ? InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignIn()),
                            );
                          },
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 15,
                            ),
                          ),
                        )
                      : Icon(
                          Icons.navigate_next,
                          size: 50,
                          color: Colors.white,
                        ),
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ],
      ),
      // backgroundColor: Colors.blueGrey[900],
      // body: Container(
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //         image: AssetImage("assets/img/bckgrn1.png"), fit: BoxFit.cover),
      //   ),
      //   child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         Image.asset(
      //           'assets/img/Group.png',
      //           width: 200,
      //           height: 200,
      //         ),
      //         SizedBox(height: 24.0),
      //         Text(
      //           "WELCOME",
      //           style: TextStyle(
      //               fontSize: 30,
      //               fontFamily: 'Poppins',
      //               fontWeight: FontWeight.bold,
      //               color: Colors.white),
      //         ),
      //         SizedBox(height: 24.0),
      //         Text(
      //           "The biggest e-learning in Jonggol",
      //           style: TextStyle(
      //               fontSize: 20,
      //               fontFamily: 'Poppins',
      //               fontWeight: FontWeight.normal,
      //               color: Colors.white),
      //         ),
      //         SizedBox(height: 90),
      //         Padding(
      //           padding: const EdgeInsets.all(50),
      //           child: RaisedButton(
      //             hoverColor: Colors.teal,
      //             child: Padding(
      //               padding: EdgeInsets.only(
      //                   left: 100, right: 100, top: 15, bottom: 15),
      //               child: Text(
      //                 'Login with email',
      //                 // _isLoading ? 'Proccessing...' : 'LOGIN',
      //                 textDirection: TextDirection.ltr,
      //                 style: TextStyle(
      //                     color: Colors.white,
      //                     fontSize: 15.0,
      //                     decoration: TextDecoration.none,
      //                     fontWeight: FontWeight.normal,
      //                     fontFamily: "Poppins"),
      //               ),
      //             ),
      //             color: Color(0xfff438b73),
      //             disabledColor: Colors.grey,
      //             shape: new RoundedRectangleBorder(
      //                 borderRadius: new BorderRadius.circular(10)),
      //             onPressed: () {
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(builder: (context) => SignIn()),
      //               );
      //             },
      //           ),
      //         ),
      //         Row(
      //           children: [
      //             Column(
      //               children: [],
      //             ),
      //           ],
      //         )
      //       ]),
      // ),
    );
  }
}
