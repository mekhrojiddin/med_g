// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:med_g/core/either/either.dart';
import 'package:med_g/core/failure/failure.dart';
import 'package:med_g/core/usecase/usecase.dart';
import 'package:med_g/features/calendar/domain/entities/entities.dart';
import 'package:med_g/features/calendar/domain/repository/repository.dart';

class CalendarUseCase implements UseCase<List<CalendarEntities>, NoParams> {
  final CalendarRepository _repositoryImpl;
  CalendarUseCase({
    required CalendarRepository repositoryImpl,
  }) : _repositoryImpl = repositoryImpl;

  @override
  Future<Either<Failure, List<CalendarEntities>>> call(NoParams param) async {
    if (param is GetData) {
      return await _repositoryImpl.getData();
    } else {
      throw UnimplementedError();
    }
  }
}

class GetData extends NoParams {}
