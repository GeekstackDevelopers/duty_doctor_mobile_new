import 'package:duty_doctor/app.dart';

import 'contact_us_page.dart';
import 'faq_page.dart';

class HelpCenterScreen extends StatefulWidget {
  const HelpCenterScreen({super.key});

  @override
  State<HelpCenterScreen> createState() => _HelpCenterScreenState();
}

class _HelpCenterScreenState extends State<HelpCenterScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        titleText: 'Help center',
        bottom: TabBar(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          indicatorColor: AppColors.primaryColor,
          indicatorSize: TabBarIndicatorSize.tab,
          labelStyle: CustomTextStyles.lufgaText.copyWith(
            color: AppColors.primaryColor,
            fontSize: 16,
          ),
          unselectedLabelStyle: CustomTextStyles.lufgaText.copyWith(
            fontSize: 16,
            color: AppColors.fontGrey,
          ),
          controller: _tabController,
          tabs: const [
            Tab(text: 'FAQ'),
            Tab(text: 'Contact us'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: TabBarView(
          controller: _tabController,
          children: const [FAQPage(), ContactUsSection()],
        ),
      ),
    );
  }
}
