import 'package:car_rental_for_customer/models/car.dart';
import 'package:car_rental_for_customer/models/enums/car_feature.dart';
import 'package:car_rental_for_customer/models/enums/car_type.dart';
import 'package:car_rental_for_customer/models/enums/fuel.dart';
import 'package:car_rental_for_customer/models/enums/transmission.dart';

final carMock = [
  const Car(
    id: '1',
    name: 'Car 1',
    images: [
      'https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/toyota_innova_e_2019/p/g/2020/06/26/14/k0SybbW2AMwoPzcqKHOPdQ.jpg',
      'https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/toyota_innova_e_2019/p/g/2020/06/26/14/LWfoTpmM0uTbWXhWLnnA7Q.jpg',
      'https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/toyota_innova_e_2019/p/g/2020/06/26/14/XHSh0Pgk5X-9M54G9BUepA.jpg',
    ],
    price: 1234,
    carType: CarType.sedan,
    brand: 'Toyota',
    transmission: Transmission.automatic,
    fuel: Fuel.gasoline,
    description:
        'Xe Honda Civic số tự động đăng ký tháng 10/2018. Xe gia đình mới đẹp, nội thất nguyên bản, sạch sẽ, bảo dưỡng thường xuyên, rửa xe miễn phí cho khách. Xe rộng rãi, an toàn, tiện nghi, phù hợp gia đình du lịch, dạo phố.\n\nXe trang bị cruise control, hệ thống hỗ trợ đánh lái tự động, đi rất nhẹ và khỏe. Cammera lùi, hệ thống giải trí, AV cùng nhiều tiện ích khác ...',
    carFeatures: [
      CarFeature.bluetooth,
      CarFeature.camera,
      CarFeature.speedWarning,
      CarFeature.gps,
      CarFeature.usb,
      CarFeature.collisionSensor,
      CarFeature.safetyAirbag,
      CarFeature.nonStopTollCollection,
    ],
    collateral:
        '15 triệu (tiền mặt/chuyển khoản cho chủ xe khi nhận xe) hoặc Xe máy (kèm cà vẹt gốc) giá trị 15 triệu',
    rules:
        'Quy định khác:\n◦ Sử dụng xe đúng mục đích.\n◦ Không sử dụng xe thuê vào mục đích phi pháp, trái pháp luật.\n◦ Không sử dụng xe thuê để cầm cố, thế chấp.\n◦ Không hút thuốc, nhả kẹo cao su, xả rác trong xe.\n◦ Không chở hàng quốc cấm dễ cháy nổ.\n◦ Không chở hoa quả, thực phẩm nặng mùi trong xe.\n◦ Khi trả xe, nếu xe bẩn hoặc có mùi trong xe, khách hàng vui lòng vệ sinh xe sạch sẽ hoặc gửi phụ thu phí vệ sinh xe.\nTrân trọng cảm ơn, chúc quý khách hàng có những chuyến đi tuyệt vời !',
    location: 'District 10 Ho Chi Minh',
    rate: 4.5,
    numberTrip: 100,
  ),
  const Car(
    id: '2',
    name: 'Car 2',
    images: [
      'https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/toyota_innova_e_2019/p/g/2020/06/26/14/k0SybbW2AMwoPzcqKHOPdQ.jpg',
      'https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/toyota_innova_e_2019/p/g/2020/06/26/14/LWfoTpmM0uTbWXhWLnnA7Q.jpg',
      'https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/toyota_innova_e_2019/p/g/2020/06/26/14/XHSh0Pgk5X-9M54G9BUepA.jpg',
    ],
    price: 1234,
    carType: CarType.sedan,
    brand: 'Toyota',
    transmission: Transmission.automatic,
    fuel: Fuel.gasoline,
    description:
        'Xe Honda Civic số tự động đăng ký tháng 10/2018. Xe gia đình mới đẹp, nội thất nguyên bản, sạch sẽ, bảo dưỡng thường xuyên, rửa xe miễn phí cho khách. Xe rộng rãi, an toàn, tiện nghi, phù hợp gia đình du lịch, dạo phố.\n\nXe trang bị cruise control, hệ thống hỗ trợ đánh lái tự động, đi rất nhẹ và khỏe. Cammera lùi, hệ thống giải trí, AV cùng nhiều tiện ích khác ...',
    carFeatures: [
      CarFeature.bluetooth,
      CarFeature.camera,
      CarFeature.speedWarning,
      CarFeature.gps,
      CarFeature.usb,
      CarFeature.collisionSensor,
      CarFeature.safetyAirbag,
      CarFeature.nonStopTollCollection,
    ],
    collateral:
        '15 triệu (tiền mặt/chuyển khoản cho chủ xe khi nhận xe) hoặc Xe máy (kèm cà vẹt gốc) giá trị 15 triệu',
    rules:
        'Quy định khác:\n◦ Sử dụng xe đúng mục đích.\n◦ Không sử dụng xe thuê vào mục đích phi pháp, trái pháp luật.\n◦ Không sử dụng xe thuê để cầm cố, thế chấp.\n◦ Không hút thuốc, nhả kẹo cao su, xả rác trong xe.\n◦ Không chở hàng quốc cấm dễ cháy nổ.\n◦ Không chở hoa quả, thực phẩm nặng mùi trong xe.\n◦ Khi trả xe, nếu xe bẩn hoặc có mùi trong xe, khách hàng vui lòng vệ sinh xe sạch sẽ hoặc gửi phụ thu phí vệ sinh xe.\nTrân trọng cảm ơn, chúc quý khách hàng có những chuyến đi tuyệt vời !',
    location: 'District 10 Ho Chi Minh',
    rate: 4.5,
    numberTrip: 1000,
  ),
  const Car(
    id: '3',
    name: 'Car 3',
    images: [
      'https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/toyota_innova_e_2019/p/g/2020/06/26/14/k0SybbW2AMwoPzcqKHOPdQ.jpg',
      'https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/toyota_innova_e_2019/p/g/2020/06/26/14/LWfoTpmM0uTbWXhWLnnA7Q.jpg',
      'https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/toyota_innova_e_2019/p/g/2020/06/26/14/XHSh0Pgk5X-9M54G9BUepA.jpg',
    ],
    price: 1234,
    carType: CarType.sedan,
    brand: 'Toyota',
    transmission: Transmission.automatic,
    fuel: Fuel.gasoline,
    description:
        'Xe Honda Civic số tự động đăng ký tháng 10/2018. Xe gia đình mới đẹp, nội thất nguyên bản, sạch sẽ, bảo dưỡng thường xuyên, rửa xe miễn phí cho khách. Xe rộng rãi, an toàn, tiện nghi, phù hợp gia đình du lịch, dạo phố.\n\nXe trang bị cruise control, hệ thống hỗ trợ đánh lái tự động, đi rất nhẹ và khỏe. Cammera lùi, hệ thống giải trí, AV cùng nhiều tiện ích khác ...',
    carFeatures: [
      CarFeature.bluetooth,
      CarFeature.camera,
      CarFeature.speedWarning,
      CarFeature.gps,
      CarFeature.usb,
      CarFeature.collisionSensor,
      CarFeature.safetyAirbag,
      CarFeature.nonStopTollCollection,
    ],
    collateral:
        '15 triệu (tiền mặt/chuyển khoản cho chủ xe khi nhận xe) hoặc Xe máy (kèm cà vẹt gốc) giá trị 15 triệu',
    rules:
        'Quy định khác:\n◦ Sử dụng xe đúng mục đích.\n◦ Không sử dụng xe thuê vào mục đích phi pháp, trái pháp luật.\n◦ Không sử dụng xe thuê để cầm cố, thế chấp.\n◦ Không hút thuốc, nhả kẹo cao su, xả rác trong xe.\n◦ Không chở hàng quốc cấm dễ cháy nổ.\n◦ Không chở hoa quả, thực phẩm nặng mùi trong xe.\n◦ Khi trả xe, nếu xe bẩn hoặc có mùi trong xe, khách hàng vui lòng vệ sinh xe sạch sẽ hoặc gửi phụ thu phí vệ sinh xe.\nTrân trọng cảm ơn, chúc quý khách hàng có những chuyến đi tuyệt vời !',
    location: 'District 10 Ho Chi Minh',
    rate: 4.5,
    numberTrip: 1000,
  ),
  const Car(
      id: '4',
      name: 'Car 4',
      images: [
        'https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/toyota_innova_e_2019/p/g/2020/06/26/14/k0SybbW2AMwoPzcqKHOPdQ.jpg',
        'https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/toyota_innova_e_2019/p/g/2020/06/26/14/LWfoTpmM0uTbWXhWLnnA7Q.jpg',
        'https://n1-pstg.mioto.vn/cho_thue_xe_o_to_tu_lai_thue_xe_du_lich_hochiminh/toyota_innova_e_2019/p/g/2020/06/26/14/XHSh0Pgk5X-9M54G9BUepA.jpg',
      ],
      price: 1234,
      carType: CarType.sedan,
      brand: 'Toyota',
      transmission: Transmission.automatic,
      fuel: Fuel.gasoline,
      description:
          'Xe Honda Civic số tự động đăng ký tháng 10/2018. Xe gia đình mới đẹp, nội thất nguyên bản, sạch sẽ, bảo dưỡng thường xuyên, rửa xe miễn phí cho khách. Xe rộng rãi, an toàn, tiện nghi, phù hợp gia đình du lịch, dạo phố.\n\nXe trang bị cruise control, hệ thống hỗ trợ đánh lái tự động, đi rất nhẹ và khỏe. Cammera lùi, hệ thống giải trí, AV cùng nhiều tiện ích khác ...',
      carFeatures: [
        CarFeature.bluetooth,
        CarFeature.camera,
        CarFeature.speedWarning,
        CarFeature.gps,
        CarFeature.usb,
        CarFeature.collisionSensor,
        CarFeature.safetyAirbag,
        CarFeature.nonStopTollCollection,
      ],
      collateral:
          '15 triệu (tiền mặt/chuyển khoản cho chủ xe khi nhận xe) hoặc Xe máy (kèm cà vẹt gốc) giá trị 15 triệu',
      rules:
          'Quy định khác:\n◦ Sử dụng xe đúng mục đích.\n◦ Không sử dụng xe thuê vào mục đích phi pháp, trái pháp luật.\n◦ Không sử dụng xe thuê để cầm cố, thế chấp.\n◦ Không hút thuốc, nhả kẹo cao su, xả rác trong xe.\n◦ Không chở hàng quốc cấm dễ cháy nổ.\n◦ Không chở hoa quả, thực phẩm nặng mùi trong xe.\n◦ Khi trả xe, nếu xe bẩn hoặc có mùi trong xe, khách hàng vui lòng vệ sinh xe sạch sẽ hoặc gửi phụ thu phí vệ sinh xe.\nTrân trọng cảm ơn, chúc quý khách hàng có những chuyến đi tuyệt vời !',
      location: 'District 10 Ho Chi Minh',
      rate: 4.5,
      numberTrip: 1234),
];
