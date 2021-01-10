part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;

  User({
    this.id,
    this.name,
    this.email,
    this.address,
    this.houseNumber,
    this.phoneNumber,
    this.city,
    this.picturePath,
  });

  @override
  List<Object> get props =>
      [id, name, address, houseNumber, phoneNumber, city, picturePath];
}

User mockUser = User(
    id: 1,
    name: 'Mbak eme',
    address: 'jalan jalanin aja',
    houseNumber: '19',
    phoneNumber: '0080884141',
    city: 'jakarta',
    email: 'eme-chan@mail.com',
    picturePath: 'assets/aimer.png');
