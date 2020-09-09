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

% Last Modified by GUIDE v2.5 22-Feb-2020 13:30:13

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
texto = strcat(texto,'1');
set(handles.mostrar,'String',texto);


% --- Executes on button press in dos.
function dos_Callback(hObject, eventdata, handles)
% hObject    handle to dos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto = strcat(texto,'2');
set(handles.mostrar,'String',texto);

% --- Executes on button press in ocho.
function ocho_Callback(hObject, eventdata, handles)
% hObject    handle to ocho (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto = strcat(texto,'8');
set(handles.mostrar,'String',texto);

% --- Executes on button press in siete.
function siete_Callback(hObject, eventdata, handles)
% hObject    handle to siete (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto = strcat(texto,'7');
set(handles.mostrar,'String',texto);

% --- Executes on button press in seis.
function seis_Callback(hObject, eventdata, handles)
% hObject    handle to seis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto = strcat(texto,'6');
set(handles.mostrar,'String',texto);

% --- Executes on button press in tres.
function tres_Callback(hObject, eventdata, handles)
% hObject    handle to tres (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto = strcat(texto,'3');
set(handles.mostrar,'String',texto);

% --- Executes on button press in cinco.
function cinco_Callback(hObject, eventdata, handles)
% hObject    handle to cinco (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto = strcat(texto,'5');
set(handles.mostrar,'String',texto);

% --- Executes on button press in cuatro.
function cuatro_Callback(hObject, eventdata, handles)
% hObject    handle to cuatro (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto = strcat(texto,'4');
set(handles.mostrar,'String',texto);

% --- Executes on button press in nueve.
function nueve_Callback(hObject, eventdata, handles)
% hObject    handle to nueve (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto = strcat(texto,'9');
set(handles.mostrar,'String',texto);


% --- Executes on button press in cero.
function cero_Callback(hObject, eventdata, handles)
% hObject    handle to cero (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto = strcat(texto,'0');
set(handles.mostrar,'String',texto);


% --- Executes on button press in exponencial.
function exponencial_Callback(hObject, eventdata, handles)
% hObject    handle to exponencial (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'.E');
set(handles.mostrar,'String',texto);

% --- Executes on button press in multiplicacion.
function multiplicacion_Callback(hObject, eventdata, handles)
% hObject    handle to multiplicacion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'.x');
set(handles.mostrar,'String',texto);

% --- Executes on button press in division.
function division_Callback(hObject, eventdata, handles)
% hObject    handle to division (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'./');
set(handles.mostrar,'String',texto);

% --- Executes on button press in suma.
function suma_Callback(hObject, eventdata, handles)
% hObject    handle to suma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'.+');
set(handles.mostrar,'String',texto);


% --- Executes on button press in erase.
function erase_Callback(hObject, eventdata, handles)
% hObject    handle to erase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=" ";
set(handles.mostrar,'String',texto);

% --- Executes on button press in delete.
function delete_Callback(hObject, eventdata, handles)
% hObject    handle to delete (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto= texto(1:length(texto)-1);
set(handles.mostrar,'String',texto);

% --- Executes on button press in answer.
function answer_Callback(hObject, eventdata, handles)
% hObject    handle to answer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in resta.
function resta_Callback(hObject, eventdata, handles)
% hObject    handle to resta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'.-');
set(handles.mostrar,'String',texto);


% --- Executes on button press in equal.
function equal_Callback(hObject, eventdata, handles)
% hObject    handle to equal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% texto=get(handles.mostrar,'String');
% romper=int8(strfind(texto,'.'));
% texto=strcat(texto,'.');
% 
% romper2=int8(strfind(texto,'_'));
% 
% disp(romper2);
% 
% 
% 
% for i=1:length(romper)
%     res=0;
%     if(i<length(romper))
%     res=romper(i+1)-romper(i);
%     end
%     if(res==2)
%         texto="Syntax ERROR";
%     end
% end
% 
% logic=0;
% 
% if( texto=="Syntax ERROR" || romper(length(romper))==length(texto)-1)
%     logic=1;
% end
% cont=0;
% if(logic==0)
%     
%     while(cont~=length(romper))
%         if(cont==0)
%             operacion=str2num(texto(1:romper(1)-1));
%             disp(operacion);
%             texto=texto(romper(1):length(texto));
%             romper=int8(strfind(texto,'.'));
%             disp(romper);
%             disp(texto);
%             
%         else
%             numero=str2num(texto(romper(cont)+2:romper(cont+1)-1));
%             operador=texto(romper(cont)+1);
%             disp(numero);
%             disp(operador);
%             switch operador
%                 case '+'
%                     operacion=operacion+numero;
%                 case '-'
%                     operacion=operacion-numero;
%                 case 'x'
%                     operacion=operacion*numero;
%                 case '/'
%                     operacion=operacion/numero;
%                 case 'E'
%                     operacion=operacion*(10^numero);
%                 
%             end
%             disp(operacion)
%         end
%         cont=cont+1;
%         disp(cont);
%     end
%     
%     texto=num2str(operacion);
%     set(handles.mostrar,'String',texto);
%     
% else
%     set(handles.mostrar,'String',texto);
% end

    


% --- Executes on button press in seno.
function seno_Callback(hObject, eventdata, handles)
% hObject    handle to seno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'_sin');
set(handles.mostrar,'String',texto);

% --- Executes on button press in acoseno.
function acoseno_Callback(hObject, eventdata, handles)
% hObject    handle to acoseno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'_acos');
set(handles.mostrar,'String',texto);



% --- Executes on button press in aseno.
function aseno_Callback(hObject, eventdata, handles)
% hObject    handle to aseno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'_asin');
set(handles.mostrar,'String',texto);


% --- Executes on button press in tangente.
function tangente_Callback(hObject, eventdata, handles)
% hObject    handle to tangente (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'_tan');
set(handles.mostrar,'String',texto);


% --- Executes on button press in coseno.
function coseno_Callback(hObject, eventdata, handles)
% hObject    handle to coseno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
texto=get(handles.mostrar,'String');
texto=strcat(texto,'_cos');
set(handles.mostrar,'String',texto);
