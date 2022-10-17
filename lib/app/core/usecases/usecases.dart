import 'package:dartz/dartz.dart';

import '../core.dart';

abstract class UseCase<Output, Input> {
  Future<Either<Failure, Output?>> call(Input input);
}
