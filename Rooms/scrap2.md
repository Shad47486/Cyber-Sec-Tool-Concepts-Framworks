SELECT "C:/" + FullPath AS Full_Path,FileName AS File_Name,parse_pe(file="C:/" + FullPath) AS PE
FROM parse_mft(filename="C:/$MFT", accessor="ntfs")
WHERE NOT IsDir 
AND FullPath =~ "Windows/System32/spool/drivers" 
AND PE