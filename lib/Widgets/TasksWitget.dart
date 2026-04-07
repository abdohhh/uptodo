import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uptodo/core/constant/colors/Appcolors.dart';
import 'package:uptodo/models/databasemodael.dart';

class Taskswitget extends StatelessWidget {
  const Taskswitget({super.key, required this.index, required this.onChanged});
  final int index;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.bottomnavactive,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Checkbox(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            value: testdata[index].isCompleted,
            onChanged: (value) {
              onChanged();
            },
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  testdata[index].Tasktitle,
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).textTheme.bodyMedium!.color,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      testdata[index].Description,
                      style: GoogleFonts.lato(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Theme.of(context).textTheme.bodySmall!.color,
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: AppColors.ButtonActive),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.flag_outlined,
                            size: 24,
                            color: AppColors.ButtonText,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "${testdata[index].TaskPriority}",
                            style: GoogleFonts.lato(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: AppColors.ButtonText,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
