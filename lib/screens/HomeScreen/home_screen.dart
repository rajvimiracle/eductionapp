// import 'package:flutter/material.dart';
//
// class HomePage extends StatelessWidget {
//
//   List catNames = [
//     "Category",
//     'Classes',
//     'Free Course'
//     'BookStore',
//     'Live Course',
//     'LeaderBoard',
//   ];
//
//  /* List<Color> catColors = [
//     Color(0xFFFFCF2F),
//     Color(0xFF6FE08D),
//     Color(0xFF61BDFD),
//     Color(0xFFFC7F7F),
//     Color(0xFFCB84FB),
//     Color(0xFF78E667),
//   ];
//
//   List<Icon> catIcons = [
//     Icon(Icons.category,color: Colors.white,size: 30,),
//     Icon(Icons.video_library,color: Colors.white,size: 30,),
//     Icon(Icons.assignment,color: Colors.white,size: 30,),
//     Icon(Icons.store,color: Colors.white,size: 30,),
//     Icon(Icons.play_circle_fill,color: Colors.white,size: 30,),
//     Icon(Icons.emoji_events,color: Colors.white,size: 30,),
//   ];*/
//   List<Color> catColors = [
//     Color(0xFFFFCF2F),
//     Color(0xFF6FE08D),
//     Color(0xFF61BDFD),
//     Color(0xFFFC7C7F),
//     Color(0xFFCB84FB),
//     Color(0xFF78E667),
//   ];
//
//   List<Icon> catIcons = [
//     Icon(Icons.category, color: Colors.white,size: 30,),
//     Icon(Icons.video_library, color: Colors.white,size: 30,),
//     Icon(Icons.assignment, color: Colors.white,size: 30,),
//     Icon(Icons.store, color: Colors.white,size: 30,),
//     Icon(Icons.play_circle_fill, color: Colors.white,size: 30,),
//     Icon(Icons.emoji_events, color: Colors.white,size: 30,),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [
//           Container(
//             padding: EdgeInsets.only(
//               top: 15,
//               left: 15,
//               right: 15,
//               bottom: 10,
//             ),
//             decoration: BoxDecoration(
//               color: Color(0xFF674AEF),
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(20),
//                 bottomRight: Radius.circular(20),
//               ),
//             ),
//             child: Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Icon(
//                       Icons.dashboard,
//                       size: 30,
//                       color: Colors.white,
//                     ),
//                     Icon(
//                       Icons.notifications,
//                       size: 30,
//                       color: Colors.white,
//                     ),
//
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(left: 3, bottom: 15),
//                   child: Text("Hi, Programmer",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,letterSpacing: 1,wordSpacing: 2,color: Colors.white),),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(top: 5,bottom: 20),
//                   width: MediaQuery.of(context).size.width,
//                   height: 55,
//                   alignment: Alignment.center,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: "Search here.....",
//                       hintStyle: TextStyle(color: Colors.black.withOpacity(0.5),),
//                       prefixIcon: Icon(Icons.search_rounded,size: 25,),
//
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Padding(padding: EdgeInsets.only(top: 20,left: 15,right: 15),
//             child: Column(
//               children: [
//                 /*GridView.builder(
//                   itemCount: catNames.length,
//                   shrinkWrap: true,
//                     physics: NeverScrollableScrollPhysics(),
//                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 3,
//                       childAspectRatio: 1.1,
//                     ),
//                   itemBuilder: (context,index){
//                     return Column(
//                       children: [
//                         Container(
//                           height: 60,
//                           width: 60,
//                           decoration: BoxDecoration(
//                             color: catColors[index],
//                             shape: BoxShape.circle,
//                           ),
//                           child: Center(
//                             child: catIcons[index],
//                           ),
//                         ),
//                       ],
//                     );
//                   },
//                 ),*/
//                 GridView.builder(
//                   itemCount: catNames.length,
//                   shrinkWrap: true,
//                   physics: NeverScrollableScrollPhysics(),
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 3,
//                     crossAxisSpacing: 1.1,
//                   ),
//                   itemBuilder: (context, index){
//                     return Column(
//                       children: [
//                         Container(
//                           height: 60,
//                           width: 60,
//                           decoration: BoxDecoration(
//                             color: catColors[index],
//                             shape: BoxShape.circle,
//                           ),
//                           child: Center(
//                             child: catIcons[index],
//                           ),
//                         ),
//                         SizedBox(height: 10,),
//                         Text(
//                           catNames[index],
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                       ],
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
// }


import 'package:eductionapp/screens/HomeScreen/jsonlist.dart';
import 'package:eductionapp/screens/course_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});


TextEditingController serachContrller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15,left: 15, right: 15,bottom: 10),
            decoration: BoxDecoration(
              color: Color(0xFF674AEF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight:  Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 20,),

                Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text("Hi, Programmer",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,letterSpacing: 1,wordSpacing: 2,color: Colors.white),),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    controller: serachContrller,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search here.....",
                      hintStyle: TextStyle(color: Colors.black.withOpacity(0.5),),
                      prefixIcon: Icon(Icons.search_rounded,size: 25,),

                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20,left: 15, right: 15),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: catNames.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 1.1,
                  ),
                  itemBuilder: (context, index){
                    return Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: catColors[index],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: catIcons[index],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          catNames[index],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Courses",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 23),),
                    Text("See All",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Color(0xFF674AEF),),),

                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                GridView.builder(
                  itemCount: imgList.length,
                  shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 4/5.5,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CourseScreen(imgList[index])));

                      },
                      child: Container(
                        height: 200,
                        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.all(10),
                              child: Image.asset("assets/images/${imgList[index]}.png",height: 90,width: 90,),
                            ),
                            SizedBox(height: 10,),
                            Text(imgList[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black.withOpacity(0.6),),),
                            SizedBox(height: 10,),
                            Text("55 Videos",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black.withOpacity(0.5),),),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 32,
        showSelectedLabels: true,
        selectedItemColor:  Color(0xFF674AEF),
        selectedFontSize: 18,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.assignment),label: 'Courses'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'WishList'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account'),
        ],
      ),
    );
  }
}
