import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lecturer_info/application/lecturer_form_controller.dart';
import 'package:lecturer_info/ui/form/widgets/email_field.dart';
import 'package:lecturer_info/ui/form/widgets/full_name_field.dart';
import 'package:lecturer_info/ui/form/widgets/major_specialization_field.dart';
import 'package:lecturer_info/ui/form/widgets/minor_specialization_field.dart';
import 'package:lecturer_info/ui/form/widgets/phone_number_field.dart';
import 'package:lecturer_info/ui/form/widgets/scientific_rank_field.dart';
import 'package:lecturer_info/ui/form/widgets/work_place_field.dart';

class LecturerForm extends ConsumerWidget {
  const LecturerForm({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormBuilderState>();

    return FormBuilder(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 8),
          const Row(
            children: [
              Expanded(child: FullNameField()),
              SizedBox(width: 16),
              Expanded(child: ScientificRankField()),
            ],
          ),
          const SizedBox(height: 8),
          const Row(
            children: [
              Expanded(child: MajorSpecializationField()),
              SizedBox(width: 16),
              Expanded(child: MinorSpecializationField()),
            ],
          ),
          const SizedBox(height: 56),
          const Row(
            children: [
              Expanded(child: PhoneNumberField()),
              SizedBox(width: 16),
              Expanded(child: EmailField()),
            ],
          ),
          const SizedBox(height: 16),
          const Row(
            children: [
              Expanded(child: WorkPlaceField()),
              SizedBox(width: 16),
              Spacer(),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            
            child: FilledButton(
              onPressed: () {
                formKey.currentState?.validate(focusOnInvalid: false);

                if (formKey.currentState?.isValid == true) {
                  ref.read(lecturerFormControllerProvider.notifier).save();
                }
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 24,
                ),
              ),
              child: const Text('حفظ'),
            ),
          ),
          const SizedBox(height: 8),
          const Spacer(),
        ],
      ),
    );
  }
}
