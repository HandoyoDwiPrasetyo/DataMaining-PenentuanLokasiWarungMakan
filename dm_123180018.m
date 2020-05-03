function varargout = dm_123180018(varargin)
% DM_123180018 MATLAB code for dm_123180018.fig
%      DM_123180018, by itself, creates a new DM_123180018 or raises the existing
%      singleton*.
%
%      H = DM_123180018 returns the handle to a new DM_123180018 or the handle to
%      the existing singleton*.
%
%      DM_123180018('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DM_123180018.M with the given input arguments.
%
%      DM_123180018('Property','Value',...) creates a new DM_123180018 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before dm_123180018_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to dm_123180018_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help dm_123180018

% Last Modified by GUIDE v2.5 02-Apr-2020 21:16:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dm_123180018_OpeningFcn, ...
                   'gui_OutputFcn',  @dm_123180018_OutputFcn, ...
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


% --- Executes just before dm_123180018 is made visible.
function dm_123180018_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to dm_123180018 (see VARARGIN)

% Choose default command line output for dm_123180018
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes dm_123180018 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = dm_123180018_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function jarakPasar_Callback(hObject, eventdata, handles)
% hObject    handle to jarakPasar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jarakPasar as text
%        str2double(get(hObject,'String')) returns contents of jarakPasar as a double


% --- Executes during object creation, after setting all properties.
function jarakPasar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jarakPasar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tingkatKeramaian_Callback(hObject, eventdata, handles)
% hObject    handle to tingkatKeramaian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tingkatKeramaian as text
%        str2double(get(hObject,'String')) returns contents of tingkatKeramaian as a double


% --- Executes during object creation, after setting all properties.
function tingkatKeramaian_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tingkatKeramaian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function jarakJalan_Callback(hObject, eventdata, handles)
% hObject    handle to jarakJalan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jarakJalan as text
%        str2double(get(hObject,'String')) returns contents of jarakJalan as a double


% --- Executes during object creation, after setting all properties.
function jarakJalan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jarakJalan (see GCBO)
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
%knn = fitcknn(training, group, 'numNeighbor', 3)
%predict(knn, sampel)
training = xlsread('DataMaining.xlsx','A1:C25');
group = [4; 2; 3; 3; 3; 4; 4; 1; 1; 2; 2; 2; 2; 1; 2; 2; 3; 4; 4; 1; 2; 2; 2; 3; 3;];
jarakP = str2num(get(handles.jarakPasar, 'string'));
tingkatK = str2num(get(handles.tingkatKeramaian, 'string'));
jarakJ = str2num(get(handles.jarakJalan, 'string'));

sample = [jarakP tingkatK jarakJ];
knn = fitcknn(training, group, 'numNeighbor', 4)
predict(knn, sample);
submit = num2str(predict(knn, sample));
set(handles.hasil, 'string', submit);



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
