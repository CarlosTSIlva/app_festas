// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alugators_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlugatorResponse _$AlugatorResponseFromJson(Map<String, dynamic> json) =>
    AlugatorResponse(
      json['initialDate'] as String,
      json['finalDate'] as String,
      json['clientName'] as String,
      json['clientPhone'] as String,
      json['clientEndereco'] as String,
      json['brinquedosAlugados'] as String,
    );

Map<String, dynamic> _$AlugatorResponseToJson(AlugatorResponse instance) =>
    <String, dynamic>{
      'initialDate': instance.initialDate,
      'finalDate': instance.finalDate,
      'clientName': instance.clientName,
      'clientPhone': instance.clientPhone,
      'clientEndereco': instance.clientEndereco,
      'brinquedosAlugados': instance.brinquedosAlugados,
    };
