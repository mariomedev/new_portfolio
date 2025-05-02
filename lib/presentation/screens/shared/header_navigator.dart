import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

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
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(color: Color(0xFF314158)),
        ),
      ),
      child: Row(
        children: [
          _Name(),
          _ItemNavigator(
            title: '_hello',
            isSelected: widget.index == 0 ? true : false,
            onTap: () {
              context.push('/home');
              setState(() {});
            },
          ),
          _ItemNavigator(
            title: '_about-me',
            isSelected: widget.index == 1 ? true : false,
            onTap: () {
              context.push('/about-me');
              setState(() {});
            },
          ),
          _ItemNavigator(
            title: '_projects',
            isSelected: widget.index == 2 ? true : false,
            onTap: () {
              context.push('/projects');
              setState(() {});
            },
          ),
          Spacer(),
          _ItemNavigator(title: '_contact-me', isSelected: false),
        ],
      ),
    );
  }
}

class _ItemNavigator extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Function()? onTap;

  const _ItemNavigator({
    required this.title,
    required this.isSelected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          height: double.infinity,
          width: 122,
          decoration: BoxDecoration(
            border: Border.symmetric(
              vertical: BorderSide(color: Color(0xFF314158)),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    title,
                    style: GoogleFonts.firaCode(
                      fontSize: 16,
                      color: Color(0xFF90A1B9),
                    ),
                  ),
                ),
              ),

              Container(
                height: 3,
                color: isSelected ? Colors.orange : Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Name extends StatelessWidget {
  const _Name();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 300,
      decoration: BoxDecoration(
        border: Border.symmetric(
          vertical: BorderSide(color: Color(0xFF314158)),
        ),
      ),
      child: Center(
        child: Text(
          'Mario_Melo_Mendoza',
          style: GoogleFonts.firaCode(fontSize: 16, color: Color(0xFF90A1B9)),
        ),
      ),
    );
  }
}
