%dw 1.0
%output application/json
---
{
	orderNumber: flowVars.orderNumber
				when flowVars.orderNumber != null
				otherwise "",
	docType: flowVars.docType
			 when flowVars.docType != null
				otherwise "",
	customerPONumber: flowVars.customerPONumber
					when flowVars.customerPONumber != null
				otherwise "",
	soldTo: flowVars.soldTo
			when flowVars.soldTo != null
				otherwise "",
	invoiceNumber: flowVars.invoiceNumber
				when flowVars.invoiceNumber != null
				otherwise ""
}