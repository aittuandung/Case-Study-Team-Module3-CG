
DROP DATABASE CASE_STUDY_MD3;
CREATE DATABASE CASE_STUDY_MD3;
USE CASE_STUDY_MD3;



CREATE TABLE customer (
    userName VARCHAR(50) PRIMARY KEY,
    passWord VARCHAR(100),
    fullName VARCHAR(50),
    birthDay VARCHAR(100),
    idCart VARCHAR(50),
    homeTown VARCHAR(25),
    phoneNumber VARCHAR(25),
    email VARCHAR(50),
    wallet DOUBLE
);

CREATE TABLE sector (
    idKV INT PRIMARY KEY AUTO_INCREMENT,
    province VARCHAR(50),
    district VARCHAR(50),
    subDistrict VARCHAR(50)
);

DROP TABLE apartment;
CREATE TABLE apartment (
    idCH INT AUTO_INCREMENT PRIMARY KEY,
    address VARCHAR(100),
    price DOUBLE,
    area DOUBLE,
    picture TEXT(10000),
    status VARCHAR(100),
    description VARCHAR(100),
    datePost DATETIME DEFAULT NOW(),
    classify VARCHAR(50),
    userName VARCHAR(50),
    idKV INT,
    FOREIGN KEY (userName)
        REFERENCES customer (userName),
	FOREIGN KEY (idKV)
        REFERENCES sector (idKV)
);


INSERT INTO `CASE_STUDY_MD3`.`sector` ( `province`, `district`, `subDistrict`) VALUES ( 'Hà Nội', 'Hoàng Mai', 'Phường Thịnh Liệt');
INSERT INTO `CASE_STUDY_MD3`.`sector` ( `province`, `district`, `subDistrict`) VALUES ( 'Hà Nội', 'Hai Bà Trưng', 'Phường Quỳnh Mai');
INSERT INTO `CASE_STUDY_MD3`.`sector` ( `province`, `district`, `subDistrict`) VALUES ( 'Tp Hồ Chí Minh', 'Quận 7', 'Phường Tân Hưng');
INSERT INTO `CASE_STUDY_MD3`.`sector` ( `province`, `district`, `subDistrict`) VALUES ( 'Tp Hồ Chí Minh', 'Quận Bình Tân', 'Phường An Lạc');

INSERT INTO `CASE_STUDY_MD3`.`customer` (`userName`, `passWord`, `fullName`, `birthDay`, `idCart`, `homeTown`, `phoneNumber`, `email`, `wallet`) VALUES ('a', '12345678', 'aaa', '1998/06/08', '123321', 'Hà Nội', '098941984', 'a@gmail.com', '0');
INSERT INTO `CASE_STUDY_MD3`.`customer` (`userName`, `passWord`, `fullName`, `birthDay`, `idCart`, `homeTown`, `phoneNumber`, `email`, `wallet`) VALUES ('c', '12345678', 'ccc', '1989/03/07', '242234', 'Hải Phòng', '086529529', 'c@gmail.com', '0');
INSERT INTO `CASE_STUDY_MD3`.`customer` (`userName`, `passWord`, `fullName`, `birthDay`, `idCart`, `homeTown`, `phoneNumber`, `email`, `wallet`) VALUES ('b', '12345678', 'bbb', '1975/06/02', '124543', 'Bắc Ninh', '079562591', 'b@gmail.com', '0');



INSERT INTO `CASE_STUDY_MD3`.`apartment` ( `address`, `price`, `area`, `picture`, `status`, `description`, `datePost`, `classify`, `userName`, `idKV`) VALUES ( 'Ngõ 88, Đường Giáp Nhị, Phường Thịnh Liệt, Hoàng Mai, Hà Nội', '4.15', '30.0', 'https://file4.batdongsan.com.vn/resize/745x510/2022/06/30/20220630091934-57f9_wm.jpg', 'Đang bán', 'Tây Nam', '2022/06/30', 'Nhà Đất', 'a', '1');
INSERT INTO `CASE_STUDY_MD3`.`apartment` ( `address`, `price`, `area`, `picture`, `status`, `description`, `datePost`, `classify`, `userName`, `idKV`) VALUES ( 'Đường Giáp Nhị, Phường Thịnh Liệt, Hoàng Mai, Hà Nội', '3.2', '52.0', 'https://file4.batdongsan.com.vn/resize/745x510/2022/06/27/20220627225903-c75e_wm.jpg', 'Đang bán', 'Đông Nam', '2022/05/12', 'Nhà Đất', 'b', '1');
INSERT INTO `CASE_STUDY_MD3`.`apartment` ( `address`, `price`, `area`, `picture`, `status`, `description`, `datePost`, `classify`, `userName`, `idKV`) VALUES ('Ngõ 77, Phố 8/3, Phường Quỳnh Mai, Hai Bà Trưng, Hà Nội', '9.5', '85.0', 'https://file4.batdongsan.com.vn/resize/745x510/2020/09/30/dYAiw5Kr/20200930140148-a366_wm.jpg', 'Đã bán', 'Đông Bắc', '2022/06/20', 'Nhà Đất', 'c', '2');
INSERT INTO `CASE_STUDY_MD3`.`apartment` ( `address`, `price`, `area`, `picture`, `status`, `description`, `datePost`, `classify`, `userName`, `idKV`) VALUES ( 'Phố 8/3, Phường Quỳnh Mai, Hai Bà Trưng, Hà Nội', '18.8', '90', 'https://file4.batdongsan.com.vn/resize/745x510/2022/06/24/20220624175143-7136_wm.jpg', 'Đang bán', 'Tây', '2022/07/02', 'Nhà Đất', 'b', '2');
INSERT INTO `CASE_STUDY_MD3`.`apartment` ( `address`, `price`, `area`, `picture`, `status`, `description`, `datePost`, `classify`, `userName`, `idKV`) VALUES ( 'Sunrise City, Đường Nguyễn Hữu Thọ, Phường Tân Hưng, Quận 7, Hồ Chí Minh', '5.0', '125.0', 'https://file4.batdongsan.com.vn/resize/745x510/2022/03/23/20220323121040-a834_wm.jpg', 'Đang bán', 'Nam', '2022/06/29', 'Chung cư', 'a', '3');
INSERT INTO `CASE_STUDY_MD3`.`apartment` ( `address`, `price`, `area`, `picture`, `status`, `description`, `datePost`, `classify`, `userName`, `idKV`) VALUES ( 'Đường Võ Văn Kiệt, Phường An Lạc, Bình Tân, Hồ Chí Minh', '2.7', '60.0', 'https://file4.batdongsan.com.vn/resize/745x510/2022/07/07/20220707102146-5f9b_wm.jpg', 'Đang bán', 'Đông Nam', '2022/07/07', 'Chung cư', 'c', '4');

