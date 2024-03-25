// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map json) => User(
      id: json['id'] as String?,
      data: (json['data'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e),
      ),
      createdAt:
          const DateTimeUTCConverter().fromJson(json['created_at'] as String?),
      updatedAt:
          const DateTimeUTCConverter().fromJson(json['updated_at'] as String?),
      followersCount: json['followers_count'] as int?,
      followingCount: json['following_count'] as int?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'data': instance.data,
      'created_at': readonly(instance.createdAt),
      'updated_at': readonly(instance.updatedAt),
      'followers_count': readonly(instance.followersCount),
      'following_count': readonly(instance.followingCount),
    };
