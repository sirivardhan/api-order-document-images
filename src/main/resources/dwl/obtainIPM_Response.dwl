%dw 1.0
%output application/json
---
payload map ((payload01 , indexOfPayload01) -> {
	customerPONumber: payload01.customerPONumber,
	docType: payload01.docType,
	documentURLs: payload01.locations map ((location , indexOfLocation) -> {
		documentURL: location.location
	}),
	invoiceNumber: payload01.invoiceNumber,
	orderNumber: payload01.orderNumber
})
