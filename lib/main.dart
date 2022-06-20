import 'package:car3d/carswipe.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';




void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MaterialApp(
    home:paged(),
    debugShowCheckedModeBanner: false,
  ));
}

class paged extends StatefulWidget {
  const paged({Key? key}) : super(key: key);

  @override
  State<paged> createState() => _pagedState();
}

class _pagedState extends State<paged> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      child: Column(
        children: [
          Container( height: 180,

          decoration: BoxDecoration(



          ),
          child: SafeArea(
            child: Stack(

              children: [
                Positioned(

                top: 15,
                  left: 25,
                  child: Container(

                    child: Text('Hello',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                     
                    ),),
                  ),
                ),
                Positioned(

                  top: 30,
                  left: 25,
                  child: Container(

                    child: Text('Aniket',
                      style: TextStyle(
                          fontFamily: 'quicky',

                        fontSize: 25

                      ),),
                  ),
                ),

              ],
            ),
          ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(), ),);
            },
            child: Stack(
              children: [
                Container(

                  height: 250,

                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: Offset(1,2),
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                
                Container(
                  
                  alignment: Alignment.center,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20)

                      ,

                      child: Hero(
                        tag: 'audia8',
                          child: Image.asset('pics/aage.png',height: 200,))),

                ),
                Positioned(

                  top: 210,
                  left:140,
                  right: 0,
                  child: Container(

                    child: Text('AUDI A8',
                      style: TextStyle(
                          fontFamily: 'quicky',

                          fontSize: 25

                      ),),
                  ),
                ),
              ],
            ),
          ),
          ),
        ],
      ),
    ),

    );
  }
}



























