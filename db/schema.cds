namespace dio.sf.auth;

using { cuid, managed } from '@sap/cds/common';

entity critAuthorizations : cuid, managed {
    permId            : String(100)  @mandatory;
    permName          : String(255);
    permCategory      : String(100);
    description       : String(500);
    criticalityLevel  : String(10) enum { LOW; MEDIUM; HIGH; } default 'HIGH';
    reason            : String(500);
}
