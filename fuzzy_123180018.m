function varargout = fuzzy_123180018(varargin)
% FUZZY_123180018 MATLAB code for fuzzy_123180018.fig
%      FUZZY_123180018, by itself, creates a new FUZZY_123180018 or raises the existing
%      singleton*.
%
%      H = FUZZY_123180018 returns the handle to a new FUZZY_123180018 or the handle to
%      the existing singleton*.
%
%      FUZZY_123180018('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FUZZY_123180018.M with the given input arguments.
%
%      FUZZY_123180018('Property','Value',...) creates a new FUZZY_123180018 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fuzzy_123180018_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fuzzy_123180018_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fuzzy_123180018

% Last Modified by GUIDE v2.5 02-Apr-2020 16:11:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fuzzy_123180018_OpeningFcn, ...
                   'gui_OutputFcn',  @fuzzy_123180018_OutputFcn, ...
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


% --- Executes just before fuzzy_123180018 is made visible.
function fuzzy_123180018_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fuzzy_123180018 (see VARARGIN)

% Choose default command line output for fuzzy_123180018
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fuzzy_123180018 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = fuzzy_123180018_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function curahHujan_Callback(hObject, eventdata, handles)
% hObject    handle to curahHujan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of curahHujan as text
%        str2double(get(hObject,'String')) returns contents of curahHujan as a double


% --- Executes during object creation, after setting all properties.
function curahHujan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to curahHujan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in submit.
function submit_Callback(hObject, eventdata, handles)
% hObject    handle to submit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
inputCH = get(handles.curahHujan,'string');
inputDS = get(handles.debitSungai,'string');
inputLH = get(handles.lamaHujan,'string');

CH = str2num(inputCH);
DS = str2num(inputDS);
LH = str2num(inputLH);


fis = readfis('fuzzy_123180018');
submit = evalfis([CH DS LH],fis);
set(handles.hasil,'string',(submit));

function debitSungai_Callback(hObject, eventdata, handles)
% hObject    handle to debit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of debit as text
%        str2double(get(hObject,'String')) returns contents of debit as a double


% --- Executes during object creation, after setting all properties.
function debit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to debit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lamaHujan_Callback(hObject, eventdata, handles)
% hObject    handle to lama (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lama as text
%        str2double(get(hObject,'String')) returns contents of lama as a double


% --- Executes during object creation, after setting all properties.
function lama_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lama (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hasil_Callback(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasil as text
%        str2double(get(hObject,'String')) returns contents of hasil as a double


% --- Executes during object creation, after setting all properties.
function hasil_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
