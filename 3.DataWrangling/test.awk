/(.*a.*){3,}/ && substr($0, length()-1) !~ /'s/
END { print NR }

