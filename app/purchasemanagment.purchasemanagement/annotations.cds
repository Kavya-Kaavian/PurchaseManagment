using PurchaseManagementService as service from '../../srv/service';
annotate service.A_PurchaseOrder with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'PurchaseOrder',
                Value : PurchaseOrder,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CompanyCode',
                Value : CompanyCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Supplier',
                Value : Supplier,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PurchaseOrderDate',
                Value : PurchaseOrderDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AddressName',
                Value : AddressName,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Supplier',
            ID : 'Supplier',
            Target : '@UI.FieldGroup#Supplier',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Purchase',
            ID : 'Purchase',
            Target : '@UI.FieldGroup#Purchase',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Address',
            ID : 'Address',
            Target : '@UI.FieldGroup#Address',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'PurchaseOrder',
            Value : PurchaseOrder,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CompanyCode',
            Value : CompanyCode,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Supplier',
            Value : Supplier,
        },
        {
            $Type : 'UI.DataField',
            Label : 'PurchaseOrderDate',
            Value : PurchaseOrderDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'AddressName',
            Value : AddressName,
        },
    ],
    UI.FieldGroup #Supplier : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : Supplier,
                Label : 'Supplier',
            },
            {
                $Type : 'UI.DataField',
                Value : SupplierPhoneNumber,
                Label : 'SupplierPhoneNumber',
            },
            {
                $Type : 'UI.DataField',
                Value : SupplyingPlant,
                Label : 'SupplyingPlant',
            },
        ],
    },
    UI.FieldGroup #Purchase : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : PurchaseOrder,
                Label : 'PurchaseOrder',
            },
            {
                $Type : 'UI.DataField',
                Value : PurchaseOrderDate,
                Label : 'PurchaseOrderDate',
            },
            {
                $Type : 'UI.DataField',
                Value : PurchasingGroup,
                Label : 'PurchasingGroup',
            },
            {
                $Type : 'UI.DataField',
                Value : PurchasingProcessingStatus,
                Label : 'PurchasingProcessingStatus',
            },
            {
                $Type : 'UI.DataField',
                Value : PurchaseOrderType,
                Label : 'PurchaseOrderType',
            },
        ],
    },
    UI.FieldGroup #Address : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : AddressCountry,
                Label : 'AddressCountry',
            },
            {
                $Type : 'UI.DataField',
                Value : AddressName,
                Label : 'AddressName',
            },
            {
                $Type : 'UI.DataField',
                Value : AddressRegion,
                Label : 'AddressRegion',
            },
            {
                $Type : 'UI.DataField',
                Value : AddressStreetName,
                Label : 'AddressStreetName',
            },
            {
                $Type : 'UI.DataField',
                Value : AddressCityName,
                Label : 'AddressCityName',
            },
            {
                $Type : 'UI.DataField',
                Value : AddressHouseNumber,
                Label : 'AddressHouseNumber',
            },
            {
                $Type : 'UI.DataField',
                Value : AddressCorrespondenceLanguage,
                Label : 'AddressCorrespondenceLanguage',
            },
        ],
    },
);

