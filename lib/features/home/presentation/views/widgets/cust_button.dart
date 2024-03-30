import 'package:flutter/material.dart';

class CustButton extends StatelessWidget {
 final String text ;
 final Color color ;
 final TextStyle textStyle ;
  const CustButton({Key? key, required this.text, required this.color, required this.textStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style:  ButtonStyle(
        elevation: const MaterialStatePropertyAll(0),
        backgroundColor: MaterialStatePropertyAll(color),
        shape: const MaterialStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))
        )),
      ),
        onPressed: () {

        }, child:  Padding(
          padding:  const EdgeInsets.all(15.0),
          child: Text(text,style: textStyle,textAlign: TextAlign.center, ),
        ));
  }
}
