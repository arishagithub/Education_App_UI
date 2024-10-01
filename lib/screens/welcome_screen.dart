import 'package:creating_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/1.6,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(70),
                    )
                  ),
                  child: Center(
                    child: Image.asset("images/books.png",scale: 0.8,),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child:Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.666,
                decoration: BoxDecoration(
                  color: Colors.teal,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child:Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.666,
                padding: EdgeInsets.only(top: 40,bottom: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                  ),
                ),
                child: Column(
                  children: [
                    Text("Learning is everything",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                    ),),
                    SizedBox(height: 15,),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text("Learning with Pleasure with Education App,Wherever you are.",textAlign: TextAlign.center,style: TextStyle(
                      fontSize: 17,
                      color: Colors.black.withOpacity(0.6),
                    ),),
                    ),
                    SizedBox(height: 60,),
                    Material(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 80,vertical: 15),
                          child: Text("Get Start",style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
