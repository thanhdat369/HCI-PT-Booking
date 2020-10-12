import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../theme/colors.dart';

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.kDark,
      body: 
      profileView()
    );
  }

  Widget profileView() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(70, 0, 30, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'PROFILE',
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffc3cbce),
                    fontFamily: "NotoSans"),
              ),
              Container(height: 48, width: 48)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
          child: Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 100,
                child: ClipOval(
                  child: Image.asset(
                    'asset/images/background/mans.jpg',
                    height: 250,
                    width: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  bottom: 1,
                  right: 1,
                  child: Container(
                    height: 38,
                    width: 38,
                    child: Icon(
                      Icons.edit,
                      color: Colors.black,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ))
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(70, 0, 20, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Tony Packer',
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffc3cbce),
                    fontFamily: "NotoSans"),
              ),
              Container(height: 28, width: 48)
            ],
          ),
        ),
        Expanded(
            child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: const Color(0xff1d1d1d)
              ),
          child: Column(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                child: Container(
                  height: 60,
                  child: Align(
                    
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Client',
                        style: TextStyle(color:  const Color(0xffc3cbce),
                            fontWeight: FontWeight.w500,
                            fontFamily: "NotoSans",
                            fontStyle:  FontStyle.normal,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.all(Radius.circular(20)),
                  //     border: Border.all(width: 1.0, color: Colors.white70)),
                ),
              ),
              
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                child: Container(
                  height: 60,
                  child: Align(
                    
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        ' Parker146@gmail.com',
                        style: TextStyle(color:  const Color(0xffc3cbce),
                            fontWeight: FontWeight.w500,
                            fontFamily: "NotoSans",
                            fontStyle:  FontStyle.normal,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  
                ),
              ),

            Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                child: Container(
                  height: 60,
                  child: Align(
                   
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '+84 909 228 563',
                        style: TextStyle(color:  const Color(0xffc3cbce),
                            fontWeight: FontWeight.w500,
                            fontFamily: "NotoSans",
                            fontStyle:  FontStyle.normal,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  
                ),
              ),

            Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
                child: Container(
                  height: 60,
                  child: Align(
                    //alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Male',
                        style: TextStyle(color:  const Color(0xffc3cbce),
                            fontWeight: FontWeight.w500,
                            fontFamily: "NotoSans",
                            fontStyle:  FontStyle.normal,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.all(Radius.circular(20)),
                  //     border: Border.all(width: 1.0, color: Colors.white70)),
                ),
              ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               FlatButton(
                 onPressed: () => {},
                 color: Colors.red,
                 padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                 child: Row( // Replace with a Row for horizontal icon + text
                   children: <Widget>[
                     //Icon(Icons.add),
                     Text(
                        "LOG OUT",         
                        )
                   ],
                 ),
               ),
             ],
           ),
          
          

            ],
            
          ),
        ))
      ],
    );
  }

}