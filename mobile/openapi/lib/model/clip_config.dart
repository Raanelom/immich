//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CLIPConfig {
  /// Returns a new [CLIPConfig] instance.
  CLIPConfig({
    required this.enabled,
    required this.modelName,
    required this.videoFrameInterval,
    required this.videoFrameStrategy,
    required this.videoMaxFrames,
    required this.videoSceneThreshold,
  });

  /// Whether the task is enabled
  bool enabled;

  /// Name of the model to use
  String modelName;

  /// Interval in seconds between extracted frames (time-based strategy)
  ///
  /// Minimum value: 1
  /// Maximum value: 9007199254740991
  int videoFrameInterval;

  /// Strategy for extracting frames from videos: time-based intervals or scene-change detection
  CLIPConfigVideoFrameStrategyEnum videoFrameStrategy;

  /// Maximum number of frames to extract per video
  ///
  /// Minimum value: 1
  /// Maximum value: 9007199254740991
  int videoMaxFrames;

  /// Scene change detection threshold (scene-based strategy, lower = more sensitive)
  ///
  /// Minimum value: 0.01
  /// Maximum value: 1
  double videoSceneThreshold;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CLIPConfig &&
    other.enabled == enabled &&
    other.modelName == modelName &&
    other.videoFrameInterval == videoFrameInterval &&
    other.videoFrameStrategy == videoFrameStrategy &&
    other.videoMaxFrames == videoMaxFrames &&
    other.videoSceneThreshold == videoSceneThreshold;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled.hashCode) +
    (modelName.hashCode) +
    (videoFrameInterval.hashCode) +
    (videoFrameStrategy.hashCode) +
    (videoMaxFrames.hashCode) +
    (videoSceneThreshold.hashCode);

  @override
  String toString() => 'CLIPConfig[enabled=$enabled, modelName=$modelName, videoFrameInterval=$videoFrameInterval, videoFrameStrategy=$videoFrameStrategy, videoMaxFrames=$videoMaxFrames, videoSceneThreshold=$videoSceneThreshold]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'enabled'] = this.enabled;
      json[r'modelName'] = this.modelName;
      json[r'videoFrameInterval'] = this.videoFrameInterval;
      json[r'videoFrameStrategy'] = this.videoFrameStrategy;
      json[r'videoMaxFrames'] = this.videoMaxFrames;
      json[r'videoSceneThreshold'] = this.videoSceneThreshold;
    return json;
  }

  /// Returns a new [CLIPConfig] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CLIPConfig? fromJson(dynamic value) {
    upgradeDto(value, "CLIPConfig");
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return CLIPConfig(
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        modelName: mapValueOfType<String>(json, r'modelName')!,
        videoFrameInterval: mapValueOfType<int>(json, r'videoFrameInterval')!,
        videoFrameStrategy: CLIPConfigVideoFrameStrategyEnum.fromJson(json[r'videoFrameStrategy'])!,
        videoMaxFrames: mapValueOfType<int>(json, r'videoMaxFrames')!,
        videoSceneThreshold: mapValueOfType<double>(json, r'videoSceneThreshold')!,
      );
    }
    return null;
  }

  static List<CLIPConfig> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CLIPConfig>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CLIPConfig.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CLIPConfig> mapFromJson(dynamic json) {
    final map = <String, CLIPConfig>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CLIPConfig.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CLIPConfig-objects as value to a dart map
  static Map<String, List<CLIPConfig>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CLIPConfig>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CLIPConfig.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'enabled',
    'modelName',
    'videoFrameInterval',
    'videoFrameStrategy',
    'videoMaxFrames',
    'videoSceneThreshold',
  };
}

/// Strategy for extracting frames from videos: time-based intervals or scene-change detection
class CLIPConfigVideoFrameStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const CLIPConfigVideoFrameStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const time = CLIPConfigVideoFrameStrategyEnum._(r'time');
  static const scene = CLIPConfigVideoFrameStrategyEnum._(r'scene');

  /// List of all possible values in this [enum][CLIPConfigVideoFrameStrategyEnum].
  static const values = <CLIPConfigVideoFrameStrategyEnum>[
    time,
    scene,
  ];

  static CLIPConfigVideoFrameStrategyEnum? fromJson(dynamic value) => CLIPConfigVideoFrameStrategyEnumTypeTransformer().decode(value);

  static List<CLIPConfigVideoFrameStrategyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CLIPConfigVideoFrameStrategyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CLIPConfigVideoFrameStrategyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CLIPConfigVideoFrameStrategyEnum] to String,
/// and [decode] dynamic data back to [CLIPConfigVideoFrameStrategyEnum].
class CLIPConfigVideoFrameStrategyEnumTypeTransformer {
  factory CLIPConfigVideoFrameStrategyEnumTypeTransformer() => _instance ??= const CLIPConfigVideoFrameStrategyEnumTypeTransformer._();

  const CLIPConfigVideoFrameStrategyEnumTypeTransformer._();

  String encode(CLIPConfigVideoFrameStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CLIPConfigVideoFrameStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CLIPConfigVideoFrameStrategyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'time': return CLIPConfigVideoFrameStrategyEnum.time;
        case r'scene': return CLIPConfigVideoFrameStrategyEnum.scene;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CLIPConfigVideoFrameStrategyEnumTypeTransformer] instance.
  static CLIPConfigVideoFrameStrategyEnumTypeTransformer? _instance;
}


