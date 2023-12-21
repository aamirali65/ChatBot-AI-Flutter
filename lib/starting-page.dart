import 'package:chat_ai/home_screen.dart';
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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/main.png'),
            fit: BoxFit.fill
          ),
        ),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Container(
                child: const Text('Personal AI Buddy',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'circular'),textAlign: TextAlign.center,),
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                decoration: BoxDecoration(
                    color: const Color(0xffC6F432),
                    borderRadius: BorderRadius.circular(50)
                ),
              ),
              const SizedBox(height: 20,),
              const Image(image: AssetImage('assets/images/hero1.png')),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('How may I help \nyou today!',
              style: TextStyle(color: Colors.white,fontSize: 40,fontFamily: 'circular'),textAlign: TextAlign.center,),
          ),
              const SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 20),
                  child: const Text('Get Started',style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'circular'),),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
