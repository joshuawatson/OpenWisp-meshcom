/**
 * Added for user extra data handling
 */
$(document).ready(function(){
        $("#pg_selector").click(function(){
                $("#pg_fieldset").slideToggle("slow");
                $("#pg_userlabel").html()=="Dati utente"?$("#pg_userlabel").html("Dati Legale rappresentante"):$("#pg_userlabel").html("Dati utente");
                var ck=document.getElementById('pg_selector').checked;
                
                document.getElementById("accettazionecontratto").href=ck?"documents/Adesionepersonagiuridica.pdf":"documents/Adesionepersonafisica.pdf";
        });
        $("#user_password").keyup(function () {
      		var value = $(this).val();
      		if(value.length)$("#user_xuser_attributes_inst_cpe_password").val(value);
    	}).keyup();
    	$("#user_username").keyup(function () {
      		var value = $(this).val();
      		$("#user_xuser_attributes_inst_cpe_username").val(value);
    	}).keyup();
    	$('#btnpwd').click(function(){
    		var A=a=n=f=0;
    		var key='';
    		var alpha="qwertyuioplkjhgfdsazxcvbnm";
    		var special="_";
    		while(A+a+n+f != 4){
    			key='';
    			A=a=n=f=0;
	    		for(var i=0; i<10;i++){
	    			s=Math.floor(Math.random()*12);
	    			if(s%2==0){
	    				A = 1;
	    				c = alpha.charAt(Math.floor(Math.random()*alpha.length)).toUpperCase();
	    			}else if(s%3==0){
	    				n = 1;
	    				c = Math.floor(Math.random()* 10);
	    			}else if(s%5==0 && f==0){
	    				f = 1;
	    				c = special.charAt(Math.floor(Math.random()*special.length));
	    			}else{
	    				a = 1;
	    			 	c = alpha.charAt(Math.floor(Math.random()*alpha.length))
	    			}
	    			key += c;
	    		}
	    	}
    		$("#user_password").val(key);
    		$("#user_password_confirmation").val(key);
    		$("#user_xuser_attributes_inst_cpe_password").val(key);
    	})
    	
});
