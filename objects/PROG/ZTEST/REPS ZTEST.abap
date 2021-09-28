*&---------------------------------------------------------------------*
*& Report ZTEST
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTEST.

************************************************************************
*    Header Details                                                                  *
************************************************************************

WRITE:/ 'Header Details:-'(001).
uline at /1(15).
skip 1.
WRITE: 10(20)'Order Number'(002),30(50)'Vendor Name'(025).

skip 1.
WRITE: 10(20)'1000021'(003),30(50)'CELEBAL TECHNOLOGIES'(026).
skip 1.

************************************************************************
*    Item  Details                                                                  *
************************************************************************
WRITE: 'Item Details:-'(027).
skip 2.
WRITE: 1(10)'Item#'(004),11(11)'Description'(005),25(10)'Quantity'(006),35(10)'Unit Price'(007),50(10)'Net Price'(008).
NEW-LINE.
WRITE: sy-uline(60).
DATA:item# TYPE c LENGTH 10.
DATA:description TYPE c LENGTH 11.
DATA:quantity TYPE p LENGTH 4 DECIMALS 3.
DATA:unit_price TYPE p LENGTH 6 DECIMALS 3.
DATA:net_price TYPE p LENGTH 6 DECIMALS 2.

************************************************************************
*    Structure of Item Details                                                                  *
************************************************************************


TYPES:BEGIN OF ty_kpit,
        item#(10)       TYPE c,
        description(12) TYPE c,
        quantity        TYPE p LENGTH 4 DECIMALS 3,
        unit_price      TYPE p LENGTH 6 DECIMALS 3,
        net_price       TYPE p LENGTH 6 DECIMALS 2,
        total           TYPE p LENGTH  16 DECIMALS 4,
      END OF ty_kpit.

************************************************************************
*    Defining the data set of dell laptop                                                                  *
************************************************************************

DATA: wa_kpit TYPE ty_kpit.
wa_kpit-total = 0.
wa_kpit-item# = '0010'(009) .
wa_kpit-description = 'Dell Laptop'(010) .
wa_kpit-quantity = '10.000'(011)  .
wa_kpit-unit_price = '30000.000'(012)  .
wa_kpit-net_price = wa_kpit-unit_price * wa_kpit-quantity.
wa_kpit-total = wa_kpit-total + wa_kpit-net_price .
WRITE:/ wa_kpit-item#,
wa_kpit-description,
wa_kpit-quantity,
wa_kpit-unit_price,
wa_kpit-net_price.
CLEAR:wa_kpit-item#,
wa_kpit-description,
wa_kpit-quantity,
wa_kpit-unit_price,
wa_kpit-net_price.

************************************************************************
*    Defining the data set of Marker                                                                  *
************************************************************************

wa_kpit-item# = '00020'(013) .
wa_kpit-description = 'Markers'(014)  .
wa_kpit-quantity = '200.000'(015)  .
wa_kpit-unit_price = '10.000'(016)  .
wa_kpit-net_price = wa_kpit-unit_price * wa_kpit-quantity.
wa_kpit-total = wa_kpit-total + wa_kpit-net_price  .
WRITE:/ wa_kpit-item#,
wa_kpit-description,
wa_kpit-quantity,
wa_kpit-unit_price,
wa_kpit-net_price.

CLEAR:wa_kpit-item#,
wa_kpit-description,
wa_kpit-quantity,
wa_kpit-unit_price,
wa_kpit-net_price.

************************************************************************
*    Defining the data set of Note Book                                                                  *
************************************************************************

wa_kpit-item# = '00030'(017) .
wa_kpit-description = 'Notebook'(018)  .
wa_kpit-quantity = '400.000'(019)  .
wa_kpit-unit_price = '20.000'(020)  .
wa_kpit-net_price = wa_kpit-unit_price * wa_kpit-quantity.
wa_kpit-total = wa_kpit-total + wa_kpit-net_price .
WRITE:/ wa_kpit-item#,
wa_kpit-description,
wa_kpit-quantity,
wa_kpit-unit_price,
wa_kpit-net_price.

************************************************************************
*    Total Expenditure                                                                 *
************************************************************************
NEW-LINE.
WRITE: sy-uline(80).
NEW-LINE.
WRITE: 'Total:'(021).
WRITE: 45(20) wa_kpit-total.
WRITE: 65(20)'(Sum of Net Price)'(022).
NEW-LINE.
WRITE: sy-uline(80).
************************************************************************
*    Line Items                                                                  *
************************************************************************

NEW-LINE.
NEW-LINE.
WRITE:/ 'SIGNATURE:'(023).
NEW-LINE.
NEW-LINE.
WRITE:/ 'Date:'(024). WRITE: sy-datum.