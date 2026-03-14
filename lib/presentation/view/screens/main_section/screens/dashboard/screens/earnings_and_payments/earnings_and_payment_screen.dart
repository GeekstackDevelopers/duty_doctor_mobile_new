import 'package:duty_doctor/app.dart';

class EarningsAndPaymentScreen extends StatelessWidget {
  const EarningsAndPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        titleText: "Earning & Payment",
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.file_download_outlined),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.sp),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    SizedBox(height: 15.h),
                    Text(
                      "Apollo Hospital - Night Shift \nEmergency Duty",
                      style: TextStyle(fontFamily: 'medium', fontSize: 20.sp),
                    ),
                    SizedBox(height: 35.h),
                    RichText(
                      text: TextSpan(
                        text: "Date: ",
                        style: TextStyle(
                          fontFamily: 'medium',
                          fontSize: 16.sp,
                          letterSpacing: -.3,
                          color: Colors.black,
                        ),
                        children: [
                          const TextSpan(
                            text: "24 Oct 2025",
                            style: TextStyle(fontFamily: 'lufga'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    RichText(
                      text: TextSpan(
                        text: "Amount: ",
                        style: TextStyle(
                          fontFamily: 'medium',
                          fontSize: 16.sp,
                          letterSpacing: -.3,
                          color: Colors.black,
                        ),
                        children: [
                          const TextSpan(
                            text: "₹2,500",
                            style: TextStyle(fontFamily: 'lufga'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    RichText(
                      text: TextSpan(
                        text: "Description: ",
                        style: TextStyle(
                          fontFamily: 'medium',
                          fontSize: 16.sp,
                          letterSpacing: -.3,
                          color: Colors.black,
                        ),
                        children: [
                          const TextSpan(
                            text:
                                "Description: Payment for Night Duty shift completed at Apollo Hospital on 24 Oct 2025.",
                            style: TextStyle(fontFamily: 'lufga'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    RichText(
                      text: TextSpan(
                        text: "Reference ID: ",
                        style: TextStyle(
                          fontFamily: 'medium',
                          fontSize: 16.sp,
                          letterSpacing: -.3,
                          color: Colors.black,
                        ),
                        children: [
                          const TextSpan(
                            text: "TXN-APO-20251024-01",
                            style: TextStyle(fontFamily: 'lufga'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    RichText(
                      text: TextSpan(
                        text: "Category: ",
                        style: TextStyle(
                          fontFamily: 'medium',
                          fontSize: 16.sp,
                          letterSpacing: -.3,
                          color: Colors.black,
                        ),
                        children: [
                          const TextSpan(
                            text: "Doctor Duty Income",
                            style: TextStyle(fontFamily: 'lufga'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 35.h),
                    Container(
                      padding: .symmetric(horizontal: 45.w, vertical: 32.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26.r),
                        border: Border.all(color: AppColors.grey),
                        color: const Color(0xFFF5F5F5),
                      ),
                      child: Image.asset(
                        "assets/images/Barrcrds.png",
                        width: 271.w,
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                label: "Withdraw Amount",
                borderRadius: 15.r,
                vPadding: 15.h,
                fontSize: 18.sp,

                fontFamily: 'bold',
              ),
              SizedBox(height: 15.h),
              CustomButton(
                label: "Download Receipt",
                borderRadius: 15.r,
                vPadding: 15.h,
                fontSize: 18.sp,

                // fontFamily: 'lu',
                textColor: AppColors.primaryColor,
                buttonColor: AppColors.backgroudColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
