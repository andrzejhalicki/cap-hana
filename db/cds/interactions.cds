using {Country} from '@sap/cds/common';

type BusinessKey : String(10);
type SDate       : DateTime;
type LText       : String(1024);


context app.interactions {
  entity Interactions_Header {
    key ID        : Integer;
        ITEMS     : Composition of many Interactions_Items
                      on ITEMS.INTHeader = $self;
        PARTNER   : BusinessKey;
        LOG_DATE  : SDate;
        BPCOUNTRY : Country;

  };

  entity Interactions_Items {

    key INTHeader : Association to Interactions_Header;
    key TEXT_ID   : BusinessKey;
        LANGU     : String(2);
        LOGTEXT   : LText;
  };
}

@cds.persistence.exists
@cds.persistence.calcview
Entity V_SALARIES {
        key ID: Integer  @title: 'ID' ; 
        SALARY: Double  @title: 'SALARY' ; 
        START_YEAR: Integer  @title: 'START_YEAR' ; 
        GENDER: String(1)  @title: 'GENDER' ; 
        REGION: String(4)  @title: 'REGION' ; 
        ![T-LEVEL]: String(200)  @title: 'T-LEVEL' ; 
}
