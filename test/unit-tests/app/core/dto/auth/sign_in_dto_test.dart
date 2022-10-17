import 'dart:convert';

import 'package:familys/app/core/core.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../fixtures/fixtures_reader.dart';

void main() {
  const tSignInDto = SignInDTO(email: 'test@gmail.com', password: '12345678');

  test('should return a valid SignInDTO from Json', () async {
    // arrange
    final Map<String, dynamic> jsonMapSignInDto =
        json.decode(fixture('sign_in_dto.json'));
    // act
    final result = SignInDTO.fromJson(jsonMapSignInDto);
    // assert
    expect(result, tSignInDto);
  });

  test('should return a JSON map containing the proper data', () async {
    // arrange
    final result = tSignInDto.toJson();
    // act
    final expectedMap = json.decode(fixture('sign_in_dto.json'));
    // assert
    expect(result, expectedMap);
  });
}
