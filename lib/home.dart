import 'package:flutter/material.dart';
import 'package:health/tab_1.dart';
import 'package:health/tab_2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int pageIndex = 0;
  final pages = [
    const HomeTab(),
    const SettingTab()
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:const Color(0xff000000),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNvaBar(context),
    );
  }
  Container buildMyNvaBar(BuildContext context){
    return Container(
      height: 70,
      decoration: const BoxDecoration(
        color: Color(0xff1a1a1a),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
      ),
      child: Container(
        margin:const EdgeInsets.only(right: 10, left: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                IconButton(
                  enableFeedback: false,
                    onPressed: (){
                  setState(() {
                    pageIndex = 0;
                  });
                }, icon: pageIndex == 0 ? const Icon(Icons.home_filled, size: 35, color: Colors.yellow,) :
                const Icon(Icons.home_filled, size: 35, color: Colors.white,)),
                const Text("Home" , style: TextStyle(color: Colors.white)),
              ],
            ),
            Column(
              children: [
                IconButton(
                    enableFeedback: false,
                    onPressed: (){
                      setState(() {
                        pageIndex = 1;
                      });
                    }, icon: pageIndex == 1 ? const Icon(Icons.settings, size: 35, color: Colors.yellow,) :
                const Icon(Icons.settings, size: 35, color: Colors.white,)),
                const Text("Setting" , style: TextStyle(color: Colors.white)),
              ],
            )
        ],),
      ),
    );
  }

}
