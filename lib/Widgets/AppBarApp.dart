import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';




class Upbar extends StatelessWidget {
  const Upbar({super.key, required this.OnPressed});
  final VoidCallback OnPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: OnPressed,
          icon: SvgPicture.asset("Assets/icons/arrow-left.svg"),
        ),
      ],
    );
  }
}
