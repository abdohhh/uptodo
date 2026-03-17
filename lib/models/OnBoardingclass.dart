class Onboardingclass {
  final String img;
  final String title;
  final String description;

  Onboardingclass({required this.img, required this.title, required this.description});
  
}
List Onboardinglist = [
  Onboardingclass(
    img: 'Assets/images/Onboarding1.png',
    title: 'Manage your tasks',
    description: 'You can easily manage all of your daily\n tasks in DoMe for free',
  ),
  Onboardingclass(
    img: 'Assets/images/Onboarding2.png',
    title: 'Create daily routine',
    description: 'In Uptodo  you can create your\n personalized routine to stay productive',
  ),
  Onboardingclass(
    img: 'Assets/images/Onboarding3.png',
    title: 'Stay Productive',
    description: 'You can organize your daily tasks by adding your tasks into separate categories',
  ),
];