import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lecturer_info/application/id_provider.dart';
import 'package:lecturer_info/data/respository.dart';
import 'package:lecturer_info/domain/entity/lecturer.dart';
import 'package:lecturer_info/ui/form/page.dart';
import 'package:lecturer_info/ui/home/widgets/lecturer_detial_dailog.dart';

class LecturerCard extends ConsumerWidget {
  const LecturerCard({required this.lecturer, super.key});

  final Lecturer lecturer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final lecturer = ref.watch(lecturerItemProvider);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey.shade200,
      ),
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MoreActionButtton(lecturer: lecturer),
          Expanded(
              child: _FieldInfo(
                  title: lecturer.fullName, label: lecturer.scientificRank)),
          Expanded(
              child: _FieldInfo(
                  title: lecturer.majorSpecialization, label: 'التخصص العام')),
          Expanded(
              child: _FieldInfo(
                  title: lecturer.minorSpecialization, label: 'التخصص الدقيق')),
          TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          content: LecturerDetailDialog(
                            lecturer: lecturer,
                          ),
                        ));
              },
              child: const Text('عرض التفاصيل')),
        ],
      ),
    );
  }
}

enum MoreActionMenu { delete, edit }

class MoreActionButtton extends ConsumerWidget {
  const MoreActionButtton({
    required this.lecturer,
    super.key,
  });

  final Lecturer lecturer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.only(left: 24),
      child: PopupMenuButton<MoreActionMenu>(
          onSelected: (menu) =>
              _onSelected(menu: menu, ref: ref, context: context),
          itemBuilder: (_) {
            return [
              const PopupMenuItem(
                value: MoreActionMenu.delete,
                child: Text('حذف'),
              ),
              const PopupMenuItem(
                value: MoreActionMenu.edit,
                child: Text('تعديل'),
              ),
            ];
          }),
    );
  }

  void _onSelected({
    required MoreActionMenu menu,
    required WidgetRef ref,
    required BuildContext context,
  }) {
    ref.watch(lecturerIdProvider.notifier).update(lecturer.id);

    switch (menu) {
      case MoreActionMenu.delete:
        ref.read(lecturerRepositoryProvider).delete(id: lecturer.id);
        break;

      case MoreActionMenu.edit:
        _goToFormPage(context);
        break;
    }
  }

  void _goToFormPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const FormPage();
        },
      ),
    );
  }
}

class _FieldInfo extends StatelessWidget {
  const _FieldInfo({
    required this.title,
    required this.label,
  });

  final String label;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.normal,
              ),
        ),
        Text(
          title,
          softWrap: true,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
