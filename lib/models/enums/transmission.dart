enum Transmission {
  auto,
  manual,
}

extension TransmissionExtension on Transmission {
  String get displayName {
    switch (this) {
      case Transmission.auto:
        return 'Số tự động';
      case Transmission.manual:
        return 'Số sàn';
    }
  }
}
