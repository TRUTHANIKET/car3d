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
                    onImageIndexChanged: (currentImageIndex) {
                      print("currentImageIndex: $currentImageIndex");
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
                      top:120,
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
                      top:120,
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
              //



            ],
          ),
        ),
      ),
    );
  }
}






















