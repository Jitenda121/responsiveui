import 'package:flutter/material.dart';
import 'card.dart';
import 'bottomcontainer.dart';
//import 'package:flutter_spinkit/flutter_spinkit.dart';

class itachu extends StatefulWidget {
  const itachu({super.key});

  @override
  State<itachu> createState() => _itachuState();
}

class _itachuState extends State<itachu> {
  bool isHoveredVisitingCard = false;
  bool isHoveredShareMedia = false;
  bool isHoveredMultipleProfile = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
                color: Colors.white,
                child: const Column(
                  children: [],
                )),
          ),
          Positioned(
            right: 0,
            child: Container(
                height: 800,
                // width: 100,
                child: Image.asset('itachi.png')),
          ),
          Positioned(
            top: 0,
            child: Container(
              height: 600,
              child: Image.asset('left.png'),
            ),
          ),
          Positioned(
            top: 40,
            left: 150,
            child: Container(
              width: 1000,
              child: Image.asset(
                'logo1.png',
              ),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Meet Your Best",
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Conections",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      const Text(
                          "Build fast,easy & lifelong professional connections"),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'a.png',
                            width: 170,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'g.png',
                            width: 170,
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 60,
                      ),
                      responsiveCard1(),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 120,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: "Infoprofile Is designed  for  everyone ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' \n            InfoProfile provide ',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: ' you.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(
                        width: 150,
                      ),
                      MouseRegion(
                        onEnter: (_) {
                          setState(() {
                            isHoveredVisitingCard = true;
                          });
                        },
                        onExit: (_) {
                          setState(() {
                            isHoveredVisitingCard = false;
                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                            color: isHoveredVisitingCard
                                ? Colors.lightBlue[900]
                                : Colors.transparent,
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 6, 96, 169),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                  ),
                                  child: Image.asset('icon.png'),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  "Visiting Card",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.blue),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Share your visiting cards with the",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text("best connections all around the",
                                    style: TextStyle(fontSize: 15)),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text("world",
                                    style: TextStyle(fontSize: 15)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      MouseRegion(
                        onEnter: (_) {
                          setState(() {
                            isHoveredShareMedia = true;
                          });
                        },
                        onExit: (_) {
                          setState(() {
                            isHoveredShareMedia = false;
                          });
                        },
                        child: Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.width * 0.3,
                            // color: Colors.blue,
                            decoration: BoxDecoration(
                              color: isHoveredShareMedia
                                  ? Colors.lightBlue[900]
                                  : Colors.transparent,
                              // color: Colors.white,
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 6, 96, 169),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10)),
                                    ),
                                    child: Image.asset('link.png'),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    "Share Media",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.blue),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    "Share your favorite images,",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text("video or any link you feel like",
                                      style: TextStyle(fontSize: 15)),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text(
                                      "sharing with your connections or",
                                      style: TextStyle(fontSize: 15)),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text("community",
                                      style: TextStyle(fontSize: 15)),
                                )
                              ],
                            )),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      MouseRegion(
                        onEnter: (_) {
                          setState(() {
                            isHoveredMultipleProfile = true;
                          });
                        },
                        onExit: (_) {
                          setState(() {
                            isHoveredMultipleProfile = false;
                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                            color: isHoveredMultipleProfile
                                ? Colors.lightBlue[900]
                                : Colors.transparent,
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 6, 96, 169),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                  ),
                                  child: Image.asset('iconn.png'),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  "Multiple Profile",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.blue),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "You can choose to make multiple",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  left: 10.0,
                                ),
                                child: Text("profiles for your accounts.",
                                    style: TextStyle(fontSize: 15)),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 600,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.40,
                            height: MediaQuery.of(context).size.height * 0.40,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: 'You can create ',
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Multiple Profiles ',
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.lightBlue[900])),
                                      const TextSpan(
                                          text: 'For Your account.',
                                          style: TextStyle(
                                              height: 1.5,
                                              color: Colors.black,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                                //
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.012,
                                ),
                                const Text(
                                  "A domain that helps you develop your skills through building multiple portals to solve problems. All you need is a laptop  and an attitude to learn and progress.All you need is a laptop and an attitude to learn  and progress. We primarily deal with Web Dev ,App Dev and Blockchain elements.",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 17),
                                )
                              ],
                            ),
                          ),
                          Image.asset(
                            "vector.png",
                            width: 500,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 600,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('imageeee.png'),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.40,
                            height: MediaQuery.of(context).size.height * 0.40,
                            //width: MediaQuery.of(context).size.width * 0.30,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: 'Be ',
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold),
                                    /*defining default style is optional */
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Creative ',
                                          style: TextStyle(
                                              fontSize: 29,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.lightBlue[900])),
                                      const TextSpan(
                                          text:
                                              'in your own way by joining or building a community.',
                                          style: TextStyle(
                                              height: 1.0,
                                              color: Colors.black,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.012,
                                ),
                                Text(
                                  "Here we produce unusual ideas,reflecting the originality of the GitHub Community SRM. We build a tranformative experience for our members in the creative field dealing with UI/UX, VFX/GFX, Content Writing and Photography elements.",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 17),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Stack(children: [
                      Container(
                        height: 400,
                        color: const Color.fromRGBO(7, 99, 198, 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Download our App from ",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'google1.png',
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.02,
                                    ),
                                    Image.asset(
                                      'a.png',
                                      width: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .198,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'transwer.png',
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height:
                                      MediaQuery.of(context).size.height * 0.4,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Image.asset('stack1.png'),
                      ),
                      Positioned(
                          top: 250,
                          left: 1300,
                          child: Container(child: Image.asset('stack2.png')))
                    ]),
                  )
                ],
              ),
              Stack(
                children: [],
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 600,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            '1234.png',
                            width: 500,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.40,
                            height: MediaQuery.of(context).size.height * 0.40,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: 'Make ',
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                    /*defining default style is optional */
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'friends ',
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                      TextSpan(
                                          text:
                                              'by Building connections that are relevent to you.',
                                          style: TextStyle(
                                              height: 1,
                                              color: Colors.black,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.012,
                                ),
                                const Text(
                                  "The best domain for a real-time experience of the corporate world.Improving your communication and time management skills is the main prospect. PR, Sponsorship, Social media handling, Treasury, and Marketing are elements of this domain.",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 17),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 320,
                      color: Color.fromRGBO(7, 99, 198, 1),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                //width: 500,
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: 270,
                                color: Color.fromRGBO(7, 99, 198, 1),

                                child: Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'info.png',
                                          width: 150,
                                        ),
                                        Text(
                                          'Not a Normal app,its unique!',
                                          //stringName.normalApp,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          "Services are provided everywhere.",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset("face.png"),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Image.asset("linked.png"),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Image.asset("insta.png")
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.03),
                                    Column(
                                      // crossAxisAlignment:
                                      //     CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Text(
                                          "Features",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 24),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "View Feeds",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Make Connections",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Create Companies",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          ' Mobile App',
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.01,
                              ),
                              Container(
                                height: 200,
                                width: 1,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.02,
                              ),
                              Container(
                                //width: 200,
                                width: MediaQuery.of(context).size.width * 0.15,
                                height: 270,
                                color: Color.fromRGBO(7, 99, 198, 1),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 80.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Links",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w900,
                                            fontSize: 24),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Privacy policy",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Terms & Condition",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 200,
                                width: 1,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.02,
                              ),
                              Container(
                                //width: 200,
                                width: MediaQuery.of(context).size.width * 0.15,
                                height: 270,
                                color: Color.fromRGBO(7, 99, 198, 1),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 80.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        " Company",
                                        //stringName.company,,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w900,
                                            fontSize: 24),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "About Us",
                                        // stringName.about,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Contact Us",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )
                                      //Text("Terms & Conditions"),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 200,
                                width: 1,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.02,
                              ),
                              Container(
                                //width: 200,
                                width: MediaQuery.of(context).size.width * 0.15,
                                height: 270,
                                color: Color.fromRGBO(7, 99, 198, 1),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 80.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Help & Support",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w900,
                                            fontSize: 24),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Getting started fAQ",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      //Text("Terms & Conditions"),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: 0.5,
                            width: MediaQuery.of(context).size.width * 0.8,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.015,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Copyright infoprofile LTD.",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.10,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "All Right reserved",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          Positioned(left: 280, top: 3400, child: bottom()),
        ],
      ),
    ));
  }
}
