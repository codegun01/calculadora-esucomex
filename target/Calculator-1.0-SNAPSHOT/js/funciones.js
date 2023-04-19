

function validarForma(forma){
    var numero1 = forma.nro1;
    if(numero1.value == "" || isNaN(numero1.value)){
        
        mensajeError("Debe ingresar solo numeros y los campos no deben estar vacios");
        numero1.focus();
        numero1.select();
        return false;
    }
    
    var numero2 = forma.nro2;
    if(numero2.value == ""){
        
        mensajeError("Debe ingresar solo numeros y los campos no deben estar vacios");
        numero1.focus();
        numero1.select();
        return false;
    }
    
    alert("Datos enviado con exito al servidor");
    return true;
}



const mensajeError = (message) => {
    let paraf = document.createElement('p');
    let text = document.createTextNode(message);
    paraf.appendChild(text);

    let div = document.getElementById('text');
    div.appendChild(paraf);
    div.style.background = '#f8d7da';
    div.style.textAlign = 'center';
    div.style.color = '#721c24';
    div.style.fontSize = '15px';
    div.style.borderRadius = '5px';

    setTimeout( f = () => {
        document.getElementById('text').removeChild(paraf);
    }, 3500);
}




