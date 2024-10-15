--Exists
--Sql sorgular� i�erisinde belirtilen sorgu c�mlesi sonucunda herhangi bir de�er var m� sorusunu sorar
--Geriye 'bit' tipinde de�er d�nd�r�r (0,1)

--Syntax
--IF exists(sqlsorgu)
--begin
--		Sql sorgular�
--end

--�rnek
--M��terimin i�erisinde Turkey �lkesine ait m��teri var m� ?
use NORTHWND

declare @ulke nvarchar(50)
set @ulke='Turkey'

if exists (select * from Customers where Country=@ulke)
begin
	select * from Customers where Country=@ulke
end

else
begin
	print(@ulke + ' �lkesi bulunamad�')
end