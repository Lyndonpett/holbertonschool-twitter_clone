import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFlatButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const CustomFlatButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  /*
    Background color : default primaryColor
    Overlay color : default primaryColorDark
    Border radius : circular(30)
    Set the onPressed argument to the onPressed function pointer
    Set the button label to label
    Set the label font to mulish from “GoogleFonts”
    Set the label font size to 18 and font weight to FontWeight.w800
  */

  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: FloatingActionButton.extended(
          onPressed: onPressed,
          label: Text(label,
              style: Theme.of(context).textTheme.button!.copyWith(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    fontFamily: GoogleFonts.mulish().fontFamily,
                  )),
          elevation: 0,
        ));
  }
}
