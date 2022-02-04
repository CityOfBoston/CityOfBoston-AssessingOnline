
// This function allows number only input in a text field

      function isNumberKey(evt)
      {
         var charCode = (evt.which) ? evt.which : event.keyCode
         if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;

         return true;
      }
 
 
 // This function allows alphabets only in a text field
 
	   function isAlphabetic(evt)
      {
         var charCode = (evt.which) ? evt.which : event.keyCode
         if (charCode > 32 && (charCode < 97 || charCode > 122) && (charCode < 65 || charCode > 90))
            return false;

	         return true;
      }
	
// This function allows alphabets and numbers in a text field

	  function isAlphaNumeric(evt)
      {
         var charCode = (evt.which) ? evt.which : event.keyCode
         if (charCode > 32 && (charCode < 97 || charCode > 122) && (charCode < 65 || charCode > 90) && (charCode < 48 || charCode > 57))
            return false;

	         return true;
      }
	  
	  
// Checks Email	 
	  
	  function isValidEmail(str) 
	  {
	   if (!((str.indexOf(".") > 2) && (str.indexOf("@") > 0)))
	   {
	   alert("Not a Valid Email address");
       document.frmContact.txtEmail.value = '';	
	   document.frmContact.txtEmail.focus();
	   }
      }

// Checks Phone number

	  function isValidPhone(str)
	  {
		  if (str.length < 10) 
		  {
		  alert("Not a Valid Phone number format");
		  document.frmContact.txtTelephone.value = '';
		  document.frmContact.txtTelephone.focus();
		  }
	  }
	  
  // Checks Zip Code

  function isValidZip(str)
  {
	  if (str.length < 5) 
	  {
	  alert("Not a Valid Zip code");
      document.frmContact.txtZip.value = '';
      document.frmContact.txtZip.focus();
	  }
	  
  }
		  
// Check Valid State 

	  function isValidState(sstate) {
		  
			sstates = "wa|or|ca|ak|nv|id|ut|az|hi|mt|wy|" +

				"co|nm|nd|sd|ne|ks|ok|tx|mn|ia|mo|" +

				"ar|la|wi|il|ms|mi|in|ky|tn|al|fl|" +

				"ga|sc|nc|oh|wv|va|pa|ny|vt|me|nh|" +

				"ma|ri|ct|nj|de|md|dc";

	
		if (!(sstates.indexOf(sstate.toLowerCase() + "|") > -1))
		{
		alert ("Not a Valid State");
		document.frmContact.txtState.value = '';
		document.frmContact.txtState.focus();
		}
		}
		
		
// Check Parcel		
	 function isValidParcel(str)
  {
	  if (str.length < 8) 
	  {
	  alert("Not a Valid Parcel number .");
      document.frmContact.txtParcel.value = '';
      document.frmContact.txtParcel.focus();
	  }
	  
  }
  
  
 function ValidateText(str)
 {

			var BlackList = Array("--", ";", "/*", "<",">","href","www","url","*/", "@@", "@", "nchar", "varchar", "link=", "=","nvarchar", "cast", "http", "cursor", "delete", "drop", "exec", "execute", "fetch", "insert", "kill", "select", "sys", "script","sysobjects", "syscolumns", "table", "update","javascript",".js","<a","+");
			
				var s;
			
			 var lstr;
			 

			 lstr = str.toLowerCase();
			 
			  for (s in BlackList)
			  {
					if(lstr.indexOf(BlackList[s]) != -1 )	
					{
					alert("Not a Valid Comment");
					lstr.replace(BlackList[s],'') 
					document.frmContact.txtNature.value = '';
					break;
					}
									
			  }
			  
 }


  
	

	