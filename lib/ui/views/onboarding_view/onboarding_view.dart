import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:widgetbook_test/ui/shared/app_button.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                Expanded(
                  flex: 2,
                  child: Image(
                    image: AssetImage("assets/Frame 5.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Expanded(
                  flex: 3,
                  child: Image(
                    image: AssetImage("assets/Frame 1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Expanded(
                  flex: 2,
                  child: Image(
                    image: AssetImage("assets/Frame 2.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        SizedBox(height: 2),
                        Image(
                          image: AssetImage("assets/Group.png"),
                        ),
                        Text(
                          "Belle’s Secret Cosmetic\nStore",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                            height: 32 / 24,
                          ),
                        ),
                        Text(
                          "Your secrets of beauty delivered to you in the best way",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                            height: 19.5 / 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 78.h),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Expanded(
                flex: 2,
                child: AppButton(
                  label: "Sign In",
                  borderColor: Colors.black,
                  buttonColor: Colors.white,
                  labelColor: Colors.black,
                  hasBorder: true,
                  onTap: () {},
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                flex: 3,
                child: AppButton(
                  label: "Get Started",
                  labelColor: Colors.white,
                  suffixWidget: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                  onTap: () {},
                ),
              ),
              const SizedBox(
                width: 16,
              ),
            ],
          ),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}
