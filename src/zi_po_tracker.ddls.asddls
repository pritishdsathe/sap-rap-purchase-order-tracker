@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PO Tracker Interface'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_PO_TRACKER as select from zpo_tracker
{
    key ebeln as PurchaseOrder,
    bukrs as CompanyCode,
    bstyp as PurchaseDocumentCategory,
    @Semantics.amount.currencyCode: 'Currency'
    price as Amount,
    currency as Currency,
    @Semantics.quantity.unitOfMeasure: 'UoM'
    quantity as Quantity,
    uom as UoM,
    status as Status,
    aedat as CreationDate,
    @Semantics.user.createdBy: true
    ernam as CreatedBy,
    @Semantics.systemDateTime.createdAt: true
    created_at as CreatedAt
}
