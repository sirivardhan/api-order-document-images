%dw 1.0
%output application/xml
%namespace soap http://schemas.xmlsoap.org/soap/envelope/
---
{
	id: "",
	uniqueName: flowVars.uniqueName,
	success: false,
	errors: flowVars.exceptionCode map ( {
		Type: flowVars.exceptionClass,
		Step: flowVars.docname,
		Code: trim $,
		Description: p(trim $),
		Message: flowVars.exceptionMessage
			}	)
	}

