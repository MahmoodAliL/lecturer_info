import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lecturer_info/application/lecturer_form_controller.dart';
import 'package:lecturer_info/application/lecturer_form_state.dart';
import 'package:lecturer_info/domain/entity/lecturer.dart';

class ScientificRankField extends HookConsumerWidget {
  const ScientificRankField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();
    controller.text =
        ref.read(lecturerFormControllerProvider).lecturer.scientificRank;

    ref.listen<LecturerFormState>(lecturerFormControllerProvider,
        (previous, next) {
      if (previous?.isEdting != next.isEdting) {
        next.formState.maybeWhen(
            orElse: () {},
            loadFieldsDataSuccess: (v) {
              controller.text = (v as Lecturer).scientificRank;
            });
      }
    });

    return FormBuilderTextField(
      name: 'scientificRank',
      controller: controller,
      decoration: const InputDecoration(
        labelText: 'الرتبة العلمية',
        helperText: '',
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: (value) {
        if (value == null) return;
        ref
            .read(lecturerFormControllerProvider.notifier)
            .onScientificRankChanged(value);
      },
      validator: FormBuilderValidators.required(),
    );
  }
}
