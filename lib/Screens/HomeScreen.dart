import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uptodo/core/constant/colors/Appcolors.dart';
import 'package:uptodo/generated/l10n.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.sort_outlined)),
                  Spacer(),
                  Text(
                    S.of(context).navHome,
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Theme.of(context).textTheme.bodySmall!.color,
                    ),
                  ),
                  Spacer(),
                  Image.asset(
                    "Assets/images/Onboarding2.png",
                    height: 42,
                    width: 42,
                  ),
                ],
              ),
            ),
            if (true)
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("Assets/images/Checklist-rafiki 1.png"),
                    Text(
                      S.of(context).homeEmptyStateTitle,
                      style: GoogleFonts.lato(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).textTheme.bodyMedium!.color,
                      ),
                    ),
                    Text(
                      S.of(context).homeEmptyStateSubtitle,
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Theme.of(context).textTheme.bodySmall!.color,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.ButtonActive,
        shape: CircleBorder(),
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.bottomnavactive,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (int index) {
          //todo navigator to pages
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: S.of(context).navHome,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: S.of(context).navCalendar,
          ),
          BottomNavigationBarItem(
            icon: SizedBox(width: 48),
            label: ""
          ), 
          BottomNavigationBarItem(
            icon: Icon(Icons.watch_later_outlined),
            label: S.of(context).navFocus,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: S.of(context).navProfile,
          ),
        ],
      ),
    );
  }
}
