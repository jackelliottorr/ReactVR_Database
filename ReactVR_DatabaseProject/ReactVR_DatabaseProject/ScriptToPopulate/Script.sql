USE [ReactVR_Database]
GO
INSERT [dbo].[Level] ([LevelId], [Name], [Description], [IsDeleted]) VALUES (N'0b24c4b8-638c-4b51-ae7f-fbc8beb7b7b7', N'Test Level', N'A level for testing, updated', 0)
GO
INSERT [dbo].[Organisation] ([OrganisationId], [OrganisationName], [CreatedDate], [IsDeleted]) VALUES (N'3ab29d49-c707-40e5-b57d-6ccdd8142a4d', N'My Test Organisation 002', CAST(N'2020-01-11T00:44:28.090' AS DateTime), 0)
GO
INSERT [dbo].[TargetZone] ([TargetZoneId], [TargetZoneShape], [TargetZoneX], [TargetZoneY], [TargetZoneZ], [CreatedDate], [IsDeleted]) VALUES (N'c83655f4-7a6a-4773-9b96-b0f98f20d0d5', N'Plane', CAST(3 AS Decimal(18, 0)), CAST(3 AS Decimal(18, 0)), CAST(2 AS Decimal(18, 0)), CAST(N'2020-01-13T18:19:49.337' AS DateTime), 0)
GO
INSERT [dbo].[UserAccount] ([UserAccountId], [Name], [EmailAddress], [Password], [CreatedDate], [IsDeleted]) VALUES (N'7ca71c65-ddf5-48f2-9b2b-0372100d560c', N'Jack', N'test@email.com', N'password', CAST(N'2020-01-10T23:21:32.207' AS DateTime), 1)
GO
INSERT [dbo].[UserAccount] ([UserAccountId], [Name], [EmailAddress], [Password], [CreatedDate], [IsDeleted]) VALUES (N'17874532-544f-4f41-8fd2-954cf7d122ac', N'Jack Updated', N'testupdated@email.com', N'passwordupdated', CAST(N'2020-01-10T23:06:44.483' AS DateTime), 0)
GO
INSERT [dbo].[UserAccount] ([UserAccountId], [Name], [EmailAddress], [Password], [CreatedDate], [IsDeleted]) VALUES (N'f5a7e771-84c8-43d8-ae49-9f5148523025', N'Jack', N'jack@email.com', N'password', CAST(N'2020-01-09T00:27:59.990' AS DateTime), 0)
GO
INSERT [dbo].[UserAccount] ([UserAccountId], [Name], [EmailAddress], [Password], [CreatedDate], [IsDeleted]) VALUES (N'950111cb-32e6-4030-b03a-a177f9bb2953', N'Jack Orr', N'jackelliottorr@protonmail.com', N'', CAST(N'2020-01-08T00:46:23.380' AS DateTime), 0)
GO
INSERT [dbo].[UserAccount] ([UserAccountId], [Name], [EmailAddress], [Password], [CreatedDate], [IsDeleted]) VALUES (N'2071b834-e4d4-480a-b7d9-b82862c539be', N'Jack', N'mail', N'password', CAST(N'2020-01-10T23:01:54.760' AS DateTime), 0)
GO
INSERT [dbo].[UserAccount] ([UserAccountId], [Name], [EmailAddress], [Password], [CreatedDate], [IsDeleted]) VALUES (N'95bd4941-52eb-48ea-8a31-d326c5824d4c', N'Jack', N'test@email.com', N'password', CAST(N'2020-01-10T23:10:49.253' AS DateTime), 0)
GO
INSERT [dbo].[LevelConfiguration] ([LevelConfigurationId], [LevelId], [OrganisationId], [CreatedById], [TargetZoneId], [Name], [Description], [TargetSpawnDelay], [TargetLifespan], [IsPublic], [IsDeleted]) VALUES (N'4e7cfedf-2067-47cd-97b7-6cdcbb341c85', N'0b24c4b8-638c-4b51-ae7f-fbc8beb7b7b7', N'3ab29d49-c707-40e5-b57d-6ccdd8142a4d', N'95bd4941-52eb-48ea-8a31-d326c5824d4c', N'c83655f4-7a6a-4773-9b96-b0f98f20d0d5', N'Level Configuration 02', N'A test level configuration, updated', CAST(1 AS Decimal(18, 0)), CAST(5 AS Decimal(18, 0)), 0, 0)
GO
SET IDENTITY_INSERT [dbo].[UserType] ON 
GO
INSERT [dbo].[UserType] ([UserTypeId], [Description], [IsDeleted]) VALUES (1, N'System Admin', 0)
GO
SET IDENTITY_INSERT [dbo].[UserType] OFF
GO
INSERT [dbo].[OrganisationInvite] ([OrganisationInviteId], [OrganisationId], [InvitedById], [InviteUserType], [CreatedDate], [ExpiryDate], [IsUsed], [IsDeleted]) VALUES (N'c4e90d0e-962f-41bb-8276-23d8a393acc7', N'3ab29d49-c707-40e5-b57d-6ccdd8142a4d', N'95bd4941-52eb-48ea-8a31-d326c5824d4c', 1, CAST(N'2020-01-13T20:43:01.267' AS DateTime), CAST(N'2020-01-13T20:58:01.267' AS DateTime), 1, 0)
GO
INSERT [dbo].[OrganisationMembership] ([OrganisationMembershipId], [OrganisationId], [UserAccountId], [OrganisationInviteId], [UserTypeId], [CreatedDate], [IsDeleted]) VALUES (N'08784e81-b32b-4f77-a087-3c07e5431867', N'3ab29d49-c707-40e5-b57d-6ccdd8142a4d', N'95bd4941-52eb-48ea-8a31-d326c5824d4c', N'c4e90d0e-962f-41bb-8276-23d8a393acc7', 1, CAST(N'2020-01-14T00:54:00.310' AS DateTime), 0)
GO
INSERT [dbo].[PasswordReset] ([PasswordResetId], [UserAccountId], [CreatedDate], [ExpiryDate], [IsUsed], [IsDeleted]) VALUES (N'2dec15d4-efea-4ab3-b02f-88e85059ba70', N'95bd4941-52eb-48ea-8a31-d326c5824d4c', CAST(N'2020-01-14T22:23:14.910' AS DateTime), CAST(N'2020-01-14T22:38:14.910' AS DateTime), 1, 0)
GO
