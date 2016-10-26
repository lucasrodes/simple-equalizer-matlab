function varargout = EQUALIZER1(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @EQUALIZER1_OpeningFcn, ...
                   'gui_OutputFcn',  @EQUALIZER1_OutputFcn, ...
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

function EQUALIZER1_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);
%guidata(hObject,recObj);
warning ('off','all');
w1 = warndlg('Initializing...');
reset(hObject,handles);
Fs=48e3; nB=16; nC=1; % Define basic recording parameters
recObj = audiorecorder(Fs,nB,nC); % Define the recording object

% share with other GUIs
handles.metricdata.recObj = recObj; 
guidata(hObject,handles);
close(w1);

function varargout = EQUALIZER1_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

%% EDITS ------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
% They basically obtain the numeric value of the attenuation factor and 
% update the slides. Moreover, the input signal is mixed according to 
% the current attenuation values.

    function textBAND1_Callback(hObject, eventdata, handles)
        set(handles.sliderBAND1,'Value',str2double(get(handles.textBAND1,'string')));
        mix(hObject,handles);
    function textBAND1_CreateFcn(hObject, eventdata, handles)
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end

    function textBAND2_Callback(hObject, eventdata, handles)
        set(handles.sliderBAND2,'Value',str2double(get(handles.textBAND2,'string')));
        mix(hObject,handles);  
    function textBAND2_CreateFcn(hObject, eventdata, handles)
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end

    function textBAND3_Callback(hObject, eventdata, handles)
        set(handles.sliderBAND3,'Value',str2double(get(handles.textBAND3,'string')));
        mix(hObject,handles);
    function textBAND3_CreateFcn(hObject, eventdata, handles)
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end

    function textBAND4_Callback(hObject, eventdata, handles)
        set(handles.sliderBAND4,'Value',str2double(get(handles.textBAND4,'string')));
        mix(hObject,handles);
    function textBAND4_CreateFcn(hObject, eventdata, handles)

    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end

    function textBAND5_Callback(hObject, eventdata, handles)
        set(handles.sliderBAND5,'Value',str2double(get(handles.textBAND5,'string')));
        mix(hObject,handles);
    function textBAND5_CreateFcn(hObject, eventdata, handles)
        if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
            set(hObject,'BackgroundColor','white');
        end

    function textMAIN_Callback(hObject, eventdata, handles)
        set(handles.sliderMAIN,'Value',str2double(get(handles.textMAIN,'string')));
        mix(hObject,handles);
    function textMAIN_CreateFcn(hObject, eventdata, handles)
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
    end

%% SLIDERS ----------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
% They basically get the atenuation value and update the text edit box of 
% the band. Moreover, the input signal is mixed according to the
% current attenuation values.

    % SLIDER EQUALIZER
    function sliderBAND1_Callback(hObject, eventdata, handles)
        s1 = (get(handles.sliderBAND1,'Value'));
        set(handles.textBAND1,'String',num2str(s1));
        try
            mix(hObject,handles);
        catch err
        end
    function sliderBAND1_CreateFcn(hObject, eventdata, handles)

    if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor',[.9 .9 .9]);
    end

    function sliderBAND2_Callback(hObject, eventdata, handles)
        s2 = (get(handles.sliderBAND2,'Value'));
        set(handles.textBAND2,'String',num2str(s2));
        try
            mix(hObject,handles);
        catch err
        end  
    function sliderBAND2_CreateFcn(hObject, eventdata, handles)

    if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor',[.9 .9 .9]);
    end

    function sliderBAND3_Callback(hObject, eventdata, handles)
        s3 = (get(handles.sliderBAND3,'Value'));
        set(handles.textBAND3,'String',num2str(s3));
        try
            mix(hObject,handles);
        catch err
        end
    function sliderBAND3_CreateFcn(hObject, eventdata, handles)

    if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor',[.9 .9 .9]);
    end

    function sliderBAND4_Callback(hObject, eventdata, handles)
        s4 = (get(handles.sliderBAND4,'Value'));
        set(handles.textBAND4,'String',num2str(s4));
        try
            mix(hObject,handles);
        catch err
        end
    function sliderBAND4_CreateFcn(hObject, eventdata, handles)

    if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor',[.9 .9 .9]);
    end

    function sliderBAND5_Callback(hObject, eventdata, handles)
        s5 = (get(handles.sliderBAND5,'Value'));
        set(handles.textBAND5,'String',num2str(s5));
        try
            mix(hObject,handles);
        catch err
        end  
    function sliderBAND5_CreateFcn(hObject, eventdata, handles)

    if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor',[.9 .9 .9]);
    end
    
    % SLIDER MAIN
    function sliderMAIN_Callback(hObject, eventdata, handles)
        sV = (get(handles.sliderMAIN,'Value'));
        set(handles.textMAIN,'String',num2str(sV));
        try
            mix(hObject,handles);
        catch err
        end  
    function sliderMAIN_CreateFcn(hObject, eventdata, handles)

    if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor',[.9 .9 .9]);
    end

    % SLIDERS EFFECTS
    
    function slider_white_Callback(hObject, eventdata, handles)
        if get(handles.check_whitenoise,'Value')
            mix(hObject,handles);
        end
    function slider_white_CreateFcn(hObject, eventdata, handles)

        if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
            set(hObject,'BackgroundColor',[.9 .9 .9]);
        end

    function slider_reverb_Callback(hObject, eventdata, handles)
        if get(handles.check_reverb,'Value')
            mix(hObject,handles);
        end
        
    function slider_reverb_CreateFcn(hObject, eventdata, handles)

        if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
            set(hObject,'BackgroundColor',[.9 .9 .9]);
        end

    function slider_delay_Callback(hObject, eventdata, handles)
        if get(handles.check_delay,'Value')
            mix(hObject,handles);
        end
    function slider_delay_CreateFcn(hObject, eventdata, handles)

        if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
            set(hObject,'BackgroundColor',[.9 .9 .9]);
        end

    function slider_pitch_Callback(hObject, eventdata, handles)
        if get(handles.check_pitch,'Value')
            mix(hObject,handles);
        end
        
    function slider_pitch_CreateFcn(hObject, eventdata, handles)
        if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
            set(hObject,'BackgroundColor',[.9 .9 .9]);
        end

    function slider_distortion_Callback(hObject, eventdata, handles)
        if get(handles.check_distortion,'Value')
            mix(hObject,handles);
        end
    function slider_distortion_CreateFcn(hObject, eventdata, handles)
        if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
            set(hObject,'BackgroundColor',[.9 .9 .9]);
        end

    function slider_gater_Callback(hObject, eventdata, handles)
        if get(handles.check_gater,'Value')
            mix(hObject,handles);
        end
        
    function slider_gater_CreateFcn(hObject, eventdata, handles)
    if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor',[.9 .9 .9]);
    end
%% CHECK BOXES ------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
    function check_whitenoise_Callback(hObject, eventdata, handles)
        mix(hObject,handles);
        
    function check_reverb_Callback(hObject, eventdata, handles)
        mix(hObject,handles);
        
    function check_delay_Callback(hObject, eventdata, handles)
        mix(hObject,handles);
    
    function check_pitch_Callback(hObject, eventdata, handles)
        mix(hObject,handles);
    
    function check_distortion_Callback(hObject, eventdata, handles)
        mix(hObject,handles);
    
    function check_gater_Callback(hObject, eventdata, handles)
        mix(hObject,handles);
        
%% BUTTONS ----------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
 % resets all the parameters  
    function buttonRESET_Callback(hObject, eventdata, handles)
        reset(hObject,handles);
        
%//////////RECORDING ------------------------------------------------------

% starts the recording
    function buttonSTARTREC_Callback(hObject, eventdata, handles)
        
        
        record(handles.metricdata.recObj); % record voice
        
        w_s = warndlg('Recording...'); % warning dialog
        % share recordedSignal with other GUIs
        handles.metricdata.w_s = w_s;
        guidata(hObject,handles)

% stops the recording
    function buttonSTOPREC_Callback(hObject, eventdata, handles)
        try
            stop(handles.metricdata.recObj); % stop recording
            reset(hObject,handles);
            recordedSignal = (getaudiodata(handles.metricdata.recObj))'; % obtain vector from recorded file
            Fs = 48e3; % Sampling rate
            
            % share recordedSignal with other GUIs
            handles.metricdata.recordedSignal = recordedSignal;
            guidata(hObject,handles)
            recordedSignal = handles.metricdata.recordedSignal;
            
            % share Fs with other GUIs
            handles.metricdata.Fs = Fs;
            guidata(hObject,handles);
            %Fs = handles.metricdata.Fs;

            close(handles.metricdata.w_s);
            % plot recorded signal
            axes(handles.axes3);
            plot((1:length(recordedSignal))/Fs,recordedSignal/Fs); 
            grid on;
            
            mode = get(handles.popmenuSPECTRUM,'Value'); % Obtain mode of plotting the spectrum of the signal
            plotspectrum(recordedSignal,handles.axes2,mode,Fs); % Plot the spectrum of the signal

            % share recorded signal with other GUIs
            handles.metricdata.signal = recordedSignal;
            handles.metricdata.mixedSignal = recordedSignal; % initially equal to the input signal
            guidata(hObject,handles);
            recordedSignal = handles.metricdata.signal;
            
            player_sig = audioplayer(recordedSignal, Fs); % Define audioplayer for the recorded signal
            
            % share player with other GUIs
            handles.metricdata.player_sig = player_sig;
            handles.metricdata.player_eq = player_sig; % Set player of mixed signal equal original signal
            guidata(hObject,handles);
            %player_sig = handles.metricdata.player_sig;
            
        catch err
        end

%//////////LOADING --------------------------------------------------------

    function buttonLOAD_Callback(hObject, eventdata, handles)
        try
            % Load file
            filename = '';
            [filename,pathname] = uigetfile({'*.mp3';'*.wav';'*.ogg';'*.flac';'*.au';'*.m4a';'*.mp4'});
            if ~isequal(filename,'')
                w_l = warndlg('Loading...');
            end
            [loadedSignal,Fs] = audioread(strcat(pathname,filename));
            
            loadedSignal = loadedSignal(:,1);
            reset(hObject,handles)
            
            % share loadedSignal with other GUIs
            handles.metricdata.loadedSignal = loadedSignal;
            guidata(hObject,handles);
            loadedSignal = handles.metricdata.loadedSignal;
            
            % share Fs with other GUIs
            handles.metricdata.Fs = Fs;
            guidata(hObject,handles);
            Fs = handles.metricdata.Fs;
            
            try
                close(w_l);
            catch err
            end
            axes(handles.axes3);
            plot((1:length(loadedSignal))/Fs,loadedSignal/Fs);
            grid on;
            
            mode = get(handles.popmenuSPECTRUM,'Value'); % Obtain mode of plotting the spectrum of the signal
            plotspectrum(loadedSignal(:,1),handles.axes2,mode,Fs); % Plot the spectrum of the signal
            
            % share loaded signal with other GUIs
            handles.metricdata.signal = loadedSignal;
            handles.metricdata.mixedSignal = loadedSignal; % initially equal to the input signal
            guidata(hObject,handles);
            loadedSignal = handles.metricdata.signal;
            
            % Define and share player object
            player_sig = audioplayer(loadedSignal, Fs); % Define audioplayer for the recorded signal
            handles.metricdata.player_sig = player_sig;
            handles.metricdata.player_eq = player_sig; % Set player of mixed signal equal original signal
            guidata(hObject,handles);
            %player_sig = handles.metricdata.player_sig;
            
        catch err
        end

%//////////PLAYING --------------------------------------------------------


    function buttonPLAY_Callback(hObject, eventdata, handles)
        w_b = warndlg('Wait...');
        original_or_mixed = get(handles.popmenuFILESELEC,'Value');
        switch original_or_mixed
            case 1
                play(handles.metricdata.player_sig);
                close(w_b);
            otherwise
                play(handles.metricdata.player_eq);
                close(w_b);
        end

    function buttonSTOP_Callback(hObject, eventdata, handles)
        original_or_mixed = get(handles.popmenuFILESELEC,'Value');
        switch original_or_mixed
            case 1
                stop(handles.metricdata.player_sig);
            otherwise
                stop(handles.metricdata.player_eq);
        end

    function buttonPAUSE_Callback(hObject, eventdata, handles)
        original_or_mixed = get(handles.popmenuFILESELEC,'Value');
        switch original_or_mixed
            case 1
                pause(handles.metricdata.player_sig);
            otherwise
                pause(handles.metricdata.player_eq);
        end

    function buttonRESUME_Callback(hObject, eventdata, handles)
        original_or_mixed = get(handles.popmenuFILESELEC,'Value');
        switch original_or_mixed
            case 1
                resume(handles.metricdata.player_sig);
            otherwise
                resume(handles.metricdata.player_eq);
        end

    
% POPUP MENU ----------------------------------------------------------------------
%----------------------------------------------------------------------------------
%----------------------------------------------------------------------------------
         
    function popmenuSPECTRUM_Callback(hObject, eventdata, handles)
        original_or_mixed = get(handles.popmenuFILESELEC,'Value');
        w = warndlg('Wait...');
        
        switch original_or_mixed
             case 1 % Original signal
                 signal = handles.metricdata.signal;
                 mode = get(handles.popmenuSPECTRUM,'Value');
                 plotspectrum(signal,handles.axes2,mode,handles.metricdata.Fs);
             otherwise % mixed signal
                 mixedSignal = handles.metricdata.mixedSignal;
                 mode = get(handles.popmenuSPECTRUM,'Value');
                 plotspectrum(mixedSignal,handles.axes2,mode,handles.metricdata.Fs);
        end
        
         close(w);
       
    function popmenuSPECTRUM_CreateFcn(hObject, eventdata, handles)
        if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
            set(hObject,'BackgroundColor','white');
        end

    function popmenuFILESELEC_Callback(hObject, eventdata, handles)
        w = warndlg('Wait...');
        original_or_mixed = get(handles.popmenuFILESELEC,'Value');
        Fs = 48e3;

         try
             switch original_or_mixed
                 case 1
                    signal = handles.metricdata.signal;
                    axes(handles.axes3);
                    plot((1:length(signal))/Fs,signal/Fs); grid on;
                    mode = get(handles.popmenuSPECTRUM,'Value');
                    plotspectrum(signal,handles.axes2,mode,handles.metricdata.Fs);
                 otherwise
                    mixedSignal = handles.metricdata.mixedSignal;
                    axes(handles.axes3);
                    plot((1:length(mixedSignal))/Fs,mixedSignal/Fs); grid on;
                    mode = get(handles.popmenuSPECTRUM,'Value');
                    plotspectrum(mixedSignal,handles.axes2,mode,handles.metricdata.Fs);
            end
        catch err
        end
        close(w);
        
    function popmenuFILESELEC_CreateFcn(hObject, eventdata, handles)
        if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
            set(hObject,'BackgroundColor','white');
        end


% AUX FUNCTIONS--------------------------------------------------------------------
%----------------------------------------------------------------------------------
%----------------------------------------------------------------------------------
    
    function plotspectrum(input,t,mode,Fs)
          
          N = 2^14; k=0:N-1; f= (Fs/N).*k;X = fft(input,N);

            axes(t);
          switch mode
              case 1
                  semilogx(f(1:20000/(Fs/N)),20*log(abs(X(1:20000/(Fs/N)))));  xlim([10 22000]); 
                  grid on;
              case 2
                  semilogx(f(1:20000/(Fs/N)),(abs(X(1:20000/(Fs/N))))); 
                  grid on;
              case 3
                  plot(f(1:20000/(Fs/N)),20*log(abs(X(1:20000/(Fs/N))))); 
                  grid on;
              case 4
                  plot(f(1:20000/(Fs/N)),(abs(X(1:20000/(Fs/N))))); 
                  grid on;
              otherwise
                  stem(f(1:20000/(Fs/N)),(abs(X(1:20000/(Fs/N))))); 
                  grid on;
          end

          
    function mix(hObject,handles)
        
        w_m = warndlg('Mixing signal...');
        % Start with the Equalization %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        % Obtain gains
        g(1) = 10^(str2double(get(handles.textBAND1,'string'))/20);
        g(2) = 10^(str2double(get(handles.textBAND2,'string'))/20);
        g(3) = 10^(str2double(get(handles.textBAND3,'string'))/20);
        g(4) = 10^(str2double(get(handles.textBAND4,'string'))/20);
        g(5) = 10^(str2double(get(handles.textBAND5,'string'))/20);
        g(6) = 10^(str2double(get(handles.textMAIN,'string'))/20);

        % Sampling freq
        Fs=handles.metricdata.Fs;
        
        %stop frequencies
        % Band 1: 
        fc(1)= 400;
        % Band 2:
        fc(2)=1500;
        % Band 3:
        fc(3)=6000;
        % Band 4:
        fc(4)=10000;
        % Band 5:
        fc(5)=20000;
        
        signal = handles.metricdata.signal;

        
        % BAND FILTERS
        % Band 1 Filter:
        [b1, a1] = tf(design(fdesign.lowpass(fc(1),450, 1, 60, Fs), 'ellip', 'MatchExactly', 'both'));
        y1 = g(1)*filter(b1,a1,signal);
        % Band 2 Filter:
        [b2, a2] = tf(design(fdesign.bandpass(300, fc(1), fc(2),1700, 40, 1, 40, Fs), 'ellip', 'MatchExactly', 'both'));
        y2 = g(2)*filter(b2,a2,signal);
        % Band 3 Filter:
        [b3, a3] = tf(design(fdesign.bandpass(1400, fc(2), fc(3),6100, 40, 1, 40, Fs), 'ellip', 'MatchExactly', 'both'));
        y3 = g(3)*filter(b3,a3,signal);
        % Band 4 Filter:
        [b4, a4] = tf(design(fdesign.bandpass(5900, fc(3), fc(4), 10100, 60, 1, 60, Fs), 'ellip', 'MatchExactly', 'both'));
        y4 = g(4)*filter(b4,a4,signal);
        % Band 5 Filter:
        [b5, a5] = tf(design(fdesign.highpass(9900, fc(4), 80, 1, Fs), 'ellip', 'MatchExactly', 'both'));
        y5 = g(5)*filter(b5,a5,signal);
        
        % Equalized signal
        mixedSignal = g(6)*(y1+y2+y3+y4+y5);
        
        % Add the Effects %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        
        % NOISE
        if get(handles.check_whitenoise,'Value')
            snr = 50 - get(handles.slider_white,'Value'); % get effect value
            disp(num2str(snr));
            mixedSignal = awgn(mixedSignal,snr,'measured');
        end
        
        % REVERB
        if get(handles.check_reverb,'Value')

            a = get(handles.slider_reverb,'Value');  % get effect value
            
            % Define Reverb filter; ref:http://es.mathworks.com/help/dsp/examples/audio-special-effects.html
            D = 3500; % delay
            h_rev = zeros(size(mixedSignal));
            for i=0:9
                h_rev(1+i*D) = a^i;
            end
            
            % Convolution
            mixedSignal = conv(mixedSignal,h_rev);
        end
        
        % DELAY
        if get(handles.check_delay,'Value')
            D = round(get(handles.slider_delay,'Value'));  % get effect value
            if D == 0
                D = 1;
            end
            h_del = zeros(size(mixedSignal));
            h_del(1) =1;
            h_del(D) = 1;
            
            % Convolution
            mixedSignal = conv(mixedSignal,h_del);
        end
        
        % PITCH
        if get(handles.check_pitch,'Value')
            a = sqrt(2)^(get(handles.slider_pitch,'Value'));  % get effect value
            Fs = a*Fs;
        end
        
        % DISTORTION
        if get(handles.check_distortion,'Value')
            b = get(handles.slider_distortion,'Value');  % get effect value
            k = 2*b/(1-b);
            mixedSignal = (1+k)*(mixedSignal)./(1+k*abs(mixedSignal));
        end
        

        % GATER
        if get(handles.check_gater,'Value')
            k = get(handles.slider_gater,'Value');
            
            if k ~=0
            
                mystep = 0.01*2^(round((1-k)*5))*Fs;

                cont = 1;
                while((length(mixedSignal)-cont)>=mystep)

                    mixedSignal(cont:cont+mystep) = 0;
                    cont = cont + 2*mystep;
                end
            end
            
        end
        
        % Update spectrum plot
        mode = get(handles.popmenuSPECTRUM,'Value'); % Obtain mode of plotting the spectrum of the signal
        plotspectrum(mixedSignal,handles.axes2,mode,Fs);
        
        % Update time domain plot
        mode = get(handles.popmenuFILESELEC,'Value'); % Obtain mode of plotting the time domain of the signal
        axes(handles.axes3);
        if mode == 1
            plot((1:length(signal))/Fs,signal/Fs); grid on;
        else
            plot((1:length(mixedSignal))/Fs,mixedSignal/Fs); grid on;
        end
        
        % share mixed signal with other GUIs
        handles.metricdata.mixedSignal = mixedSignal ; 
        guidata(hObject,handles);
        mixedSignal=handles.metricdata.mixedSignal;
        
        % Define and share player object
        player_eq = audioplayer(mixedSignal, Fs); % Define audioplayer for the recorded signal
        handles.metricdata.player_eq = player_eq;
        guidata(hObject,handles);
        %player_eq = handles.metricdata.player_eq;
        
        close(w_m);
        
    function reset(hObject,handles)
        set(handles.sliderBAND1,'Value',0);
        set(handles.sliderBAND2,'Value',0);
        set(handles.sliderBAND3,'Value',0);
        set(handles.sliderBAND4,'Value',0);
        set(handles.sliderBAND5,'Value',0);
        set(handles.sliderMAIN,'Value',0);
        set(handles.slider_white,'Value',0);
        set(handles.slider_reverb,'Value',0);
        set(handles.slider_delay,'Value',0);
        set(handles.slider_pitch,'Value',0);
        set(handles.slider_distortion,'Value',0);
        set(handles.slider_gater,'Value',0);
        set(handles.textBAND1,'String',0);
        set(handles.textBAND2,'String',0);
        set(handles.textBAND3,'String',0);
        set(handles.textBAND4,'String',0);
        set(handles.textBAND5,'String',0);
        set(handles.textMAIN,'String',0);
        cla(handles.axes2,'reset');
        cla(handles.axes3,'reset');
        set(handles.check_whitenoise,'Value',0);
        set(handles.check_reverb,'Value',0);
        set(handles.check_delay,'Value',0);
        set(handles.check_pitch,'Value',0);
        set(handles.check_distortion,'Value',0);
        set(handles.check_gater,'Value',0);
        
        set(handles.popmenuFILESELEC,'Value',1);
        try
                stop(handles.metricdata.player_sig);
                stop(handles.metricdata.player_eq);
        catch err
        end
