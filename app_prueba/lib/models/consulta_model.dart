class ConsultaModel {
  final int? id;
  final String endPoint;
  final String fechaConsultas;
  final int codigoHttp;
  final String respuesta;

  const ConsultaModel({
    this.id,
    required this.endPoint,
    required this.fechaConsultas,
    required this.codigoHttp,
    required this.respuesta,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'endpoint': endPoint,
      'fecha_consulta': fechaConsultas,
      'codigo_http': codigoHttp,
      'respuesta': respuesta,
    };
  }

  factory ConsultaModel.fromMap(Map<String, dynamic> map) {
    return ConsultaModel(
      id: map['id'] as int?,
      endPoint: ['endoPoint'] as String,
      fechaConsultas: ['fechaConsulta'] as String,
      codigoHttp: ['codigoHttp'] as int,
      respuesta: ['respuesta'] as String,
    );
  }

  String toString() {
    return '''
            id: $id
            EndPoint: $endPoint
            fecha_consulta: $fechaConsultas
            codigo_http: $codigoHttp
            respuesta: $respuesta
        ''';
  }
}
