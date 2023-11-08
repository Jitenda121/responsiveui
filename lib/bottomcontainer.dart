import 'package:flutter/material.dart';

class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 750,
      height: 100,
      // color: Colors.white,
      decoration: BoxDecoration(
        color: Colors.white, // Container background color
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Try Infoprofile for free",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    Icon(Icons.check),
                    SizedBox(
                      width: 2,
                    ),
                    Text("Multiple profiles"),
                    SizedBox(
                      width: 2,
                    ),
                    Icon(Icons.check),
                    SizedBox(
                      width: 2,
                    ),
                    Text("Creative "),
                    SizedBox(
                      width: 2,
                    ),
                    Icon(Icons.check),
                    SizedBox(
                      width: 2,
                    ),
                    Text("Build connections")
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 200.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        color: Colors.white,
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        //color: Colors.blue,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(7, 99, 198, 1),
                          // Colors.blue, // Container background color
                          borderRadius: BorderRadius.circular(
                              5), // Adjust the radius as needed
                        ),
                        child: Text("Sign up",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
