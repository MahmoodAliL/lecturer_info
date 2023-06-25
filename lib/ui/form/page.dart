import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lecturer_info/application/lecturer_form_controller.dart';
import 'package:lecturer_info/ui/form/widgets/custom_appbar.dart';
import 'package:lecturer_info/ui/form/widgets/form.dart';

class FormPage extends ConsumerWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      lecturerFormControllerProvider.select((value) => value.formState),
      (previous, next) {
        if (previous != next) {
          next.maybeWhen(
              orElse: () {},
              error: (msg) {
                final snackBar = SnackBar(content: Text(msg));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              submitSuccessful: () {
                Navigator.pop(context);
              });
        }
      },
    );

    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(),
          // const SizedBox(height: 16),
          Expanded(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 800),
              padding: const EdgeInsets.all(32),
              child: const CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: LecturerForm(),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
