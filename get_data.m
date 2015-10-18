function [ asset, errID] = get_data( asset )
    
   [time,open,high,low,close,volume,turnover] = traderGetKData(asset.market, asset.code, asset.KFreq, asset.step, asset.startDate, asset.endDate);
   
    errID = 0;
    if errID==0 
        index = volume>0;
        if sum(index)==0
            errID = -1;
        end
        asset.turn = turnover;
        asset.open = open;
        asset.high = high;
        asset.low = low;
        asset.close = close;
        asset.volume = volume;
        asset.times = time;
    end
    
    if errID 
        asset.freeTurn = [];
        asset.turn = [];
        asset.open = [];
        asset.high = [];
        asset.low = [];
        asset.close = [];
        asset.volume = [];
        asset.times = [];
%         warning('');
    end
end

