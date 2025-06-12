import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manzoma_front/core/constants/app_theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                height: height,
                decoration: BoxDecoration(
                  color: AppThemes.lightColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26.withOpacity(0.1),
                      blurRadius: 40.0,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 100.0.h,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: height * 0.6,
                width: width * 0.9,
                margin: EdgeInsets.symmetric(horizontal: height * 0.12),
                decoration: BoxDecoration(
                  color: AppThemes.lightColor,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26.withOpacity(0.1),
                      blurRadius: 10.0,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.02,
                    vertical: height * 0.04,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: height * 0.01),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '👋 مرحبا ',
                              style: TextStyle(
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w300,
                                color: AppThemes.darkColor,
                                fontSize: 25.0.sp,
                              ),
                            ),
                            TextSpan(
                              text: 'بك',
                              style: TextStyle(
                                fontFamily: 'Cairo',
                                fontSize: 30.0.sp,
                                color: AppThemes.darkColor,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.02),

                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 12.0.sp,
                            color: AppThemes.darkColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(height: 6.0),
                      Container(
                        height: 50.0,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: AppThemes.lightColor,
                        ),
                        child: TextFormField(
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: AppThemes.darkColor,
                            fontSize: 12.0.sp,
                          ),

                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.email_outlined,
                                color: AppThemes.darkColor,
                              ),
                            ),
                            contentPadding: const EdgeInsets.only(top: 16.0),
                            hintText: 'Enter Email',
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: AppThemes.darkColor.withOpacity(0.5),
                              fontSize: 12.0.sp,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: height * 0.02),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 12.0.sp,
                            color: AppThemes.darkColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(height: 6.0),
                      Container(
                        height: 50.0,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: AppThemes.lightColor,
                        ),
                        child: TextFormField(
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: AppThemes.darkColor,
                            fontSize: 12.0.sp,
                          ),
                          obscureText: true,

                          decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.visibility_off_outlined,
                                color: AppThemes.darkColor,
                              ),
                            ),
                            prefixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.lock_outline,
                                color: AppThemes.darkColor,
                              ),
                            ),
                            contentPadding: const EdgeInsets.only(top: 16.0),
                            hintText: 'Enter Password',
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: AppThemes.darkColor.withOpacity(0.5),
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: height * 0.03),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              fontSize: 12.0.sp,
                              color: AppThemes.darkColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: height * 0.05),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(16.0),
                          child: Ink(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 70.0,
                              vertical: 18.0,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              color: AppThemes.primaryColor,
                            ),
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: AppThemes.lightColor,
                                fontSize: 16.0.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
