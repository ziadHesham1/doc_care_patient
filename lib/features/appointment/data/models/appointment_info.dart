class AppointmentInfo {
  final String startTime;
  final String endTime;
  final String place;
  final String date;
  AppointmentInfo({
    required this.startTime,
    required this.endTime,
    required this.place,
    required this.date,
  });

  AppointmentInfo copyWith({
    String? startTime,
    String? endTime,
    String? place,
    String? date,
  }) {
    return AppointmentInfo(
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      place: place ?? this.place,
      date: date ?? this.date,
    );
  }
}

extension AppointmentInfoX on AppointmentInfo {
  isValid() {
    return startTime.isNotEmpty &&
        endTime.isNotEmpty &&
        place.isNotEmpty &&
        date.isNotEmpty;
  }
}
