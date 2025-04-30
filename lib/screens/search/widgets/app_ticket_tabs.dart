import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xfff4f6fd),
        ),
        child: Row(
          children: [
            AppTabs(
              tabText: firstTab,
            ),
            AppTabs(
              tabText: secondTab,
              tabBorder: true,
              tabColor: true,
            )
          ],
        ));
  }
}

class AppTabs extends StatelessWidget {
  final String tabText;
  final bool tabBorder;
  final bool tabColor;
  const AppTabs(
      {super.key,
      this.tabText = '',
      this.tabBorder = false,
      this.tabColor = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(
            color: tabColor == false ? Colors.white : Colors.transparent,
            borderRadius: tabBorder == false
                ? BorderRadius.horizontal(left: Radius.circular(50))
                : BorderRadius.horizontal(right: Radius.circular(50))),
        padding: const EdgeInsets.symmetric(vertical: 9),
        width: size.width * 0.44,
        child: Center(
          child: Text(tabText),
        ));
  }
}
