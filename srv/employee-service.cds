using { dio.sf.auth as db } from '../db/schema';

service AuthService {
    entity CritAuth as projection on db.critAuthorizations;
}
