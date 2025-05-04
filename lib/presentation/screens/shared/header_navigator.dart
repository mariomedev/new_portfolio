import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

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
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(color: Color(0xFF314158)),
        ),
      ),
      child: Row(
        children: [
          BoxItem(title: 'Mario_Melo' , width: 361),
          BoxItemNavigator(
            title: '_hello',
            isSelected: widget.index == 0 ? true : false,
            onTap: () {
              context.push('/home');
              setState(() {});
            },
          ),
          BoxItemNavigator(
            title: '_about-me',
            isSelected: widget.index == 1 ? true : false,
            onTap: () {
              context.push('/about-me');
              setState(() {});
            },
          ),
          BoxItemNavigator(
            title: '_projects',
            isSelected: widget.index == 2 ? true : false,
            onTap: () {
              context.push('/projects');
              setState(() {});
            },
          ),
          Spacer(),
          BoxItemNavigator(title: '_contact-me', isSelected: false),
        ],
      ),
    );
  }
}


