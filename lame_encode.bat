@ECHO OFF
FOR %%A IN (*.wav) DO lame -V 0 --nohist "%%A"
