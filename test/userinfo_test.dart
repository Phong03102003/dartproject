import 'package:dartproject/addressInfo.dart';
import 'package:dartproject/district.dart';
import 'package:dartproject/province.dart';
import 'package:dartproject/user_info.dart';
import 'package:dartproject/ward.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Test UserInfo:', () {
    test('constructor', () {
      final userInfo = UserInfo(
        name: 'Nguyễn Hoàng Tùng Phong',
        email: 'tungphongnd2003@gmail.com',
        phoneNumber: '0328645197',
        birthDate: DateTime(2003, 10, 03),
        address: AddressInfo(
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
        ),
      );

      expect(userInfo.name, equals('Nguyễn Hoàng Tùng Phong'));
      expect(userInfo.email, equals('tungphongnd2003@gmail.com'));
      expect(userInfo.phoneNumber, equals('0328645197'));
      expect(userInfo.birthDate, equals(DateTime(2003, 10, 03)));
      expect(userInfo.address?.street, equals('Xóm 8 Làng Nghĩa Xá'));
    });

    test('fromMap', () {
      // Arrange
      final userData = {
        'name': 'Nguyễn Hoàng Tùng Phong',
        'email': 'tungphongnd2003@gmail.com',
        'phoneNumber': '0328645197',
        'birthDate': '2003-10-03',
        'address': {
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
        },
      };

      final userInfo = UserInfo.fromMap(userData);

      expect(userInfo.name, equals('Nguyễn Hoàng Tùng Phong'));
      expect(userInfo.email, equals('tungphongnd2003@gmail.com'));
      expect(userInfo.phoneNumber, equals('0328645197'));
      expect(userInfo.birthDate, equals(DateTime(2003, 10, 03)));
      expect(userInfo.address?.street, equals('Xóm 8 Làng Nghĩa Xá'));
    });
  });
}
