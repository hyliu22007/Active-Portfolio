function [ asset ] = init_asset( market, code, name, KFreq, step, s, e )
    if nargin < 6
        s = str2double( datestr(today-120, 'yyyymmdd'));
        e = str2double( datestr(today, 'yyyymmdd'));
    end
    asset = struct('code', code, 'market', market, 'name', name, 'KFreq', KFreq, 'step', step, 'startDate', s, 'endDate', e);
end
