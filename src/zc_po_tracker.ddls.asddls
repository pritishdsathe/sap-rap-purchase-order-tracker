@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PO Tracker Consumption'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_PO_TRACKER provider contract transactional_query as projection on ZI_PO_TRACKER
{
    key PurchaseOrder,
    CompanyCode,
    PurchaseDocumentCategory,
    @Semantics.amount.currencyCode: 'Currency'
    Amount,
    Currency,
    @Semantics.quantity.unitOfMeasure: 'UoM'
    Quantity,
    UoM,
    Status,
    CreationDate,
    CreatedBy,
    CreatedAt
}
