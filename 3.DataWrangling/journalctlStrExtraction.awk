{
    idxDate = match($0, /[a-z]{3}\s[0-9]{2}\s[0-9]{2}:[0-9]{2}:[0-9]{2}/)
    date = substr($0, idxDate, RLENGTH)
    idxTime = match($0, /=\s[0-9]{1,2}min\s[0-9]{1,2}.[0-9]{3}s/)
    time = substr($0, idxTime, RLENGTH)

    timeNumbers = gensub(/([0-9]{1,2})min\s([0-9]{1,2}.[0-9]{3})s/, "\\1 \\2", "g", time)
    timeNumbers = split(timeNumbers, numArr)
    timeSeconds = numArr[2] * numArr[3]

    print timeSeconds
}

