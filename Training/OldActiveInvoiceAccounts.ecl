IMPORT $;

Accounts := $.File_Accounts.File;

EXPORT OldActiveInvoiceAccounts := Accounts($.IsOldInvoice);