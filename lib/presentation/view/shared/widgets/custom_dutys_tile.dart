import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/presentation/view/shared/widgets/custom_button_1.dart';

class CustomDutysTile extends StatelessWidget {
  const CustomDutysTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355.w,
      margin: EdgeInsets.only(right: 10.w),
      padding: EdgeInsets.all(15.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10.w,
            children: [
              Container(
                width: 45.w,
                height: 45.w,
                padding: EdgeInsets.all(4.w),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.borderColor),
                  borderRadius: BorderRadius.circular(7.r),
                ),
                child: Image.asset(
                  'assets/images/temp/hospial_logo/image 12-2.png',
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Duty doctor/Medical Officer",
                      style: TextStyle(
                        fontSize: 17.sp,
                        fontFamily: 'semibold',
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 1,
                    ),
                    Text(
                      'KMCH Sulur',
                      style: TextStyle(fontSize: 11.sp, fontFamily: 'light'),
                    ),
                  ],
                ),
              ),
              SvgPicture.asset('assets/icons/share.svg', width: 22.w),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Row(
                  spacing: 2.w,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/speciality.svg',
                      width: 14.w,
                    ),
                    Flexible(
                      child: Text(
                        'Cardiology',
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.lufgaText.copyWith(
                          fontSize: 12.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Text('|'),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.currency_rupee_sharp,
                      size: 13,
                      color: AppColors.primaryColor,
                    ),
                    Flexible(
                      child: Text(
                        ' 10 - 15 lakhs',
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.lufgaText.copyWith(
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Text('|'),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      size: 13,
                      color: AppColors.primaryColor,
                    ),
                    Flexible(
                      child: Text(
                        ' Coimbatore, Tamilnadu',
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.lufgaText.copyWith(
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 5.h),
          Text(
            'We are seeking experienced Doctors with a minimum of 5+ years of clinical experience to join now. read more',
            style: TextStyle(fontSize: 12.sp, fontFamily: 'light'),
            maxLines: 2,
          ),
          SizedBox(height: 15.h),
          Row(
            children: [
              Expanded(
                child: CustomButton1(
                  onTapUp: (event) {},
                  label: 'Direct Call',
                  borderRadius: 15.r,
                  buttontype: ButtonOption.white,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: CustomButton1(
                  onTap: () {},
                  borderRadius: 15.r,
                  buttontype: ButtonOption.blue,
                  label: 'Apply Now',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
