import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uptodo/Widgets/AppBarApp.dart';
import 'package:uptodo/Widgets/ButtonBarApp.dart';
import 'package:uptodo/core/constant/approutes/AppRouts.dart';
import 'package:uptodo/core/constant/colors/Appcolors.dart';
import 'package:uptodo/generated/l10n.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  GlobalKey<FormState> Formkey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Upbar(
                OnPressed: () {
                  Navigator.pop(context);
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 10,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          S.of(context).loginTitle,
                          style: GoogleFonts.lato(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Form(
                      key: Formkey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            S.of(context).username,
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Theme.of(
                                context,
                              ).textTheme.bodyMedium!.color,
                            ),
                          ),
                          SizedBox(height: 5),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your username';
                              }
                              return null;
                            },
                            controller: usernameController,
                            decoration: InputDecoration(
                              floatingLabelStyle: TextStyle(
                                color: Theme.of(
                                  context,
                                ).textTheme.bodyMedium!.color,
                              ),

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              hintText: S.of(context).usernameHint,
                            ),
                          ),
                          SizedBox(height: 25),
                          Text(
                            S.of(context).password,
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Theme.of(
                                context,
                              ).textTheme.bodyMedium!.color,
                            ),
                          ),
                          SizedBox(height: 5),
                          TextFormField(
                            controller: passwordController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              hintText: S.of(context).passwordHint,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 30),
                    ButtonBarApp(
                      IconName: "Assets/icons/apple.png",
                      Iconsize: 0,
                      transparent: false,
                      onPressed: () {
                        if (Formkey.currentState!.validate()) {
                          Navigator.pushNamed(context, Approuts.home);
                        }
                      },
                      text: S.of(context).loginTitle,
                    ),
                    SizedBox(height: 5),
                    Divider(height: 20, thickness: 1),
                    SizedBox(height: 15),
                    for (int i = 0; i < 2; i++)
                      ButtonBarApp(
                        IconName: i == 0
                            ? "Assets/icons/google.png"
                            : "Assets/icons/apple.png",
                        Iconsize: 24,
                        transparent: true,
                        onPressed: () {},
                        text: i == 0
                            ? S.of(context).loginWithGoogle
                            : S.of(context).loginWithApple,
                      ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          S.of(context).dontHaveAccount,
                          style: GoogleFonts.lato(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              Approuts.RegisterScreen,
                            );
                          },
                          child: Text(
                            S.of(context).registerButton,
                            style: GoogleFonts.lato(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: AppColors.textfieldbackground,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
