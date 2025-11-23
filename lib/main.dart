import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:object_detection/realtime/live_camera.dart';
import 'package:object_detection/static%20image/static.dart';
import 'package:tflite/tflite.dart';

List<CameraDescription> cameras;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();

  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String selectedLanguage = "english"; // Default language
  List<String> languages = [
    'english',
    'russian',
    'turkish',
    'german',
    'french',
    'italian',
    'spanish',
    'arabic',
    'japanese',
    'korean',
    'japanese',
    'azerbaijan',
    'indonesian',
    'portuguese',
    'chinese'
  ];

  @override
  void initState() {
    super.initState();
  }

  void openLanguagePopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: EdgeInsets.all(0),
          child: Container(
            padding: EdgeInsets.all(16.0),
            color: Color(0xFFF3F5F5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 40, bottom: 40),
                  child: Container(
                    width: double.infinity,
                    child: Text(
                      'I Want to Learn...',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 29,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(bottom: 40),
                    child: GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: languages.map((language) {
                        String imagePath = 'assets/images/$language.png'; // Assuming the image format is JPG
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedLanguage = language;
                            });
                            Navigator.pop(context); // Close the language popup
                          },
                          child: Column(
                            children: [
                              Container(
                                width: 100,
                                height: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  image: DecorationImage(
                                    image: AssetImage(imagePath),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                language.substring(0, 1).toUpperCase() +
                                    language.substring(1),
                                style: TextStyle(color: Colors.black87),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/images/bg.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 380,
                    height: 380,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ButtonTheme(
                          minWidth: 160,
                          child: RaisedButton(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Real Time Detection"),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      LiveFeed(cameras, selectedLanguage),
                                ),
                              );
                            },
                            color: Color(0xFFA5D7E8),
                          ),
                        ),
                        SizedBox(height: 10),
                        ButtonTheme(
                          minWidth: 170,
                          child: RaisedButton(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Detect from Image"),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      StaticImage(selectedLanguage),
                                ),
                              );
                            },
                            color: Color(0xFF576CBC),
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                color: Color(0xFF19376D),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Change Language:',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    RaisedButton(
                      onPressed: () {
                        openLanguagePopup(context);
                      },
                      color: Colors.transparent,
                      padding: EdgeInsets.zero,
                      child: Container(
                        width: 100,
                        height: 70,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                            AssetImage('assets/images/$selectedLanguage.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
