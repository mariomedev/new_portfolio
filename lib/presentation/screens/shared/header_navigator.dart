import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../../../core/core.dart';
import '../widgets/widgets.dart';

class HeaderNavigator extends StatefulWidget {
  final int index;
  const HeaderNavigator({super.key, required this.index});

  @override
  State<HeaderNavigator> createState() => _HeaderNavigatorState();
}

class _HeaderNavigatorState extends State<HeaderNavigator> {
  @override
  Widget build(BuildContext context) {
    final bool isDesktop = ScreenManage.isDesktop(context);
    return Container(
      height: 40,
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(color: Color(0xFF314158)),
        ),
      ),
      child: Row(
        children: [
          BoxItem(
            title: AppTexts.nameDeveloper,
            width: isDesktop ? 360 : 110,
          ),
          BoxItemNavigator(
            title: !isDesktop ? null : '_hello',
            icon: !isDesktop ? Icons.home : null,
            width: !isDesktop ? 40 : null,
            isSelected: widget.index == 0 ? true : false,
            onTap: () {
              context.go('/home');
              setState(() {});
            },
          ),
          BoxItemNavigator(
            title: !isDesktop ? null : '_about-me',
            isSelected: widget.index == 1 ? true : false,
            icon: !isDesktop ? Icons.person : null,
            width: !isDesktop ? 40 : null,
            onTap: () {
              context.go('/about-me');
              setState(() {});
            },
          ),
          BoxItemNavigator(
            title: !isDesktop ? null : '_projects',
            isSelected: widget.index == 2 ? true : false,
            icon: !isDesktop ? Icons.car_crash_outlined : null,
            width: !isDesktop ? 40 : null,
            onTap: () {
              context.go('/projects');
              setState(() {});
            },
          ),
          //if (ScreenManage.isDesktop(context) || ScreenManage.isTablet(context))
          const Spacer(),
          BoxItemNavigator(
            title: !isDesktop ? null : '_contact-me',
            icon: !isDesktop ? Icons.contact_phone_rounded : null,
            width: !isDesktop ? 40 : null,
            isSelected: widget.index == 3 ? true : false,
            onTap: () {
              context.go('/contact-me');
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
