#!/usr/bin/env perl -wn
BEGIN{
   $ON = `tput smso`;
   $OFF = `tput rmso`;
   $prompt = "${ON}psh> ${OFF}";
   print $prompt;
}

eval;

$@ ne "" and warn $@;

print $prompt;

END{
   ! defined and print "";
}
