use ABC;
# 1) 
#Xuất danh sách các nhà cung cấp 
#(gồm Id, CompanyName, ContactName, City, Country, Phone) 
#kèm theo giá min và max của các sản phẩm mà nhà cung cấp đó cung cấp. 
#Có sắp xếp theo thứ tự Id của nhà cung cấp (Gợi ý : Join hai bản Supplier và Product, dùng GROUP BY tính Min, Max)

select Suppliers.SupplierID as Supplier_ID, Suppliers.CompanyName as Company_Name, Suppliers.ContactName as Contact_Name,Suppliers.City as City, Suppliers.Country,Suppliers.Phone,
min(Products.UnitPrice) as Min_Price, max(Products.UnitPrice) as Max_Price 

from Suppliers,Products
where Suppliers.SupplierID = Products.SupplierID
# the default in ascending order 
group by Suppliers.SupplierID
order by Suppliers.SupplierID