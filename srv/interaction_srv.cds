using app.interactions from '../db/cds/interactions';
using V_SALARIES from '../db/cds/interactions';

service CatalogService {

 entity Interactions_Header
    as projection on interactions.Interactions_Header;

 entity Interactions_Items
    as projection on  interactions.Interactions_Items;

@readonly
entity V_Salaries as projection on V_SALARIES {
    ID,
    SALARY,
    START_YEAR,
    GENDER, 
    REGION,
    ![T-LEVEL] as T_LEVEL
};

}