

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:water/random_text.dart';

class Information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffC0C0C0),
        title: Text('Hi Cris!'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.black),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
              SizedBox(height: 10.0,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/aurora.png"),
                    fit: BoxFit.cover,
                  ),
                borderRadius: BorderRadius.all(Radius.circular(16.0))
                ),
                  child: Column(
                    children: [
                      Text('Fun Fact!', style:TextStyle(color: Colors.white, fontSize: 36.0),),
                      Text(facts[Random().nextInt(facts.length)], style:
                      TextStyle(color: Colors.white, fontSize: 36.0),),
                    ],
                  )),
              ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    children: [
                      IconButton(icon: Icon(Icons.settings, color: Color(0xffFFD700),size: 36.0,), onPressed: (){}),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20.0, left: 30.0),
                  child: Text('Drink More Water!',
                    style:
                    TextStyle(color: Colors.white,
                        fontSize: 36.0),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 36.0, right: 36.0, bottom: 180.0),
                  child: LinearProgressIndicator(value: 0.5,minHeight: 8,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
