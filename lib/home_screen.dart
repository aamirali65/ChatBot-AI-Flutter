import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff010101),
      appBar: AppBar(
        backgroundColor: const Color(0xff010101),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hi, Aamir',style: TextStyle(fontFamily: 'circular'),),
            SizedBox(width: 10,),
            Image(image: AssetImage('assets/images/icon.png'),width: 30),
          ],
        ),
        actions: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.png'),
          ),
          const SizedBox(width: 20,)
        ],
      ),
      drawer: const Drawer(),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('How may I help \nyou today?',style: TextStyle(color: Colors.white,fontSize: 40,fontFamily: 'circular'),),
            const SizedBox(height: 50,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('History',style: TextStyle(color: Colors.white,fontSize: 17,fontFamily: 'circular'),),
                Text('See all',style: TextStyle(color: Colors.grey,fontSize: 14,fontFamily: 'circular'),)
              ],
            ),
            const SizedBox(height: 20,),
            Container(
              height: 300,
              child: ListView.builder(
                itemCount: 3
                 , itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        color: Colors.white38
                    ),
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xff171717),
                  ),
                  child: ListTile(
                    titleAlignment: ListTileTitleAlignment.center,
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                          color: Color(0xffC6F432),
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage('assets/images/msg.png'))
                      ),
                    ),
                    title: const Text('I need some UI inspiration for dark...',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                    trailing: PopupMenuButton(
                        tooltip: '',
                        icon:const Icon(Icons.more_vert,color: Colors.white,),
                        itemBuilder: (context,) =>
                        const[
                          PopupMenuItem(value: '1', child: Text('Save')),
                          PopupMenuItem(value: '2', child: Text('Remove')),
                        ]),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
