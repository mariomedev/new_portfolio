import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/widgets.dart';

class ProjectsFolderMenu extends StatelessWidget {
  const ProjectsFolderMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BoxBorderVertical(
      width: 360,
      child: Column(
        children: [
          BoxBorderHorizontal(
            height: 50,
            child: ButtonInfo(
              title: 'Projects',
              arrowIsActive: true,
              isOpen: true,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              spacing: 10,
              children: [
                CheckBoxTechnology(
                  tilte: 'Flutter',
                  pathImage: 'assets/svg/icon-flutter.svg',
                  onPressed: (value) {},
                ),
                CheckBoxTechnology(
                  tilte: 'Angular',
                  pathImage: 'assets/svg/icon-angular.svg',
                  onPressed: (value) {},
                ),
                CheckBoxTechnology(
                  tilte: 'CSS',
                  pathImage: 'assets/svg/icon-css.svg',
                  onPressed: (value) {},
                ),
                CheckBoxTechnology(
                  tilte: 'HTML',
                  pathImage: 'assets/svg/icon-html.svg',
                  onPressed: (value) {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CheckBoxTechnology extends StatefulWidget {
  final String tilte;
  final String pathImage;
  final ValueChanged<bool>? onPressed;

  const CheckBoxTechnology({
    super.key,
    required this.tilte,
    required this.pathImage,
    this.onPressed,
  });

  @override
  State<CheckBoxTechnology> createState() => _CheckBoxTechnologyState();
}

class _CheckBoxTechnologyState extends State<CheckBoxTechnology> {
  Color getColor(Set<WidgetState> states) {
    const Set<WidgetState> interactiveStates = <WidgetState>{
      WidgetState.pressed,
      WidgetState.hovered,
      WidgetState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Color(0xFF615FFF);
    }
    if (states.contains(WidgetState.selected)) {
      return Color(0xFF62748E);
    }
    return Colors.transparent;
  }

  bool? _isSeleted = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          checkColor: Colors.white,
          fillColor: WidgetStateProperty.resolveWith(getColor),
          value: _isSeleted,
          onChanged: (value) {
            _isSeleted = value;
            widget.onPressed?.call(value!);
            setState(() {});
          },
        ),
        SizedBox(width: 20),
        SvgPicture.asset(
          widget.pathImage,
          height: 24,
          width: 24,
        ),
        SizedBox(width: 5),
        Text(
          widget.tilte,
          style: GoogleFonts.firaCode(
            color: Color(0xFF62748E),
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
