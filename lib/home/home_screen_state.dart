import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'home_screen_state.freezed.dart';

@freezed
abstract class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    @Default('') String pokemon,

    @Default('') String pokemon1,
    @Default('') String pokemon2,
    @Default('') String pokemon3,
    @Default('') String pokemon4,
    @Default('') String pokemon5,
  }) = _HomeScreenState;
}

class HomeScreenController extends StateNotifier<HomeScreenState>
    with LocatorMixin {
  HomeScreenController({
    required this.context,
    this.isPokemon = true,
    this.isPokemon1 = false,
    this.isPokemon2 = false,
    this.isPokemon3 = false,
    this.isPokemon4 = false,
    this.isPokemon5 = false,
  }) : super(const HomeScreenState());

  final BuildContext context;
  bool isPokemon;
  bool isPokemon1;
  bool isPokemon2;
  bool isPokemon3;
  bool isPokemon4;
  bool isPokemon5;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void pokemon() {
    isPokemon = true;
    isPokemon1 = false;
    isPokemon2 = false;
    isPokemon3 = false;
    isPokemon4 = false;
    isPokemon5 = false;

    print(isPokemon);
  }

  void pokemon1() {
    isPokemon = false;
    isPokemon1 = true;
    isPokemon2 = false;
    isPokemon3 = false;
    isPokemon4 = false;
    isPokemon5 = false;
    print(isPokemon1);
  }

  void pokemon2() {
    isPokemon = false;
    isPokemon1 = false;
    isPokemon2 = true;
    isPokemon3 = false;
    isPokemon4 = false;
    isPokemon5 = false;
    print(isPokemon2);
  }

  void pokemon3() {
    isPokemon = false;
    isPokemon1 = false;
    isPokemon2 = false;
    isPokemon3 = true;
    isPokemon4 = false;
    isPokemon5 = false;
    print(isPokemon3);
  }
  void pokemon4() {
    isPokemon = false;
    isPokemon1 = false;
    isPokemon2 = false;
    isPokemon3 = false;
    isPokemon4 = true;
    isPokemon5 = false;
    print(isPokemon4);
  }

  void pokemon5() {
    isPokemon = false;
    isPokemon1 = false;
    isPokemon2 = false;
    isPokemon3 = false;
    isPokemon4 = false;
    isPokemon5 = true;
    print(isPokemon5);
  }

  void damage10() {




    if(isPokemon) {
      state = state.copyWith(
        pokemon: '1',
      );
    }
    if(isPokemon1) {
      state = state.copyWith(
        pokemon1: '2',
      );
    }
    if(isPokemon2) {
      state = state.copyWith(
        pokemon2: '3',
      );
    }
    if(isPokemon3) {
      state = state.copyWith(
        pokemon3: '4'
      );
    }
    if(isPokemon4) {
      state = state.copyWith(
        pokemon4: '5',
      );
    }
    if(isPokemon5) {
      state = state.copyWith(
        pokemon5: '6',
      );
    }

  }

  void damage50() {

  }

  void damage100() {

  }

}
