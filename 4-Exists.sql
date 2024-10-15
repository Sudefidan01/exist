--Exists
--Sql sorgularý içerisinde belirtilen sorgu cümlesi sonucunda herhangi bir deðer var mý sorusunu sorar
--Geriye 'bit' tipinde deðer döndürür (0,1)

--Syntax
--IF exists(sqlsorgu)
--begin
--		Sql sorgularý
--end

--Örnek
--Müþterimin içerisinde Turkey ülkesine ait müþteri var mý ?
use NORTHWND

declare @ulke nvarchar(50)
set @ulke='Turkey'

if exists (select * from Customers where Country=@ulke)
begin
	select * from Customers where Country=@ulke
end

else
begin
	print(@ulke + ' ülkesi bulunamadý')
end