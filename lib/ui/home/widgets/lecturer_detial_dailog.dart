import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lecturer_info/domain/entity/lecturer.dart';

class LecturerDetailDialog extends HookConsumerWidget {
  const LecturerDetailDialog({required this.lecturer, super.key});
  final Lecturer lecturer;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ConstrainedBox(
      constraints: BoxConstraints(minWidth: 300),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            style: IconButton.styleFrom(backgroundColor: Colors.transparent),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close),
          ),
          const SizedBox(height: 8),
        /*   Text(
            lecturer.fullName,
            style: Theme.of(context).textTheme.titleLarge,
          ), */
          const SizedBox(height: 16),
          _FieldInfo(title: lecturer.fullName, label: 'الاسم الكامل'),
          _FieldInfo(title: lecturer.scientificRank, label: 'اللقب اللمي'),
          _FieldInfo(title: lecturer.majorSpecialization, label: 'التخصص العام'),
          _FieldInfo(title: lecturer.minorSpecialization, label: 'التخصص الدقيق'),
          _FieldInfo(title: lecturer.phoneNumber, label: 'رقم الهاتف'),
          _FieldInfo(title: lecturer.email, label: 'البريد الاكتروني'),
          _FieldInfo(title: lecturer.workPlace, label: 'مكان العمل'),
        ],
      ),
    );
  }
}

class _FieldInfo extends HookConsumerWidget {
  const _FieldInfo({required this.title, required this.label, super.key});
  final String title;
  final String label;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 120,
            child: Text(label, style: Theme.of(context).textTheme.bodySmall),
          ),
          Expanded(
            child: Text(title, style: Theme.of(context).textTheme.titleSmall),
          )
        ],
      ),
    );
  }
}
