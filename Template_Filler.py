from __future__ import print_function
from mailmerge import MailMerge
import datetime as date

template = "Amnova Quote Template.docx"

document = MailMerge(template)
print(document.get_merge_fields())

today = date.date.today()
nextWeek = today + date.timedelta(days=7)

document.merge(
    invoiceNumber="AB001",
    invoiceDate='{:%d-%b-%Y}'.format(date.date.today()),
    clientCompany="The Anderson Lid Company",
    dueDate=str(nextWeek)
)

invoice_list = [{
    'description': 'SPI TRAY: 3D Printing Service (Large Format)',
    'quantity': '40.00',
    'unitPrice': '20.00',
    'amount': '800.00'
}, {
    'description': 'SPI TRAY: 3D Printing Filament (PETG)',
    'quantity': '0.796',
    'unitPrice': '1,250.00',
    'amount': '995.00'
}, {
    'description': 'SPI TRAY: Printer Setup',
    'quantity': '1.00',
    'unitPrice': '50.00',
    'amount': '50.00'
}]

document.merge_rows('description', invoice_list)
document.write('test-output.docx')
