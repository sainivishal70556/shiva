namespace shiva;
using { cuid, managed } from '@sap/cds/common';

@assert.unique: { businessPartnersID: [businessPartnersID] }
entity BusinessPartners : cuid, managed {
  businessPartnersID: String(36) @mandatory;
  name: String(100);
  email: String(100);
  phone: String(15);
  address: String(250); 
  //
}

