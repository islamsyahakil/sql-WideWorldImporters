-- Insert + Delete
BEGIN TRAN;

INSERT INTO Sales.Customers
  (CustomerName, BillToCustomerID, CustomerCategoryID, BuyingGroupID,
   PrimaryContactPersonID, AlternateContactPersonID, DeliveryMethodID,
   DeliveryCityID, PostalCityID, CreditLimit, AccountOpenedDate, StandardDiscountPercentage,
   IsStatementSent, IsOnCreditHold, PaymentDays, PhoneNumber, FaxNumber, DeliveryRun,
   RunPosition, WebsiteURL, DeliveryAddressLine1, DeliveryPostalCode, PostalAddressLine1, PostalPostalCode,
   LastEditedBy)
VALUES
  ('Islamsyah Akil', 1, 1, NULL,
   1, NULL, 3,
   401, 401, 10000, GETDATE(), 0,
   0, 0, 7, '(000) 000-0000', 123, 1,
   NULL, 'https://islamsyahakil.github.io/github.io/', 'Bintaro', '00000', '123123', '00000',
   1);

-- Verifikasi insert
SELECT TOP 1 *
FROM Sales.Customers
WHERE CustomerName = 'Islamsyah Akil'
ORDER BY CustomerID DESC;

ROLLBACK; -- rollback hasil insert
