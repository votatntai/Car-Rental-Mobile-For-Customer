enum OrderStatus {
  pending,
  accepted,
  rejected,
  cancelled,
  deposited,
  started,
  finished,
}

extension OrderStatusX on OrderStatus {
  String get displayName {
    switch (this) {
      case OrderStatus.pending:
        return 'Chờ duyệt';
      case OrderStatus.accepted:
        return 'Đã duyệt';
      case OrderStatus.rejected:
        return 'Đã từ chối';
      case OrderStatus.cancelled:
        return 'Đã hủy';
      case OrderStatus.deposited:
        return 'Đã đặt cọc';
      case OrderStatus.started:
        return 'Khởi hành';
      case OrderStatus.finished:
        return 'Kết thúc';
    }
  }

  String get displayColor {
    switch (this) {
      case OrderStatus.pending:
        return '0xFFFFDAB9';
      case OrderStatus.accepted:
        return '0xFF90EE90';
      case OrderStatus.rejected:
        return '0xFFFFB6C1';
      case OrderStatus.cancelled:
        return '0xFFDCDCDC';
      case OrderStatus.deposited:
        return '0xFFADD8E6';
      case OrderStatus.started:
        return '0xFFFFA07A';
      case OrderStatus.finished:
        return '0xFF00FF7F';
    }
  }
}
