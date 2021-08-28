import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'home_screen_state.freezed.dart';

@freezed
abstract class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({

    @Default('バトル中のポケモン') String title,

    @Default(0) int pokemon,

    @Default(0) int pokemon1,
    @Default(0) int pokemon2,
    @Default(0) int pokemon3,
    @Default(0) int pokemon4,
    @Default(0) int pokemon5,
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

  int damage = 0;
  int damage1 = 0;
  int damage2 = 0;
  int damage3 = 0;
  int damage4 = 0;
  int damage5 = 0;

  int count = 0;

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

    state = state.copyWith(
      title: 'バトル中のポケモン',
    );
  }

  void pokemon1() {
    isPokemon = false;
    isPokemon1 = true;
    isPokemon2 = false;
    isPokemon3 = false;
    isPokemon4 = false;
    isPokemon5 = false;
    state = state.copyWith(
      title: 'ベンチのポケモン①',
    );
  }

  void pokemon2() {
    isPokemon = false;
    isPokemon1 = false;
    isPokemon2 = true;
    isPokemon3 = false;
    isPokemon4 = false;
    isPokemon5 = false;
    state = state.copyWith(
      title: 'ベンチのポケモン②',
    );
  }

  void pokemon3() {
    isPokemon = false;
    isPokemon1 = false;
    isPokemon2 = false;
    isPokemon3 = true;
    isPokemon4 = false;
    isPokemon5 = false;
    state = state.copyWith(
      title: 'ベンチのポケモン③',
    );
  }
  void pokemon4() {
    isPokemon = false;
    isPokemon1 = false;
    isPokemon2 = false;
    isPokemon3 = false;
    isPokemon4 = true;
    isPokemon5 = false;
    state = state.copyWith(
      title: 'ベンチのポケモン④',
    );
  }

  void pokemon5() {
    isPokemon = false;
    isPokemon1 = false;
    isPokemon2 = false;
    isPokemon3 = false;
    isPokemon4 = false;
    isPokemon5 = true;
    state = state.copyWith(
      title: 'ベンチのポケモン⑤',
    );
  }

  void damage10() {

    // Parser p = Parser();
    // ContextModel cm = ContextModel();
    // Expression exp = p.parse(amount3);
    // _exp3 = exp.evaluate(EvaluationType.REAL, cm).toString();

    if(isPokemon) {
      state = state.copyWith(
        pokemon: damage = damage + 10,
      );
    }
    if(isPokemon1) {
      state = state.copyWith(
        pokemon1: damage1 = damage1 + 10,
      );
    }
    if(isPokemon2) {
      state = state.copyWith(
        pokemon2: damage2 = damage2 + 10,
      );
    }
    if(isPokemon3) {
      state = state.copyWith(
        pokemon3: damage3 = damage3 + 10,
      );
    }
    if(isPokemon4) {
      state = state.copyWith(
        pokemon4: damage4 = damage4 + 10,
      );
    }
    if(isPokemon5) {
      state = state.copyWith(
        pokemon5: damage5 = damage5 + 10,
      );
    }

  }

  void damage50() {
    if(isPokemon) {
      state = state.copyWith(
        pokemon: damage = damage + 50,
      );
    }
    if(isPokemon1) {
      state = state.copyWith(
        pokemon1: damage1 = damage1 + 50,
      );
    }
    if(isPokemon2) {
      state = state.copyWith(
        pokemon2: damage2 = damage2 + 50,
      );
    }
    if(isPokemon3) {
      state = state.copyWith(
        pokemon3: damage3 = damage3 + 50,
      );
    }
    if(isPokemon4) {
      state = state.copyWith(
        pokemon4: damage4 = damage4 + 50,
      );
    }
    if(isPokemon5) {
      state = state.copyWith(
        pokemon5: damage5 = damage5 + 50,
      );
    }
  }

  void damage100() {
    if(isPokemon) {
      state = state.copyWith(
        pokemon: damage = damage + 100,
      );
    }
    if(isPokemon1) {
      state = state.copyWith(
        pokemon1: damage1 = damage1 + 100,
      );
    }
    if(isPokemon2) {
      state = state.copyWith(
        pokemon2: damage2 = damage2 + 100,
      );
    }
    if(isPokemon3) {
      state = state.copyWith(
        pokemon3: damage3 = damage3 + 100,
      );
    }
    if(isPokemon4) {
      state = state.copyWith(
        pokemon4: damage4 = damage4 + 100,
      );
    }
    if(isPokemon5) {
      state = state.copyWith(
        pokemon5: damage5 = damage5 + 100,
      );
    }
  }


  void reset() {
    state = state.copyWith(
      pokemon: 0,
      pokemon1: 0,
      pokemon2: 0,
      pokemon3: 0,
      pokemon4: 0,
      pokemon5: 0,
    );
  }

}
