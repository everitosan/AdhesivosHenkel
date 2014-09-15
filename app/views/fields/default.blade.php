{{ Form::label($name, $label) }}
{{ $control }}
@if($error)
	<p class="error" > {{ $error }} </p>
@endif