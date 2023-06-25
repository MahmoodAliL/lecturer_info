import 'package:lecturer_info/application/search_text_provider.dart';
import 'package:lecturer_info/data/respository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:lecturer_info/domain/entity/lecturer.dart';

part 'lecturer_list_provider.g.dart';

@riverpod
Stream<List<Lecturer>> lecturers(LecturersRef ref) async* {
  final repo = ref.watch(lecturerRepositoryProvider);
  final searchText = ref.watch(searchTextProvider);

  yield* repo
      .watchLecturers(search: searchText)
      .fold((l) => throw Exception('unxpected'), (list) async* {
    yield* list;
  });
}
