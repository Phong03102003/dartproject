import 'package:dartproject/province.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Province? province;

  group('Test Province:', () {
    //Kiểm tra xem có thể tạo đối tượng Province từ dữ liệu đầu vào không
    //Và kiểm tra tính đúng đắn của các trường dữ liệu.
    test('constructor', () {
      province = Province(
        id: "36",
        name: "Tỉnh Nam Định",
        level: "Tỉnh",
      );

      expect(province?.id, equals("36"));
      expect(province?.name, equals("Tỉnh Nam Định"));
      expect(province?.level, equals("Tỉnh"));
    });

    //Kiểm tra tính đồng nhất giữa hai đối tượng Province có cùng dữ liệu.
    test('equality', () {
      final province1 = Province(
        id: "36",
        name: "Tỉnh Nam Định",
        level: "Tỉnh",
      );

      final province2 = Province(
        id: "36",
        name: "Tỉnh Nam Định",
        level: "Tỉnh",
      );

      expect(province1, equals(province2));
    });

    //Kiểm tra tính khác biệt giữa hai đối tượng Province có dữ liệu khác nhau.
    test('inequality', () {
      final province1 = Province(
        id: "36",
        name: "Tỉnh Nam Định",
        level: "Tỉnh",
      );

      final province2 = Province(
        id: "30",
        name: "Tỉnh Hải Dương",
        level: "Tỉnh",
      );

      expect(province1, isNot(equals(province2)));
    });
  });
}
