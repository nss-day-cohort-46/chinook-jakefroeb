SELECT Sum(Total), STRFTIME('%Y', InvoiceDate) as InvoiceYear
from Invoice
Where InvoiceDate LIKE '2009%' Or InvoiceDate Like '2011%'
Group By InvoiceYear