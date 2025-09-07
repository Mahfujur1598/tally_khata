import 'package:tally_khata/app/core/themes/colors.dart';
import 'package:tally_khata/app/widgets/custom_text_field.dart';
import 'package:tally_khata/export.dart';
import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.PRIMARY.withAlpha(10),
                    Colors.white,
                    Colors.white,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      SvgManagaer.qRCodePana,
                      height: 190,
                      width: 190,
                    ),

                    SizedBox(height: 20),

                    Text(
                      'সুপার QR-এ পেমেন্ট নিন বিকাশ, রকেট, সহ\nসকল ব্যাংক অ্যাপ থেকে।',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10),

            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'রেজিষ্ট্রেশন/লগিন করুন',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),

                  SizedBox(height: 8),

                  CustomTextField(
                    labelText: 'মোবাইল নম্বর',
                    hintText: 'আপনার ফোন নম্বরটি লিখুন',
                    leadingIcon: Icons.call,
                  ),

                  SizedBox(height: 10),

                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'রেজিষ্ট্রেশন করতে আপনার',
                          style: TextStyle(
                            color: AppColors.BLACK.withAlpha(150),
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        TextSpan(
                          text: ' NID দিয়ে নিবন্ধিত মোবাইল নম্বর',
                          style: TextStyle(
                            color: AppColors.BLACK,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        TextSpan(
                          text: ' ব্যবহার করুন।',
                          style: TextStyle(
                            color: AppColors.BLACK.withAlpha(150),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 30),

                  Container(
                    width: MediaQueryUtils.width,
                    decoration: BoxDecoration(
                      color: AppColors.PRIMARY,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                    child: Center(
                      child: Text(
                        'পরবর্তী',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'পরবর্তীতে যাওয়ার নির্দেশনার মাধ্যমে আপনি টালিখাতার ',
                          style: TextStyle(
                            color: AppColors.BLACK.withAlpha(150),
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        TextSpan(
                          text: 'শর্তাবলীতে ',
                          style: TextStyle(
                            color: AppColors.PRIMARY,
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.underline
                          ),
                        ),

                        TextSpan(
                          text: 'সম্মতি প্রদান করেছেন।',
                          style: TextStyle(
                            color: AppColors.BLACK.withAlpha(150),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
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
