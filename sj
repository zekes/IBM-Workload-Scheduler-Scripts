#!/bin/bash
# lets user use short-hand for conman sj  and  conman "setsym 2 sj " commands.
#     sj computer#jobStream                    # for today's schedules
# or  sj computer#jobStream 2                  # for setsym 2 schedule
# or  sj 2 computer#jobStream   3 4            # likewise, for setsym 2 schedule And setsym 3 schedule And setsym 4 schedule
# or  sj  comput@#jobStream.job@  2 stdl       # likewise, for setsym 2 schedule
# or  sj  computer#jobStream  stdl  2          # likewise, for setsym 2 schedule
# or  sj  computer#jobStream.job@  {0..7}      # to get a week's worth of output.
#
# Script also filters out the ibm trademark clutter, letting us see the output better.

args=''
ss=''
for a in "$@" 
do 
  if [[ $a =~ [^[:digit:]] ]]; then         # not a number
     args="$args $a"
  else
     ss="$ss $a"
  fi
done


if [ -z "$ss" ]; then
   conman "sj $args" 2> >( tail -n +9 1>&2 ) | grep -ve "^Scheduled for" -ve "^Workstation " -ve "(Est)"
                   # 2> >(tail ... )  removes ibm copyright clutter from stderr then redirects back to stderr
else
   for i in $ss; do
     conman "setsym $i & sj $args" 2> >( tail -n +9 1>&2 ) | grep -ve "^Scheduled for" -ve "^Workstation " -ve "(Est)"
   done
fi

