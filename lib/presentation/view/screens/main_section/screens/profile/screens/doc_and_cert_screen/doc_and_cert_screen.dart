import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/profile/widgets/profile_general_tile.dart';

class DocAndCertScreen extends StatelessWidget {
  const DocAndCertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(titleText: "Documents & Certificates"),
      body: SafeArea(
        child: Padding(
          padding: .symmetric(horizontal: 15.w),
          child: Column(
            children: [
              SizedBox(height: 20.w),
              ProfileGeneralTile(
                icon: "assets/icons/profile/personal.svg",
                text: "Personal Docs",
                onTap: () {},
              ),
              ProfileGeneralTile(
                icon: "assets/icons/profile/professional.svg",
                onTap: () {},
                text: "Professional Docs",
              ),
              ProfileGeneralTile(
                icon: "assets/icons/profile/mandattory.svg",
                onTap: () {},
                text: "Mandatory Training",
              ),
              ProfileGeneralTile(
                icon: "assets/icons/profile/imuunisations.svg",
                onTap: () {},
                text: "Immunisations",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
