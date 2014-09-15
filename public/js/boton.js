$(function(){
	$('button').on('click', def_action);
	setdate_hour();
});

$(document).foundation({
  accordion: {
    active_class: 'active',
    multi_expand: false,
    toggleable: true
  }
});

function def_action(event)
{	

	var op=$(this).text();
	
	switch(op)
	{
		case "Limpiar":
			event.preventDefault();
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