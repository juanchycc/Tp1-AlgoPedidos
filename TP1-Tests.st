TestCase subclass: #AlgoPedidosTests	instanceVariableNames: ''	classVariableNames: ''	package: 'TP1-Tests'!!AlgoPedidosTests methodsFor: 'tests' stamp: 'Edson 10/20/2020 19:17'!test01SeAgreganProductosAPedidoParaRetirar
	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoParaRetirarPara: 'Eugenio'.
	
	algoPedidos agregarProductoConNombre: 'Milanesa' precio: 250.0 yCantidad: 2 para: 'Eugenio'.
	algoPedidos agregarProductoConNombre: 'Gelatina' precio: 100.0 yCantidad: 1 para: 'Eugenio'.
	 
	self assert: (algoPedidos precioPedidoDe: 'Eugenio') equals: 600.0.! !!AlgoPedidosTests methodsFor: 'tests' stamp: 'juancc 10/30/2020 14:41'!test07AgregarCuponAPedidoConMenuNoRealizaDescuento
	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoParaRetirarPara: 'Julian'.

	algoPedidos agregarMenuConNombre: 'Menu jueves' precio: 200.0 yCantidad: 1 para: 'Julian'.
	algoPedidos agregarProductoConNombre: 'Ensalada' precio: 200.0 yCantidad: 2 para: 'Julian'.

	algoPedidos agregarCuponAPedidoDe: 'Julian' conValor: 15.
	
	self assert: (algoPedidos precioPedidoDe: 'Julian') equals: 600.! !!AlgoPedidosTests methodsFor: 'tests' stamp: 'Edson 10/3/2020 00:02'!test03SeAgregaMenuAPedido
	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoParaRetirarPara: 'Pablo'.
	
	algoPedidos agregarMenuConNombre: 'Menú viernes' precio: 200.0 yCantidad: 1 para: 'Pablo'.
	algoPedidos agregarProductoConNombre: 'Gaseosa' precio: 250.0 yCantidad: 1 para: 'Pablo'.
	
	self assert: (algoPedidos precioPedidoDe: 'Pablo') closeTo: 450.0 precision: 0.1.! !!AlgoPedidosTests methodsFor: 'tests' stamp: 'Edson 10/20/2020 20:10'!test05SeCambiaCantidadDeProductosEnPedido
	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoParaRetirarPara: 'Carlos'.
	
	algoPedidos agregarMenuConNombre: 'Menú viernes' precio: 200.0 yCantidad: 1 para: 'Carlos'.
	algoPedidos agregarProductoConNombre: 'Gaseosa' precio: 250.0 yCantidad: 1 para: 'Carlos'.
	
	self assert: (algoPedidos cantidadProductosEnPedidoDe: 'Carlos') equals: 2.
	
	algoPedidos actualizarProductoConNombre: 'Gaseosa' conCantidad: 3 para: 'Carlos'.
	
	self assert: (algoPedidos cantidadProductosEnPedidoDe: 'Carlos') equals: 4.! !!AlgoPedidosTests methodsFor: 'tests' stamp: 'Edson 10/20/2020 19:17'!test02SeAgreganProductosAPedidoConDelivery
	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoConDeliveryPara: 'Santiago'.
	
	algoPedidos agregarProductoConNombre: 'Asado' precio: 500.0 yCantidad: 1 para: 'Santiago'.
	algoPedidos agregarProductoConNombre: 'vino' precio: 250.0 yCantidad: 1 para: 'Santiago'.
	 
	self assert: (algoPedidos precioPedidoDe: 'Santiago') equals: (750*1.2). "20% extra"! !!AlgoPedidosTests methodsFor: 'tests' stamp: 'Edson 10/20/2020 20:11'!test08RemoverCuponDeDescuentoAPedido
	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoParaRetirarPara: 'Martin'.

	algoPedidos agregarCuponAPedidoDe: 'Martin' conValor: 15. 	
	algoPedidos agregarProductoConNombre: 'Pizza' precio: 350.0 yCantidad: 1 para: 'Martin'.
	
	self assert: (algoPedidos precioPedidoDe: 'Martin') closeTo: 335.0 precision: 0.01.  "-15"
	
	algoPedidos removerCuponDePedidoDe: 'Martin'.

	self assert: (algoPedidos precioPedidoDe: 'Martin') closeTo: 350.0 precision: 0.01.! !!AlgoPedidosTests methodsFor: 'tests' stamp: 'Edson 10/20/2020 19:05'!test04AplicarCuponDeDescuentoPorcentualAPedidoConProductos
	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoParaRetirarPara: 'Tomás'.
	
	algoPedidos agregarProductoConNombre: 'Ensalada' precio: 200.0 yCantidad: 1 para: 'Tomás'.
	algoPedidos agregarCuponAPedidoDe: 'Tomás' conPorcentaje: 10. 
	
	self assert: (algoPedidos precioPedidoDe: 'Tomás') closeTo: (200*0.9) precision: 0.01. "-10%"! !!AlgoPedidosTests methodsFor: 'tests' stamp: 'Edson 10/20/2020 20:11'!test06AplicarCuponDeDescuentoFijoAPedidoConProductos
	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoParaRetirarPara: 'Diego'.

	algoPedidos agregarCuponAPedidoDe: 'Diego' conValor: 15. 	
	algoPedidos agregarProductoConNombre: 'Milanesa' precio: 350.0 yCantidad: 1 para: 'Diego'.
	
	self assert: (algoPedidos precioPedidoDe: 'Diego') closeTo: 335.0 precision: 0.01. "-15"! !!AlgoPedidosTests methodsFor: 'tests' stamp: 'Juancc 10/28/2020 15:01'!test09RemoverProductosAPedido
	| algoPedidos | 
	
	algoPedidos := AlgoPedidos new.
	algoPedidos crearPedidoConDeliveryPara: 'Sebas'.
	
	algoPedidos agregarProductoConNombre: 'Asado' precio: 500.0 yCantidad: 1 para: 'Sebas'.
	algoPedidos agregarMenuConNombre: 'Menú Lunes' precio: 200.0 yCantidad: 1 para: 'Sebas'.
	algoPedidos agregarProductoConNombre: 'vino' precio: 250.0 yCantidad: 1 para: 'Sebas'.
	 
	self assert: (algoPedidos precioPedidoDe: 'Sebas') equals: (950*1.2). "20% extra"
	
	algoPedidos removerProductoConNombre: 'vino' para: 'Sebas'.
	algoPedidos removerMenuConNombre: 'Menú Lunes' para: 'Sebas'.	
	
	self assert: (algoPedidos precioPedidoDe: 'Sebas') equals: (500*1.2). "20% extra"! !TestCase subclass: #CuponFijoTest	instanceVariableNames: ''	classVariableNames: ''	package: 'TP1-Tests'!!CuponFijoTest methodsFor: 'tests' stamp: 'juancc 11/5/2020 14:36'!test03SeAgregaUnCuponAPedidoVacio	| algoPedidos | 		algoPedidos := AlgoPedidos new.	algoPedidos crearPedidoParaRetirarPara: 'Diego'.	algoPedidos agregarCuponAPedidoDe: 'Diego' conValor: 10.		self should: [algoPedidos precioPedidoDe: 'Diego'] raise: AplicarCuponSinEncargosError ! !!CuponFijoTest methodsFor: 'tests' stamp: 'juancc 11/5/2020 14:34'!test02SeCreaUnCuponConValorNegativo	self should:	[CuponFijo inicializarCon: -10  ] raise: CuponConValorNegativoError.! !!CuponFijoTest methodsFor: 'tests' stamp: 'juancc 11/5/2020 14:34'!test01SeAplicaUnDescuento	|UnCupon UnValor|	UnValor := 50.	UnCupon := CuponFijo inicializarCon: 50.		self should: (UnCupon descontarA: 100) = 50		! !TestCase subclass: #CuponPorcentualTest	instanceVariableNames: ''	classVariableNames: ''	package: 'TP1-Tests'!!CuponPorcentualTest methodsFor: 'tests' stamp: 'juancc 11/5/2020 14:33'!test03SeAgregaUnCuponAPedidoVacio	| algoPedidos | 		algoPedidos := AlgoPedidos new.	algoPedidos crearPedidoParaRetirarPara: 'Diego'.	algoPedidos agregarCuponAPedidoDe: 'Diego' conPorcentaje: 10.		self should: [algoPedidos precioPedidoDe: 'Diego'] raise: AplicarCuponSinEncargosError ! !!CuponPorcentualTest methodsFor: 'tests' stamp: 'juancc 11/5/2020 14:35'!test021SeAplicaUnDescuento	|UnCupon UnValor|	UnValor := 10.	UnCupon := CuponPorcentual   inicializarCon: UnValor.		self should: (UnCupon descontarA: 100) = 90! !!CuponPorcentualTest methodsFor: 'tests' stamp: 'juancc 11/5/2020 14:35'!test02SeCreaUnCuponConValorNegativo	self should:	[CuponPorcentual inicializarCon: -10  ] raise: CuponConValorNegativoError.! !TestCase subclass: #MenuTest	instanceVariableNames: ''	classVariableNames: ''	package: 'TP1-Tests'!!MenuTest methodsFor: 'tests' stamp: 'juancc 11/3/2020 11:58'!test03SeCreaUnMenuConUnNombre	| UnMenu UnNombre|		UnNombre := 'Menu Lunes'.   UnMenu := Menu inicializarCon:UnNombre precio:150 yCantidad: 3.	   self should: (UnMenu tieneDeNombre:UnNombre )! !!MenuTest methodsFor: 'tests' stamp: 'juancc 11/3/2020 11:58'!test04SeCambiaLaCantidadDeUnMenu	| UnMenu UnaCantidad|		UnaCantidad := 3.	   UnMenu := Producto inicializarCon:'Menu Lunes' precio:150 yCantidad: UnaCantidad.	UnaCantidad := 5.	UnMenu actualizarCon: UnaCantidad.	   self should: (UnMenu cantidad = UnaCantidad )! !!MenuTest methodsFor: 'tests' stamp: 'juancc 11/3/2020 11:58'!test05SeIntentaCargarMenuConCantidadNegativa	   self should: [ Menu inicializarCon:'Menu Lunes' precio:150 yCantidad: -2 ] raise: CantidadInvalidaEnEncargoError ! !!MenuTest methodsFor: 'tests' stamp: 'juancc 11/3/2020 11:59'!test06SeIntentActualizarMenuConCantidadNegativa	| UnMenu |	   UnMenu := Producto inicializarCon:'Menu Lunes' precio:150 yCantidad: 5.   self should: [ UnMenu actualizarCon: -5 ] raise: CantidadInvalidaEnEncargoError ! !!MenuTest methodsFor: 'tests' stamp: 'juancc 11/3/2020 22:16'!test07SeIntentaCargarMenuConPrecioNegativo	   self should: [ Producto inicializarCon:'Menu Miercoles' precio:-400 yCantidad: 2 ] raise: PrecioInvalidoDeEncargoError ! !!MenuTest methodsFor: 'tests' stamp: 'juancc 11/3/2020 11:57'!test02SeCreaUnMenuConUnaCantidad	| UnMenu UnaCantidad|		UnaCantidad := 3.   UnMenu := Menu inicializarCon:'Menu Lunes' precio:150 yCantidad: UnaCantidad.	   self should: (UnMenu cantidad = UnaCantidad )! !!MenuTest methodsFor: 'tests' stamp: 'juancc 11/3/2020 11:57'!test01SeCreaUnMenuConUnPrecio	| UnMenu UnPrecio|		UnPrecio := 200.   UnMenu := Menu inicializarCon:'Menu Lunes' precio:UnPrecio  yCantidad: 3.	   self should: (UnMenu precio = UnPrecio)! !TestCase subclass: #PedidoParaDeliveryTest	instanceVariableNames: ''	classVariableNames: ''	package: 'TP1-Tests'!!PedidoParaDeliveryTest methodsFor: 'tests' stamp: 'juancc 11/5/2020 14:28'!test06SeBorraUnEncargoEntoncesSeActualizaLaCantidadDelPedido	|UnPedido|	UnPedido := PedidoParaDelivery  new.	UnPedido agregarProductoCon: 'Torta' precio:250 yCantidad: 2.	UnPedido agregarProductoCon: 'Cafe' precio:50 yCantidad: 4.		UnPedido removerEncargoCon: 'Cafe'.		self should: (UnPedido cantidad   = 2)! !!PedidoParaDeliveryTest methodsFor: 'tests' stamp: 'juancc 11/5/2020 14:32'!test10UnPedidoSinEncargosTieneCantidadNula	|UnPedido |		UnPedido := PedidoParaDelivery new.		self should:(UnPedido cantidad ==	0 )! !!PedidoParaDeliveryTest methodsFor: 'tests' stamp: 'juancc 11/5/2020 14:27'!test01ElPedidoTieneUnPrecioCorrecto	|UnPedido |		UnPedido := PedidoParaDelivery new.	UnPedido agregarProductoCon: 'Torta' precio:250 yCantidad: 2.	UnPedido agregarProductoCon: 'Cafe' precio:50 yCantidad: 4.		self should:(UnPedido precio)=	(700 *1.2)! !!PedidoParaDeliveryTest methodsFor: 'tests' stamp: 'juancc 11/5/2020 14:28'!test05SeBorraUnEncargoEntoncesSeActualizaElPrecioDelPedido	|UnPedido|	UnPedido := PedidoParaDelivery new.	UnPedido agregarProductoCon: 'Torta' precio:250 yCantidad: 2.	UnPedido agregarProductoCon: 'Cafe' precio:50 yCantidad: 4.		UnPedido removerEncargoCon: 'Torta'.		self should: (UnPedido precio ) = (200*1.2)! !!PedidoParaDeliveryTest methodsFor: 'tests' stamp: 'juancc 11/5/2020 14:27'!test02ElPedidoTieneUnaCantidadCorrecta	|UnPedido |		UnPedido := PedidoParaDelivery new.	UnPedido agregarProductoCon: 'Torta' precio:250 yCantidad: 2.	UnPedido agregarProductoCon: 'Cafe' precio:50 yCantidad: 4.		self should:(UnPedido cantidad  =	6 )! !!PedidoParaDeliveryTest methodsFor: 'tests' stamp: 'juancc 11/5/2020 14:28'!test03SeCambiaLaCantidadDeUnEncargoEntoncesSeActualizaElPrecioDelPedido	|UnPedido|	UnPedido := PedidoParaDelivery new.	UnPedido agregarProductoCon: 'Torta' precio:250 yCantidad: 3.		UnPedido actualizarEncargoConNombre: 'Torta' conCantidad: 2.		self should: (UnPedido precio) = (500*1.2)! !!PedidoParaDeliveryTest methodsFor: 'tests' stamp: 'juancc 11/5/2020 14:32'!test09UnPedidoSinEncargosNoTieneCosto	|UnPedido |		UnPedido := PedidoParaDelivery new.		self should:(UnPedido precio =	0 )! !!PedidoParaDeliveryTest methodsFor: 'tests' stamp: 'juancc 11/5/2020 14:28'!test04SeCambiaLaCantidadDeUnEncargoEntoncesSeActualizaLaCantidadTotalDelPedido	|UnPedido|	UnPedido := PedidoParaDelivery  new.	UnPedido agregarProductoCon: 'Torta' precio:250 yCantidad: 3.		UnPedido actualizarEncargoConNombre: 'Torta' conCantidad: 2.		self should: (UnPedido cantidad  = 2)! !!PedidoParaDeliveryTest methodsFor: 'tests' stamp: 'juancc 11/5/2020 14:29'!test07TieneCostoDeEntrega	|UnPedido |		UnPedido := PedidoParaDelivery  new.		self should:(UnPedido costoDeEntregaCon:100) =	20 ! !!PedidoParaDeliveryTest methodsFor: 'tests' stamp: 'juancc 11/5/2020 14:29'!test08UnCuponNoDescuentaAPedidoConMenu	|UnPedido |		UnPedido := PedidoParaDelivery new.	UnPedido agregarMenuCon: 'Cafe con Medialunas' precio:250 yCantidad: 2.	UnPedido agregarCuponFijoCon: 50.	UnPedido agregarCuponPorcentualCon: 10.		self should:(UnPedido precio  )=(500*1.2)! !TestCase subclass: #PedidoParaRetirarTest	instanceVariableNames: ''	classVariableNames: ''	package: 'TP1-Tests'!!PedidoParaRetirarTest methodsFor: 'tests' stamp: 'juancc 11/5/2020 14:24'!test06SeBorraUnEncargoEntoncesSeActualizaLaCantidadDelPedido	|UnPedido|	UnPedido := PedidoParaRetirar  new.	UnPedido agregarProductoCon: 'Torta' precio:250 yCantidad: 2.	UnPedido agregarProductoCon: 'Cafe' precio:50 yCantidad: 4.		UnPedido removerEncargoCon: 'Cafe'.		self should: (UnPedido cantidad   = 2)! !!PedidoParaRetirarTest methodsFor: 'tests' stamp: 'juancc 11/5/2020 14:25'!test07NoTieneCostoDeEntrega	|UnPedido |		UnPedido := PedidoParaRetirar  new.		self should:(UnPedido costoDeEntregaCon:100) =	0 ! !!PedidoParaRetirarTest methodsFor: 'tests' stamp: 'juancc 11/1/2020 22:43'!test10UnPedidoSinEncargosTieneCantidadNula	|UnPedido |		UnPedido := PedidoParaRetirar new.		self should:(UnPedido cantidad ==	0 )! !!PedidoParaRetirarTest methodsFor: 'tests' stamp: 'juancc 11/1/2020 22:43'!test09UnPedidoSinEncargosNoTieneCosto	|UnPedido |		UnPedido := PedidoParaRetirar new.		self should:(UnPedido precio ==	0 )! !!PedidoParaRetirarTest methodsFor: 'tests' stamp: 'juancc 11/3/2020 12:02'!test01ElPedidoTieneUnPrecioCorrecto	|UnPedido |		UnPedido := PedidoParaRetirar new.	UnPedido agregarProductoCon: 'Torta' precio:250 yCantidad: 2.	UnPedido agregarProductoCon: 'Cafe' precio:50 yCantidad: 4.		self should:(UnPedido precio =	700 )! !!PedidoParaRetirarTest methodsFor: 'tests' stamp: 'juancc 11/3/2020 12:02'!test02ElPedidoTieneUnaCantidadCorrecta	|UnPedido |		UnPedido := PedidoParaRetirar new.	UnPedido agregarProductoCon: 'Torta' precio:250 yCantidad: 2.	UnPedido agregarProductoCon: 'Cafe' precio:50 yCantidad: 4.		self should:(UnPedido cantidad  =	6 )! !!PedidoParaRetirarTest methodsFor: 'tests' stamp: 'juancc 11/3/2020 12:03'!test03SeCambiaLaCantidadDeUnEncargoEntoncesSeActualizaElPrecioDelPedido	|UnPedido|	UnPedido := PedidoParaRetirar new.	UnPedido agregarProductoCon: 'Torta' precio:250 yCantidad: 3.		UnPedido actualizarEncargoConNombre: 'Torta' conCantidad: 2.		self should: (UnPedido precio = 500)! !!PedidoParaRetirarTest methodsFor: 'tests' stamp: 'juancc 11/3/2020 12:03'!test05SeBorraUnEncargoEntoncesSeActualizaElPrecioDelPedido	|UnPedido|	UnPedido := PedidoParaRetirar new.	UnPedido agregarProductoCon: 'Torta' precio:250 yCantidad: 2.	UnPedido agregarProductoCon: 'Cafe' precio:50 yCantidad: 4.		UnPedido removerEncargoCon: 'Torta'.		self should: (UnPedido precio  = 200)! !!PedidoParaRetirarTest methodsFor: 'tests' stamp: 'juancc 11/5/2020 14:24'!test04SeCambiaLaCantidadDeUnEncargoEntoncesSeActualizaLaCantidadTotalDelPedido	|UnPedido|	UnPedido := PedidoParaRetirar  new.	UnPedido agregarProductoCon: 'Torta' precio:250 yCantidad: 3.		UnPedido actualizarEncargoConNombre: 'Torta' conCantidad: 2.		self should: (UnPedido cantidad  = 2)! !!PedidoParaRetirarTest methodsFor: 'tests' stamp: 'juancc 11/2/2020 22:45'!test08UnCuponNoDescuentaAPedidoConMenu	|UnPedido |		UnPedido := PedidoParaRetirar new.	UnPedido agregarMenuCon: 'Cafe con Medialunas' precio:250 yCantidad: 2.	UnPedido agregarCuponFijoCon: 50.	UnPedido agregarCuponPorcentualCon: 10.		self should:(UnPedido precio =	500 )! !TestCase subclass: #ProductoTest	instanceVariableNames: ''	classVariableNames: ''	package: 'TP1-Tests'!!ProductoTest methodsFor: 'tests' stamp: 'juancc 11/3/2020 11:54'!test05SeIntentaCargarProductoConCantidadNegativa	   self should: [ Producto inicializarCon:'Pizza' precio:150 yCantidad: -2 ] raise: CantidadInvalidaEnEncargoError ! !!ProductoTest methodsFor: 'tests' stamp: 'juancc 11/3/2020 11:54'!test06SeIntentActualizarProductoConCantidadNegativa	| UnProducto |	   UnProducto := Producto inicializarCon:'Pizza' precio:150 yCantidad: 5.   self should: [ UnProducto actualizarCon: -5 ] raise: CantidadInvalidaEnEncargoError ! !!ProductoTest methodsFor: 'tests' stamp: 'juancc 11/2/2020 23:06'!test03SeCreaUnProductoConUnNombre	| UnProducto UnNombre|		UnNombre := 'Pizza'.   UnProducto := Producto inicializarCon:UnNombre precio:150 yCantidad: 3.	   self should: (UnProducto tieneDeNombre:UnNombre )! !!ProductoTest methodsFor: 'tests' stamp: 'juancc 10/31/2020 15:59'!test01SeCreaUnProductoConUnPrecio	| UnProducto UnPrecio|		UnPrecio := 200.   UnProducto := Producto inicializarCon:'Pizza' precio:UnPrecio  yCantidad: 3.	   self should: (UnProducto precio = UnPrecio)! !!ProductoTest methodsFor: 'tests' stamp: 'juancc 10/31/2020 15:59'!test02SeCreaUnProductoConUnaCantidad	| UnProducto UnaCantidad|		UnaCantidad := 3.   UnProducto := Producto inicializarCon:'Pizza' precio:150 yCantidad: UnaCantidad.	   self should: (UnProducto cantidad = UnaCantidad )! !!ProductoTest methodsFor: 'tests' stamp: 'juancc 11/3/2020 22:15'!test07SeIntentaCargarProductoConPrecioNegativo	   self should: [ Producto inicializarCon:'Pizza' precio:-150 yCantidad: 2 ] raise: PrecioInvalidoDeEncargoError ! !!ProductoTest methodsFor: 'tests' stamp: 'juancc 10/31/2020 16:00'!test04SeCambiaLaCantidadDeUnProducto	| UnProducto UnaCantidad|		UnaCantidad := 3.	   UnProducto := Producto inicializarCon:'Pizza' precio:150 yCantidad: UnaCantidad.	UnaCantidad := 5.	UnProducto actualizarCon: UnaCantidad.	   self should: (UnProducto cantidad = UnaCantidad )! !