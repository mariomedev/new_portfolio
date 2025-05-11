import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../providers/providers.dart';
import '../../widgets/widgets.dart';

class ContactMeForm extends ConsumerWidget {
  const ContactMeForm({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: BoxBorderVertical(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const _TitleText(title: '_name:'),
              const SizedBox(height: 5),
              FormCustom(
                onChanged: (value) {
                  ref.read(codeContactProvider.notifier).sendMessage({
                    'name': value,
                  });
                },
              ),
              const SizedBox(height: 30),
              const _TitleText(title: '_email:'),
              const SizedBox(height: 5),
              FormCustom(
                onChanged: (value) {
                  ref.read(codeContactProvider.notifier).sendMessage({
                    'email': value,
                  });
                },
              ),
              const SizedBox(height: 30),
              const _TitleText(title: '_message:'),
              const SizedBox(height: 5),
              FormCustom(
                isLager: true,
                onChanged: (value) {
                  ref.read(codeContactProvider.notifier).sendMessage({
                    'message': value,
                  });
                },
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: 195,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff314158),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'submit-message',
                    style: GoogleFonts.firaCode(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FormCustom extends StatelessWidget {
  final bool? isLager;
  final Function(String)? onChanged;
  const FormCustom({
    this.isLager,
    this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        maxLines: isLager == true ? 5 : 1,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xff020618),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color(0xff90A1B9),
            ),
          ),
        ),
        style: GoogleFonts.firaCode(
          fontSize: 18,
          color: const Color(0xff90A1B9),
        ),
        onChanged: onChanged,
      ),
    );
  }
}

class _TitleText extends StatelessWidget {
  final String title;
  const _TitleText({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.firaCode(
        fontSize: 20,
        color: const Color(0xff90A1B9),
      ),
    );
  }
}
