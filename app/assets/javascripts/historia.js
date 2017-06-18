$(document).ready(function() {	 
   $('#historium_paciente_id').parent().hide();
   $('#historium_profesional_id').parent().hide();
   

   $('.historia-form').form({   
      on: 'submit',
      fields: {
        historium_paciente_id : {
          identifier  : 'historium_paciente_id',    
          rules : [{
            type  : 'empty',
            prompt  : 'Debe incluir Identificacion del paciente'
          }]
        }
        
      }
    });

	$('.search_paciente_historia').search({
	    apiSettings: {
	      action: 'search', url: '/pacientes/searchpaciente?query={query}'
	    },
	    fields: {    
	      results: 'paciente',  
	      title   : 'numero_id'
	      
	    },
	    minCharacters : 3,
	    onSelect: function(result, response) {            	            

	            $('#historium_paciente_id').val(result.numero_id); 
	            $('#primer_nombre').val(result.persona.primer_nombre);             
	            $('#segundo_nombre').val(result.persona.segundo_nombre);             
	            $('#primer_apellido').val(result.persona.primer_apellido);             
	            $('#segundo_apellido').val(result.persona.segundo_apellido);             
	            return true;
	    },
	    onResultsOpen: function(){
	            $('#historium_paciente_id').val(""); 
	            $('#primer_nombre').val("");             
	            $('#segundo_nombre').val(""); 
	            $('#primer_apellido').val(""); 
	            $('#segundo_apellido').val(""); 
	    }
    });

  $('.search_profesional_historia').search({
      apiSettings: {
        action: 'search', url: '/profesionals/searchprofesional?query={query}'
      },
      fields: {    
        results: 'profesional',  
        title   : 'numero_id'
        
      },
      minCharacters : 3,
      onSelect: function(result, response) {                          
                            
              $('#historium_profesional_id').val(result.numero_id); 
              $('#historium_especialidad_id').val(result.especialidad.especialidad_id); 
              $('#nombre_especialidad').val(result.especialidad.nombre); 
              $('#primer_nombre_profesional').val(result.persona.primer_nombre);             
              $('#segundo_nombre_profesional').val(result.persona.segundo_nombre);             
              $('#primer_apellido_profesional').val(result.persona.primer_apellido);             
              $('#segundo_apellido_profesional').val(result.persona.segundo_apellido);             
              return true;
      },
      onResultsOpen: function(){
              $('#historium_profesional_id').val(""); 
              $('#historium_especialidad_id').val(""); 
              $('#primer_nombre_profesional').val("");             
              $('#segundo_nombre_profesional').val(""); 
              $('#primer_apellido_profesional').val(""); 
              $('#segundo_apellido_profesional').val(""); 
      }
    });    

  $('.search_idiagnostica1_historia').search({
      apiSettings: {
        action: 'search', url: '/cie10/searchcie10?query={query}'
      },
      fields: {    
        results: 'cie10',  
        title: 'descripcion'
        
      },
      minCharacters : 3,
      onSelect: function(result, response) {                          
                            
              $('#historium_idiagnostica1').val(result.codigo);               
              $('#idiagnostica1').val(result.descripcion);               
              return true;
      },
      onResultsOpen: function(){
              $('#historium_idiagnostica1').val(""); 
              $('#idiagnostica1').val(""); 
              
      }
    });    

  $('.search_idiagnostica2_historia').search({
      apiSettings: {
        action: 'search', url: '/cie10/searchcie10?query={query}'
      },
      fields: {    
        results: 'cie10',  
        title: 'descripcion'
        
      },
      minCharacters : 3,
      onSelect: function(result, response) {                          
                            
              $('#historium_idiagnostica2').val(result.codigo);               
              $('#idiagnostica2').val(result.descripcion);               
              return true;
      },
      onResultsOpen: function(){
              $('#historium_idiagnostica2').val(""); 
              $('#idiagnostica2').val(""); 
              
      }
    });    

  $('.search_idiagnostica3_historia').search({
      apiSettings: {
        action: 'search', url: '/cie10/searchcie10?query={query}'
      },
      fields: {    
        results: 'cie10',  
        title: 'descripcion'
        
      },
      minCharacters : 3,
      onSelect: function(result, response) {                          
                            
              $('#historium_idiagnostica3').val(result.codigo);               
              $('#idiagnostica3').val(result.descripcion);               
              return true;
      },
      onResultsOpen: function(){
              $('#historium_idiagnostica3').val(""); 
              $('#idiagnostica3').val(""); 
              
      }
    });    

  $('.search_idiagnostica4_historia').search({
      apiSettings: {
        action: 'search', url: '/cie10/searchcie10?query={query}'
      },
      fields: {    
        results: 'cie10',  
        title: 'descripcion'
        
      },
      minCharacters : 3,
      onSelect: function(result, response) {                          
                            
              $('#historium_idiagnostica4').val(result.codigo);               
              $('#idiagnostica4').val(result.descripcion);               
              return true;
      },
      onResultsOpen: function(){
              $('#historium_idiagnostica4').val(""); 
              $('#idiagnostica4').val(""); 
              
      }
    });    

  $('.search_idiagnostica5_historia').search({
      apiSettings: {
        action: 'search', url: '/cie10/searchcie10?query={query}'
      },
      fields: {    
        results: 'cie10',  
        title: 'descripcion'
        
      },
      minCharacters : 3,
      onSelect: function(result, response) {                          
                            
              $('#historium_idiagnostica5').val(result.codigo);               
              $('#idiagnostica5').val(result.descripcion);               
              return true;
      },
      onResultsOpen: function(){
              $('#historium_idiagnostica5').val(""); 
              $('#idiagnostica5').val(""); 
              
      }
    });    

  $('.search_idiagnostica6_historia').search({
      apiSettings: {
        action: 'search', url: '/cie10/searchcie10?query={query}'
      },
      fields: {    
        results: 'cie10',  
        title: 'descripcion'
        
      },
      minCharacters : 3,
      onSelect: function(result, response) {                          
                            
              $('#historium_idiagnostica6').val(result.codigo);               
              $('#idiagnostica6').val(result.descripcion);               
              return true;
      },
      onResultsOpen: function(){
              $('#historium_idiagnostica6').val(""); 
              $('#idiagnostica6').val(""); 
              
      }
    });    

  $('.search_adiagnosticas1_historia').search({
      apiSettings: {
        action: 'search', url: '/procpo/searchprocpo?query={query}'
      },
      fields: {    
        results: 'procpo',  
        title: 'nombre'
        
      },
      minCharacters : 3,
      onSelect: function(result, response) {                          
                            
              $('#historium_adiagnosticas1').val(result.codigo);               
              $('#adiagnosticas1').val(result.nombre);               
              return true;
      },
      onResultsOpen: function(){
              $('#historium_adiagnosticas1').val(""); 
              $('#adiagnosticas1').val(""); 
              
      }
    });

  $('.search_adiagnosticas2_historia').search({
      apiSettings: {
        action: 'search', url: '/procpo/searchprocpo?query={query}'
      },
      fields: {    
        results: 'procpo',  
        title: 'nombre'
        
      },
      minCharacters : 3,
      onSelect: function(result, response) {                          
                            
              $('#historium_adiagnosticas2').val(result.codigo);               
              $('#adiagnosticas2').val(result.nombre);               
              return true;
      },
      onResultsOpen: function(){
              $('#historium_adiagnosticas2').val(""); 
              $('#adiagnosticas2').val(""); 
              
      }
    });

  $('.search_adiagnosticas3_historia').search({
      apiSettings: {
        action: 'search', url: '/procpo/searchprocpo?query={query}'
      },
      fields: {    
        results: 'procpo',  
        title: 'nombre'
        
      },
      minCharacters : 3,
      onSelect: function(result, response) {                          
                            
              $('#historium_adiagnosticas3').val(result.codigo);               
              $('#adiagnosticas3').val(result.nombre);               
              return true;
      },
      onResultsOpen: function(){
              $('#historium_adiagnosticas3').val(""); 
              $('#adiagnosticas3').val(""); 
              
      }
    });

  $('.search_adiagnosticas4_historia').search({
      apiSettings: {
        action: 'search', url: '/procpo/searchprocpo?query={query}'
      },
      fields: {    
        results: 'procpo',  
        title: 'nombre'
        
      },
      minCharacters : 3,
      onSelect: function(result, response) {                          
                            
              $('#historium_adiagnosticas4').val(result.codigo);               
              $('#adiagnosticas4').val(result.nombre);               
              return true;
      },
      onResultsOpen: function(){
              $('#historium_adiagnosticas4').val(""); 
              $('#adiagnosticas4').val(""); 
              
      }
    });

  $('.search_adiagnosticas5_historia').search({
      apiSettings: {
        action: 'search', url: '/procpo/searchprocpo?query={query}'
      },
      fields: {    
        results: 'procpo',  
        title: 'nombre'
        
      },
      minCharacters : 3,
      onSelect: function(result, response) {                          
                            
              $('#historium_adiagnosticas5').val(result.codigo);               
              $('#adiagnosticas5').val(result.nombre);               
              return true;
      },
      onResultsOpen: function(){
              $('#historium_adiagnosticas5').val(""); 
              $('#adiagnosticas5').val(""); 
              
      }
    });

  $('.search_adiagnosticas6_historia').search({
      apiSettings: {
        action: 'search', url: '/procpo/searchprocpo?query={query}'
      },
      fields: {    
        results: 'procpo',  
        title: 'nombre'
        
      },
      minCharacters : 3,
      onSelect: function(result, response) {                          
                            
              $('#historium_adiagnosticas6').val(result.codigo);               
              $('#adiagnosticas6').val(result.nombre);               
              return true;
      },
      onResultsOpen: function(){
              $('#historium_adiagnosticas6').val(""); 
              $('#adiagnosticas6').val(""); 
              
      }
    });

  $('.search_tratamiento1_historia').search({
      apiSettings: {
        action: 'search', url: '/medpo/searchmedpo?query={query}'
      },
      fields: {    
        results: 'medpo',  
        title: 'nombregenerico',
        description: 'formaconcentracion' 
        
      },
      minCharacters : 3,
      onSelect: function(result, response) {                          
                            
              $('#historium_tratamiento1').val(result.codigo);               
              $('#tratamiento1').val(result.nombregenerico  + ' ' + result.formaconcentracion);               
              return true;
      },
      onResultsOpen: function(){
              $('#historium_tratamiento1').val(""); 
              $('#tratamiento1').val(""); 
              
      }
    });

  $('.search_tratamiento2_historia').search({
      apiSettings: {
        action: 'search', url: '/medpo/searchmedpo?query={query}'
      },
      fields: {    
        results: 'medpo',  
        title: 'nombregenerico',
        description: 'formaconcentracion' 
        
      },
      minCharacters : 3,
      onSelect: function(result, response) {                          
                            
              $('#historium_tratamiento2').val(result.codigo);               
              $('#tratamiento2').val(result.nombregenerico  + ' ' + result.formaconcentracion);               
              return true;
      },
      onResultsOpen: function(){
              $('#historium_tratamiento2').val(""); 
              $('#tratamiento2').val(""); 
              
      }
    });

  $('.search_tratamiento3_historia').search({
      apiSettings: {
        action: 'search', url: '/medpo/searchmedpo?query={query}'
      },
      fields: {    
        results: 'medpo',  
        title: 'nombregenerico',
        description: 'formaconcentracion' 
        
      },
      minCharacters : 3,
      onSelect: function(result, response) {                          
                            
              $('#historium_tratamiento3').val(result.codigo);               
              $('#tratamiento3').val(result.nombregenerico  + ' ' + result.formaconcentracion);               
              return true;
      },
      onResultsOpen: function(){
              $('#historium_tratamiento3').val(""); 
              $('#tratamiento3').val(""); 
              
      }
    });

  $('.search_tratamiento4_historia').search({
      apiSettings: {
        action: 'search', url: '/medpo/searchmedpo?query={query}'
      },
      fields: {    
        results: 'medpo',  
        title: 'nombregenerico',
        description: 'formaconcentracion' 
        
      },
      minCharacters : 3,
      onSelect: function(result, response) {                          
                            
              $('#historium_tratamiento4').val(result.codigo);               
              $('#tratamiento4').val(result.nombregenerico  + ' ' + result.formaconcentracion);               
              return true;
      },
      onResultsOpen: function(){
              $('#historium_tratamiento4').val(""); 
              $('#tratamiento4').val(""); 
              
      }
    });

  $('.search_tratamiento5_historia').search({
      apiSettings: {
        action: 'search', url: '/medpo/searchmedpo?query={query}'
      },
      fields: {    
        results: 'medpo',  
        title: 'nombregenerico',
        description: 'formaconcentracion' 
        
      },
      minCharacters : 3,
      onSelect: function(result, response) {                          
                            
              $('#historium_tratamiento5').val(result.codigo);               
              $('#tratamiento5').val(result.nombregenerico  + ' ' + result.formaconcentracion);               
              return true;
      },
      onResultsOpen: function(){
              $('#historium_tratamiento5').val(""); 
              $('#tratamiento5').val(""); 
              
      }
    });

  $('.search_tratamiento6_historia').search({
      apiSettings: {
        action: 'search', url: '/medpo/searchmedpo?query={query}'
      },
      fields: {    
        results: 'medpo',  
        title: 'nombregenerico',
        description: 'formaconcentracion' 
        
      },
      minCharacters : 3,
      onSelect: function(result, response) {                          
                            
              $('#historium_tratamiento6').val(result.codigo);               
              $('#tratamiento6').val(result.nombregenerico  + ' ' + result.formaconcentracion);               
              return true;
      },
      onResultsOpen: function(){
              $('#historium_tratamiento6').val(""); 
              $('#tratamiento6').val(""); 
              
      }
    });


  	
});