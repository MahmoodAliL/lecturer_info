import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lecturer_info/application/lecturer_list_provider.dart';
import 'package:lecturer_info/application/lecturer_provider.dart';
import 'package:lecturer_info/ui/home/widgets/lecturer_card.dart';

class LecturerList extends ConsumerWidget {
  const LecturerList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lectureList = ref.watch(lecturersProvider);
    return lectureList.when(
        data: (list) {
          if (list.isEmpty) {
            return const Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.list_alt_outlined),
                Text(' لا توجد بيانات'),
              ],
            );
          }
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (buildContext, index) {
              return ProviderScope(
                overrides: [
                  lecturerItemProvider.overrideWith(
                    (ref) {
                      return list[index];
                    },
                  )
                ],
                child: LecturerCard(
                  lecturer: list[index],
                ),
              );
            },
          );
        },
        error: ((error, stackTrace) => const Text('error')),
        loading: () {
          return const CircularProgressIndicator();
        });
  }
}
