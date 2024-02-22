import 'package:education_system/config/themes/theme_config.dart';
import 'package:education_system/core/utils/constants.dart';
import 'package:education_system/core/utils/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class StudentInformation extends StatelessWidget {
  const StudentInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  const EdgeInsets.all(20.0),
      child:  const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Text',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

// class InfoItem extends StatefulWidget {
//   const InfoItem(
//       {super.key,
//         required this.title,
//         required this.description,
//         required this.onTap
//       });
//
//   final String title;
//   final String description;
//   final Function() onTap;
//
//   @override
//   State<InfoItem> createState() => _InfoItemState();
// }
//
// class _InfoItemState extends State<InfoItem> {
//   bool isHovered = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 40,
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           color: isHovered ? AppColors.white : Colors.transparent),
//       child: InkWell(
//         onTap: widget.onTap,
//         splashColor: AppColors.white,
//         onHover: (value) {
//           setState(() {
//             isHovered = value;
//           });
//         },
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             SvgPicture.asset(
//               isHovered ? AppImages.hoveredStudentsIcon : AppImages.studentsIcon,
//             ),
//             const SizedBox(height: 20,),
//             Text(
//               widget.title,
//               textAlign: TextAlign.center,
//               style: GoogleFonts.inter(
//                 color: AppColors.darkText,
//                 fontSize: 20,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             const SizedBox(height: 2,),
//             SizedBox(
//               width: context.getWidth(),
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   widget.description,
//                   textAlign: TextAlign.center,
//                   style: GoogleFonts.inter(
//                     color: AppColors.lightGreyText,
//                     fontSize: 16,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }



