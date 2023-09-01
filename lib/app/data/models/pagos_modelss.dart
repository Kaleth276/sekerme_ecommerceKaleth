

class PagosModel  {

  final String usuario;
  final String fechaDePago;
  final String metodoPago;
  final double monto;
  final String estadoPago;

  const PagosModel({

    required this.usuario,
    required this.fechaDePago,
    required this.metodoPago,
    required this.monto,
    required this.estadoPago,
  });
  static PagosModel fromJson(Map<String,dynamic>json)=>PagosModel(
    usuario: json['usuario'],
    fechaDePago: json['fechaDePago'],
    metodoPago: json['metodoPago'],
    monto: json['monto'],
    estadoPago: json['estadoPago'],

  );
  Map<String,dynamic>toJson()=><String,dynamic>{
    'usuario':usuario,
    'fechaDePago':fechaDePago,
    'metodopago':metodoPago,
    'estadoPago':estadoPago,



  };

}
