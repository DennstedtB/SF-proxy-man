namespace dio.sf.proxy;

using { cuid, managed } from '@sap/cds/common';

entity employee : cuid, managed {
  name : String
}
