class AggcatError < StandardError
  attr_accessor :code, :message
  def initialize code
    self.code = code.to_i

    codes = {
      400 => "If the URL or variables are not in the correct format this error will display.",
      401 => "If the OAuth access token has expired, been revoked, or is invalid for some other reason, then the HTTP response code is 401.",
      403 => "If a refresh request was issued for a locked login (a login in 103 status) but new credentials were not supplied in the InstitutionLogin.",
      404 => "This error occurs if the app specifies an invalid URL, for example, a typo in the object name part of the URL.",
      408 => "If the supplied challengeSessionId could not be found on the cache, it is assumed that it has expired and has been evicted.",
      500 => "The web server encountered an unexpected condition that prevented it from completing the request.",
      503 => "Database's throttler denied access to the external FI for the refresh .There was some problem aggregating data from the external FI.The details of the error can be found in the errorCode field of the Status entity's errorInfo structure.",
      101 => "A general error",
      102 => "Retry Error",
      103 => "Login error- Invalid credentials",
      104 => "Parsing error - error reading website",
      105 => "Website is unavailable or intermittently available.",
      106 => "Account Mismatch",
      107 => "The script timed out while attempting to aggregate the account.",
      108 => "End user action required at the third party site.",
      109 => "Password change required at the third party site.",
      110 => "Invalid macro name",
      111 => "Script line does not contain four components",
      112 => "Infinite loop detected in the script",
      113 => "Duplicate label found in the script",
      114 => "Reference to an undefined label",
      115 => "Incorrect number of macro arguments in the script",
      116 => "Variable access error",
      117 => "Missing required macro argument",
      118 => "Missing required symbol in symbol table",
      119 => "Invalid TekPortal date",
      120 => "Invalid date pattern",
      121 => "Unable to convert variable type",
      122 => "Invalid date",
      123 => "Invalid dollar amount",
      124 => "Invalid percent value",
      125 => "Invalid integer",
      126 => "Regular expression returns no match",
      127 => "String not found",
      128 => "String end index must be greater than string start index",
      129 => "String index out of bound",
      130 => "Tag not found",
      131 => "Table not found",
      132 => "No more rows in current table",
      133 => "Invalid table column number",
      134 => "Table column number must be greater than zero",
      135 => "The script requires a newer version of macro language",
      136 => "Invalid regular expression",
      137 => "The ##keep## token is required",
      138 => "No current table to use",
      139 => "No current table row to use",
      140 => "Communication error between application components",
      141 => "Form not found",
      142 => "Optional argument must be equal to “test” if present",
      143 => "Invalid account index",
      144 => "Invalid history index",
      145 => "Return data not defined",
      146 => "Invalid comparison type",
      147 => "Unsupported .qif file type",
      148 => "Error reading .qif file",
      149 => "Optional argument must be equal to ##VPAGE## if present",
      150 => "Web page does not contain the specified signature",
      151 => "No more previous page",
      152 => "Invalid macro argument",
      153 => "Local table not defined",
      154 => "HREF not found in string",
      155 => "No more words on page",
      156 => "Form input field not found",
      157 => "Tower variable expected",
      158 => "Tag not found",
      159 => "May not pause more than 60 seconds",
      160 => "Integer must be zero or greater",
      161 => "The character encoding is not supported",
      162 => "The country code is invalid",
      163 => "Invalid Wareki Year",
      164 => "Class not found for RunJava macro",
      165 => "No such method for RunJava macro",
      166 => "Unsupported method return type for RunJava macro",
      167 => "Method invocation failed for RunJava macro",
      168 => "An account in the return data does not match any requested account.Application could not verify account number due to your application’s back end availability",
      169 => "An account in the return data matches multiple requested accounts.  This is an issue with duplicate accounts: the end user has two accounts that appear to the software to be the same.",
      170 => "An unexpected exception has occurred.",
      171 => "Communication interrupted when communicating with the website.",
      172 => "Out of memory condition.",
      173 => "An account key value cannot be decrypted.",
      174 => "Invalid date range.",
      175 => "Missing required return data.",
      176 => "A bill was not found at the site.",
      177 => "Bill payment failed.",
      178 => "Error parsing XML input.",
      179 => "The site rejected login because the customer is already logged on.",
      180 => "Invalid OFX file.",
      181 => "OFX error.",
      182 => "File I/O error.",
      183 => "No question available to add answer choices to.",
      184 => "REQUEST type not supported.",
      185 => "User action is required to bypass multi-factor authentication.",
      186 => "Javascript function's argument position is out of bound",
      187 => "Incorrect answer to multi-factor authentication challenge question",
      188 => "New error condition  (Error Code Number 188 ) added for the use case of multiple file downloads being available for multiple advisors using one web-site  ID/PW set",
      189 => "Script not written yet",
      190 => " ",
      192 => "Unsupported multi-factor authentication(MFA) protocol."
    }

    self.message = codes[self.code]
  end
end
