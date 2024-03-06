import 'package:dartproject/district.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  District? district;

  group('Test District:', () {
    //Kiểm tra xem có thể tạo đối tượng District từ dữ liệu đầu vào không
    //Và kiểm tra tính đúng đắn của các trường dữ liệu.
    test('constructor', () {
      district = District(
        id: "364",
        name: "Huyện Xuân Trường",
        level: "Huyện",
        provinceId: "36",
      );

      expect(district?.id, equals("364"));
      expect(district?.name, equals("Huyện Xuân Trường"));
      expect(district?.level, equals("Huyện"));
      expect(district?.provinceId, equals("36"));
    });

    //Kiểm tra tính đồng nhất giữa hai đối tượng District có cùng dữ liệu.
    test('equality', () {
      final district1 = District(
        id: "364",
        name: "Huyện Xuân Trường",
        level: "Huyện",
        provinceId: "36",
      );

      final district2 = District(
        id: "364",
        name: "Huyện Xuân Trường",
        level: "Huyện",
        provinceId: "36",
      );

      expect(district1, equals(district2));
    });

    //Kiểm tra tính khác biệt giữa hai đối tượng District có dữ liệu khác nhau.
    test('inequality', () {
      final district1 = District(
        id: "364",
        name: "Huyện Xuân Trường",
        level: "Huyện",
        provinceId: "36",
      );

      final district2 = District(
        id: "366",
        name: "Huyện Hải Hậu",
        level: "Huyện",
        provinceId: "36",
      );

      expect(district1, isNot(equals(district2)));
    });
  });
}
