import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uptodo/Widgets/AppBarApp.dart';
import 'package:uptodo/Widgets/ButtonBarApp.dart';
import 'package:uptodo/core/constant/approutes/AppRouts.dart';
import 'package:uptodo/generated/l10n.dart';

class Startscreen extends StatefulWidget {
  const Startscreen({super.key});

  @override
  State<Startscreen> createState() => _StartscreenState();
}

class _StartscreenState extends State<Startscreen> {
  Null get googleFonts => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Upbar(
              OnPressed: () {
                Navigator.pop(context);
              },
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 16,
                ),

                child: Column(
                  children: [
                    Text(
                      S.of(context).WelcomescreenTitle,
                      style: GoogleFonts.lato(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 16),
                    Text(
                      textAlign: TextAlign.center,
                      S.of(context).Welcomescreendescription,
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),

                    Spacer(),
                    for (int i = 0; i < 2; i++)
                      ButtonBarApp(
                        IconName: "Assets/icons/apple.png",
                        Iconsize: 0,
                        transparent: i == 1,
                        onPressed: () {
                          if (i == 0) {
                            Navigator.pushNamed(context, Approuts.LoginScreen);
                          } else if (i == 1) {
                            Navigator.pushNamed(
                              context,
                              Approuts.RegisterScreen,
                            );
                          }
                        },
                        text: i == 0
                            ? S.of(context).loginTitle
                            : S.of(context).Createaccount,
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
