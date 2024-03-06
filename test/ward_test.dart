import 'package:dartproject/ward.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Ward? ward;

  group('Test Ward:', () {
    //Kiểm tra xem có thể tạo đối tượng Ward từ dữ liệu đầu vào không
    //Và kiểm tra tính đúng đắn của các trường dữ liệu.
    test('constructor', () {
      ward = Ward(
        id: "14143",
        name: "Xã Xuân Ninh",
        level: "Xã",
        districtId: "364",
        provinceId: "36",
      );

      expect(ward?.id, equals("14143"));
      expect(ward?.name, equals("Xã Xuân Ninh"));
      expect(ward?.level, equals("Xã"));
      expect(ward?.districtId, equals("364"));
      expect(ward?.provinceId, equals("36"));
    });

    //Kiểm tra tính đồng nhất giữa hai đối tượng Ward có cùng dữ liệu.
    test('equality', () {
      final ward1 = Ward(
        id: "14143",
        name: "Xã Xuân Ninh",
        level: "Xã",
        districtId: "364",
        provinceId: "36",
      );

      final ward2 = Ward(
        id: "14143",
        name: "Xã Xuân Ninh",
        level: "Xã",
        districtId: "364",
        provinceId: "36",
      );

      expect(ward1, equals(ward2));
    });

    //Kiểm tra tính khác biệt giữa hai đối tượng Ward có dữ liệu khác nhau.
    test('inequality', () {
      final ward1 = Ward(
        id: "14143",
        name: "Xã Xuân Ninh",
        level: "Xã",
        districtId: "364",
        provinceId: "36",
      );

      final ward2 = Ward(
        id: "14146",
        name: "Xã Xuân Hòa",
        level: "Xã",
        districtId: "364",
        provinceId: "36",
      );

      expect(ward1, isNot(equals(ward2)));
    });
  });
}
