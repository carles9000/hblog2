// {% LoadHrb( "/lib/core_lib.hrb" ) %}
// {% LoadHrb( "/lib/mercury.hrb" ) %}

function Main()

	local oApp := App()
   
					//		Verbos			, Key				, url			, Control
		oApp:oRoute:Map( "GET,POST"		, "root"			, "/"			, "@rootcontroller.prg" )
		oApp:oRoute:Map( "GET"			, "read"			, "see"			, "see@cardcontroller.prg" )
		
		
	oApp:Init()

return nil

function AppPathData() ; RETU AP_GetEnv( "DOCUMENT_ROOT" ) + AP_GetEnv( "PATH_DATA" )


exit procedure Final
	
	DbCloseAll() 
	// COMMIT ALL
	
retu
