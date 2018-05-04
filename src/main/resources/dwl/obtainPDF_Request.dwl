%dw 1.0
%output application/json
---

	"locations": [{
		location: payload.documentURL
	}]