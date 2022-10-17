import 'package:equatable/equatable.dart';

class SignInDTO extends Equatable {
  final String email;
  final String password;

  const SignInDTO({required this.email, required this.password});

  factory SignInDTO.fromJson(Map<String, dynamic> json) => SignInDTO(
        email: json['email'] as String,
        password: json['password'] as String,
      );

  Map<String, dynamic> toJson() => {'email': email, 'password': password};

  @override
  List<Object?> get props => [email, password];
}
