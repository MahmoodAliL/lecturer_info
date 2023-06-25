import 'package:fpdart/src/either.dart';
import 'package:lecturer_info/data/dto.dart';
import 'package:lecturer_info/data_source/app_database.dart' hide Lecturer;
import 'package:lecturer_info/domain/entity/lecturer.dart';
import 'package:lecturer_info/domain/repository.dart';
import 'package:lecturer_info/utils/failure.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'respository.g.dart';

class LecturerRepository implements ILecturerRepository {
  final AppDatabase db;

  LecturerRepository({required this.db});
  @override
  Either<Failure, Future<int>> delete({required int id}) {
    return Either.tryCatch(
      () async {
        return await db.deleteLecturer(id);
      },
      (o, s) => Failure.unexpected(msg: o.toString()),
    );
  }

  @override
  Either<Failure, Future<Lecturer>> getLecturer({required int id}) {
    return Either.tryCatch(
      () => db.getlecturer(id).map((p0) => p0.toDomain()).getSingle(),
      (o, s) => Failure.unexpected(msg: o.toString()),
    );
  }

  @override
  Either<Failure, Future<int>> insert({required Lecturer lecturer}) {
    return _insertOnConflictUpdate(lecturer: lecturer);
  }

  @override
  Either<Failure, Future<int>> update({required Lecturer lecturer}) {
    return _insertOnConflictUpdate(lecturer: lecturer);
  }

  Either<Failure, Future<int>> _insertOnConflictUpdate(
      {required Lecturer lecturer}) {
    return Either.tryCatch(
      () => db
          .into(db.lecturer)
          .insertOnConflictUpdate(LecturerCompanionX.fromDomain(lecturer)),
      (o, s) => Failure.unexpected(msg: o.toString()),
    );
  }

  @override
  Either<Failure, Stream<List<Lecturer>>> watchLecturers(
      {required String search}) {
    return Either.tryCatch(
      () async* {
        yield* db
            .watchlecturer('$search%')
            .map((item) => item.toDomain())
            .watch()
            .asyncMap((event) => event.toList());
      },
      (o, s) => Failure.unexpected(msg: o.toString()),
    );
  }
}

@riverpod
LecturerRepository lecturerRepository(LecturerRepositoryRef ref) {
  return LecturerRepository(db: ref.watch(appDatabaseProviderProvider));
}
