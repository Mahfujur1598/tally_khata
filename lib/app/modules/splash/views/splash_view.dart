
import 'package:tally_khata/export.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('SplashView'),
        centerTitle: true,
      ),
      body: Center(
        child: ImageManager.logo.image(height: 150, width: 150),
      ),
    );
  }
}