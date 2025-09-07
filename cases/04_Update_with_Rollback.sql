-- UPDATE
BEGIN TRAN;

-- Contoh: set email invalid menjadi 11111 yang sebelumnya ada isi 0100
UPDATE c
SET c.PhoneNumber = 11111
FROM Sales.Customers c
WHERE c.PhoneNumber LIKE '%0100%'  -- aturan demo sederhana

-- Cek hasil update
SELECT COUNT(*) AS AffectedRows
FROM Sales.Customers
WHERE PhoneNumber = 11111;

ROLLBACK;  -- rollback hasil update sehingga data tidak berubah
