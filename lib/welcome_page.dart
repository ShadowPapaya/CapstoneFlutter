import 'package:capstone_1/auth_controller.dart';
import 'package:flutter/material.dart';


class WelcomePage extends StatelessWidget {
  String email;
  WelcomePage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
                width: w,
                height: h*0.30,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "img/signup.png"
                        ),
                        fit: BoxFit.cover
                    )
                ),
                child: Column(
                  children: [
                    SizedBox(height: h*0.15,),
                    CircleAvatar(
                      backgroundColor: Colors.white70,
                      radius: 60,
                      backgroundImage: AssetImage(
                          "img/profile1.png"
                      ),
                    )
                  ],
                )
            ),
            SizedBox(height: 50,),
            Container(
              width: w,
              margin: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "Welcome",
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color:Colors.black54
                      )
                  ),
                  Text(
                      email,
                      style: TextStyle(
                          fontSize: 18,
                          color:Colors.grey[500]
                      )
                  ),
                ],
              ),
            ),
            //SizedBox(height: 10,),
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
              children:[
                Card(
                  elevation: 20,
                  color: Colors.white70,
                  child:
                    Row(
                      children: [
                        Container(
                          child: Icon(Icons.lightbulb, color: Colors.black)
                        ),
                        Text(
                          "Lights",
                          style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color:Colors.black54
                          )
                        )
                      ],
                    )
                ),
                Card(
                    elevation: 20,
                    color: Colors.white70,
                    child:
                    Center(
                      child: Row(
                        children: [
                          Container(
                              child: Icon(Icons.ac_unit, color: Colors.black)
                          ),
                          Text(
                              "A.C.",
                              style: TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                  color:Colors.black54
                              )
                          )
                        ],
                      ),
                    )
                ),
                Card(
                    elevation: 20,
                    color: Colors.white70,
                    child:
                    Row(
                      children: [
                        Container(
                            child: Icon(Icons.blinds, color: Colors.black)
                        ),
                        Text(
                            "Blinds",
                            style: TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.bold,
                                color:Colors.black54
                            )
                        )
                      ],
                    )
                ),
                Card(
                    elevation: 20,
                    color: Colors.white70,
                    child:
                    Row(
                      children: [
                        Container(
                            child: Icon(Icons.heat_pump, color: Colors.black)
                        ),
                        Text(
                            "Geyser",
                            style: TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.bold,
                                color:Colors.black54
                            )
                        )
                      ],
                    )
                ),
                Card(
                    elevation: 20,
                    color: Colors.white70,
                    child:
                    Row(
                      children: [
                        Container(
                            child: Icon(Icons.lightbulb, color: Colors.black)
                        ),
                        Text(
                            "Fan",
                            style: TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.bold,
                                color:Colors.black54
                            )
                        )
                      ],
                    )
                ),
              ]
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                AuthController.instance.logOut();
              },
              child: Container(
                  width: w*0.3,
                  height: h*0.06,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage(
                              "img/loginbtn.png"
                          ),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Center(
                    child: Text(
                        "Sign out",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )
                    ),
                  )

              ),
            ),
          ],
        )
    );
  }
}
