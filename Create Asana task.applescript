property asanapath : "/Users/dbyler/.rbenv/shims/asana"property workspace : "Calorie"on log_item(myTask)	do shell script asanapath & " " & workspace & " " & myTaskend log_itemon handle_string(myTask)	my log_item(myTask)end handle_stringon alfred_script(q)	log_item(myTask)end alfred_scripton run	tell application "System Events"		activate		set mystring to text returned of (display dialog "New Asana task in " & workspace & ": " default answer "")		my log_item(mystring)	end tellend run