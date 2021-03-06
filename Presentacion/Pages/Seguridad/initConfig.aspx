﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Main.Master" CodeBehind="initConfig.aspx.vb" Inherits="Presentacion.initConfig" %>
<%@ register assembly="DevExpress.Web.v17.2, Version=17.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<style>
    .form-horizontal .has-feedback .form-control-feedback{right:0px;}
    .dropzone-box .fa.fa-cloud-upload{margin-left:130px;}
    .claseTest {background-color: #008c9e !important;font-weight: normal;font-size:10px;text-transform:uppercase;}
    .dxgvHeader, .dxgvHeader table{color:#F1F1F1;}
    .dxgvHeader{background-color:#008c9e;border: 1px solid #005F6B;}
    .nav-tabs > li > a{color:#ddd !important;}
    .nav-tabs li.active > a, .nav-tabs li.active > a:focus, .nav-tabs li.active > a:hover{color:#f1f1f1 !important;font-weight:700;}
    .tab-content.tab-content-bordered{background-color:#f2f2f2;}
    .panel-primary>.panel-heading{background-color:#008c9e !important;}
    </style>

</asp:Content>

<asp:Content id="MainBody" contentplaceholderid="body" runat="server">
<!-- .
    Bienvenido. 
    Configuración Inicial Foco en Obra
    File:initConfig.
-->
<div class="row">
    <div class="row">
        <script>
            init.push(function () {
                $('.ui-wizard-example').pixelWizard({
                    onChange: function () {
                        console.log('Current step: ' + this.currentStep());
                    },
                    onFinish: function () {
                       
                        this.unfreeze();
                        console.log('Wizard is freezed');
                        console.log('Finished!');
                    }
                });

                $('.wizard-next-step-btn').click(function () {
                    $(this).parents('.ui-wizard-example').pixelWizard('nextStep');
                });

                $('.wizard-prev-step-btn').click(function () {
                    $(this).parents('.ui-wizard-example').pixelWizard('prevStep');
                });

                $('.wizard-go-to-step-btn').click(function () {
                    $(this).parents('.ui-wizard-example').pixelWizard('setCurrentStep', 2);
                });

                $('#ui-wizard-modal').on('show.bs.modal', function (e) {
                    var $modal = $(this),
                        $wizard = $modal.find('.ui-wizard-example'),
                        timer = null,
                        callback = function () {
                            if (timer) clearTimeout(timer);
                            if ($modal.hasClass('in')) {
                                $wizard.pixelWizard('resizeSteps');
                            } else {
                                timer = setTimeout(callback, 10);
                            }
                        };
                    callback();
                });
            });
				</script>
        <div class="panel">
					<div class="panel-body">
						<div class="wizard ui-wizard-example">
							<div class="wizard-wrapper">
								<ul class="wizard-steps">
									<li data-target="#wizard-example-step1" >
										<span class="wizard-step-number">1</span>
										<span class="wizard-step-caption">
											BIENVENIDO
											<span class="wizard-step-description">Hola! te agradecemos el preferir nuestro sistema de control.</span>
										</span>
									</li
									><li data-target="#wizard-example-step2">
										<span class="wizard-step-number">2</span>
										<span class="wizard-step-caption">
											CONFIGURACIÓN
											<span class="wizard-step-description">Ingresa la información de tu empresa.</span>
										</span>
									</li
									><li data-target="#wizard-example-step3"> 
										<span class="wizard-step-number">3</span>
										<span class="wizard-step-caption">
											PRIMER PROYECTO
											<span class="wizard-step-description">Ingresaremos los datos de tu primer proyecto en Foco.</span>
										</span>
									</li
									><li data-target="#wizard-example-step4"> 
										<span class="wizard-step-number">4</span>
										<span class="wizard-step-caption">
											A TRABAJAR!
                                            <span class="wizard-step-description">Agradecemos tu tiempo. Ya puedes comenzar a usar el sistema.</span>
										</span>
									</li>
								</ul> 
							</div> 
							
                            
                            
                            <div class="wizard-content panel">
                               
								<div class="wizard-pane" id="wizard-example-step1">
									
                                    <h1>Enhorabuena!</h1>
                                    <hr />
                                    
                                    <div class="row">
                                    <div class="col-md-6">
                                      
                                    <p>Has adquirido el mejor sistema de control de gestión de obras civiles, que de manera intuitiva te apoya haciendo uso de las mejores prácticas tanto de control de obras como informáticas.      
                                    </p>
                                        <h3>¿Qué deseas hacer?</h3><br />
                                       <p> <span class="fa-stack fa-lg">
                                           <i class="fa fa-arrow-circle-right fa-2x" aria-hidden="true" style="color:#008080;cursor:pointer"></i>
                                            </span> <a class="#" style="cursor:pointer">Antes de comenzar, deseo conocer más sobre este sistema y sus características.</a></p>
                                                                                   <p>  <span class="fa-stack fa-lg wizard-next-step-btn" style="cursor:pointer">
                                            <i class="fa fa-arrow-circle-right fa-2x" aria-hidden="true" style="color:#008080"></i>
                                            </span> <a class="wizard-next-step-btn" style="cursor:pointer">Estoy listo, ¡Comencemos!.</a></p>
                                    </div>

                                       

                                        <div class="col-sm-1" >
                                          
                                        </div>
                                       <div class="col-md-3" >
                                           <div class="row" >
                                            <div class="panel-body bg-panel">
                                               <h6><strong>QUIENES SOMOS</strong></h6> <p>Somos una empresa creada el año 2010, en Concepción-Chile, con el objetivo de desarrollar una plataforma computacional que integre las distintas fuentes de información que influyen en el control de gestión de proyectos de construcción, otorgando un cómodo sistema que permita llevar a su empresa y proyectos a un éxito garantizado.</p>
                                            </div>
                                           </div>
                                        </div>
                                    
                                    
                                    </div>
                                    <br>
									 <%--<div class="col-md-12" >
                                           <div class="row" >
                                            <div class="panel-body padding-sm bg-panel">
                                            
                                               
			
			<p>Conecta con Foco en Obra:&nbsp;&nbsp;<a href="#"><i class="lg-nav-icon fa fa-facebook-square"></i>&nbsp;&nbsp;Facebook</a>&nbsp;&nbsp;
			<a href="#"><i class="lg-nav-icon fa fa-skype"></i>&nbsp;&nbsp;Skype</a>&nbsp;&nbsp;
			<a href="#"><i class="lg-nav-icon fa fa-linkedin-square"></i>&nbsp;&nbsp;Linkedin</a>&nbsp;&nbsp;
			<a href="#"><i class="lg-nav-icon fa  fa-phone-square"></i>&nbsp;&nbsp;Fono</a>&nbsp;&nbsp;
			<a href="#"><i class="lg-nav-icon fa  fa-envelope-o"></i>&nbsp;&nbsp;Correo</a></p>
				
		
                                            </div>
                                           </div>
                                        </div>--%>
								</div> 
								
                                
                                <div class="wizard-pane" id="wizard-example-step2" style="display: none;">
									 <h3>Configuración</h3>
                                            Iremos paso a paso, de lo general a lo particular, completando sólo la información esencial para el funcionamiento adecuado de la plataforma. Este formulario permite que los distintos informes de Focoenobra individualicen a tu empresa.
                                            <hr />
                                    <div class="row">
			                            <div class="col-ms-12">
                                           
               

                                    <div class="col-md-8">
				

                        <div class="panel form-horizontal" >
					<div class="panel-body bg-panel">
                                       

						<div class="row">

							<div class="col-sm-6">

								<div class="form-group no-margin-hr">
                                    <label class="control-label">Nombre Empresa</label>
                                    <div class="has-feedback">
									 <i class="fa fa-asterisk form-control-feedback"></i>
									<input type="text" name="nombreEmpresa" class="form-control input-sm">
                                   </div>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group no-margin-hr">
									<label class="control-label">Giro</label>
									<input type="text" name="giro" class="form-control input-sm">
								</div>
							</div>
						</div>
						
						<div class="row">
							
							<div class="col-sm-6">
								<div class="form-group no-margin-hr">
									<label class="control-label">RUT</label>
									
<input class="form-control input-sm" type="text" id="rut" name="rut" required oninput="checkRut(this)" maxlength="10" <%--onkeypress="validate(event)--%>">

								</div>
							</div>
                            <div class="col-sm-6">
								<div class="form-group no-margin-hr">
									<label class="control-label">Correo Electrónico</label>
									<input type="email" name="email" class="form-control input-sm">
								</div>
							</div>
						</div>
                        <div class="row">
							<div class="col-sm-6">
								<div class="form-group no-margin-hr">
									<label class="control-label">Dirección</label>
									<input type="text" name="adress" class="form-control input-sm">
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group no-margin-hr">
									<label class="control-label">Teléfono</label>
                                    <div class="has-feedback">
                                        <input type="text" class="form-control input-sm" id="phone" name="phone" placeholder=" ">
								</div></div>
							</div>
						</div>
					</div>
					
				</div>

                    </div>
                   
                    <div class="col-md-4">

				<script>
                    init.push(function () {
                        $("#dropzonejs-example").dropzone({
                            url: "//dummy.html",
                            paramName: "file", 
                            maxFilesize: 0.5, 

                            addRemoveLinks: true,
                            dictResponseError: "Can't upload file!",
                            autoProcessQueue: false,
                            thumbnailWidth: 138,
                            thumbnailHeight: 120,

                            previewTemplate: '<div class="dz-preview dz-file-preview"><div class="dz-details"><div class="dz-filename"><span data-dz-name></span></div><div class="dz-size">File size: <span data-dz-size></span></div><div class="dz-thumbnail-wrapper"><div class="dz-thumbnail"><img data-dz-thumbnail><span class="dz-nopreview">No preview</span><div class="dz-success-mark"><i class="fa fa-check-circle-o"></i></div><div class="dz-error-mark"><i class="fa fa-times-circle-o"></i></div><div class="dz-error-message"><span data-dz-errormessage></span></div></div></div></div><div class="progress progress-striped active"><div class="progress-bar progress-bar-success" data-dz-uploadprogress></div></div></div>',

                            resize: function (file) {
                                var info = { srcX: 0, srcY: 0, srcWidth: file.width, srcHeight: file.height },
                                    srcRatio = file.width / file.height;
                                if (file.height > this.options.thumbnailHeight || file.width > this.options.thumbnailWidth) {
                                    info.trgHeight = this.options.thumbnailHeight;
                                    info.trgWidth = info.trgHeight * srcRatio;
                                    if (info.trgWidth > this.options.thumbnailWidth) {
                                        info.trgWidth = this.options.thumbnailWidth;
                                        info.trgHeight = info.trgWidth / srcRatio;
                                    }
                                } else {
                                    info.trgHeight = file.height;
                                    info.trgWidth = file.width;
                                }
                                return info;
                            }
                        });
                    });
				</script>
				<!-- / Javascript -->

				<div class="panel">
					
					<div class="panel-body">
<%--						<div class="note note-info">More info and examples at <a href="http://www.dropzonejs.com" target="_blank">http://www.dropzonejs.com</a></div>--%>
                            
						<div id="dropzonejs-example" class="dropzone-box">
                            <i class="fa fa-cloud-upload"></i>
							<div class="dz-default dz-message" >
								
								Arrastra tu logo<br><span class="dz-text-small">o presiona acá para seleccionar</span>
							</div>
						
						</div>
					</div>
				</div>

                    </div>


                                            <div class="col-md-5">
                                              <p> <span class="fa-stack fa-lg wizard-prev-step-btn" style="cursor:pointer">
<i class="fa fa-arrow-circle-left fa-2x" aria-hidden="true" style="color:#008080"></i>
</span><a class="wizard-prev-step-btn" style="cursor:pointer">Volver al Paso Anterior</a></p>
                                            </div>

                                            <div class="col-md-2">

                                            </div>

                                            <div class="col-md-5" style="text-align:right">
                                            <p><a class="wizard-next-step-btn" style="cursor:pointer">Guardar y continuar el siguiente paso</a><span class="fa-stack fa-lg wizard-next-step-btn" style="cursor:pointer">
<i class="fa fa-arrow-circle-right fa-2x" aria-hidden="true" style="color:#008080"></i>
</span> </p>
                                            </div>


                                        </div>
									</div>								
								</div> 

                           
								<div class="wizard-pane" id="wizard-example-step3" style="display: none;">
                                    <h3>Primer Proyecto</h3>
Ya has ingresado toda la información necesaria para tu perfil de empresa, pero aún faltan algunas cosas que completar. Para dar inicio a la plataforma debes al menos <b>tener un proyecto creado</b>, es por eso que ahora iremos precisamente a crear uno desde cero.                        <hr />
                                    <div class="row"> 
                                        <div class="col-ms-12">
                                 
                                            
                                  
                                    	
                                    <div class="col-sm-3">
				<div class="panel form-horizontal">
				
					<div class="panel-body bg-panel">
					
                        <div class="row">
							<div class="col-md-12 ">
                                  <h4>Identificación</h4>
								<div class="form-group no-margin-hr">
									<label class="control-label">Nombre Proyecto</label>
									<input type="text" name="nombreProyecto" class="form-control input-sm">
								</div>
							</div><!-- col-sm-6 -->
							<div class="col-md-12">
								<div class="form-group no-margin-hr">
									<label class="control-label">Código Contable</label>
									<input type="text" name="codigo" class="form-control input-sm">
								</div>
							</div><!-- col-sm-6 -->
						</div><!-- row -->
						
						
					</div>
					
				</div>
                                            </div>
                                    <div class="col-sm-2">
			
				<div class="panel form-horizontal">
					<div class="panel-body bg-panel">
						<div class="row">
							<div class="col-md-12">
                                  <h4>Detalle</h4>
								<div class="form-group no-margin-hr">
									<label class="control-label">N° Casas/Deptos</label>
									<input type="text" name="nombreProyecto" class="form-control input-sm" onkeypress="validate(evt)">
								</div>
							</div><!-- col-sm-6 -->
							<div class="col-md-12">
								<div class="form-group no-margin-hr">
									<label class="control-label">M² Construcción</label>
									<input type="text" name="lastname" class="form-control input-sm">
								</div>
							</div><!-- col-sm-6 -->
						</div><!-- row -->
						
						
					</div>
				</div>
                                            </div>


                                    <div class="col-md-2">
				
                                        <div class="panel form-horizontal">
				
					<div class="panel-body bg-panel">
						<div class="row">
							<div class="col-md-12">
                                  <h4>Ubicación</h4>
								<div class="form-group no-margin-hr">
									<label class="control-label">Región</label>
									<input type="text" name="nombreProyecto" class="form-control input-sm">
								</div>
							</div><!-- col-sm-6 -->
							<div class="col-md-12">
								<div class="form-group no-margin-hr">
									<label class="control-label">Ciudad</label>
									<input type="text" name="lastname" class="form-control input-sm">
								</div>
							</div><!-- col-sm-6 -->
						</div><!-- row -->
						
						
					</div>
					</div>
			
                                            </div>

                                    <div class="col-md-3">
				
				

<div class="panel form-horizontal">
					<div class="panel-body bg-panel">
						<div class="row">
							<div class="col-md-12">
                                  <h4>Administración</h4>
								<div class="form-group no-margin-hr">
									<label class="control-label">Gerente</label>
									<input type="text" name="nombreProyecto" class="form-control input-sm">
								</div>
							</div>


							<div class="col-md-12">
								<div class="form-group no-margin-hr">
									<label class="control-label">Administrador</label>
									<input type="text" name="lastname" class="form-control input-sm">
								</div>
							</div>
						</div>
						
						</div>
					</div>
					
			
               </div>
<div class="col-md-2">
    <div class="panel form-horizontal">
			
					                                                          
					<div class="panel-body bg-panel" style="padding-bottom:25px">
                         
						  <script>
                              init.push(function () {
                                  var options = {
                                      todayBtn: "linked",
                                      orientation: $('body').hasClass('right-to-left') ? "auto right" : 'auto auto'
                                  }
                                  $('#bs-datepicker-example').datepicker(options);

                                  $('#bs-datepicker-component').datepicker();

                                  var options2 = {
                                      orientation: $('body').hasClass('right-to-left') ? "auto right" : 'auto auto'
                                  }
                                  $('#bs-datepicker-range').datepicker(options2);

                                  $('#bs-datepicker-inline').datepicker();
                              });
				</script>
				
                                     
						<div class="row">
							
                            <div class="col-sm-12">
                               <h4>Plazo Contractual</h4>
                               <label class="control-label">Inicio</label>
							<div class="input-daterange input-group" id="bs-datepicker-range">
							<input type="text" class="input-sm form-control" name="start" placeholder=" "/>
						<label class="control-label" style="margin-top:15px">Término</label>
							<input type="text" class="input-sm form-control" name="end" placeholder=" ">

						</div>                               
					</div>
				</div>
						
						
					</div>
					</div>
					
                                            </div>
                                  
				   <div class="col-md-5">
                                              <p> <span class="fa-stack fa-lg wizard-prev-step-btn" style="cursor:pointer">
<i class="fa fa-arrow-circle-left fa-2x" aria-hidden="true" style="color:#008080"></i>
</span><a class="wizard-prev-step-btn" style="cursor:pointer">Volver al Paso Anterior</a></p>
                                            </div>

                                            <div class="col-md-2">

                                            </div>

                                            <div class="col-md-5" style="text-align:right">
                                            <p><a class="wizard-next-step-btn" style="cursor:pointer">Guardar y continuar el siguiente paso</a><span class="fa-stack fa-lg wizard-next-step-btn" style="cursor:pointer">
<i class="fa fa-arrow-circle-right fa-2x" aria-hidden="true" style="color:#008080"></i>
</span> </p>
                                            </div>
                                    
                        
                        
                        </div>
                                   
									
								</div>

                                     
</div>
								
								<div class="wizard-pane" id="wizard-example-step4" style="display: none;">
									<h1>Excelente!</h1>
                                    <hr />
                                    <div class="col-md-12">
                                    
                                    
                                    <div class="row">
                                    <div class="col-ms-12">
                                       
<b>Felicitaciones.</b> Ya cuentas con todo lo necesario para comenzar a utilizar nuestro sistema. Te recordamos que puedes editar posteriormente la información que acabas de ingresar en la sección "Editar Proyecto". 
    </div>
                                    </div><br><br>
									<div class="col-md-5">
                                              <p> <span class="fa-stack fa-lg wizard-prev-step-btn" style="cursor:pointer">
<i class="fa fa-arrow-circle-left fa-2x" aria-hidden="true" style="color:#008080"></i>
</span><a class="wizard-prev-step-btn" style="cursor:pointer">Volver al Paso Anterior</a></p>
                                            </div>

                                            <div class="col-md-2">

                                            </div>

                                            <div class="col-md-5" style="text-align:right">
                                            <p><a class="wizard-next-step-btn" style="cursor:pointer">Guardar y Continuar</a><span class="fa-stack fa-lg wizard-next-step-btn" style="cursor:pointer">
<i class="fa fa-arrow-circle-right fa-2x" aria-hidden="true" style="color:#008080"></i>
</span> </p>
                                            </div>
									
								</div> <!-- / .wizard-pane -->
							</div> <!-- / .wizard-content -->


                                
						</div>
				
					</div>
				</div>
              
                <script>
                              init.push(function () {

                                  $('#wizard-forms').pixelWizard({
                                      onFinish: function () {

                                          this.freeze();
                                      }
                                  });
                                  $('#wizard-forms .wizard-prev-step-btn').on('click', function () {
                                      $('#wizard-forms').pixelWizard('prevStep');
                                      return false;
                                  });



                                  $("#wizard-example-step2").validate({
                                      ignore: '.ignore',
                                      focusInvalid: true,
                                      rules: {

                                          'nombreEmpresa': {
                                              required: true,
                                              minlength: 3,

                                          },

                                          'email': {
                                              required: false,

                                          },

                                          'jq-validation-phone': {
                                              required: true,
                                              phone_format: true
                                          },
                                      }
                                      ,
                                      messages: {
                                          nombreEmpresa: "El nombre debe ser mayor a 3 caracteres.",
                                          email: "El formato de correo electrónico es incorrecto."
                                      }

                                  });
                                  $('#wizard-example-step2').on('submit', function () {
                                      if ($(this).valid()) {
                                          $('#wizard-forms').pixelWizard('nextStep');
                                      }
                                      return false;
                                  });






                                  $("#wizard-example-step3").validate({
                                      ignore: '.ignore',
                                      focusInvalid: true,
                                      rules: {

                                          'nombreProyecto': {
                                              required: true,
                                              minlength: 3,

                                          }


                                      }
                                      ,
                                      messages: {
                                          nombreProyecto: "El nombre debe ser mayor a 3 caracteres.",

                                      }

                                  });
                                  $('#wizard-example-step3').on('submit', function () {
                                      if ($(this).valid()) {
                                          $('#wizard-forms').pixelWizard('nextStep');
                                      }
                                      return false;
                                  });

                              });
				</script>
                <script>
                              function checkRut(rut) {
                                  // Despejar Puntos
                                  var valor = rut.value.replace('.', '');
                                  // Despejar Guión
                                  valor = valor.replace('-', '');

                                  // Aislar Cuerpo y Dígito Verificador
                                  cuerpo = valor.slice(0, -1);
                                  dv = valor.slice(-1).toUpperCase();

                                  // Formatear RUN
                                  rut.value = cuerpo + '-' + dv

                                  // Si no cumple con el mínimo ej. (n.nnn.nnn)
                                  if (cuerpo.length < 7) { rut.setCustomValidity("RUT Incompleto"); return false; }

                                  // Calcular Dígito Verificador
                                  suma = 0;
                                  multiplo = 2;

                                  // Para cada dígito del Cuerpo
                                  for (i = 1; i <= cuerpo.length; i++) {

                                      // Obtener su Producto con el Múltiplo Correspondiente
                                      index = multiplo * valor.charAt(cuerpo.length - i);

                                      // Sumar al Contador General
                                      suma = suma + index;

                                      // Consolidar Múltiplo dentro del rango [2,7]
                                      if (multiplo < 7) { multiplo = multiplo + 1; } else { multiplo = 2; }

                                  }

                                  // Calcular Dígito Verificador en base al Módulo 11
                                  dvEsperado = 11 - (suma % 11);

                                  // Casos Especiales (0 y K)
                                  dv = (dv == 'K') ? 10 : dv;
                                  dv = (dv == 0) ? 11 : dv;

                                  // Validar que el Cuerpo coincide con su Dígito Verificador
                                  if (dvEsperado != dv) { rut.setCustomValidity("RUT Inválido"); return false; }

                                  // Si todo sale bien, eliminar errores (decretar que es válido)
                                  rut.setCustomValidity('');
                              }

                              function validate(evt) {
                                  var theEvent = evt || window.event;
                                  var key = theEvent.keyCode || theEvent.which;
                                  key = String.fromCharCode(key);
                                  var regex = /[0-9]|\./;
                                  if (!regex.test(key)) {
                                      theEvent.returnValue = false;
                                      if (theEvent.preventDefault) theEvent.preventDefault();
                                  }
                              }
    </script>
            


<script>
    window.jQuery || document.write('<script src="../../assets/javascripts/jquery.min.js" type="text/javascript"><\/script>');
</script>
<script src="../../assets/javascripts/bootstrap.min.js"></script>
<script src="../../assets/javascripts/pixel-admin.min.js"></script>
      
        </div>
    </div>
</div>
</asp:Content>