This is the Epicodus project for converting a positive integer numeric input (up to a trillion) into the english word equivalent.
For example, 999000 will return 'nine hundred ninety-nine thousand'.

The code works by checking the billions case (i.e. divide by a billion), converting, than the millions case and so on.  The logic is the same for each.
Arrays are used to store the english equivalent words, since the numeric to be converted can be used as the index to find the needed word.
This was tidier than using hashes.

This was completed without human assistance, although google was used :-)
      
