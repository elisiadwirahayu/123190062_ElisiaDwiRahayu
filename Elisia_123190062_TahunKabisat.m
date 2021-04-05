function varargout = Elisia_123190062_TahunKabisat(varargin)
% ELISIA_123190062_TAHUNKABISAT MATLAB code for Elisia_123190062_TahunKabisat.fig
%      ELISIA_123190062_TAHUNKABISAT, by itself, creates a new ELISIA_123190062_TAHUNKABISAT or raises the existing
%      singleton*.
%
%      H = ELISIA_123190062_TAHUNKABISAT returns the handle to a new ELISIA_123190062_TAHUNKABISAT or the handle to
%      the existing singleton*.
%
%      ELISIA_123190062_TAHUNKABISAT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ELISIA_123190062_TAHUNKABISAT.M with the given input arguments.
%
%      ELISIA_123190062_TAHUNKABISAT('Property','Value',...) creates a new ELISIA_123190062_TAHUNKABISAT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Elisia_123190062_TahunKabisat_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Elisia_123190062_TahunKabisat_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Elisia_123190062_TahunKabisat

% Last Modified by GUIDE v2.5 05-Apr-2021 20:02:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Elisia_123190062_TahunKabisat_OpeningFcn, ...
                   'gui_OutputFcn',  @Elisia_123190062_TahunKabisat_OutputFcn, ...
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


% --- Executes just before Elisia_123190062_TahunKabisat is made visible.
function Elisia_123190062_TahunKabisat_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Elisia_123190062_TahunKabisat (see VARARGIN)

% Choose default command line output for Elisia_123190062_TahunKabisat
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Elisia_123190062_TahunKabisat wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Elisia_123190062_TahunKabisat_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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


% --- Executes on button press in Cek.
function Cek_Callback(hObject, eventdata, handles)
% hObject    handle to Cek (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
input = get(handles.edit1,'string');
tahun = str2double(input);
if mod(tahun,4) == 0
    hasil = 'Tahun Kabisat';
else
    hasil = 'Bukan Tahun Kabisat';
end
set(handles.edit2,'string',(hasil))


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
