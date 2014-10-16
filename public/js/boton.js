	var timeouts;
$(function(){

	$('button').on('click', def_action);
	setdate_hour();
	$('.filtro').on('change',filtrar);
	$('.filtro').on('keyup',filtrar);
});

$(document).foundation({
  accordion: {
    active_class: 'active',
    multi_expand: false,
    toggleable: true
  }
});

function filtrar()
{
	var index=$(this).parent().index();
	var value=$(this).val().toLowerCase();;
	buscar(index, value);
}

function def_action(event)
{	

	var op=$(this).text();
	
	switch(op)
	{
		case "Limpiar":
			event.preventDefault();
			console.log('limpiando');
			$('input').val('');
			$('select').val('');
			setdate_hour();
			break;

		default:
			break;
	}
}



function setdate_hour()
{
	var d= new Date();
	var h= d.getHours();
	var m= d.getMinutes();
	var dia=d.getDate();
	var mes=d.getMonth();
	var anio=d.getFullYear();
	
	h=menordiez(h);
	m=menordiez(m);

	$('.time').val(h+':'+m).attr('readonly','readonly');

	mes++;
	mes=menordiez(mes);
	dia=menordiez(dia);

	$('input[type=date]').val(anio+'-'+mes+'-'+dia);
	$('.date').attr('readonly','readonly');

}

function menordiez(m)
{
	if(m<10)
		m="0"+m;
	return m;
}

function change_select(select, val)
	{
		$(select).children('option').each(function(){
			if( $(this).text()==val )
				$(this).attr('selected', 'selected');
			else
				$(this).attr('selected', null);

		});
	}
function change_selectval(select, val)
	{
		$(select).children('option').each(function(){
			if( $(this).val()==val )
				$(this).attr('selected', 'selected');
			else
				$(this).attr('selected', null);

		});
	}

	function ajax_petition(type)
	{	
		this.ajax_conf={};
		this.ajax_conf.data={};
		this.ajax_conf.type=type;


		this.execute=function(){
			$.ajax(this.ajax_conf);
		};
	}

function buscar(index, value)
{ 
	clearTimeout(timeouts);
    timeouts= setTimeout(function(){

	//console.log('buscando...'+value+' en index'+ index);

	$('#lista').html('');
	if(value!="")
	{
		$( $('tr')).each(function(i){
			$($(this).children('td')[index]).each(function(j){

			//console.log( $(this).text().toLowerCase().removeAccents() );
			
			if( $(this).text().toLowerCase().removeAccents().indexOf(value.removeAccents())!=-1)
			{
				$($('tr')[i]).show();
			}
			else
				$($('tr')[i]).hide();

			
			});
		});
	}
	else
	{
		$('tr').show();
	}

	
	},500);

}


//**quita acentos*/
 String.prototype.removeAccents = function ()
{
	var __r = 
	{
			'À':'A','Á':'A','Â':'A','Ã':'A','Ä':'A','Å':'A','Æ':'E',
			'È':'E','É':'E','Ê':'E','Ë':'E',
			'Ì':'I','Í':'I','Î':'I',
			'Ò':'O','Ó':'O','Ô':'O','Ö':'O',
			'Ù':'U','Ú':'U','Û':'U','Ü':'U',
			'Ñ':'N'
	};


	return this.replace(/[ÀÁÂÃÄÅÆÈÉÊËÌÍÎÒÓÔÖÙÚÛÜÑ]/gi, function(m)
	{
			var ret = __r[m.toUpperCase()];
			if (m === m.toLowerCase())
				ret = ret.toLowerCase();
			return ret;
		});

};