# IBM-Workload-Scheduler-Scripts
Scripts improving IBM Workload Scheduler (aka Tivoli, TWS, Maestro)


sj - a short-hand script for <i>conman sj</i> 
     or for <i>conman "setsym 1 & sj "</i>
	 The script filters out the ibm copyright warnings so you see only the useful output.
	 Other benifits:
	   See multiple days' runs by adding multiple run numbers for the setsym values i.e.,
	   sj computer#Sched.job 1 2 3 4 5 
       shows the output of <i> for day in 1 2 3 4 5; do conman "setsym $day & sj computer#Sched.job"; done </i>
        or
	   sj computer#Sched.job {0..30} stdl | grep ValueNeeded
	   shows the past month's output grabbing only the "ValueNeeded" lines. 






