import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muevete_paquete/modules/create_package/ui/create_package_controller.dart';
import 'package:muevete_paquete/modules/create_package/ui/create_package_model.dart';
import 'package:muevete_paquete/modules/delivery_package/deliveryPackage.dart';
import 'package:muevete_paquete/widgets/widget.dart';
import 'package:get/get.dart';

class CreatePackage extends GetResponsiveView<CreatePackageController> {
  CreatePackage({Key? key}) : super(key: key) {
    Get.put(CreatePackageController());
  }
  final packagetKey = new GlobalKey<FormState>();

  PaqueteModel package = new PaqueteModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Text(
                'Enviar Paquete',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        padding: EdgeInsets.symmetric(vertical: 30.0),

                        width: MediaQuery.of(context).size.width * 0.3,
                        // height: MediaQuery.of(context).size.height * 1,
                        child: Form(
                          key: controller.packagetKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              _createContenido(),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              _createPeso(),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              _createPrioritario(),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              _createTipoEnvoltura(),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              _createPuntosAduanales(),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    padding: EdgeInsets.symmetric(vertical: 30.0),
                    child: Form(
                      key: controller.packagetKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          _createEstado(),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          _createFragil(),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          _createDireccionEntrega(),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          _createPrice(),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          _createDate(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // SizedBox(
                    //   width: MediaQuery.of(context).size.width * 0.3,
                    // ),
                    _cancelButton(),
                    // SizedBox(
                    //   width: MediaQuery.of(context).size.width * 0.2,
                    // ),
                    _submitButton(),
                    // SizedBox(
                    //   width: MediaQuery.of(context).size.width * 0.2,
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: MediaQuery.of(context).size.height * 1,
        child: const WhatsappButton(),
      ),
      persistentFooterButtons: const [
        CreateFooter(),
      ],
    );
  }

  _createContenido() {
    return TextFormField(
      initialValue: package.contenido,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Contenido',
      ),
      // onSaved: (value)=>package.contenido = value,
    );
  }

  _createPeso() {
    return TextFormField(
      initialValue: package.peso.toString(),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Peso',
      ),
    );
  }

  _createPrioritario() {
    return TextFormField(
      initialValue: package.prioritario.toString(),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Prioritario',
      ),
    );
  }

  _createTipoEnvoltura() {
    return TextFormField(
      initialValue: package.tipoEnvoltura,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Tipo de Envoltura',
      ),
    );
  }

  _createPuntosAduanales() {
    return TextFormField(
      initialValue: package.puntosAduanales.toString(),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Puntos Aduanales',
      ),
    );
  }

  _createEstado() {
    return TextFormField(
      initialValue: package.estado.toString(),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Estado',
      ),
    );
  }

  _createFragil() {
    return TextFormField(
      initialValue: package.fragil,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Frágil',
      ),
    );
  }

  _createDireccionEntrega() {
    return TextFormField(
      initialValue: package.direccionEntrega,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Dirección de Entrega',
      ),
    );
  }

  _createPrice() {
    return TextFormField(
      initialValue: package.precioAPagar.toString(),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Precio',
      ),
    );
  }

  _submitButton() {
    return MaterialButton(
      child: FaIcon(FontAwesomeIcons.arrowRight, color: Colors.white),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      elevation: 0.0,
      color: Colors.blue,
      onPressed: () {
        Get.to(DeliveryPackage());
      },
    );
  }

  _cancelButton() {
    return MaterialButton(
      child: FaIcon(FontAwesomeIcons.arrowLeft, color: Colors.white),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      elevation: 0.0,
      color: Colors.blue,
      onPressed: () {},
    );
  }

  _createDate() {
    return TextFormField(
      initialValue: package.fechaCreacion.toString(),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Precio',
      ),
    );
  }
}
