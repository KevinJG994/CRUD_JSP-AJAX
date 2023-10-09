/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(function(){
    
    function validarFields(nombre, descripcion, precio, categoria, detalles, reviews, tamanio, color){
        if(nombre.length > 1 && nombre.length <= 100){
            if(descripcion.length > 1 && descripcion.length <= 1000){
                if(precio.length > 0 && precio.length < 10){
                    if($.isNumeric(precio)){
                        if(categoria.length > 1 && categoria.length <= 20){
                            if(detalles.length > 1 && detalles.length <= 500){
                                if(reviews.length > 1 && reviews.length <= 500){
                                    if(tamanio != "Seleccione una opcion"){
                                        if(color.length > 1 && color.length <= 20){
                                            
                                            //Validar campos de tipo File
                                            var archivos = document.getElementById('archivos').files;
                                            if (archivos.length == 5){
                                                for (var i=0; i < archivos.length; i++) {
                                                    var name = archivos[i].name;
                                                    var ext = name.substring(name.lastIndexOf('.') + 1).toLowerCase();
                                                    if(ext != 'jpg' && ext != 'png'){
                                                        alert('El archivo '+ name+ ' no es valido.');
                                                        return false;
                                                    }
                                                } 
                                                return true;
                                            }else{alert("Porfavor, seleccion 5 archivos")}
                                            
                                            
                                        }else{alert("Ingrese un color.");}
                                    }else{alert("Ingrese un tamaño.");}    
                                }else{alert("Ingrese una review valida.");}
                            }else{alert("Ingrese un detalle valido.");}
                        }else{alert("Ingrese una categoria valida.");}
                    }else{alert("Ingrese una cantidad valida.");}
                }else{alert("Ingrese un precio valido.");}
            }else{alert("Ingrese una descripción valida.");}
        }else{alert("Ingrese un nombre valido.");}
        
        return false;
    }
    
    $('#btnCrearProducto').click(function(e){
        e.preventDefault();
        var nombre = $('#nombre').val();
        var descripcion = $('#descripcion').val();
        var precio = $('#precio').val();
        var categoria = $('#categoria').val();
        var detalles = $('#detalles').val();
        var reviews = $('#reviews').val();
        var tamanio = $('#tamanio').val();
        var color = $('#color').val();
        
        if(validarFields(nombre, descripcion, precio, categoria, detalles, reviews, tamanio, color)){
            var data = new FormData($('#frm_nuevo')[0]);
            $.ajax({
                url : "crearProducto",
                type : "post",
                data : data,
                contentType : false,
                processData : false,
                success : function(data){
                    alert(data);
                }
            });
        }
        
    });
});