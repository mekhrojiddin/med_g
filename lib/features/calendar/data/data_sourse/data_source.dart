import 'package:med_g/core/exception/exception.dart';
import 'package:med_g/core/extensions/extensions.dart';
import 'package:med_g/features/calendar/data/models/model.dart';
import 'package:med_g/features/calendar/domain/entities/entities.dart';
import 'package:med_g/features/calendar/mock_data.dart';

abstract class CalendarDataSource {
  Future<List<CalendarEntities>> getData();

  factory CalendarDataSource() => _CalendarDataSource();
}

class _CalendarDataSource implements CalendarDataSource {
  @override
  Future<List<CalendarEntities>> getData() async {
    try {
      final result = await ['data'];
      final response = (result as List)
          .map(
            (e) => CalendarModel.fromJson(e),
          )
          .toList();
      return response.map((e) => e.toEntities).toList();
    } catch (e) {
      throw ServerException(
        errorMessage: '',
        errorCode: 0,
      );
    }
  }
}
