@AbapCatalog.sqlViewName: '/DMO/ISUPPTXT16'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Supplement Text view'

define view /DMO/I_Supplement16Text16
  as select from /dmo/suppl_te_16        as SupplementText
{
    key SupplementText.supplement_id    as SupplementID,

    @Semantics.language: true
    key SupplementText.language_code    as LanguageCode,

    @Semantics.text: true
    SupplementText.description          as Description

}
