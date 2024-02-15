import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Text("saojkfsaojasf",style: TextStyle(fontSize: getResponsiveFontSize(context, 16)),),
          ],
        ),
      )
    );
  }
  double getResponsiveFontSize(BuildContext context ,double fontSize){
    double scaleFactor = getScaleFactor(context);
    double responsiveFontSize = scaleFactor*fontSize;
    double lowerLimit = fontSize*0.8;
    double upperLimit = fontSize*1.2;
    print("res : $responsiveFontSize  , upper : $upperLimit , lower :$lowerLimit");
    return responsiveFontSize.clamp(lowerLimit, upperLimit);


  }

  double getScaleFactor(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    if (w <= 550) {
      return w/400;       // Mobile breakpoint
    }
      else if (w <= 900) {
      return w/700;       // Tablet breakpoint
    } else {
      return w/1000;      // Desktop breakpoint
    }

  }

}
