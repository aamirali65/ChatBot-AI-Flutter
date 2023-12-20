import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010101),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/back.png'),
                fit: BoxFit.cover

              )
            ),
          ),
          Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text('Personal AI Buddy',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'circular'),textAlign: TextAlign.center,),
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  decoration: BoxDecoration(
                      color: Color(0xffC6F432),
                    borderRadius: BorderRadius.circular(50)
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Image(image: AssetImage('assets/images/Group.png')),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 50)
                    ,child: Text('How may I help you today!',
                  style: TextStyle(color: Colors.white,fontSize: 40,fontFamily: 'circular'),textAlign: TextAlign.center,)),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 100,vertical: 20),
                  child: Text('Get Started'),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
