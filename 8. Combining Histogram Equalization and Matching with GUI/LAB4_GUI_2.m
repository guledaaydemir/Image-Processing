function varargout = LAB4_GUI_2(varargin)
% LAB4_GUI_2 MATLAB code for LAB4_GUI_2.fig
%      LAB4_GUI_2, by itself, creates a new LAB4_GUI_2 or raises the existing
%      singleton*.
%
%      H = LAB4_GUI_2 returns the handle to a new LAB4_GUI_2 or the handle to
%      the existing singleton*.
%
%      LAB4_GUI_2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LAB4_GUI_2.M with the given input arguments.
%
%      LAB4_GUI_2('Property','Value',...) creates a new LAB4_GUI_2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before LAB4_GUI_2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to LAB4_GUI_2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES
 
% Edit the above text to modify the response to help LAB4_GUI_2
 
% Last Modified by GUIDE v2.5 29-Mar-2019 11:31:04
 
% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @LAB4_GUI_2_OpeningFcn, ...
                   'gui_OutputFcn',  @LAB4_GUI_2_OutputFcn, ...
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
 
 
% --- Executes just before LAB4_GUI_2 is made visible.
function LAB4_GUI_2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to LAB4_GUI_2 (see VARARGIN)
 
result_select_function = get(handles.panel_select_function, 'SelectedObject');
string_result_select_function = get(result_select_function,'String');
 
if strcmp(string_result_select_function,'Histogram Equalize ')
    set(handles.text7,'visible','off');
    set(handles.edit2,'visible','off');
    set(handles.text4,'visible','off');
    set(handles.axes3,'visible','off');
    set(handles.pushbutton3,'visible','off');
elseif strcmp(string_result_select_function,'Histogram Matching')
    disp('M');
end
% Choose default command line output for LAB4_GUI_2
handles.output = hObject;
 
% Update handles structure
guidata(hObject, handles);
 
% UIWAIT makes LAB4_GUI_2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
 
 
% --- Outputs from this function are returned to the command line.
function varargout = LAB4_GUI_2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Get default command line output from handles structure
varargout{1} = handles.output;
 
 
% --- Executes on button press in radiobutton1.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hint: get(hObject,'Value') returns toggle state of radiobutton1
  set(handles.text7,'visible','off');
    set(handles.edit2,'visible','off');
    set(handles.text4,'visible','off');
    set(handles.axes3,'visible','off');
    set(handles.pushbutton3,'visible','off');
 
 
% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
  
 
    
    
 
 
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[file,path] = uigetfile({'*.png';'*.tif';'*.jpg';'*.bmp'},...
    'File Selector');
 
image = strcat(path,file);
set(handles.edit1,'string',image);
original_image = imread(image);
axes(handles.axes1);
colormap gray;
imagesc(original_image);
 
result_select_function = get(handles.panel_select_function, 'SelectedObject');
string_result_select_function = get(result_select_function,'String');
 
if strcmp(string_result_select_function,'Histogram Equalize ')
    X = histeq(original_image);
    axes(handles.axes4);
    colormap gray;
    imagesc(X);
elseif strcmp(string_result_select_function,'Histogram Matching')
    %does nothing
end
 
 
% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[file,path] = uigetfile({'*.tif';'*.jpg';'*.bmp';'*.png'},...
    'File Selector');
 
image = strcat(path,file);
set(handles.edit2,'string',image);
refer_image = imread(image);
axes(handles.axes3);
colormap gray;
imagesc(refer_image);
 
axes(handles.axes4);
colormap gray;
get_original_image = get(handles.edit1,'string');
original_image = imread(get_original_image);
result_image = imhistmatch(original_image,refer_image);
imagesc(result_image);
 
 
 
 
function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
 
 
% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
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
 
 
% --- Executes on button press in radiobutton7.
function radiobutton7_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hint: get(hObject,'Value') returns toggle state of radiobutton7
  set(handles.text7,'visible','on');
    set(handles.edit2,'visible','on');
    set(handles.text4,'visible','on');
    set(handles.axes3,'visible','on');
    set(handles.pushbutton3,'visible','on');
 
 
% --- Executes on button press in pushbutton4.
 
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
