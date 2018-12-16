program CabOut;



uses
  Forms,
  L_Mawbs in 'L_Mawbs.pas' {L_MawbsFRM},
  H_flightOut in 'H_flightOut.pas' {H_FlightOutFRM},
  H_FlightAirwaybill in 'H_FlightAirwaybill.pas' {H_FlightairwaybillFRM},
  M_parameters in 'M_parameters.pas' {M_ParametersFRM},
  M_country in 'M_country.pas' {M_countryFRM},
  M_Itinerary in 'M_Itinerary.pas' {M_ItineraryFRM},
  H_scanAirwaybill in 'H_scanAirwaybill.pas' {H_ScanAirwaybillFRM},
  H_Airwaybill2 in 'H_Airwaybill2.pas' {H_airwaybill2FRM},
  L_FlightOutList in 'L_FlightOutList.pas' {L_FlightOutListFRM},
  M_customerNew in 'M_customerNew.pas' {M_CustomerNewFRM},
  M_NewTariff2 in 'M_NewTariff2.pas' {M_TariffNew2FRM},
  S_SelectTariffY in 'S_SelectTariffY.pas' {S_SelectTariffYFRM},
  MainForm in 'MainForm.pas' {MainFormFRM},
  M_District in 'M_District.pas' {M_DistrictFRM},
  H_ScanAirwaybillNew in 'H_ScanAirwaybillNew.pas' {H_ScanAirwaibillNewFRM},
  L_AIrwaybillHigh in 'L_AIrwaybillHigh.pas' {L_AirwaybillsHighFRM},
  M_serviceCode in 'M_serviceCode.pas' {M_ServiceCodesFRM},
  M_Currency in 'M_Currency.pas' {M_CurrencyFRM},
  l_FlightAirwaybillParameters in 'l_FlightAirwaybillParameters.pas' {L_AdditionalParametersFRM},
  M_additionalParameters in 'M_additionalParameters.pas' {M_additionalParametersFRM},
  X_readFile in 'X_readFile.pas' {X_readFileFRM},
  G_DebugUnit in 'G_DebugUnit.pas',
  G_kyriacosTypes in 'G_kyriacosTypes.pas',
  G_KyrSQL in 'G_KyrSQL.pas',
  GeneralProcedures in 'GeneralProcedures.pas',
  KyriacosTypes in 'KyriacosTypes.pas',
  S_SelectCustomerx in 'S_SelectCustomerx.pas' {S_SelectCustomerXFRM},
  GeneralParametersNew in 'GeneralParametersNew.pas',
  G_generalProcs in 'G_generalProcs.pas',
  R_ReadALLXMLFiles in 'R_ReadALLXMLFiles.pas' {R_ReadAllFilesFRM},
  M_dangerGoods in 'M_dangerGoods.pas' {M_DangerGoodsFRM},
  M_FlightTable in 'M_FlightTable.pas' {M_FlightTableFRM},
  M_certificates in 'M_certificates.pas' {M_certificatesFRM},
  L_itinerary in 'L_itinerary.pas' {L_ItineraryFRM},
  H_FlightAirItem in 'H_FlightAirItem.pas' {H_FlightAirItemFRM},
  M_incoterms in 'M_incoterms.pas' {M_incotermsFRM},
  m_TypeOfDeclaration in 'm_TypeOfDeclaration.pas' {M_TypeOfDeclarationFRM},
  m_specificCircumstance in 'm_specificCircumstance.pas' {M_SpecificCircumsatnceFRM},
  M_ProcedureRequest in 'M_ProcedureRequest.pas' {M_ProcedureRequestFRM},
  m_DeclarationType in 'm_DeclarationType.pas' {M_declarationTypeFRM},
  m_KindOfPackages in 'm_KindOfPackages.pas' {M_KIndOfPackagesFRM},
  H_commonProcs in 'H_commonProcs.pas',
  M_PaymentMethod in 'M_PaymentMethod.pas' {M_PaymentMEthodFRM},
  M_PreviousProcedure in 'M_PreviousProcedure.pas' {M_PreviousProcedureFRM},
  X_createMultiHighXML in 'X_createMultiHighXML.pas' {X_CreateMultiHighXmlFRM},
  X_CreateMultiLowNewXML in 'X_CreateMultiLowNewXML.pas' {X_CreateMultiLowNewXMLFrm};

{$R *.RES}


begin
  Application.Initialize;
  Application.Title := 'CabOut';
  //  Application.CreateForm(TL_ItineraryFRM1, L_ItineraryFRM1);
  Application.CreateForm(TMainFormFRM, MainFormFRM);
  Application.CreateForm(TL_MawbsFRM, L_MawbsFRM);
  Application.CreateForm(TH_FlightOutFRM, H_FlightOutFRM);
  Application.CreateForm(TH_FlightairwaybillFRM, H_FlightairwaybillFRM);
  Application.CreateForm(TM_ParametersFRM, M_ParametersFRM);
  Application.CreateForm(TM_countryFRM, M_countryFRM);
  Application.CreateForm(TM_ItineraryFRM, M_ItineraryFRM);
  Application.CreateForm(TH_ScanAirwaybillFRM, H_ScanAirwaybillFRM);
  Application.CreateForm(TH_airwaybill2FRM, H_airwaybill2FRM);
  Application.CreateForm(TL_FlightOutListFRM, L_FlightOutListFRM);
  Application.CreateForm(TM_CustomerNewFRM, M_CustomerNewFRM);
  Application.CreateForm(TM_TariffNew2FRM, M_TariffNew2FRM);
  Application.CreateForm(TS_SelectTariffYFRM, S_SelectTariffYFRM);
  Application.CreateForm(TM_DistrictFRM, M_DistrictFRM);
  Application.CreateForm(TH_ScanAirwaibillNewFRM, H_ScanAirwaibillNewFRM);
  Application.CreateForm(TL_AirwaybillsHighFRM, L_AirwaybillsHighFRM);
  Application.CreateForm(TM_TypeOfDeclarationFRM, M_TypeOfDeclarationFRM);
  Application.CreateForm(TM_ServiceCodesFRM, M_ServiceCodesFRM);
  Application.CreateForm(TM_CurrencyFRM, M_CurrencyFRM);
  Application.CreateForm(TL_AdditionalParametersFRM, L_AdditionalParametersFRM);
  Application.CreateForm(TM_additionalParametersFRM, M_additionalParametersFRM);
  Application.CreateForm(TX_readFileFRM, X_readFileFRM);
  Application.CreateForm(TS_SelectCustomerXFRM, S_SelectCustomerXFRM);
  Application.CreateForm(TR_ReadAllFilesFRM, R_ReadAllFilesFRM);
  Application.CreateForm(TM_DangerGoodsFRM, M_DangerGoodsFRM);
  Application.CreateForm(TM_FlightTableFRM, M_FlightTableFRM);
  Application.CreateForm(TM_certificatesFRM, M_certificatesFRM);
  Application.CreateForm(TL_ItineraryFRM, L_ItineraryFRM);
  Application.CreateForm(TH_FlightAirItemFRM, H_FlightAirItemFRM);
  Application.CreateForm(TM_incotermsFRM, M_incotermsFRM);
  Application.CreateForm(TM_SpecificCircumsatnceFRM, M_SpecificCircumsatnceFRM);
  Application.CreateForm(TM_ProcedureRequestFRM, M_ProcedureRequestFRM);
  Application.CreateForm(TM_TypeOfDeclarationFRM, M_TypeOfDeclarationFRM);
  Application.CreateForm(TM_SpecificCircumsatnceFRM, M_SpecificCircumsatnceFRM);
  Application.CreateForm(TM_PaymentMEthodFRM, M_PaymentMEthodFRM);
  Application.CreateForm(TM_ProcedureRequestFRM, M_ProcedureRequestFRM);
  Application.CreateForm(TM_KIndOfPackagesFRM, M_KIndOfPackagesFRM);
  Application.CreateForm(TM_declarationTypeFRM, M_declarationTypeFRM);
  Application.CreateForm(TM_PreviousProcedureFRM, M_PreviousProcedureFRM);
  Application.CreateForm(TM_declarationTypeFRM, M_declarationTypeFRM);
  Application.CreateForm(TM_KIndOfPackagesFRM, M_KIndOfPackagesFRM);
  Application.CreateForm(TX_CreateMultiLowNewXMLFrm, X_CreateMultiLowNewXMLFrm);
  Application.CreateForm(TM_PreviousProcedureFRM, M_PreviousProcedureFRM);
  Application.CreateForm(TX_CreateMultiHighXmlFRM, X_CreateMultiHighXmlFRM);
  Application.CreateForm(TX_CreateMultiLowNewXMLFrm, X_CreateMultiLowNewXMLFrm);
  Application.Run;
end.
