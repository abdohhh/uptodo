import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uptodo/core/constant/approutes/AppRouts.dart';
import 'package:uptodo/core/constant/colors/Appcolors.dart';
import 'package:uptodo/generated/l10n.dart';
import 'package:uptodo/models/OnBoardingclass.dart';

class Onboading extends StatefulWidget {
  const Onboading({super.key});

  @override
  State<Onboading> createState() => _OnboadingState();
}

class _OnboadingState extends State<Onboading> {
  int pageindex = 0;
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    S.of(context).skip,
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: Onboardinglist.length,
                onPageChanged: (page) {
                  setState(() {
                    pageindex = page;
                  });
                },
                itemBuilder: (context, pageindex) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(Onboardinglist[pageindex].img, height: 300),

                      SizedBox(height: 30),
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < 3; i++)
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              height: 4,
                              width: 26,
                              decoration: BoxDecoration(
                                color: pageindex == i
                                    ? Theme.of(
                                        context,
                                      ).colorScheme.onPrimaryContainer
                                    : Theme.of(
                                        context,
                                      ).colorScheme.primaryContainer,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                        ],
                      ),

                      SizedBox(height: 30),
                      Text(
                        Onboardinglist[pageindex].title,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 16),
                      Text(
                        Onboardinglist[pageindex].description,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      if (pageindex > 0) {
                        pageController.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                      setState(() {});
                    },
                    child: Text(
                      S.of(context).back,
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (pageindex < 2) {
                          pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        } else if (pageindex == 2) {
                          Navigator.pushNamed(context, Approuts.StartScreen);
                        }
                      });
                    },
                    child: Text(
                      pageindex == 2
                          ? S.of(context).getStarted
                          : S.of(context).next,
                      style: GoogleFonts.lato(
                        color: AppColors.ButtonText,
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
