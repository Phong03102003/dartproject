import 'package:dartproject/addressInfo.dart';
import 'package:dartproject/district.dart';
import 'package:dartproject/province.dart';
import 'package:dartproject/ward.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Test AddressInfo:', () {
    test('constructor', () {
      // Arrange
      final address = AddressInfo(
        province: Province(id: '36', name: 'Tỉnh Nam Định', level: 'Tỉnh'),
        district: District(
            id: '364',
            name: 'Huyện Xuân Trường',
            level: 'Huyện',
            provinceId: '36'),
        ward: Ward(
            id: '14143',
            name: "Xã Xuân Ninh",
            level: "Xã",
            districtId: "364",
            provinceId: "36"),
        street: 'Xóm 8 Làng Nghĩa Xá',
      );

      // Assert
      expect(address.province?.id, equals('36'));
      expect(address.district?.id, equals('364'));
      expect(address.ward?.id, equals('14143'));
      expect(address.street, equals('Xóm 8 Làng Nghĩa Xá'));
    });

    //Test case fromMap kiểm tra tính đúng đắn của phương thức fromMap để tạo đối tượng từ một dữ liệu kiểu Map.
    test('fromMap', () {
      // Arrange
      final addressData = {
        'province': {'id': '36', 'name': 'Tỉnh Nam Định', 'level': 'Tỉnh'},
        'district': {
          'id': '364',
          'name': 'Huyện Xuân Trường',
          'level': 'Huyện',
          'provinceId': '36',
        },
        'ward': {
          'id': '14143',
          'name': "Xã Xuân Ninh",
          'level': "Xã",
          'districtId': "364",
          'provinceId': "36",
        },
        'street': 'Xóm 8 Làng Nghĩa Xá',
      };

      // Act
      final address = AddressInfo.fromMap(addressData);

      // Assert
      expect(address.province?.id, equals('36'));
      expect(address.district?.id, equals('364'));
      expect(address.ward?.id, equals('14143'));
      expect(address.street, equals('Xóm 8 Làng Nghĩa Xá'));
    });
  });
}
