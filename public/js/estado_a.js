$(function(){

	$('body').on('change','.estado_a', ajax_estado ) ;
	$('body').on('change','.buscar_select', ajax_buscar ) ;

}());


function ajax_buscar()
{

	var petition=new ajax_petition('POST');
	petition.ajax_conf.url=$('form').attr('action');

	petition.ajax_conf.data={};
	petition.ajax_conf.data.key=$(this).attr('name');
	petition.ajax_conf.data.value=$(this).val();
	

	petition.ajax_conf.success=function(data){

		//console.log(data);
		$('.filled').parent().remove();
		
		$(data).each(function(){
			cambio=new cambiar_estado();
			estru= new estructura(this.id, this.fecha_limite, this.descripcion,this.estado,this.respuesta, this.responsabl, cambio.tr );
			//console.log(estru.tr);
			$('table').append( estru.tr);

		});
	};

	//llamada a ajax
	petition.execute();
	//$('.buscar_select').val('');
}

function ajax_estado()
{

	var petition=new ajax_petition('POST');


	$parent=$(this).parent().parent()
	$id=$parent.attr('id');
	$estado=$(this).val();

	petition.ajax_conf.url=$parent.attr('update');
	petition.ajax_conf.parent=$parent;
	petition.ajax_conf.data={
					"_token": $( this ).find( 'input[name=_token]' ).val(),
					'id':$id,
					'estado':$estado
					};

	petition.ajax_conf.success=function(data){
		if(data==="true")
		{
			$(this.parent).hide();
		}
	};

	//llamada a ajax
	petition.execute();

}

function ajax_petition(type)
{	
	this.ajax_conf={};
	this.ajax_conf.type=type;


	this.execute=function(){
		$.ajax(this.ajax_conf);
	};
}

function estructura(id, fecha_limite, descripcion, estado,respuesta, responsabl, cambiar_estado)
{

	this.tr= "<tr id='"+id+"' class='filled'  update='update_pendiente'> <td>"+
			fecha_limite +"</td> <td>"+
			descripcion +"</td>  <td>"+
			estado+"</td> <td>"+
			respuesta+"</td> <td>"+
			responsabl.nombre+"</td><td>"+
			cambiar_estado+
			"</td>  </tr>";
}

function cambiar_estado()
{
	this.tr='<select class="estado_a" name="" id=""> <option value=""></option> <option value="Activo">Activo</option><option value="Finalizado">Finalizado</option><option value="Suspendido">Suspendido</option><option value="Cancelado">Cancelado</option></select>';
}