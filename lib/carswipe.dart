import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:imageview360/imageview360.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MaterialApp(
    home:DetailScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class paged extends StatelessWidget {
  const paged({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


    );
  }
}






class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DetailScreen> {

  List<ImageProvider> imageList = <ImageProvider>[];
  bool autoRotate = false;
  int rotationCount = 102;
  int swipeSensitivity = 2;
  bool allowSwipeToRotate = true;
  bool imagePrecached = true;


  @override
  void initState() {
    super.initState();
    updateImageList(context);
  }

  void updateImageList(BuildContext context) {
    for (int i = 1; i <= 102; i++) {
      imageList.add(AssetImage('assets/$i.png'));
    }
  }



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Container(

          color: Colors.white,
          child: Column(
            children: [
            SafeArea(
              child: Container(
                child: Text('PIC\'s', style:
                  TextStyle(
                    fontSize: 25,
                    fontFamily: 'Nunito'
                  ),),

              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,

              child: Container(

                alignment: Alignment.center,

                child: Row(
                  children: [


                    SafeArea(
                      child: Hero(
                        tag: 'audia8',

                          child: Container(
                            child:ClipRRect(

                                child: Image.asset('pics/aage.png',height: 210,)) ,
                          ),

                      ),
                    ),

                    SafeArea(



                          child: Container(
                            child:ClipRRect(

                                child: Image.asset('pics/audi.png',height: 210,)) ,
                          ),


                    ),
                    SafeArea(



                        child: Container(
                          child:ClipRRect(

                              child: Image.asset('pics/side.png',height: 210,)) ,

                      ),

                    ),
                    SafeArea(



                        child: Container(
                          child:ClipRRect(

                              child: Image.asset('pics/thodafront.png',height: 210,)) ,

                      ),

                    ),





                  ],
                ),

              ),

            ),


              SizedBox(height:60 ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),

                child:  ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ImageView360(
                    key: UniqueKey(),
                    imageList: imageList,
                    autoRotate: autoRotate,
                    rotationCount: rotationCount,
                    swipeSensitivity: swipeSensitivity,
                    allowSwipeToRotate: allowSwipeToRotate,
                    rotationDirection: RotationDirection.anticlockwise,
                    onImageIndexChanged: (currentImageIndex) {

                    },
                  ),
                ),
              ),
              Container(
                height: 200,

                child:Stack(
                  children: [

                    Positioned(
                      top: 20,
                      left: 50,
                      child: Container(

                        child: Text(
                          'Audi R8 GT',
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Nunito'
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 55,
                      child: Container(

                        child: Text(
                          'Fastest and coolest',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Nunito'
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top:80,
                      left: 55,
                      child: Container(

                        child: Text(
                          'Price :',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Nunito'
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top:80,
                      left: 115,
                      child: Container(

                        child: Text(
                          '₹2.30 Crore',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Nunito'
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                alignment: Alignment.center,
                child: Column(
                  children: [



                  ],
                ),
              ),


              Container(
                padding: EdgeInsets.symmetric(horizontal: 50,vertical: 50),
                child: Stack(
                  children: [

                    Container(

                      height:70,
                      decoration: BoxDecoration(
                    color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Positioned(
                      top: 25,
                      left: 106,
                      child: Container(
                        
                         child: Text('BOOK NOW',
                         style: TextStyle(
                           fontSize: 15,
                           fontFamily: 'Nunito',
                           color: Colors.white
                         ),),
                      ),
                    ),

                  ],
                ),
              ),
              //



            ],
          ),
        ),
      ),
    );
  }
}






















