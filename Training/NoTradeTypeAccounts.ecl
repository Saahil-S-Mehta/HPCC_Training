IMPORT $;

Accounts := $.File_Accounts.File;

EXPORT NoTradeTypeAccounts := Accounts(TradeType NOT IN $.Sets.AcctTradeTypes);