// To parse this JSON data, do
//
//     final paquete = paqueteFromJson(jsonString);

import 'dart:convert';

PaqueteModel paqueteFromJson(String str) =>
    PaqueteModel.fromJson(json.decode(str));

String paqueteToJson(PaqueteModel data) => json.encode(data.toJson());

class PaqueteModel {
  String id;
  double peso;
  String contenido;
  bool prioritario;
  String tipoEnvoltura;
  int puntosAduanales;
  bool estado;
  String fragil;
  DateTime fechaCreacion;
  String direccionEntrega;
  double precioAPagar;

  PaqueteModel({
    this.id = '',
    this.peso = 0.0,
    this.contenido = '',
    this.prioritario = true,
    this.tipoEnvoltura = '',
    this.puntosAduanales = 0,
    this.estado = true,
    this.fragil = '',
    DateTime? fechaCreacion,
    this.direccionEntrega = '',
    this.precioAPagar = 0.0,
  }) : this.fechaCreacion = fechaCreacion ?? DateTime.now();

  factory PaqueteModel.fromJson(Map<String, dynamic> json) => PaqueteModel(
        id: json["id"],
        peso: json["peso"],
        contenido: json["contenido"],
        prioritario: json["prioritario"],
        tipoEnvoltura: json["tipoEnvoltura"],
        puntosAduanales: json["puntosAduanales"],
        estado: json["estado"],
        fragil: json["fragil"],
        fechaCreacion: json["fechaCreacion"],
        direccionEntrega: json["direccionEntrega"],
        precioAPagar: json["precio_a_pagar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "peso": peso,
        "contenido": contenido,
        "Prioritario": prioritario,
        "tipoEnvoltura": tipoEnvoltura,
        "PuntosAduanales": puntosAduanales,
        "Estado": estado,
        "Frafil": fragil,
        "fechaCreacion": fechaCreacion,
        "direccionEntrega": direccionEntrega,
        "precio_a_pagar": precioAPagar,
      };
}
