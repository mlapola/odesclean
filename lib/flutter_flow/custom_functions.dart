import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

String formatphone(String phone) {
  // Remove todos os caracteres que não são dígitos
  String cleaned = phone.replaceAll(RegExp(r'\D'), '');

  // Adiciona o código do país +55 se o número não tiver
  if (!cleaned.startsWith('55')) {
    cleaned = '55' + cleaned;
  }

  // Remove o código do país para análise de DDD e número
  String countryCode = cleaned.substring(0, 2);
  String remainingNumber = cleaned.substring(2);

  // Verifica se o número contém o DDD (2 primeiros dígitos após o país)
  if (remainingNumber.length < 10) {
    return phone; // Retorna o número original se for inválido
  }

  // Adiciona o dígito 9 se o número tiver apenas 8 dígitos (sem o 9)
  String areaCode = remainingNumber.substring(0, 2);
  String mainNumber = remainingNumber.substring(2);

  if (mainNumber.length == 8) {
    mainNumber = '9' + mainNumber;
  }

  // Formata o número no estilo +55 (XX) 9XXXX-XXXX
  return '+$countryCode ($areaCode) ${mainNumber.substring(0, 5)}-${mainNumber.substring(5)}';
}

double percent(
  int atual,
  int inicial,
) {
  // Verifica se o valor inicial é 0 para evitar divisão por zero
  if (inicial == 0) {
    return 0.0;
  }

  // Calcula a porcentagem inversa: quanto mais baixo o valor atual, maior o percentual
  double proporcao = 1 - (atual / inicial);

  // Certifica-se de que o valor esteja entre 0.0 e 1.0
  return proporcao.clamp(0.0, 1.0);
}

String formatdate(
  String date,
  String hour,
) {
  // Combine date and hour into a single string
  String dateTimeString = '$date $hour';

  // Parse the combined string into a DateTime object using the correct format
  DateTime dateTime = DateFormat("dd/MM/yyyy HH:mm").parse(dateTimeString);

  // Add 3 hours to adjust for the timezone difference
  dateTime = dateTime.add(Duration(hours: 3));

  // Format the DateTime object to the desired ISO 8601 format
  String formattedDate =
      DateFormat("yyyy-MM-ddTHH:mm:ss.SSSSSS").format(dateTime);

  return formattedDate;
}

List<String>? returnlist(List<String> inputs) {
  // Check if inputs is null, return ["Todos"] if it is
  if (inputs == null || inputs.isEmpty) {
    return ["Todos"];
  }

  // Remove duplicates by converting to a Set and back to a List
  List<String> uniqueItems = inputs.toSet().toList();

  // Sort the list alphabetically (optional)
  uniqueItems.sort();

  // Add "Todos" at the beginning of the list
  uniqueItems.insert(0, "Todos");

  return uniqueItems;
}

DateTime todate(String date) {
// Analisando a string da data no formato ISO 8601 para um objeto DateTime em UTC.
  DateTime utcDateTime = DateTime.parse(date);

  // Convertendo o DateTime UTC para o fuso horário UTC-3.
  DateTime localDateTime = utcDateTime.subtract(Duration(hours: 3));

  // Retornando o DateTime ajustado para UTC-3.
  return localDateTime;
}

bool tobool(String boole) {
  // Convertendo a string para minúsculas para evitar problemas de case sensitivity.
  String lowerBoole = boole.toLowerCase();

  // Retornando true se a string for "true", caso contrário retorna false.
  return lowerBoole == 'true';
}

dynamic returnnumber(
  List<String>? numbers,
  List<String>? nomes,
) {
  // Verifica se as listas são nulas ou vazias
  if (numbers == null || nomes == null || numbers.isEmpty || nomes.isEmpty) {
    return null; // Retorna nulo se não houver números ou nomes
  }

  // Verifica se as listas têm o mesmo tamanho
  if (numbers.length != nomes.length) {
    return null; // Retorna nulo se as listas não tiverem o mesmo tamanho
  }

  // Cria uma lista de mapas para armazenar os pares Nome e Telefone
  List<Map<String, String>> pairs = [];

  for (int i = 0; i < numbers.length; i++) {
    pairs.add({
      'Nome': nomes[i],
      'Numero': numbers[i], // Altera 'Telefone' para 'Numero'
    });
  }

  // Converte a lista de mapas para uma string JSON
  String jsonString = jsonEncode(pairs);

  // Retorna a string JSON como uma lista, que pode ser interpretada como JSON
  return jsonDecode(jsonString); // Retorna a lista decodificada
}
