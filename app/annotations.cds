using { shivaSrv } from '../srv/service.cds';

annotate shivaSrv.BusinessPartners with @UI.HeaderInfo: { TypeName: 'Business Partner', TypeNamePlural: 'Business Partners', Title: { Value: businessPartnersID } };
annotate shivaSrv.BusinessPartners with {
  ID @UI.Hidden @Common.Text: { $value: businessPartnersID, ![@UI.TextArrangement]: #TextOnly }
};
annotate shivaSrv.BusinessPartners with @UI.Identification: [{ Value: businessPartnersID }];
annotate shivaSrv.BusinessPartners with @UI.DataPoint #name: {
  Value: name,
  Title: 'Name',
};
annotate shivaSrv.BusinessPartners with {
  businessPartnersID @title: 'ID';
  name @title: 'Name';
  email @title: 'Email';
  phone @title: 'Phone';
  address @title: 'Address';
  createdAt @title: 'Created At';
  createdBy @title: 'Created By';
  modifiedAt @title: 'Modified At';
  modifiedBy @title: 'Modified By'
};

annotate shivaSrv.BusinessPartners with @UI.LineItem: [
 { $Type: 'UI.DataField', Value: businessPartnersID },
 { $Type: 'UI.DataField', Value: name },
 { $Type: 'UI.DataField', Value: email },
 { $Type: 'UI.DataField', Value: phone },
 { $Type: 'UI.DataField', Value: address }
];

annotate shivaSrv.BusinessPartners with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: businessPartnersID },
 { $Type: 'UI.DataField', Value: name },
 { $Type: 'UI.DataField', Value: email },
 { $Type: 'UI.DataField', Value: phone },
 { $Type: 'UI.DataField', Value: address },
 { $Type: 'UI.DataField', Value: createdAt },
 { $Type: 'UI.DataField', Value: createdBy },
 { $Type: 'UI.DataField', Value: modifiedAt },
 { $Type: 'UI.DataField', Value: modifiedBy }
  ]
};

annotate shivaSrv.BusinessPartners with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#name' }
];

annotate shivaSrv.BusinessPartners with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate shivaSrv.BusinessPartners with @UI.SelectionFields: [
  businessPartnersID
];

