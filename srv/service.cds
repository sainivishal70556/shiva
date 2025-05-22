using { shiva as my } from '../db/schema.cds';

@path: '/service/shiva'
@requires: 'authenticated-user'
service shivaSrv {
  @odata.draft.enabled
  entity BusinessPartners as projection on my.BusinessPartners;
}