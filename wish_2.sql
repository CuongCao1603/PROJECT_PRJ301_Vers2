Create database Wish
USE [Wish]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NULL,
	[ProductID] [int] NULL,
	[Amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 12/28/2020 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (1, N'Adam', N'123456', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (2, N'Anjolie', N'SNZ6HE', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (3, N'Ferris', N'RXH3XJ', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (4, N'Katell', N'HWV8ZN', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (5, N'Zahir', N'NPX7OF', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (6, N'Conan', N'WIZ5VZ', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (7, N'Cade', N'ZSW2LU', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (8, N'Micah', N'RVV5SR', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (9, N'Rowan', N'VAI6XR', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (10, N'Kirby', N'DNX6JK', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (11, N'Tanisha', N'XWU7JP', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (12, N'Howard', N'TSR5MR', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (13, N'Tana', N'EHS8CM', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (14, N'Hadassah', N'YOY7ZW', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (15, N'Echo', N'IGE8TN', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (16, N'Slade', N'OFO6QS', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (17, N'Devin', N'IBM6RZ', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (18, N'Rowan', N'ZYS9VI', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (19, N'Rafael', N'WZA0IH', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (20, N'Madaline', N'QMW4EN', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (21, N'Vera', N'CZB2VM', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (22, N'Declan', N'ZKE7QZ', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (23, N'Katell', N'SFS0IW', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (24, N'Summer', N'PSQ7LC', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (25, N'Robin', N'KIS9AF', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (26, N'Dominique', N'IKV0IX', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (27, N'admin', N'123', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (28, N'mra', N'mra', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (29, N'mrb', N'123', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (30, N'Camden', N'123', 0, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'MÈO')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'CHÓ')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'CHUỘT')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'CHIM')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (5, N'RÙA')
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [cateID], [sell_ID]) VALUES (1, N'Mèo xiêm', N'https://mcdn.coolmate.me/uploads/December2021/cac-loai-meo-thu-cung-01.jpg', 1000.0000, N'nguồn gốc của chú mèo này đến từ Xiêm La - Thái Lan và được công nhận như là một trong những loài mèo lông ngắn phương Đông đầu tiên trên thế giới', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title],  [cateID], [sell_ID]) VALUES (2, N'Mèo ba tư', N'https://mcdn.coolmate.me/uploads/December2021/cac-loai-meo-thu-cung-02.jpg', 1200.0000, N'mèo Ba Tư có xuất xứ từ Ba Tư cổ đại, chính là Iran ngày nay. Chính vì thế mà loại mèo này đã được biết đến ở hầu hết mọi nơi trên thế giới và được nuôi rất nhiều trong nhà. Tuy nhiên, có một điểm đáng lưu ý là mèo Ba Tư sẽ không quá phù hợp đối với những ai yêu sạch sẽ vì chúng rụng lông rất nhiều', 1, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title],  [cateID], [sell_ID]) VALUES (3, N'Mèo Scottish Fold', N'https://mcdn.coolmate.me/uploads/December2021/cac-loai-meo-thu-cung-03.jpg', 1300.0000, N'Hay còn được gọi là mèo tai cụp, chú mèo này chắc chắn nằm trong top các loại mèo thú cưng đáng yêu nhất hiện nay với vẻ mặt luôn luôn ngây thơ vô số tội của mình', 1, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title],  [cateID], [sell_ID]) VALUES (4, N'Mèo Anh lông ngắn', N'https://mcdn.coolmate.me/uploads/December2021/cac-loai-meo-thu-cung-04.jpg', 1400.0000, N'mèo Anh lông ngắn được nuôi rất nhiều tại Việt Nam vì vẻ ngoài siêu đáng yêu đi kèm với khả năng thích ứng với điều kiện khí hậu cũng như thời tiết khá tốt.', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title],  [cateID], [sell_ID]) VALUES (5, N'Mèo rừng Na Uy', N'https://mcdn.coolmate.me/uploads/December2021/cac-loai-meo-thu-cung-05.jpg', 1500.0000, N'mèo rừng Na Uy là giống mèo hiếm nhất, không chỉ vì nguồn gốc đến từ xứ sở Bắc Âu xa xôi mà còn vì sự tương khắc đến từ thời tiết tại Việt Nam không quá phù hợp với chúng', 1, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [cateID], [sell_ID]) VALUES (6, N'Mèo Munchkin', N'https://mcdn.coolmate.me/uploads/December2021/cac-loai-meo-thu-cung-06.jpg', 1600.0000, N'Munchkin thu hút sự chú ý của mọi người vì đôi chân “dài” miên man của mình cùng dáng đi vô cùng đáng yêu. Có thể nói rằng, mèo Munchkin gần như đứng đầu về độ dễ thương trong các loại mèo thú cưng hiện nay', 1, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title],  [cateID], [sell_ID]) VALUES (7, N'Mèo Sphynx', N'https://mcdn.coolmate.me/uploads/December2021/cac-loai-meo-thu-cung-07.jpg', 1700.0000, N'Sphynx được xem là giống mèo quý tộc đến từ Ai Cập, nhưng sự thật rằng nguồn gốc của chúng là ở Canada và là giống mèo đột biến tự nhiên. Sở dĩ chúng có nhiều lời đồn đoán từ Ai Cập là vì người ta liên tưởng đến hình dáng của nhân sư và Sphynx rất giống nhau', 1, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [cateID], [sell_ID]) VALUES (8, N'Poodle', N'https://sieupet.com/sites/default/files/pictures/images/giong-cho-poodle-1.jpg', 1500.0000, N'Poodle là giống chó tai dài lông xù rất được ưa thích và được nuôi nhiều trong các gia đình bởi bề ngoài trông Poodle rất xinh đẹp, sang chảnh như những quý cô với bộ lông mềm mượt đôi tai buông dài', 2, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [cateID], [sell_ID]) VALUES (9, N'Golden Retriever', N'https://sieupet.com/sites/default/files/pictures/images/gold-golden-retriever.jpeg', 1800.0000, N'Đây cũng là 1 trong những giống chó được các hộ gia đình săn đón vì chúng có bản tính trung thành và vô cùng thông minh, tinh nghịch. Loài chó này có nguồn gốc từ Anh và Scotland, Vương quốc liên hiệp Anh và Bắc Ireland', 2, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [cateID], [sell_ID]) VALUES (10, N'Chó Lạp Xưởng', N'https://sieupet.com/sites/default/files/pictures/images/gioi-thieu-va-cach-cham-soc-cho-lap-xuong-1.jpg', 1800.0000, N'Nhắc đến giống chó cảnh tai dài ta không thể không nhắc đến chú chó Lạp Xưởng với thân hình rất ngộ nghĩnh thân dài, chân ngắn giống y như một chiếc lạp xưởng', 2, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title],  [cateID], [sell_ID]) VALUES (11, N'Chó Beagle', N'https://sieupet.com/sites/default/files/pictures/images/1519656689-beagle.jpg', 1500.0000, N'Beagle là giống chó Đức tai dài, là một trong những giống chó đang được yêu thích nhất hiện nay với bộ lông tam thể rất đẹp.', 2, 17)
INSERT [dbo].[product] ([id], [name], [image], [price], [title],  [cateID], [sell_ID]) VALUES (12, N'ST. Bernard', N'https://sieupet.com/sites/default/files/st._bernard_dog_0.jpg', 1650.0000, N'Đây là giống chó có nguồn gốc từ Ý và Alps Thuỵ Sỹ, thuộc dòng chó cứu hộ của vùng núi tuyết.', 2, 19)
INSERT [dbo].[product] ([id], [name], [image], [price], [title],  [cateID], [sell_ID]) VALUES (13, N'Labrador Retriever', N'https://duypets.com/wp-content/uploads/2019/09/gia-cho-labrador-2.jpg', 1850.0000, N'Thuộc giống chó săn mồi có nguồn gốc tại Mỹ, với bản tính vô cùng thông minh. Có lông màu đen hoặc socola, mắt màu nâu đen hoặc nâu hạt dẻ, lông ngắn sát da . Cao 50-60 cm  và nặng 20-35 kg là giống chó nhanh nhẹn thông minh và rất trung thành. Tuổi thọ 10-14 năm', 2, 18)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [cateID], [sell_ID]) VALUES (14, N'Chuột hamster campell', N'https://lolipet.net/wp-content/uploads/970493_409192875867622_1377185355_n_zpsa4a4d3b3-300x199.jpg', 200.0000, N'Chuột hamster của Campbell là những chú lùn phổ biến nhất hiện nay. Cách phân biệt chuột hamster campell chính là căn cứ vào màu sắc và thường có thể được xác định bằng một sọc đen, rắn chạy dọc lưng chúng. Chúng cũng thường được gọi là chuột hamster Nga', 3, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title],  [cateID], [sell_ID]) VALUES (15, N'Chuột hamster Winter White', N'https://mew.vn/wp-content/uploads/2021/03/chuot-hamster-winter-white-1.jpg', 500.0000, N'Chuột hamster winter white là giống thứ hai thường được xác định là ‘hamster Nga’. Chúng có thể là những thú cưng tuyệt vời và là những chú chuột hamster rất hòa đồng. Chuột Hamster Winter White tốt nhất nên nuôi thành cặp hoặc theo nhóm trong điều kiện nuôi nhốt và hamster winter white có nguồn gốc từ những khu vực bị tuyết bao phủ trong suốt mùa đông nên người ta lấy tên này đặt cho chúng.', 3, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title],  [cateID], [sell_ID]) VALUES (16, N'Chuột Hamster Roborovski', N'https://static2.enbaccdn.com/thumb_w/500/ebx/2018/01/30/1070175/1517286992_tranduyen548251c0884bb670804135d44a3a0b27.jpg', 120.0000, N'Chuột hamster Roborovski là giống nhỏ nhất trong 5 giống và cũng nhanh nhẹn nhất. Nếu bạn từng bắt được một chú hamster Roborovski của nghệ sĩ trốn thoát, bạn sẽ thấy nó khó khăn như thế nào. Chuột hamster roborovski thường được gọi là chuột hamster robo. Chuột hamster robo là hamster cộng đồng, đội nhóm, chúng có thể sống chung với nhau, thậm chí sống cùng với hamster robo lớn so, đây là ưu điểm vượt trội của hamster robo.', 3, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title],  [cateID], [sell_ID]) VALUES (17, N'Chim Sơn Ca', N'https://khbvptr.vn/wp-content/uploads/2019/07/chim-son-ca.jpg', 100.0000, N'Là một trong các loại chim sâu ở Việt Nam nên chim Sơn Ca có thân hình nhỏ bé, chỉ to ngang một nắm tay của người lớn. Chim thường có màu lông đa sắc, vàng ở trên đầu, nâu, đen ở thân trên và có màu trắng ở phần bụng.', 4, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [cateID], [sell_ID]) VALUES (18, N'Chim Họa Mi', N'https://khbvptr.vn/wp-content/uploads/2019/07/chim-hoa-mi.jpg', 120.0000, N'Có tên khoa học là Garrulux Canorus, chim Họa Mi thường sinh sống ở các khu rừng, vườn cây, công viên,… Loài chim cảnh Việt Nam này khá nhỏ bé, chỉ ngang hoặc bé hơn chim Sơn Ca nhưng bù lại chúng là một trong các loại chim hót hay nhất. Bởi vậy mà người ta thường ví các ca sĩ có giọng hát cao là những chú chim họa mi.', 4, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title],  [cateID], [sell_ID]) VALUES (19, N'Chim Chào Mào', N'https://khbvptr.vn/wp-content/uploads/2019/07/chim-chao-mao.png', 120.0000, N'Chào Mào cũng là một trong các loại chim cảnh thường nuôi trong nhà được nhiều người yêu thích. Loài chim này sống theo bầy đàn, ăn các loại côn trung nhỏ và hoa quả. Khi làm tổ chúng sẽ quấn các sợi rơm, cảnh cây nhỏ thành hình cái cốc nhỏ.', 4, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title],  [cateID], [sell_ID]) VALUES (20, N'Chim Chích Chòe', N'https://khbvptr.vn/wp-content/uploads/2019/07/chim-chich-choe.jpg', 120.0000, N'Là một trong các loài chim cảnh nhỏ được nuôi phổ biến tại Việt Nam, chim Chích Chòe có thân hình nhỏ nhắn cùng đôi chân nhảy thoăn thoắt trên các cảnh cây. Loài chim này thường hót vào lúc giữa trưa hoặc tối muộn nên thường được nuôi ở các nơi công cộng như quán cafe, vườn chim,…', 4, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title],  [cateID], [sell_ID]) VALUES (21, N'Chim Vàng Anh', N'https://khbvptr.vn/wp-content/uploads/2019/07/chim-vang-anh.jpg', 120.0000, N'Chắc hẳn ai cũng biết đến loài chim cảnh “Vàng Ảnh Vàng Anh” trong câu chuyện cổ tích Tấm Cám. Thuộc các loài chim hót hay nhất, chim Vàng Anh còn được gọi là chim Hoàng Anh, có giọng hót thánh thót rất dễ vào lòng người.', 4, 14)
INSERT [dbo].[product] ([id], [name], [image], [price], [title],  [cateID], [sell_ID]) VALUES (22, N'Rùa núi vàng', N'https://vietpetgarden.net/wp-content/uploads/2018/05/rua-nui-vang.jpg', 320.0000, N'Rùa núi vàng là loài rùa cảnh đang được nhiều người ưa chuộng. Loại rùa này có màu sắc khá đẹp, mai vàng óng ả không có đốm đen xuất hiện nên chú rùa này sẽ “đốn tim” mọi người ngay từ lần đầu nhìn thấy. Loại rùa này có thể được nuôi trên cạn nên rất thuận tiện cho nhiều người khi muốn mang chúng khi khắp nơi khoe với bạn bè.', 5, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [cateID], [sell_ID]) VALUES (23, N'Rùa chân đỏ', N'https://vietpetgarden.net/wp-content/uploads/2018/05/rua-chan-do.jpg', 420.0000, N'Rùa Chân Đỏ (Red Foot Tortoise) là dòng rùa cạn đến từ miền bắc Nam Mỹ, con vật này được nuôi phổ biến nhất tại Hoa Kỳ. Sau khi được đưa về Việt Nam chúng đã nhanh chóng trở thành vật nuôi được yêu thích bởi vẻ đẹp khác lạ của chúng so với các dòng rùa khác.', 5, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title],  [cateID], [sell_ID]) VALUES (24, N'Rùa sao Ấn Độ', N'https://vietpetgarden.net/wp-content/uploads/2018/05/rua-sao-an-do-2.jpg', 2220.0000, N'Rùa Ấn Độ là một loại rùa bản địa của Ấn Độ. Đặc điểm nhận dạng của loại này là đường họa tiết Vàng trên mai tạo thành những ngôi sao trông rất hấp dẫn. Chính bởi những họa tiết sao nổi bật trên mai, chúng được xếp vào danh sách một trong những chú rùa đẹp nhất trên thế giới', 5, 15)
INSERT [dbo].[product] ([id], [name], [image], [price], [title],  [cateID], [sell_ID]) VALUES (25, N'Rùa tai đỏ', N'https://vietpetgarden.net/wp-content/uploads/2018/05/rua-tai-do.jpg', 330.0000, N'Rùa tai đỏ có tên khoa học là Trachemys scripta elegans là loài động vật thuộc bộ rùa, phân bố tự nhiên ở các vùng nước nội địa Bắc Mỹ.', 5, 14)
SET IDENTITY_INSERT [dbo].[product] OFF
