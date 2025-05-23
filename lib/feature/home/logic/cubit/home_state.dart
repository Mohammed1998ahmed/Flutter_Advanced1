part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeSpecializationLoading extends HomeState {}

final class HomeSpecializationSecces extends HomeState {}

final class HomeSpecializationError extends HomeState {}
