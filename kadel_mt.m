function varargout = kadel_mt(varargin)
% KADEL_MT MATLAB code for kadel_mt.fig
%      KADEL_MT, by itself, creates a new KADEL_MT or raises the existing
%      singleton*.
%
%      H = KADEL_MT returns the handle to a new KADEL_MT or the handle to
%      the existing singleton*.
%
%      KADEL_MT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KADEL_MT.M with the given input arguments.
%
%      KADEL_MT('Property','Value',...) creates a new KADEL_MT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before kadel_mt_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to kadel_mt_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help kadel_mt

% Last Modified by GUIDE v2.5 30-May-2015 18:06:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @kadel_mt_OpeningFcn, ...
                   'gui_OutputFcn',  @kadel_mt_OutputFcn, ...
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


% --- Executes just before kadel_mt is made visible.
function kadel_mt_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to kadel_mt (see VARARGIN)

% Choose default command line output for kadel_mt
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes kadel_mt wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = kadel_mt_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
addpath(genpath('Functions'));
delete(kadel_mt);
EQUALIZER1;
