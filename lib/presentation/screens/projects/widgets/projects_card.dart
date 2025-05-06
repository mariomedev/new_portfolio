import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectsCard extends StatelessWidget {
  const ProjectsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Column(
        children: [
          _Title(),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Column(
                children: [
                  _ImageCard(),
                  _BodyCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BodyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
          border: Border.all(
            color: Color(0xff1D293D),
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              Text(
                'Duis aute irure dolor in velit esse cillum dolore.',
                style: GoogleFonts.firaCode(
                  color: Color(0xFF90A1B9),
                  fontSize: 16,
                ),
              ),
              SizedBox(
                width: 150,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff45556C),
                    shape: RoundedRectangleBorder(
                      // Change your radius here
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'View-Project',
                    style: GoogleFonts.firaCode(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _ImageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          border: Border.all(
            color: Color(0xff1D293D),
            width: 1,
          ),
        ),
        child: FadeInImage(
          height: double.infinity,
          width: double.infinity,
          placeholder: AssetImage('assets/img/loading.gif'),
          image: NetworkImage(
            'https://static.vecteezy.com/system/resources/previews/002/949/141/non_2x/programming-code-coding-or-hacker-background-vector.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 30,
      children: [
        Text(
          'Project ',
          style: GoogleFonts.firaCode(
            color: Color(0xFF615FFF),
            fontSize: 16,
          ),
        ),
        Text(
          '// _ui-animations',
          style: GoogleFonts.firaCode(
            color: Color(0xFF90A1B9),
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
