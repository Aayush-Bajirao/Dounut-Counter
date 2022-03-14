import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: NinjaCard(),
    ));

class NinjaCard extends StatefulWidget {
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  //ninjaLevel
  int cl_level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 43, 43, 43),
        appBar: AppBar(
          title: Text('Dounut Counter'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 109, 109, 109),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1533910534207-90f31029a78e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                    radius: 125,
                  ),
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[800],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0.0, 0, 0, 5.0),
                child: Text('NAME',
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2.0,
                    )),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0.0, 0, 0, 30.0),
                child: Text('Tanjiro Kamado',
                    style: TextStyle(
                      color: Colors.amberAccent[200],
                      letterSpacing: 2.0,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0.0, 0, 0, 5.0),
                child: Text('Dounut Counts',
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2.0,
                    )),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0.0, 0, 0, 30.0),
                child: Text('${cl_level}',
                    style: TextStyle(
                      color: Colors.amberAccent[200],
                      letterSpacing: 2.0,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Container(
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        setState(() {
                          cl_level += 1;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text('Add Donut'),
                      ),
                      color: Colors.grey,
                    ),
                    RaisedButton(
                      onPressed: () {
                        setState(() {
                          if (cl_level > 0) {
                            cl_level -= 1;  
                          } else {
                            return null;
                          }                          
                        });},
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text('Drop Donut'),
                      ),
                      color: Colors.grey,
                    ),
                    RaisedButton(
                      onPressed: () {
                        setState(() {
                          cl_level = 0;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text('Reset Count'),
                      ),
                      color: Colors.grey,
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
