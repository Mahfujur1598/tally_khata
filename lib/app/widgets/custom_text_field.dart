
import 'package:tally_khata/app/core/themes/colors.dart';
import 'package:tally_khata/export.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final IconData leadingIcon;

  const CustomTextField(
      {super.key,
        required this.hintText,
        required this.labelText,
        required this.leadingIcon
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(

        prefixIcon: Icon(leadingIcon),

        labelText: labelText,
        labelStyle: TextStyle(
          color: AppColors.PRIMARY
        ),

        hintText: hintText,


      ),
    );
  }
}
