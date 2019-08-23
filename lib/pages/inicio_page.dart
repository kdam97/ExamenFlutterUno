import 'package:flutter/material.dart';

class InicioPage extends StatefulWidget {
  
  @override
  _InicioPageState createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SafeArea(
        child: Stack(
          children: <Widget>[
          _imagenFondo(),
          _contenedorCentro(),
          ],
        ),
      ),
    );
  }
  
  // Se añade la imagen principal del fondo
  Widget _imagenFondo (){
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 2.0),
          child: Image.asset('images/back_top.jpg'),
          
        ),
        _imagenCar(),
        _imagenesFinales(),
        
      ],
    );

  }

  // contenedor del centro
  Widget _contenedorCentro (){
    return Container(
      
      margin: EdgeInsets.only(left: 35.0, right: 35.0, top: 100.0, bottom: 290.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 30.0
          ),
        ]
      ),
      child: Stack(
        children: <Widget>[
          _imagenContainer(),
          _puntuacionContenedor(),
        ],
      )
      
    );
  }

  // Imagen de contenedor
  Widget _imagenContainer(){
    
    return SingleChildScrollView(

      child: Padding(
        padding: EdgeInsets.only(left: 90.0, right: 10.0, top: 20.0),
        child: Column(
            children: <Widget>[
                Image.asset('images/perfil.png', width: 80.0, height: 80.0),
                Text('Tim Burdon',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                      )
                ),
                Text('Perfect Standard',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                      )
                ),
          ],
        )
        ,
      ),
      
    );

  }


  // Numero de videos y mensajes
  Widget _puntuacionContenedor (){

  return Row(
    
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(left: 80.0, right: 10.0,  bottom: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          Text('47',
            style: TextStyle(
                    fontSize: 21.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                    )
            ),
            Text('Message', style: TextStyle(fontSize: 17.0),),    
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 20.0, right: 100.0,  bottom: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          Text('11',
            style: TextStyle(
                    fontSize: 21.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                    )
            ),
            Text('Video', style: TextStyle(fontSize: 17.0),),    
          ],
        ),
      ),
    ],
  );

}


  // Imagen de contenedor
Widget _imagenCar(){
    
    return Container(

      child: Row(  
        children: <Widget>[

          Padding(  
            padding: EdgeInsets.only(left: 20.0, right: 1.0,top: 60.0,  bottom: 3.0),
            child: Row(
              children: <Widget>[
              Icon(Icons.directions_car, color: Colors.black, size: 45.0,),
              
              ],
            ),
            
          ),
          Padding(  
            padding: EdgeInsets.only(left: 15.0, right: 1.0,top: 60.0,  bottom: 3.0),
            child: Column(
              children: <Widget>[
                Text('Traveling By Car',
                        style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                          )
                
                )
                ,Text('402 Awesome Places',
                        style: TextStyle(
                          fontSize: 20.0,
                          //fontWeight: FontWeight.bold,
                          color: Colors.grey[900]
                          )
                    ),
              
              ],
            ),
        )
          
      ],
    
    ),
      
  );

}


Widget _imagenesFinales(){
  
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(left: 15.0, right: 1.0,top: 10.0,  bottom: 3.0),
        child: Container(
          padding: EdgeInsets.all(10.0),
          child:  ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
            child: Image.asset('images/fondo1.jpg', width: 105.0,),
          ),  
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 2.0, right: 1.0, top: 10.0,  bottom: 3.0),
        child: Container(
          padding: EdgeInsets.all(10.0),
          child:  ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
            child: Image.asset('images/fondo2.jpg', width: 105.0,),
          ),  
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 2.0, right: 1.0,top: 10.0,  bottom: 3.0),
        child: Container(
          padding: EdgeInsets.all(10.0),
          child:  ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
            child: Image.asset('images/fondo1.jpg', width: 105.0,),
          ),  
        ),
      ),
      
    ],
  );
 
}

}

