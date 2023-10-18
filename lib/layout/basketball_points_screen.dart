import 'package:flutter/material.dart';

class BasketballPointsScreen extends StatefulWidget {

  @override
  State<BasketballPointsScreen> createState() => _BasketballPointsScreenState();
}

class _BasketballPointsScreenState extends State<BasketballPointsScreen> {

  int teamAScore = 0;
  int teamBScore = 0;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Points Counter',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:
            [
              Column(
                children:
                [
                  Text(
                    'Team A',
                    style: TextStyle(
                        fontSize: 32,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    '$teamAScore',
                    style: TextStyle(
                        fontSize: 150,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  ElevatedButton(
                      onPressed: (){
                        setState(() {
                          teamAScore++;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50)
                      ),
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18
                        ),
                      )),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                      onPressed: (){
                        setState(() {
                          teamAScore+=2;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50)
                      ),
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                        ),
                      )),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                      onPressed: (){
                        setState(() {
                          teamAScore+=3;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50)
                      ),
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                        ),
                      )),

                ],
              ),
              Container(
                height: 350,
                child: VerticalDivider(
                  color: Colors.grey,
                  width: 10,
                  thickness: 1,
                ),
              ),
              Column(
                children:
                [
                  Text(
                    'Team B',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    '$teamBScore',
                    style: TextStyle(
                        fontSize: 150,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  ElevatedButton(
                      onPressed: (){
                        setState(() {
                          teamBScore++;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50)
                      ),
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                        ),
                      )),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                      onPressed: (){
                        setState(() {
                          teamBScore+=2;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50)
                      ),
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                        ),
                      )),
                  SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                      onPressed: (){
                        setState(() {
                          teamBScore+=3;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50)
                      ),
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                        ),
                      )),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: (){
                setState(() {
                  teamBScore = 0;
                  teamAScore = 0;
                });
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  minimumSize: Size(150, 50)
              ),
              child: Text(
                'Reset',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18
                ),
              )),
        ],
      ),
    );
  }
}


