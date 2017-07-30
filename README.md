# IBM-Workload-Scheduler-Scripts
Scripts improving IBM Workload Scheduler (aka Tivoli, TWS, Maestro)


<b>sj</b> - a shorthand script for <i>conman sj</i> 
     or for <i>conman "setsym 1 & sj "</i><br>
	 The script filters out the ibm copyright clutter so you see only the useful output.<br>
	 Other benifits:<br>
&nbsp;   See multiple days' runs by adding multiple run numbers for the setsym values i.e.,<br>
&nbsp;   sj computer#Sched.job 1 2 3 4 5 <br>
&nbsp;      shows the output of<br>
&nbsp;&nbsp;    <i> for day in 1 2 3 4 5; do conman "setsym $day & sj computer#Sched.job"; done </i><br>
&nbsp;       or<br>
&nbsp;   sj computer#Sched.job {0..30} stdl | grep ValueNeeded<br>
&nbsp;   shows the past month's output grabbing only the "ValueNeeded" lines. <br>






