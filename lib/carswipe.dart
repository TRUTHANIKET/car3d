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
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,

        backgroundColor: Colors.white,
        elevation: 0,
        actions: [Image.asset("assets/ic_search.png")],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                height: size.width - 30,
                child: Stack(
                  children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Image.asset("assets/ring.png"),
                        )),
                    ImageView360(
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
                  ],
                ),
              ),
              Container(
                  width: size.width,
                  decoration: new BoxDecoration(

                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0),
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              text: "Nike Air Max Pre-Day",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber,),
                            RichText(
                              textAlign: TextAlign.start,
                              text: const TextSpan(
                                  text: "5.0",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16.0,)),
                            ),
                            SizedBox(width: 5,),
                            RichText(
                              textAlign: TextAlign.start,
                              text: const TextSpan(
                                  text: "(1125 Review)",
                                  style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 16.0,)),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              text: "Men's sneakers are made with leather upper features for durability and support, while perforations provide airflow during every shoe wear.",
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 16.0,)),
                        ),
                        SizedBox(height: 10,),
                        RichText(
                          textAlign: TextAlign.start,
                          text: const TextSpan(
                              text: "Select Color :",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 20.0,)),
                        ),
                        SizedBox(
                          height: 80,
                          child: ListView(
                            scrollDirection: Axis.horizontal,

                          ),
                        ),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}






















