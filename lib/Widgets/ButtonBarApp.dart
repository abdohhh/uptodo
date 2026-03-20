import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonBarApp extends StatelessWidget {
  const ButtonBarApp({
    super.key,
    required this.transparent,
    required this.onPressed,
    required this.text,
    required this.Iconsize, required this.IconName,
  });

  final bool transparent;
  final VoidCallback onPressed;
  final String text;
  final num Iconsize;
  final String IconName ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        border: Border.all(
          color: transparent
              ? Theme.of(context).colorScheme.tertiary
              : Colors.transparent,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: !transparent
              ? Theme.of(context).colorScheme.tertiary
              : Colors.transparent,
          padding: EdgeInsets.symmetric(vertical: 16),
          minimumSize: Size(double.infinity, 50),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(IconName,width: Iconsize.toDouble(),height: Iconsize.toDouble(),),
            SizedBox(width: 10),
            Text(
              text,
              style: GoogleFonts.lato(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                textStyle: TextStyle(
                  color: Theme.of(context).textTheme.bodySmall!.color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
