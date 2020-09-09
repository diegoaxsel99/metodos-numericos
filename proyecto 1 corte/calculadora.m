function varargout = calculadora(varargin)
% CALCULADORA MATLAB code for calculadora.fig
%      CALCULADORA, by itself, creates a new CALCULADORA or raises the existing
%      singleton*.
%
%      H = CALCULADORA returns the handle to a new CALCULADORA or the handle to
%      the existing singleton*.
%
%      CALCULADORA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULADORA.M with the given input arguments.
%
%      CALCULADORA('Property','Value',...) creates a new CALCULADORA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calculadora_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calculadora_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calculadora

% Last Modified by GUIDE v2.5 23-Feb-2020 13:25:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calculadora_OpeningFcn, ...
                   'gui_OutputFcn',  @calculadora_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before calculadora is made visible.
function calculadora_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to calculadora (see VARARGIN)

% Choose default command line output for calculadora
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calculadora wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = calculadora_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in uno.
function uno_Callback(hObject, eventdata, handles)
% hObject    handle to uno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'1');
set(handles.mostrar,'String',texto);
texto=get(handles.mostrar2,'String');
texto=strcat(texto,'1');
set(handles.mostrar2,'String',texto);

% --- Executes on button press in dos.
function dos_Callback(hObject, eventdata, handles)
% hObject    handle to dos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'2');
set(handles.mostrar,'String',texto);
texto=get(handles.mostrar2,'String');
texto=strcat(texto,'2');
set(handles.mostrar2,'String',texto);

% --- Executes on button press in cinco.
function cinco_Callback(hObject, eventdata, handles)
% hObject    handle to cinco (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'5');
set(handles.mostrar,'String',texto);
texto=get(handles.mostrar2,'String');
texto=strcat(texto,'5');
set(handles.mostrar2,'String',texto);

% --- Executes on button press in cuatro.
function cuatro_Callback(hObject, eventdata, handles)
% hObject    handle to cuatro (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'4');
set(handles.mostrar,'String',texto);
texto=get(handles.mostrar2,'String');
texto=strcat(texto,'4');
set(handles.mostrar2,'String',texto);

% --- Executes on button press in tres.
function tres_Callback(hObject, eventdata, handles)
% hObject    handle to tres (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'3');
set(handles.mostrar,'String',texto);
texto=get(handles.mostrar2,'String');
texto=strcat(texto,'3');
set(handles.mostrar2,'String',texto);

% --- Executes on button press in seis.
function seis_Callback(hObject, eventdata, handles)
% hObject    handle to seis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'6');
set(handles.mostrar,'String',texto);
texto=get(handles.mostrar2,'String');
texto=strcat(texto,'6');
set(handles.mostrar2,'String',texto);

% --- Executes on button press in ocho.
function ocho_Callback(hObject, eventdata, handles)
% hObject    handle to ocho (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'8');
set(handles.mostrar,'String',texto);
texto=get(handles.mostrar2,'String');
texto=strcat(texto,'8');
set(handles.mostrar2,'String',texto);

% --- Executes on button press in siete.
function siete_Callback(hObject, eventdata, handles)
% hObject    handle to siete (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'7');
set(handles.mostrar,'String',texto);
texto=get(handles.mostrar2,'String');
texto=strcat(texto,'7');
set(handles.mostrar2,'String',texto);

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in exponente.
function exponente_Callback(hObject, eventdata, handles)
% hObject    handle to exponente (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'.E');
set(handles.mostrar,'String',texto);
texto=get(handles.mostrar2,'String');
texto=strcat(texto,'E');
set(handles.mostrar2,'String',texto);

% --- Executes on button press in cero.
function cero_Callback(hObject, eventdata, handles)
% hObject    handle to cero (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'0');
set(handles.mostrar,'String',texto);
texto=get(handles.mostrar2,'String');
texto=strcat(texto,'0');
set(handles.mostrar2,'String',texto);

% --- Executes on button press in nueve.
function nueve_Callback(hObject, eventdata, handles)
% hObject    handle to nueve (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'9');
set(handles.mostrar,'String',texto);
texto=get(handles.mostrar2,'String');
texto=strcat(texto,'9');
set(handles.mostrar2,'String',texto);


% --- Executes on button press in delete.
function delete_Callback(hObject, eventdata, handles)
% hObject    handle to delete (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

texto=get(handles.mostrar,'String');
if(texto(length(texto))=='+' || texto(length(texto))=='-' || texto(length(texto))=='x' ||texto(length(texto))=='/'|| texto(length(texto))=='E' || texto(length(texto))=='^')
    texto= texto(1:length(texto)-2);
    set(handles.mostrar,'String',texto);
    texto=get(handles.mostrar2,'String');
    texto= texto(1:length(texto)-1);
    set(handles.mostrar2,'String',texto);
elseif(texto(length(texto))=='s' || texto(length(texto))=='S' || texto(length(texto))=='c' ||texto(length(texto))=='C'|| texto(length(texto))=='t' || texto(length(texto))=='T'|| texto(length(texto))=='l')
    texto= texto(1:length(texto)-2);
    set(handles.mostrar,'String',texto);
    texto=get(handles.mostrar2,'String');
    texto= texto(1:length(texto)-3);
    set(handles.mostrar2,'String',texto);
elseif(texto(length(texto))=='L')
    texto= texto(1:length(texto)-2);
    set(handles.mostrar,'String',texto);
    texto=get(handles.mostrar2,'String');
    texto= texto(1:length(texto)-2);
    set(handles.mostrar2,'String',texto); 
else
    texto= texto(1:length(texto)-1);
    set(handles.mostrar,'String',texto);
    texto=get(handles.mostrar2,'String');
    texto= texto(1:length(texto)-1);
    set(handles.mostrar2,'String',texto);
end


% --- Executes on button press in erase.
function erase_Callback(hObject, eventdata, handles)
% hObject    handle to erase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=" ";
set(handles.mostrar,'String',texto);
texto=get(handles.mostrar2,'String');
texto=" ";
set(handles.mostrar2,'String',texto);

% --- Executes on button press in multiplicacion.
function multiplicacion_Callback(hObject, eventdata, handles)
% hObject    handle to multiplicacion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'.x');
set(handles.mostrar,'String',texto);
texto=get(handles.mostrar2,'String');
texto=strcat(texto,'*');
set(handles.mostrar2,'String',texto);

% --- Executes on button press in suma.
function suma_Callback(hObject, eventdata, handles)
% hObject    handle to suma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'.+');
set(handles.mostrar,'String',texto);
texto=get(handles.mostrar2,'String');
texto=strcat(texto,'+');
set(handles.mostrar2,'String',texto);

% --- Executes on button press in division.
function division_Callback(hObject, eventdata, handles)
% hObject    handle to division (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'./');
set(handles.mostrar,'String',texto);
texto=get(handles.mostrar2,'String');
texto=strcat(texto,'/');
set(handles.mostrar2,'String',texto);


% --- Executes on button press in resta.
function resta_Callback(hObject, eventdata, handles)
% hObject    handle to resta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'.-');
set(handles.mostrar,'String',texto);
texto=get(handles.mostrar2,'String');
texto=strcat(texto,'-');
set(handles.mostrar2,'String',texto);


% --- Executes on button press in equal.
function equal_Callback(hObject, eventdata, handles)
% hObject    handle to equal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
romper=int8(strfind(texto,'.'));
texto=strcat(texto,'.');

romper2=int8(strfind(texto,'_'));



for i=1:length(romper)
    res=0;
    if(i<length(romper))
    res=romper(i+1)-romper(i);
    end
    if(res==2)
        texto="Syntax ERROR";
        set(handles.mostar,"String",texto);
        break;
    end
end

for i=1:length(romper2)
    res=0;
    if(i<length(romper2))
    res=romper2(i+1)-romper2(i);
    end
    if(res==2)
        texto="Syntax ERROR";
        set(handles.mostar,"String",texto);
        break;
    end
end


logic=0;

if( texto=="Syntax ERROR")
    logic=1;
end
cont=0;

if(logic==0 && isempty(romper2)==1)
    
    while(cont~=length(romper))
        if(cont==0)
            operacion=str2num(texto(1:romper(1)-1));
            disp(operacion);
            texto=texto(romper(1):length(texto));
            romper=int8(strfind(texto,'.'));
            disp(romper);
            disp(texto);
            
        else
            numero=str2num(texto(romper(cont)+2:romper(cont+1)-1));
            operador=texto(romper(cont)+1);
            disp(numero);
            disp(operador);
            switch operador
                case '+'
                    operacion=operacion+numero;
                case '-'
                    operacion=operacion-numero;
                case 'x'
                    operacion=operacion*numero;
                case '/'
                    operacion=operacion/numero;
                case 'E'
                    operacion=operacion*(10^numero);
                case '^'
                    operacion=operacion^numero;
                
            end
            disp(operacion)
        end
        cont=cont+1;
        disp(cont);
    end
    
    texto=num2str(operacion);
    set(handles.mostrar,'String',texto);
    set(handles.mostrar2,'String',texto);
    
else
    cont=0;
    disp("segunda condicion")
    disp(romper);
    texto=strcat(texto,'.');
    romper=int8(strfind(texto,'.'));
    length(romper);
    while(cont~=length(romper)-1)
        if(cont==0)
            disp(texto(1))
            if(texto(1)=='_')
                operador1=texto(2);
                numero=str2num(texto(3:romper(1)-1));
                switch operador1
                    case 's'
                        operador=sind(numero);
                    case 'S'
                        operador=asind(numero);
                    case 'c'
                        operador=cosd(numero);
                    case 'C'
                        operador=acosd(numero);
                    case 't'
                        operador=tand(numero);
                    case 'T'
                        operador=atand(numero);
                    case 'l'
                        operador=log10(numero);
                    case 'L'
                        operador=log(numero);
                end
                texto=texto(romper(1):length(texto));
                %disp("recorte de texto "+ texto);
                romper=int8(strfind(texto,'.'));                
            else
            operador=str2num(texto(1:romper(1)-1));
            %disp("primer operador "+operador);
            texto=texto(romper(1):length(texto));
            %disp("recorte de texto "+ texto);
            romper=int8(strfind(texto,'.'));
            %disp(romper)
            end
            
        else
            if(texto(romper(cont)+2)=="_")
                
                operador1=texto(romper(cont)+1);
                disp("primer operador " +operador1);
                operador2=texto(romper(cont)+3);
                disp("segundo operador "+operador2);
                numero=str2num(texto(romper(cont)+4:romper(cont+1)-1));
                disp("numero de la operacion "+ numero);
                
                switch operador1
                    case '+'
                        disp("entro");
                        switch operador2
                            case 's'
                                operador=operador + sind(numero);
                            case 'S'
                                operador=operador + asind(numero);
                            case 'c'
                                operador=operador+ cosd(numero);
                            case 'C'
                                operador=operador+acosd(numero);
                            case 't'
                                operador=operador+tand(numero);
                            case 'T'
                                operador=operador+atand(numero); 
                            case 'l'
                                operador=operador+log10(numero);
                            case 'L'
                                operador=operador+log(numero);
                        end
                    case '-'
                        switch operador2
                            case 's'
                                operador=operador - sind(numero);
                            case 'S'
                                operador=operador - asind(numero);
                            case 'c'
                                operador=operador- cosd(numero);
                            case 'C'
                                operador=operador-acosd(numero);
                            case 't'
                                operador=operador-tand(numero);
                            case 'T'
                                operador=operador-atand(numero);
                            case 'l'
                                operador=operador-log10(numero);
                            case 'L'
                                operador=operador-log(numero);
                        end
                    case 'x'
                        disp("entro en multiplicacion")
                        switch operador2
                            case 's'
                                operador=operador * sind(numero);
                            case 'S'
                                operador=operador * asind(numero);
                            case 'c'
                                operador=operador* cosd(numero);
                            case 'C'
                                operador=operador*acosd(numero);
                            case 't'
                                operador=operador*tand(numero);
                            case 'T'
                                operador=operador*atand(numero);
                            case 'l'
                                operador=operador*log10(numero);
                            case 'L'
                                operador=operador*log(numero);
                        end
                    case '/'
                        switch operador2
                            case 's'
                                operador=operador / sind(numero);
                            case 'S'
                                operador=operador / asind(numero);
                            case 'c'
                                operador=operador/ cosd(numero);
                            case 'C'
                                operador=operador/acosd(numero);
                            case 't'
                                operador=operador/tand(numero);
                            case 'T'
                                operador=operador/atand(numero);
                            case 'l'
                                operador=operador/log10(numero);
                            case 'L'
                                operador=operador/log(numero);
                        end
                    case '^'
                        switch operador2
                            case 's'
                                operador=operador ^ (sind(numero));
                            case 'S'
                                operador=operador ^(asind(numero));
                            case 'c'
                                operador=operador^(cosd(numero));
                            case 'C'
                                operador=operador^(acosd(numero));
                            case 't'
                                operador=operador^(tand(numero));
                            case 'T'
                                operador=operador^(atand(numero));
                            case 'l'
                                operador=operador^log10(numero);
                            case 'L'
                                operador=operador^log(numero);
                        end
                end
            else
                numero=str2num(texto(romper(cont)+2:romper(cont+1)-1));
                operador1=texto(romper(cont)+1);
                disp(numero);
                disp(operador1);
                switch operador1
                    case '+'
                        operador=operador+numero;
                    case '-'
                        operador=operador-numero;
                    case 'x'
                        operador=operador*numero;
                    case '/'
                        operador=operador/numero;
                    case 'E'
                        operador=operador*(10^numero);
                    case '^'
                        operador=operador^numero;
                        
                end
                
            end
        end
        
        disp("resultado "+operador);
        cont=cont+1;
        
    end
    texto=num2str(operador);
    set(handles.mostrar,'String',texto);
    set(handles.mostrar2,'String',texto);
    
end



% --- Executes on button press in answer.
function answer_Callback(hObject, eventdata, handles)
% hObject    handle to answer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in seno.
function seno_Callback(hObject, eventdata, handles)
% hObject    handle to seno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'_s');
set(handles.mostrar,'String',texto);
texto=get(handles.mostrar2,'String');
texto=strcat(texto,'sin');
set(handles.mostrar2,'String',texto);
% --- Executes on button press in coseno.
function coseno_Callback(hObject, eventdata, handles)
% hObject    handle to coseno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'_c');
set(handles.mostrar,'String',texto);
texto=get(handles.mostrar2,'String');
texto=strcat(texto,'cos');
set(handles.mostrar2,'String',texto);

% --- Executes on button press in atangente.
function atangente_Callback(hObject, eventdata, handles)
% hObject    handle to atangente (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'_T');
set(handles.mostrar,'String',texto);
texto=get(handles.mostrar2,'String');
texto=strcat(texto,'atan');
set(handles.mostrar2,'String',texto);

% --- Executes on button press in acos.
function acos_Callback(hObject, eventdata, handles)
% hObject    handle to acos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'_C');
set(handles.mostrar,'String',texto);
texto=get(handles.mostrar2,'String');
texto=strcat(texto,'acos');
set(handles.mostrar2,'String',texto);

% --- Executes on button press in aseno.
function aseno_Callback(hObject, eventdata, handles)
% hObject    handle to aseno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'_S');
set(handles.mostrar,'String',texto);
texto=get(handles.mostrar2,'String');
texto=strcat(texto,'asin');
set(handles.mostrar2,'String',texto);
% --- Executes on button press in tangente.
function tangente_Callback(hObject, eventdata, handles)
% hObject    handle to tangente (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'_t');
set(handles.mostrar,'String',texto);
texto=get(handles.mostrar2,'String');
texto=strcat(texto,'tan');
set(handles.mostrar2,'String',texto);


% --- Executes on button press in elevar.
function elevar_Callback(hObject, eventdata, handles)
% hObject    handle to elevar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'.^');
set(handles.mostrar,'String',texto);
texto=get(handles.mostrar2,'String');
texto=strcat(texto,'^');
set(handles.mostrar2,'String',texto);


% --- Executes on button press in variable.
function variable_Callback(hObject, eventdata, handles)
% hObject    handle to variable (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar2,'String');
texto=strcat(texto,'X');
set(handles.mostrar2,'String',texto);


% --- Executes on button press in derivada.
function derivada_Callback(hObject, eventdata, handles)
% hObject    handle to derivada (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
expresion=get(handles.mostrar2,'String');
syms X;
y=str2sym(expresion);
texto=char(diff(y));

set(handles.mostrar2,'String',texto);


% --- Executes on button press in integral.
function integral_Callback(hObject, eventdata, handles)
% hObject    handle to integral (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
expresion=get(handles.mostrar2,'String');
syms X;
y=str2sym(expresion);
texto=char(int(y));
set(handles.mostrar2,'String',texto);

% --- Executes on button press in graficar.
function graficar_Callback(hObject, eventdata, handles)
% hObject    handle to graficar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
expresion=get(handles.mostrar2,'String');
syms X;
y=str2sym(expresion);
ezplot(y,[-10,10]);


% --- Executes on button press in Natural.
function Natural_Callback(hObject, eventdata, handles)
% hObject    handle to Natural (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'_L');
set(handles.mostrar,'String',texto);
texto=get(handles.mostrar2,'String');
texto=strcat(texto,'ln');
set(handles.mostrar2,'String',texto);


% --- Executes on button press in logaritmo.
function logaritmo_Callback(hObject, eventdata, handles)
% hObject    handle to logaritmo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'_l');
set(handles.mostrar,'String',texto);
texto=get(handles.mostrar2,'String');
texto=strcat(texto,'log');
set(handles.mostrar2,'String',texto);


% --- Executes on button press in laputa.
function laputa_Callback(hObject, eventdata, handles)
% hObject    handle to laputa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar2,'String');
texto=strcat(texto,')');
set(handles.mostrar2,'String',texto);


% --- Executes on button press in parentesis1.
function parentesis1_Callback(hObject, eventdata, handles)
% hObject    handle to parentesis1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar2,'String');
texto=strcat(texto,'(');
set(handles.mostrar2,'String',texto);
