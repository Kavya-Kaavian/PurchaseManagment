using { PurchaseOrder } from './external/PurchaseOrder.cds';

using { PurchaseManagment as my } from '../db/schema';

@path : '/service/PurchaseManagmentSvcs'
service PurchaseManagementService
{
    annotate A_PurchaseOrder with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'Viewer' ] }
    ];

    annotate A_PurchaseOrderItem with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'Manager' ] }
    ];

    @readonly
    entity A_PurchaseOrder as
        projection on PurchaseOrder.A_PurchaseOrder
        {
            PurchaseOrder,
            CompanyCode,
            PurchaseOrderType,
            PurchasingProcessingStatus,
            Supplier,
            PurchasingGroup,
            PurchaseOrderDate,
            SupplierPhoneNumber,
            SupplyingPlant,
            AddressCityName,
            AddressHouseNumber,
            AddressName,
            AddressStreetName,
            AddressRegion,
            AddressCountry,
            AddressCorrespondenceLanguage,
            to_PurchaseOrderItem : redirected to PurchaseManagementService.A_PurchaseOrderItem
        };

    @readonly
    entity A_PurchaseOrderItem as
        projection on PurchaseOrder.A_PurchaseOrderItem
        {
            PurchaseOrder,
            PurchaseOrderItem,
            Plant,
            OrderQuantity,
            NetPriceAmount,
            Material,
            DeliveryAddressName,
            to_PurchaseOrder
        };
}

annotate PurchaseManagementService with @requires :
[
    'authenticated-user'
];
