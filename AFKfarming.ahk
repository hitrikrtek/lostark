#maxthreadsperhotkey 2 ;
$end:: ; When you run the script END key toggles it on and off.
 {
   toggle:=!toggle ;

   while, toggle ;
    {
	  send, {g} ; Press G key to farm
	  sleep, % 1000 * 20 ; sleep for 20 seconds for the first cycle of farming
	  send, {g} ;
	  sleep % 1000 * 60 * 5 ; sleep for 5 minutes and repeat farming
    }
 }
return ;

<^end::exitapp ; CTRL+END exits the script
