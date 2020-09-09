function varargout = protyecto(varargin)
% PROTYECTO MATLAB code for protyecto.fig
%      PROTYECTO, by itself, creates a new PROTYECTO or raises the existing
%      singleton*.
%
%      H = PROTYECTO returns the handle to a new PROTYECTO or the handle to
%      the existing singleton*.
%
%      PROTYECTO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROTYECTO.M with the given input arguments.
%
%      PROTYECTO('Property','Value',...) creates a new PROTYECTO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before protyecto_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to protyecto_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help protyecto

% Last Modified by GUIDE v2.5 15-May-2020 16:16:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @protyecto_OpeningFcn, ...
                   'gui_OutputFcn',  @protyecto_OutputFcn, ...
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


% --- Executes just before protyecto is made visible.
function protyecto_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to protyecto (see VARARGIN)

% Choose default command line output for protyecto
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes protyecto wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = protyecto_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in options.
function options_Callback(hObject, eventdata, handles)
% hObject    handle to options (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns options contents as cell array
%        contents{get(hObject,'Value')} returns selected item from options


% --- Executes during object creation, after setting all properties.
function options_CreateFcn(hObject, eventdata, handles)
% hObject    handle to options (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pos=get(handles.popupmenu2,'Value');
set(handles.pushbutton2,'Visible','on');

switch pos
    case 1
        set(handles.options,'Visible','on')
        set(handles.popupmenu3,'Visible','off')
        set(handles.popupmenu4,'Visible','off')
        set(handles.popupmenu5,'Visible','off')
        set(handles.popupmenu5,'Visible','off')
        set(handles.popupmenu6,'Visible','on')
        set(handles.popupmenu7,'Visible','off')
    
        
    case 2
        set(handles.options,'Visible','off')
        set(handles.popupmenu3,'Visible','on')
        set(handles.popupmenu4,'Visible','off')
        set(handles.popupmenu5,'Visible','off')
        set(handles.popupmenu5,'Visible','off')
        set(handles.popupmenu6,'Visible','on')
        set(handles.popupmenu7,'Visible','off')
        
    case 3
        set(handles.options,'Visible','off')
        set(handles.popupmenu3,'Visible','off')
        set(handles.popupmenu4,'Visible','on')
        set(handles.popupmenu5,'Visible','off')
        set(handles.popupmenu5,'Visible','off')
        set(handles.popupmenu6,'Visible','on')
        set(handles.popupmenu7,'Visible','off')
   
    case 4
        disp('hola')
        set(handles.options,'Visible','off')
        set(handles.popupmenu3,'Visible','off')
        set(handles.popupmenu4,'Visible','off')
        set(handles.popupmenu5,'Visible','on')
        set(handles.popupmenu6,'Visible','off')
        set(handles.popupmenu7,'Visible','off')
    
    case 5
        set(handles.options,'Visible','off')
        set(handles.popupmenu3,'Visible','off')
        set(handles.popupmenu4,'Visible','off')
        set(handles.popupmenu5,'Visible','off')
        set(handles.popupmenu6,'Visible','on')
        set(handles.popupmenu7,'Visible','off')
    case 6
        set(handles.options,'Visible','off')
        set(handles.popupmenu3,'Visible','off')
        set(handles.popupmenu4,'Visible','off')
        set(handles.popupmenu5,'Visible','off')
        set(handles.popupmenu6,'Visible','off')
        set(handles.pushbutton2,'Visible','off')
        set(handles.text3,'Visible','on');
        set(handles.text4,'Visible','on');
        set(handles.edit4,'Visible','on');
        set(handles.edit5,'Visible','on');
        set(handles.edit3,'Visible','on');
        set(handles.pushbutton3,'Visible','on');
        
        set(handles.edit4,'String','ingrese la condicion inicial')
        set(handles.edit5,'String','ingrese el intervalo final')
        
    case 7
        set(handles.options,'Visible','off')
        set(handles.popupmenu3,'Visible','off')
        set(handles.popupmenu4,'Visible','off')
        set(handles.popupmenu5,'Visible','off')
        set(handles.popupmenu6,'Visible','off')
        set(handles.popupmenu7,'Visible','on')
        
        
        
        
        
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2

% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit3,'Visible','on');
set(handles.pushbutton3,'Visible','on');
pos=get(handles.popupmenu3,'Value');
pos2=get(handles.options,'Value');


poso=get(handles.popupmenu2,'Value');

switch(poso)
    case 1 
           set(handles.uitable5,'Visible','off');
           set(handles.edit7,'Visible','off');
           set(handles.pushbutton6,'Visible','off');
           set(handles.pushbutton5,'Visible','off');
           set(handles.uitable3,'Visible','off');
           set(handles.uitable4,'Visible','off');
        
        if(pos2==1 || pos2==4 || pos2==5)
           set(handles.text3,'Visible','on');
           set(handles.text4,'Visible','on');
           set(handles.edit4,'Visible','on');
           set(handles.edit5,'Visible','on');
        else
           set(handles.text3,'Visible','on');
           set(handles.text4,'Visible','off');
           set(handles.edit4,'Visible','on');
           set(handles.edit5,'Visible','off');
        end
    
    case 2
           set(handles.uitable5,'Visible','off');
           set(handles.edit7,'Visible','off');
           set(handles.pushbutton6,'Visible','off');
           set(handles.pushbutton5,'Visible','off');
           set(handles.uitable3,'Visible','off');
           set(handles.uitable4,'Visible','off');
        
        if(pos==1 || pos==2 || pos==5 || pos==6)
           set(handles.text3,'Visible','on');
           set(handles.text4,'Visible','on');
           set(handles.edit4,'Visible','on');
           set(handles.edit5,'Visible','on');
       else
           set(handles.text3,'Visible','on');
           set(handles.text4,'Visible','off');
           set(handles.edit4,'Visible','on');
           set(handles.edit5,'Visible','off');
        end
        
    case 3
           set(handles.edit7,'Visible','off');
           set(handles.uitable5,'Visible','off');
           set(handles.pushbutton6,'Visible','off');
           set(handles.pushbutton5,'Visible','off');
           set(handles.uitable3,'Visible','off');
           set(handles.uitable4,'Visible','off');
     
           set(handles.text3,'Visible','on');
           set(handles.text4,'Visible','on');
           set(handles.edit4,'Visible','on');
           set(handles.edit5,'Visible','on');
           
    case 4
           set(handles.text3,'Visible','off');
           set(handles.text4,'Visible','off');
           set(handles.edit4,'Visible','off');
           set(handles.edit5,'Visible','off');
           set(handles.edit6,'Visible','off');
           set(handles.edit3,'Visible','off');
           set(handles.pushbutton3,'Visible','off');
           cla(handles.axes1,'reset');
           set(handles.axes1,'Visible','off');
           
           set(handles.edit7,'Visible','on');
           set(handles.pushbutton6,'Visible','on');
           
    case 5
        
           set(handles.edit7,'Visible','off');
           set(handles.uitable5,'Visible','off');
           set(handles.pushbutton6,'Visible','off');
           set(handles.pushbutton5,'Visible','off');
           set(handles.uitable3,'Visible','off');
           set(handles.uitable4,'Visible','off');
     
           set(handles.text3,'Visible','on');
           set(handles.text4,'Visible','on');
           set(handles.edit4,'Visible','on');
           set(handles.edit5,'Visible','on');
           
    case 7
        
           set(handles.edit7,'Visible','off');
           set(handles.uitable5,'Visible','off');
           set(handles.pushbutton6,'Visible','off');
           set(handles.pushbutton5,'Visible','off');
           set(handles.uitable3,'Visible','off');
           set(handles.uitable4,'Visible','off');
     
           set(handles.text3,'Visible','off');
           set(handles.text4,'Visible','on');
           set(handles.edit4,'Visible','on');
           set(handles.edit4,'String','Condicion inicial')
           set(handles.edit5,'Visible','on');
        
end
    
    




function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
poso=get(handles.popupmenu2,'Value');
pos=get(handles.options,'Value');
pos2=get(handles.popupmenu3,'Value');
pos3=get(handles.popupmenu4,'Value');
pos5=get(handles.popupmenu5,'Value');
pos7 = get(handles.popupmenu7,'Value');
set(handles.edit6,'Visible','on');
set(handles.axes1,'Visible','on');
syms x

if(poso==1)
    
    switch pos
        case 1
            f=str2sym(get(handles.edit3,'String'));
            xu=str2num(get(handles.edit4,'String'));
            xl=str2num(get(handles.edit5,'String'));
            [mensaje,raiz]=Biseccion(f,xl,xu,poso);
            
            set(handles.edit6,'String',mensaje);
            
            axes(handles.axes1);
            cla(handles.axes1,'reset');
            
            if(raiz~=inf)
                
                ezplot(f);
                grid on
                xlim([xu-4 xl+4]);
                text(raiz,subs(f,x,raiz),'\leftarrow aqui se  la encontro la raiz')       
            end
            
     
        case 4
            f=str2sym(get(handles.edit3,'String'));
            xu=str2num(get(handles.edit4,'String'));
            xl=str2num(get(handles.edit5,'String'));
            [mensaje,raiz]=posicion_falsa(f,xl,xu,poso);
            
            set(handles.edit6,'String',mensaje);
            
            
            axes(handles.axes1);
            cla(handles.axes1,'reset');
            
            if(raiz~=inf)
                
                ezplot(f);
                grid on
                xlim([xu-4 xl+4]);
                text(raiz,subs(f,x,raiz),'\leftarrow aqui se  la encontro la raiz')       
            end
            
        case 2
            
            f=str2sym(get(handles.edit3,'String'));
            xu=str2num(get(handles.edit4,'String'));
            
            [mensaje, raiz]=Newton_Raphson(f,xu,poso);
            set(handles.edit6,'String',mensaje);
            
            if(raiz~=inf)
                
                ezplot(f);
                grid on
                text(raiz,subs(f,x,raiz),'\leftarrow aqui se  la encontro la raiz')       
            end
            
        case 3
            
            f=str2sym(get(handles.edit3,'String'));
            xu=str2num(get(handles.edit4,'String'));
            
            [mensaje, raiz]=Punto_fijo(f,xu,poso);
            set(handles.edit6,'String',mensaje);
            
            if(raiz~=inf)
                
                ezplot(f);
                grid on
                text(raiz,subs(f,x,raiz),'\leftarrow aqui se  la encontro la raiz')       
            end
            
       
        case 5
            
            f=str2sym(get(handles.edit3,'String'));
            xi=str2num(get(handles.edit4,'String'));
            xo=str2num(get(handles.edit5,'String'));
            
            [mensaje, raiz]=secante(f,xi,xo,poso);
            set(handles.edit6,'String',mensaje);
            
            if(raiz~=inf)
                
                ezplot(f);
                grid on
                text(raiz,subs(f,x,raiz),'\leftarrow aqui se  la encontro la raiz')       
            end
            
            
            
            
    end
    
elseif(poso==2)
    switch(pos2)
        case 1
            
            f=str2sym(get(handles.edit3,'String'));
            fo=f;
            f=diff(f);
            
            xu=str2num(get(handles.edit4,'String'));
            xl=str2num(get(handles.edit5,'String'));
            [mensaje,raiz]=Biseccion(f,xl,xu,poso);
            
            set(handles.edit6,'String',mensaje);
            
            axes(handles.axes1);
            cla(handles.axes1,'reset');
            
            if(raiz~=inf)
                
                ezplot(fo);
                grid on
                xlim([xu-4 xl+4]);
                text(raiz,subs(fo,x,raiz),'\leftarrow aqui se  la encontro el optimo')       
            end
            
        case 2
            
            f=str2sym(get(handles.edit3,'String'));
            fo=f;
            f=diff(f);
            
            xu=str2num(get(handles.edit4,'String'));
            xl=str2num(get(handles.edit5,'String'));
            [mensaje,raiz]=posicion_falsa(f,xl,xu,poso);
            
            set(handles.edit6,'String',mensaje);
            
            
            axes(handles.axes1);
            cla(handles.axes1,'reset');
            
            if(raiz~=inf)
                
                ezplot(fo);
                grid on
                xlim([xu-4 xl+4]);
                text(raiz,subs(fo,x,raiz),'\leftarrow aqui se  la encontro el optimo')       
            end
            
        case 3
            
            f=str2sym(get(handles.edit3,'String'));
            xu=str2num(get(handles.edit4,'String'));
            fo=f;
            f=diff(f);
            
            [mensaje, raiz]=Punto_fijo(f,xu,poso);
            set(handles.edit6,'String',mensaje);
            
            if(raiz~=inf)
                
                ezplot(fo);
                grid on
                text(raiz,subs(fo,x,raiz),'\leftarrow aqui se  la encontro el optimo')       
            end 
            
            
        case 4
            
            f=str2sym(get(handles.edit3,'String'));
            fo=f;
            f=diff(f);
            xu=str2num(get(handles.edit4,'String'));
            
            [mensaje, raiz]=Newton_Raphson(f,xu,poso);
            set(handles.edit6,'String',mensaje);
            
            if(raiz~=inf)
                
                ezplot(fo);
                grid on
                text(raiz,eval(subs(fo,x,raiz)),'\leftarrow aqui se  la encontro el optimo')       
            end
            
        case 5
            f=str2sym(get(handles.edit3,'String'));
            
            xu=str2num(get(handles.edit4,'String'));
            xl=str2num(get(handles.edit5,'String'));
            [mensaje,raiz]=Seccion_dorada(f,xl,xu);
            
            set(handles.edit6,'String',mensaje);
            
            
            axes(handles.axes1);
            cla(handles.axes1,'reset');
            
            if(raiz~=inf)
                
                ezplot(f);
                grid on
                xlim([xu-4 xl+4]);
                text(raiz,subs(fo,x,raiz),'\leftarrow aqui se  la encontro el optimo')       
            end
            
        case 6
            f=str2sym(get(handles.edit3,'String'));
            fo=f;
            f=diff(f);
            xi=str2num(get(handles.edit4,'String'));
            xo=str2num(get(handles.edit5,'String'));
            [mensaje,raiz]=secante(f,xi,xo,poso);
            
            set(handles.edit6,'String',mensaje);
            
            
            axes(handles.axes1);
            cla(handles.axes1,'reset');
            
            if(raiz~=inf)
                
                ezplot(fo);
                grid on
                text(raiz,eval(subs(fo,x,raiz)),'\leftarrow aqui se  la encontro el optimo')       
            end      
    end
    
elseif(poso==3)
    
    switch(pos3)
        case 1
            f=str2sym(get(handles.edit3,'String'));
            xu=str2num(get(handles.edit4,'String'));
            xl=str2num(get(handles.edit5,'String'));
            
            raiz = Muller(f,xu,xl);
            eval_r = eval(subs(f,x,raiz)); 
            text(raiz,eval_r,'X \leftarrow aqui se encuentra la raiz');
            
            set(handles.edit6,'String',strcat('la raiz es_',num2str(raiz)));
            
        case 2
            f=str2sym(get(handles.edit3,'String'));
            xu=str2num(get(handles.edit4,'String'));
            xl=str2num(get(handles.edit5,'String'));
            
            [raiz1, raiz2] = Bairtow(f,xu,xl);
            
            mes = ['la raizes son ',num2str(raiz1)];
            mes = [mes,' y '];
            mes = [mes,num2str(raiz2)];
            set(handles.edit6,'String',mes);
    end
    
elseif(poso==5)
    
    switch(pos5)
        case 1
            f=str2sym(get(handles.edit3,'String'));
            xu=str2num(get(handles.edit4,'String'));
            xl=str2num(get(handles.edit5,'String'));
            
            set(handles.axes1,'Visible','off');
            inte = trapecio(f,xu,xl,100);
            set(handles.edit6,'String',inte);
            
        case 2
            
            f=str2sym(get(handles.edit3,'String'));
            xu=str2num(get(handles.edit4,'String'));
            xl=str2num(get(handles.edit5,'String'));
            
            set(handles.axes1,'Visible','off');
            inte = simpson(f,xu,xl,100);
            set(handles.edit6,'String',inte);
            
            
    end
elseif(poso==6)
    
            f=str2sym(get(handles.edit3,'String'));
            xu=str2num(get(handles.edit4,'String'));
            xl=str2num(get(handles.edit5,'String'));
            t = 0:1/100:xl;
            n = length(t);
            cont=1;
            for m=0:1/100:xl
                fx(cont)=eval(subs(f,x,m));
                cont=cont+1;
            end
       
            derivar(fx,t);
            integracion(f,n,xl,xu);
            legend("funcion","derivada","integral");
            
elseif(poso==7)
    
    
    switch(pos7)
        
        case 1
            cla(handles.axes1,'reset');
            f = str2sym(get(handles.edit3,'String'));
            con_ini = str2sym(get(handles.edit4,'String'));
            tf = str2num(get(handles.edit5,'String'));
            h = 0.01;
            ti = 0;
            axes(handles.axes1)
            
            EULER(h,ti,tf,con_ini,f);
            
        case 3
            
            cla(handles.axes1,'reset');
            f = str2sym(get(handles.edit3,'String'));
            con_ini = str2sym(get(handles.edit4,'String'));
            tf = str2num(get(handles.edit5,'String'));
            h = 0.01;
            ti = 0;
            axes(handles.axes1)
            
            orden_3(h,ti,tf,con_ini,f);
            
        case 2
            
            cla(handles.axes1,'reset');
            f = str2sym(get(handles.edit3,'String'));
            con_ini = str2sym(get(handles.edit4,'String'));
            tf = str2num(get(handles.edit5,'String'));
            h = 0.01;
            ti = 0;
            axes(handles.axes1)
            
            orden_4(h,ti,tf,con_ini,f);     
        
    end
    
    
           
            
    
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A = get(handles.uitable3,'data');
B = get(handles.uitable4,'data');
pos = get(handles.popupmenu5,'Value');

switch(pos)
    
    case 1
        c = gauss_seidel(A,B);
        set(handles.uitable5,'Visible','on');
        set(handles.uitable5,'data',c);
    case 2
        c = UL(A,B);
        set(handles.uitable5,'Visible','on');
        set(handles.uitable5,'data',c);
    
    case 3
        c = Eliminacion_gauss(A,B);
        set(handles.uitable5,'Visible','on');
        set(handles.uitable5,'data',c);
   
        
        
        
end

function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dim = str2num(get(handles.edit7,'String'));
matriz = zeros(dim,dim);
matriz2 = zeros(dim,1);
set(handles.uitable3,'data',matriz);
set(handles.uitable4,'data',matriz2);

set(handles.uitable3,'Visible','on');
set(handles.uitable4,'Visible','on');
set(handles.pushbutton5,'Visible','on');


% --- Executes on selection change in popupmenu5.
function popupmenu5_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu5


% --- Executes during object creation, after setting all properties.
function popupmenu5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu6.
function popupmenu6_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu6


% --- Executes during object creation, after setting all properties.
function popupmenu6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu7.
function popupmenu7_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu7 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu7


% --- Executes during object creation, after setting all properties.
function popupmenu7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
