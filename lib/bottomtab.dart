import 'package:flutter/material.dart';

class bottomtab1 extends StatelessWidget {
  const bottomtab1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // Container background color
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
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
                  height: 15,
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
                    Text("Build connections"),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
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
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(7, 99, 198, 1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text("Sign up",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
