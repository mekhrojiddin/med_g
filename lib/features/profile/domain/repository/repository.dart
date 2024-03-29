import 'package:med_g/core/either/either.dart';
import 'package:med_g/core/failure/failure.dart';
import 'package:med_g/features/calendar/domain/entities/entities.dart';

abstract class CalendarRepository {
  Future<Either<Failure, List<CalendarEntities>>> getData();
}
