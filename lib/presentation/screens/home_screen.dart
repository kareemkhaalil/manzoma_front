// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:manzoma_front/core/constants/app_theme.dart';
// import 'package:manzoma_front/core/constants/routes.dart';
// import 'package:manzoma_front/core/di.dart';
// import 'package:manzoma_front/core/state/base_state.dart';
// import 'package:manzoma_front/domain/entities/client_entity.dart';
// import 'package:manzoma_front/domain/entities/user_entity.dart';
// import 'package:manzoma_front/presentation/blocs/client_cubit.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   bool isCollapsed = false;
//   int selectedIndex = 0;

//   final List<Widget> pages = const [
//     Center(child: Text("Dashboard", style: TextStyle(fontSize: 24))),
//     Center(child: Text("Users", style: TextStyle(fontSize: 24))),
//     Center(child: Text("Settings", style: TextStyle(fontSize: 24))),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Row(
//           children: [
//             AnimatedContainer(
//               duration: const Duration(milliseconds: 200),
//               width: isCollapsed ? 70 : 200,
//               color: AppThemes.lightColor,
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: SingleChildScrollView(
//                       child: Row(
//                         children: [
//                           IconButton(
//                             icon: Icon(
//                               isCollapsed
//                                   ? Icons.arrow_forward_ios
//                                   : Icons.arrow_back_ios,
//                               color: Colors.white,
//                             ),
//                             onPressed: () {
//                               setState(() {
//                                 isCollapsed = !isCollapsed;
//                               });
//                             },
//                           ),
//                           if (!isCollapsed)
//                             Image.asset('assets/images/logo.png', height: 20),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   _buildMenuItem(Icons.dashboard, "Dashboard", 0),
//                   _buildMenuItem(Icons.people, "Users", 1),
//                   _buildMenuItem(Icons.settings, "Settings", 2),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 color: Colors.grey.shade100,
//                 child: pages[selectedIndex],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildMenuItem(IconData icon, String title, int index) {
//     return InkWell(
//       onTap: () {
//         setState(() {
//           selectedIndex = index;
//         });
//       },
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
//         child: Row(
//           children: [
//             Icon(icon, color: AppThemes.darkColor),
//             if (!isCollapsed) const SizedBox(width: 12),
//             if (!isCollapsed)
//               Text(title, style: TextStyle(color: AppThemes.darkColor)),
//           ],
//         ),
//       ),
//     );
//   }
// }import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:manzoma_front/presentation/screens/dashboard_screen.dart';
import 'package:manzoma_front/presentation/screens/employees_screen.dart';
import 'package:manzoma_front/presentation/widgets/side_menue.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  bool isCollapsed = false;

  final List<Widget> pages = const [DashboardScreen(), EmployeesScreen()];

  void onItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void toggleMenu() {
    setState(() {
      isCollapsed = !isCollapsed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            SideMenu(
              isCollapsed: isCollapsed,
              selectedIndex: selectedIndex,
              onItemSelected: onItemSelected,
              toggleMenu: toggleMenu,
            ),
            Expanded(
              child: Column(
                children: [
                  AppBar(
                    title: const Text("Control Panel"),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    elevation: 1,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: pages[selectedIndex],
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
