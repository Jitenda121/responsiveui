import 'package:flutter/material.dart';

class bottomios extends StatelessWidget {
  const bottomios({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .5,
      height: MediaQuery.of(context).size.height * .4,
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
                      fontSize: 18,
                      color: Colors.blue,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 13,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.check),
                        SizedBox(
                          width: 2,
                        ),
                        Text("Multiple profiles"),
                      ],
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.check),
                        SizedBox(
                          width: 2,
                        ),
                        Text("Creative "),
                      ],
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.check),
                        SizedBox(
                          width: 1,
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
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            )),
                        SizedBox(
                          width: 8,
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
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)))
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
