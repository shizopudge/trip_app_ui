// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resort.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Resort _$ResortFromJson(Map<String, dynamic> json) {
  return _Resort.fromJson(json);
}

/// @nodoc
mixin _$Resort {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  TripType get tripType => throw _privateConstructorUsedError;
  Landscape get landscape => throw _privateConstructorUsedError;
  List<Hotel> get hotels => throw _privateConstructorUsedError;
  List<Tour> get tours => throw _privateConstructorUsedError;
  Country get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResortCopyWith<Resort> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResortCopyWith<$Res> {
  factory $ResortCopyWith(Resort value, $Res Function(Resort) then) =
      _$ResortCopyWithImpl<$Res, Resort>;
  @useResult
  $Res call(
      {String id,
      String title,
      String image,
      TripType tripType,
      Landscape landscape,
      List<Hotel> hotels,
      List<Tour> tours,
      Country country});

  $TripTypeCopyWith<$Res> get tripType;
  $LandscapeCopyWith<$Res> get landscape;
  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class _$ResortCopyWithImpl<$Res, $Val extends Resort>
    implements $ResortCopyWith<$Res> {
  _$ResortCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? tripType = null,
    Object? landscape = null,
    Object? hotels = null,
    Object? tours = null,
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      tripType: null == tripType
          ? _value.tripType
          : tripType // ignore: cast_nullable_to_non_nullable
              as TripType,
      landscape: null == landscape
          ? _value.landscape
          : landscape // ignore: cast_nullable_to_non_nullable
              as Landscape,
      hotels: null == hotels
          ? _value.hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<Hotel>,
      tours: null == tours
          ? _value.tours
          : tours // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TripTypeCopyWith<$Res> get tripType {
    return $TripTypeCopyWith<$Res>(_value.tripType, (value) {
      return _then(_value.copyWith(tripType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LandscapeCopyWith<$Res> get landscape {
    return $LandscapeCopyWith<$Res>(_value.landscape, (value) {
      return _then(_value.copyWith(landscape: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CountryCopyWith<$Res> get country {
    return $CountryCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResortCopyWith<$Res> implements $ResortCopyWith<$Res> {
  factory _$$_ResortCopyWith(_$_Resort value, $Res Function(_$_Resort) then) =
      __$$_ResortCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String image,
      TripType tripType,
      Landscape landscape,
      List<Hotel> hotels,
      List<Tour> tours,
      Country country});

  @override
  $TripTypeCopyWith<$Res> get tripType;
  @override
  $LandscapeCopyWith<$Res> get landscape;
  @override
  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class __$$_ResortCopyWithImpl<$Res>
    extends _$ResortCopyWithImpl<$Res, _$_Resort>
    implements _$$_ResortCopyWith<$Res> {
  __$$_ResortCopyWithImpl(_$_Resort _value, $Res Function(_$_Resort) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? tripType = null,
    Object? landscape = null,
    Object? hotels = null,
    Object? tours = null,
    Object? country = null,
  }) {
    return _then(_$_Resort(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      tripType: null == tripType
          ? _value.tripType
          : tripType // ignore: cast_nullable_to_non_nullable
              as TripType,
      landscape: null == landscape
          ? _value.landscape
          : landscape // ignore: cast_nullable_to_non_nullable
              as Landscape,
      hotels: null == hotels
          ? _value._hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<Hotel>,
      tours: null == tours
          ? _value._tours
          : tours // ignore: cast_nullable_to_non_nullable
              as List<Tour>,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Resort implements _Resort {
  const _$_Resort(
      {required this.id,
      required this.title,
      required this.image,
      required this.tripType,
      required this.landscape,
      required final List<Hotel> hotels,
      required final List<Tour> tours,
      required this.country})
      : _hotels = hotels,
        _tours = tours;

  factory _$_Resort.fromJson(Map<String, dynamic> json) =>
      _$$_ResortFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String image;
  @override
  final TripType tripType;
  @override
  final Landscape landscape;
  final List<Hotel> _hotels;
  @override
  List<Hotel> get hotels {
    if (_hotels is EqualUnmodifiableListView) return _hotels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hotels);
  }

  final List<Tour> _tours;
  @override
  List<Tour> get tours {
    if (_tours is EqualUnmodifiableListView) return _tours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tours);
  }

  @override
  final Country country;

  @override
  String toString() {
    return 'Resort(id: $id, title: $title, image: $image, tripType: $tripType, landscape: $landscape, hotels: $hotels, tours: $tours, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Resort &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.tripType, tripType) ||
                other.tripType == tripType) &&
            (identical(other.landscape, landscape) ||
                other.landscape == landscape) &&
            const DeepCollectionEquality().equals(other._hotels, _hotels) &&
            const DeepCollectionEquality().equals(other._tours, _tours) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      image,
      tripType,
      landscape,
      const DeepCollectionEquality().hash(_hotels),
      const DeepCollectionEquality().hash(_tours),
      country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResortCopyWith<_$_Resort> get copyWith =>
      __$$_ResortCopyWithImpl<_$_Resort>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResortToJson(
      this,
    );
  }
}

abstract class _Resort implements Resort {
  const factory _Resort(
      {required final String id,
      required final String title,
      required final String image,
      required final TripType tripType,
      required final Landscape landscape,
      required final List<Hotel> hotels,
      required final List<Tour> tours,
      required final Country country}) = _$_Resort;

  factory _Resort.fromJson(Map<String, dynamic> json) = _$_Resort.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get image;
  @override
  TripType get tripType;
  @override
  Landscape get landscape;
  @override
  List<Hotel> get hotels;
  @override
  List<Tour> get tours;
  @override
  Country get country;
  @override
  @JsonKey(ignore: true)
  _$$_ResortCopyWith<_$_Resort> get copyWith =>
      throw _privateConstructorUsedError;
}
