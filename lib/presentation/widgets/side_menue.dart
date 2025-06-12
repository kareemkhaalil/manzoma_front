import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manzoma_front/core/constants/app_theme.dart';

class SideMenu extends StatelessWidget {
  final bool isCollapsed;
  final int selectedIndex;
  final Function(int) onItemSelected;
  final VoidCallback toggleMenu;

  const SideMenu({
    super.key,
    required this.isCollapsed,
    required this.selectedIndex,
    required this.onItemSelected,
    required this.toggleMenu,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        color: AppThemes.lightColor,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 2),
          ),
        ],
      ),
      duration: const Duration(milliseconds: 200),
      width: isCollapsed ? 100.w : 200.w,

      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 15.h,
            child: Container(
              color: AppThemes.lightColor,
              child: IconButton(
                iconSize: 20.h,
                icon: Icon(
                  isCollapsed
                      ? CupertinoIcons.sidebar_left
                      : CupertinoIcons.sidebar_left,
                  color: AppThemes.primaryColor,
                ),
                onPressed: toggleMenu,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 16.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (!isCollapsed)
                        Image.asset('assets/images/logo.png', height: 35.h),
                      if (isCollapsed)
                        Image.asset('assets/images/icon.png', height: 45.h),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                IconButton(
                  onPressed: () {
                    // Handle login action
                    Navigator.pushNamed(context, '/login');
                  },
                  icon: Icon(
                    Icons.login,
                    color: AppThemes.primaryColor,
                    size: 30.h,
                  ),
                ),
                _buildMenuItem(Icons.dashboard, "Dashboard", 0),
                _buildMenuItem(Icons.people, "Employees", 1),
                _buildMenuItem(Icons.settings, "Settings", 2),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title, int index) {
    final isSelected = selectedIndex == index;
    return InkWell(
      onTap: () => onItemSelected(index),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
        child: Container(
          height: 50.h,
          decoration: BoxDecoration(
            color: isSelected ? AppThemes.primaryColor : Colors.transparent,
            borderRadius: BorderRadius.circular(8.r),
            // border:
            //     !isSelected
            //         ? Border.all(
            //           color: AppThemes.darkColor.withOpacity(0.5),
            //           width: 1.w,
            //         )
            //         : null,
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.black26,
            //     blurRadius: 10,
            //     offset: Offset(0, 2),r
            //   ),
            // ],
          ),
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: isSelected ? AppThemes.lightColor : AppThemes.darkColor,
              ),
              if (!isCollapsed) SizedBox(width: 5.w),
              if (!isCollapsed)
                Text(
                  title,
                  style: TextStyle(
                    color:
                        isSelected ? AppThemes.lightColor : AppThemes.darkColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
