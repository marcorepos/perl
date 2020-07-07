# Write a script or one-liner to remove leading zeros from positive numbers.

perl -s -E '$aa=~s/^0+//g; print $aa'  -- -aa=00001234
