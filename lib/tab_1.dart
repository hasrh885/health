import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(
                Icons.add_box_outlined,
                size: 35,
                color: Colors.white,
              ),
              Icon(
                Icons.notifications_none_outlined,
                size: 35,
                color: Colors.white,
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Text("14,522", style: TextStyle(color: Colors.white)),
                    SizedBox(
                      height: 10,
                    ),
                    Text("SCORE", style: TextStyle(color: Colors.white))
                  ],
                ),
                Column(
                  children: const [
                    Text("14,522", style: TextStyle(color: Colors.white)),
                    SizedBox(
                      height: 10,
                    ),
                    Text("SCORE", style: TextStyle(color: Colors.white))
                  ],
                ),
                Column(
                  children: const [
                    Text("14,522", style: TextStyle(color: Colors.white)),
                    SizedBox(
                      height: 10,
                    ),
                    Text("SCORE", style: TextStyle(color: Colors.white))
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
              child: const Text("Color Picker:Color Picker: With this online tool you can upload an image or provide a website URL and get the RGB Color, HEX Color and HSL Color code.Color Picker:Color Picker: With this online tool you can upload an image or provide a website URL and get the RGB Color, HEX Color and HSL Color code.",  style: TextStyle(color: Colors.white, fontSize: 16))),
          const SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 120,
                    child: Card(
                      color:const  Color(0xff1a1a1a),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          child: Row(
                            children: const[
                             Icon(Icons.add, color: Colors.white,),
                              Text("Color Picker" , style: TextStyle(color: Colors.white)),
                              Spacer(),
                              Text("5.0", style: TextStyle(color: Colors.white))
                          ],),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    ));
  }

}
