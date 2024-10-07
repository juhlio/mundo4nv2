import 'package:explore_mundov2/screens/home_screen.dart';
import 'package:explore_mundov2/widgets/post_app_bar.dart';
import 'package:explore_mundov2/widgets/post_bottom_bar.dart';
import 'package:flutter/material.dart';

class ContatoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
        body: Column(
      children: <Widget>[
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          },
          child: Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                  )
                ]),
            child: Icon(
              Icons.arrow_back,
              size: 28,
            ),
          ),
        ),
        Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Image.asset('images/agencia.jpg'),
          ],
        ),
        IntrinsicHeight(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: themeData.dividerColor,
                ),
              ),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[],
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('(81)9555-1234'),
                                Text(
                                  'Whatsapp',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            child: Icon(
                              Icons.message,
                              color: themeData.primaryColor,
                            ),
                            height: 60,
                            width: 60,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('(81)3555-6789'),
                                Text(
                                  'Unidade Recife',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            child: Icon(
                              Icons.call,
                              color: themeData.primaryColor,
                            ),
                            height: 60,
                            width: 60,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('(87)3555-6788'),
                                Text(
                                  'Unidade Joao Pessoa',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            child: Icon(
                              Icons.call,
                              color: themeData.primaryColor,
                            ),
                            height: 60,
                            width: 60,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('exploremundo@gmail.com'),
                              ],
                            ),
                          ),
                          SizedBox(
                            child: Icon(
                              Icons.email,
                              color: themeData.primaryColor,
                            ),
                            height: 60,
                            width: 60,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
