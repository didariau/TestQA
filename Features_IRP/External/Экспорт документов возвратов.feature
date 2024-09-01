#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Экспорт документов возвратов

Сценарий: экспорт документов возвратов

	// Документ.SalesReturn

	И я проверяю или создаю для документа "SalesReturn" объекты:
		| 'Ref'                                                                  | 'DeletionMark' | 'Number' | 'Date'               | 'Posted' | 'Agreement'                                                          | 'BaseDocument' | 'Company'                                                           | 'Currency'                                                           | 'DateOfShipment'     | 'LegalName'                                                         | 'ManagerSegment' | 'Partner'                                                          | 'PriceIncludeTax' | 'DueAsAdvance' | 'LegalNameContract' | 'Author'                                                        | 'Branch' | 'Description' | 'DocumentAmount' |
		| 'e1cib/data/Document.SalesReturn?ref=b21e80c5f25f8a4e11ef6806633d755d' | 'False'        | 1        | '01.09.2024 9:04:09' | 'True'   | 'e1cib/data/Catalog.Agreements?ref=b762b13668d0905011eb76684b9f6867' | ''             | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb7663e35d7964' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | '01.01.0001 0:00:00' | 'e1cib/data/Catalog.Companies?ref=b762b13668d0905011eb767f10805e27' | ''               | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794f' | 'True'            | 'False'        | ''                  | 'e1cib/data/Catalog.Users?ref=aa7f120ed92fbced11eb13d7279770c0' | ''       | ''            | 2700             |

	И я перезаполняю для объекта табличную часть "ItemList":
		| 'Ref'                                                                  | 'Key'                                  | 'Cancel' | 'ItemKey'                                                          | 'Store'                                                          | 'NetAmount' | 'OffersAmount' | 'Price' | 'PriceType'                                                          | 'Quantity' | 'TaxAmount' | 'TotalAmount' | 'Unit'                                                          | 'SalesReturnOrder' | 'SalesInvoice'                                                          | 'DontCalculateRow' | 'QuantityInBaseUnit' | 'ProfitLossCenter' | 'RevenueType' | 'AdditionalAnalytic' | 'UseGoodsReceipt' | 'ReturnReason' |
		| 'e1cib/data/Document.SalesReturn?ref=b21e80c5f25f8a4e11ef6806633d755d' | 'bac78af5-4775-4914-9763-11b50c3fb84c' | 'False'  | 'e1cib/data/Catalog.ItemKeys?ref=b762b13668d0905011eb766bf96b2751' | 'e1cib/data/Catalog.Stores?ref=b762b13668d0905011eb76684b9f6861' | 2250        |                | 450     | 'e1cib/data/Catalog.PriceTypes?ref=b762b13668d0905011eb76684b9f6866' | 6          | 450         | 2700          | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | ''                 | 'e1cib/data/Document.SalesInvoice?ref=b21e80c5f25f8a4e11ef6806633d755c' | 'False'            | 6                    | ''                 | ''            | ''                   | 'True'            | ''             |

	И я перезаполняю для объекта табличную часть "TaxList":
		| 'Ref'                                                                  | 'Key'                                  | 'Tax'                                                           | 'Amount' | 'Analytics' | 'TaxRate'                                                          | 'IncludeToTotalAmount' | 'ManualAmount' |
		| 'e1cib/data/Document.SalesReturn?ref=b21e80c5f25f8a4e11ef6806633d755d' | 'bac78af5-4775-4914-9763-11b50c3fb84c' | 'e1cib/data/Catalog.Taxes?ref=b762b13668d0905011eb7663e35d7970' | 450      | ''          | 'e1cib/data/Catalog.TaxRates?ref=b762b13668d0905011eb7663e35d796c' | 'True'                 | 450            |

	И я перезаполняю для объекта табличную часть "Currencies":
		| 'Ref'                                                                  | 'CurrencyFrom'                                                       | 'Rate' | 'ReverseRate' | 'ShowReverseRate' | 'Multiplicity' | 'Key' | 'MovementType'                                                                                    | 'Amount' | 'IsFixed' |
		| 'e1cib/data/Document.SalesReturn?ref=b21e80c5f25f8a4e11ef6806633d755d' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | ''    | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796b' | 2700     | 'False'   |
		| 'e1cib/data/Document.SalesReturn?ref=b21e80c5f25f8a4e11ef6806633d755d' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 0.859  | 1.1641        | 'False'           | 1              | ''    | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d796a' | 2319.3   | 'False'   |
		| 'e1cib/data/Document.SalesReturn?ref=b21e80c5f25f8a4e11ef6806633d755d' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' | 1      | 1             | 'False'           | 1              | ''    | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7968' | 2700     | 'False'   |
		| 'e1cib/data/Document.SalesReturn?ref=b21e80c5f25f8a4e11ef6806633d755d' | 'e1cib/data/Catalog.Currencies?ref=b762b13668d0905011eb7663e35d795e' |        |               | 'False'           |                | ''    | 'e1cib/data/ChartOfCharacteristicTypes.CurrencyMovementType?ref=b762b13668d0905011eb7663e35d7969' |          | 'False'   |

	И я перезаполняю для объекта табличную часть "RowIDInfo":
		| 'Ref'                                                                  | 'Key'                                  | 'RowID'                                | 'Quantity' | 'Basis'                                                                 | 'CurrentStep'                                     | 'NextStep'                                    | 'RowRef'                                                         | 'BasisKey'                             |
		| 'e1cib/data/Document.SalesReturn?ref=b21e80c5f25f8a4e11ef6806633d755d' | 'bac78af5-4775-4914-9763-11b50c3fb84c' | 'd597c5dc-0fcf-41dc-9bbd-672e5899e53c' | 6          | 'e1cib/data/Document.SalesInvoice?ref=b21e80c5f25f8a4e11ef6806633d755c' | 'e1cib/data/Catalog.MovementRules?refName=SRO_SR' | 'e1cib/data/Catalog.MovementRules?refName=GR' | 'e1cib/data/Catalog.RowIDs?ref=b21e80c5f25f8a4e11ef6806633d755b' | 'd597c5dc-0fcf-41dc-9bbd-672e5899e53c' |

