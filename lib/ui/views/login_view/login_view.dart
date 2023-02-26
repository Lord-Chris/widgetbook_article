import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

import '../../shared/app_button.dart';
import '../../shared/app_textfield.dart';
import 'login_viewmodel.dart';

@WidgetbookUseCase(name: 'Login View', type: LoginView)
Widget loginViewViewUseCase(BuildContext context) {
  return const LoginView();
}

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(),
      builder: (context, model, _) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(23.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    padding: EdgeInsets.zero,
                    visualDensity: VisualDensity.compact,
                    onPressed: model.back,
                  ),
                  SizedBox(height: 26.h),
                  Text(
                    "Welcome back!",
                    style: TextStyle(
                      fontSize: 32.spMin,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 9.h),
                  Text(
                    "Please fill in your account details appropriately.",
                    style: TextStyle(
                      fontSize: 16.spMin,
                      fontWeight: FontWeight.normal,
                      color: theme.colorScheme.primary.withOpacity(.67),
                    ),
                  ),
                  SizedBox(height: 64.h),
                  const AppTextField(
                    hint: "Email",
                    keyboardType: TextInputType.emailAddress,
                    suffix: Icon(Icons.email),
                  ),
                  SizedBox(height: 16.h),
                  AppTextField(
                    hint: "Password",
                    keyboardType: TextInputType.visiblePassword,
                    maxLines: 1,
                    obscureText: !model.isPasswordHidden,
                    suffix: InkWell(
                      onTap: model.togglePasswordVisibility,
                      child: Icon(
                        Icons.visibility_outlined,
                        color: theme.colorScheme.primary.withOpacity(.67),
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot password?",
                        style: TextStyle(
                          fontSize: 14.spMin,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.h),
                  const Spacer(),
                  AppButton(
                    label: "Log In",
                    isBusy: model.isBusy,
                    onTap: model.logIn,
                  ),
                  SizedBox(height: 20.h),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 14.spMin,
                          fontWeight: FontWeight.normal,
                        ),
                        children: const [
                          TextSpan(text: "Not a member? "),
                          TextSpan(
                            text: "Create account",
                            style: TextStyle(
                              color: Colors.greenAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
