function ret = SaveTraces()
    ret=0;
    for i=179:184
        if i==41
            continue;
        end;
        filename_path='Z:\8-22\';
        filename_base=['m9c0r', int2str(i)];
        filename=[filename_path, filename_base, '.htb'];
        myfid=HTBOPEN(filename);
        ndbs = htbCount(myfid);
        for ii=1:ndbs
            temp_hd=htbGetHd(myfid, ii);
            if strcmp(temp_hd.title, 'Eye Traces')
                data=htbGetDa(temp_hd);
                HTBCLOSE(myfid);
                csvwrite(['Z:\8-22\', filename_base, '_Raw_Traces.csv'], data);
                break;
            end;
        end;
        i
    end;
    

