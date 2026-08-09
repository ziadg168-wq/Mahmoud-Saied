import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "محمود سعيد مداح",
        locale: const Locale('ar', 'EG'),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('ar', 'EG'),
          Locale('en', 'US'),
        ],
        home:Container(
          width: screenSize.width,
          height: screenSize.height,
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
            image: AssetImage("assets/bg.png"),
              fit: BoxFit.cover,
            )
          ),
          child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: screenSize.height*0.15,),
                  Image.asset("assets/p.png",width: screenSize.width*0.8,),
                  SizedBox(height: screenSize.height*0.01,),
                  Text("نتشرف بدعوتكم لحضور حفل زفافنا ",
                      style: GoogleFonts.arefRuqaa(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown[900],
                          decoration: TextDecoration.none
                      )),
                  Text("و مشاركتنا فرحتنا و ذلك يوم ",
                    style: GoogleFonts.arefRuqaa(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown[900],
                    decoration: TextDecoration.none
                  )),
                  Text("الاربعاء الموافق 19/8/2026",
                      style: GoogleFonts.arefRuqaa(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown[900],
                          decoration: TextDecoration.none
                      )),
                  Text("الساعة 9",
                      style: GoogleFonts.arefRuqaa(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown[900],
                          decoration: TextDecoration.none
                      )),
                  Text("في قاعة New Down Town",
                      style: GoogleFonts.arefRuqaa(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown[900],
                          decoration: TextDecoration.none
                      )),
                  SizedBox(height: screenSize.height*0.03,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned.fill(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                            child: Container(
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                        Container(
                          width: screenSize.width * 0.5,
                          height: screenSize.height * 0.06,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: Colors.white.withOpacity(0.15),
                                width: 1.5
                            ),
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          child: MaterialButton(
                            onPressed: () async {
                              final Uri whatsappUrl = Uri.parse('https://maps.app.goo.gl/nYd7yEEvmkgL2kLf6');

                              if (!await launchUrl(whatsappUrl, mode: LaunchMode.externalApplication)) {
                                throw Exception('Could not launch $whatsappUrl');
                              }
                            },
                            color: Colors.transparent,
                            elevation: 0,
                            highlightElevation: 0,
                            hoverElevation: 0,
                            focusElevation: 0,
                            splashColor: Colors.grey,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            textColor: Colors.black,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "عنوان القاعة Google maps",
                                    style: GoogleFonts.cairo(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.brown[900], // لون بني غامق يتناسب مع الذهبي
                                    )
                                ),
                                SizedBox(width: 10),
                                FaIcon(
                                  FontAwesomeIcons.locationPin,
                                  color: Colors.red,
                                  size: 20,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
          ),
        )
    );
  }
}


