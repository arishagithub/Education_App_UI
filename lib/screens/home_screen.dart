import 'package:creating_ui/screens/course_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List catNames = [
    "Category",
    'Classes',
    'Free Course',
    'BookStore',
    'Live Course',
    'LeaderBoard',
  ];
  List<Color> catColors = [
    Color(0XFFFFCF2F),
    Color(0XFF6FE08D),
    Color(0XFF61BDFD),
    Color(0XFFFC7F7F),
    Color(0XFFCBB4FB),
    Color(0XFF78e667),
  ];
  List<Icon> catIcons = [
    Icon(color: Colors.white,size: 30,Icons.category,),
    Icon(color: Colors.white,size: 30,Icons.video_library,),
    Icon(color: Colors.white,size: 30,Icons.assignment,),
    Icon(color: Colors.white,size: 30,Icons.store,),
    Icon(color: Colors.white,size: 30,Icons.play_circle_fill,),
    Icon(color: Colors.white,size: 30,Icons.emoji_events,),
  ];
  List imgList = [
    'Flutter',
    'React Native',
    'Python',
    'C#'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: ListView(
             children: [
               Container(
                 padding: EdgeInsets.only(
                   top: 15,left: 15,bottom: 10,right: 15,
                 ),
                 decoration: BoxDecoration(
                   color: Colors.teal,
                   borderRadius: BorderRadius.only(
                     bottomLeft: Radius.circular(20),
                     bottomRight: Radius.circular(20),
                   ),
                 ),
                 child: Column(
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
                         padding: EdgeInsets.only(bottom: 15),
                         child: Text(
                           "Hi Programmer",
                           style: TextStyle(
                             fontSize: 25,
                             fontWeight: FontWeight.w600,
                             letterSpacing: 1,
                             wordSpacing: 2,
                             color: Colors.white,
                           ),
                         ),
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
                         decoration: InputDecoration(
                           border: InputBorder.none,
                           hintText: "Search Here...",
                           hintStyle: TextStyle(
                             color: Colors.black.withOpacity(0.5),
                           ),
                           prefixIcon: Icon(Icons.search,size: 25,),
                         ),
                       ),
                     )
                   ],
                 ),
               ),
               Padding(padding: EdgeInsets.only(
                 top: 20,left: 15,right: 15,
               ),
               child: Column(
                 children: [
                   GridView.builder(
                     itemCount: 6,
                     shrinkWrap: true,
                     physics: ClampingScrollPhysics(),
                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 3,
                     childAspectRatio: 1.1,
                   ),
                    itemBuilder: (context,index){
                       return Column(
                         children: [
                           Container(
                             width: 60,
                             height: 60,
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
                               color: Colors.black.withOpacity(0.7),
                             ),
                           )
                         ],
                       );
                    },
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(
                         "Courses",
                         style: TextStyle(
                           fontSize: 23,
                           fontWeight: FontWeight.w600,
                         ),
                       ),
                       Text(
                         "See All",
                         style: TextStyle(
                           fontSize: 18,
                           fontWeight: FontWeight.w500,
                           color: Colors.teal,
                         ),
                       )
                     ],
                   ),
                   SizedBox(height: 10,),
                   GridView.builder(
                     itemCount: imgList.length,
                     shrinkWrap: true,
                       physics: ClampingScrollPhysics(),
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                           crossAxisCount: 2,
                           childAspectRatio: (MediaQuery.of(context).size.height-50-25)/(4*240),
                           mainAxisSpacing: 10,
                           crossAxisSpacing: 10,
                       ),
                       itemBuilder:(context,index){
                          return  InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> CourseScreen(img:imgList[index],)));
                              },
                              child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 25,horizontal: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black12.withOpacity(0.1),
                                  ),
                                  child: Column(
                                    children: [
                                   Image.asset("images/${imgList[index]}.png",
                                      width: 100,
                                        height: 100,
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                        imgList[index],
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black.withOpacity(0.6),
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                        "55 Videos",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                          );
                       }
                   ),
                 ],
               ),
               )
             ],
           ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 32,
            selectedItemColor: Colors.teal,
            selectedFontSize: 18,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.assignment),label: 'Courses'),
              BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Wishlist'),
              BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account'),
            ],
        ),
    );
  }
}
