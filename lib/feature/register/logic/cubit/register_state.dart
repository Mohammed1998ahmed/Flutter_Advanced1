part of 'register_cubit.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}

final class RegisterLoading extends RegisterState {}

final class RegisterSecces extends RegisterState {}

final class RegisterError extends RegisterState {}

final class Chaing_Number_Phone extends RegisterState {}
