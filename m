Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C197903F6C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Jun 2024 17:01:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 55CDC6063F;
	Tue, 11 Jun 2024 15:01:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rG7LuHqwxjyD; Tue, 11 Jun 2024 15:01:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1816E60897
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718118066;
	bh=EqCYcCjcibrALEbcYZKTf2OR9f8zSU3UTxesJV680wM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=z9Zs8DCRzcxIT6DkqyGdr9Ad6oeN+DkR+vlEjxM0M71//taI0yLNR5nOfjWvDpNsJ
	 kjeDdjIJKIR8wi+m+iquQrYM5lsmFH2vmtDZH8hDsscnO4H4QEocHptLy1SCE3LpLG
	 CN1tm+dkPeZlJ1asbmpYR6OyUa68LY5XbGB7Jb5Nnh+xqHDjxfv7TBYMcmFdkP3vWV
	 Pv7TLPoFlkEWZ/YhWik/DABcGm6lKu0SOQI8IYO7yGyN2BN7UZMvjiDmDSeNY+Bupz
	 QXO4hUscj1dWlrF11W3k+W5FK48l0igRpMfAuEdBH4lRu81Rz/mOtVGokHkRPvyCEZ
	 3rZEd3cs+/tDQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1816E60897;
	Tue, 11 Jun 2024 15:01:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 485A91BF39D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 07:25:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3499D60725
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 07:25:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kF3klAcITTDq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Jun 2024 07:25:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.220.126;
 helo=nam11-co1-obe.outbound.protection.outlook.com;
 envelope-from=louis.peens@corigine.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D42F9606A5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D42F9606A5
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2126.outbound.protection.outlook.com [40.107.220.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D42F9606A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Jun 2024 07:25:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PLKbDj8m/vvuektI/1xj/BHTX+dP56IAYdQReYQJuMXECa5vTEbuzuo21hDAuUAfGiGKQ/jJSa7GrbNremtGg/ASnzYpiXSfQMk0Xe0VAbXKeEtU6OIy0mh5tZSDafpvOCPq1LBwZeMekQKhfwJD8MMIbdOYDrcMFZqMs4p6941WprJmrfMvjPuclDToi5HROmSDzDKz+lwzmxhTzIOvOvrLO4ZvjKbmbS2LArUh63yn8EtnbQPLUTMewmjDOHjnf4X2FxmrDEN5jjBBNobOL1/KY94E08dWzNGEwY+vQ0L9HyeA5Sc7xZXrEPWL33BABvcaNYL3/8BuBJNbvlVYIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OADgyRF36HUIHvacjvGY+5OdTwX2ivFbmeyyPFjiFA0=;
 b=JLfMAMAa7OQ8P9f5ubPpb6/DBA3LG8sg7CeO9m4aGFmtdbev5RpNKhhgI20mZGUMietKVkIwdvKanUJc0Y7RxPtK7qx/r2NiVRzdwC0dpZvQRP2mMaD4010gG6VJeB+IvxbMiHVrKYCf5Xfm0lgkeVtIr2zV8swcXq7t9cA5f95I5RdwqVBSIsj+TLvg9MEdHkpOBy4phmYnXnDGoFT5roWCuFRgWiFQ19iKFdpCIZ3DcUJb8BME+rRsCcYaKZJml22Vrt56ogrTdFj/FeW0MgdpnO6u5Xhuliud0eLOgY6Llyh0TkOPXNtzKg/2IOe0xZzYvGCxFh73Rc0v+Am4fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from BL0PR13MB4403.namprd13.prod.outlook.com (2603:10b6:208:1c4::8)
 by SN4PR13MB5810.namprd13.prod.outlook.com (2603:10b6:806:21a::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.17; Tue, 11 Jun
 2024 07:25:06 +0000
Received: from BL0PR13MB4403.namprd13.prod.outlook.com
 ([fe80::bbcb:1c13:7639:bdc0]) by BL0PR13MB4403.namprd13.prod.outlook.com
 ([fe80::bbcb:1c13:7639:bdc0%6]) with mapi id 15.20.7677.019; Tue, 11 Jun 2024
 07:25:06 +0000
Date: Tue, 11 Jun 2024 09:24:51 +0200
From: Louis Peens <louis.peens@corigine.com>
To: =?iso-8859-1?Q?Asbj=F8rn_Sloth_T=F8nnesen?= <ast@fiberby.net>
Message-ID: <Zmf7w+N5MdF4KMg9@LouisNoVo>
References: <20240609173358.193178-1-ast@fiberby.net>
 <20240609173358.193178-5-ast@fiberby.net>
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240609173358.193178-5-ast@fiberby.net>
X-ClientProxiedBy: JNAP275CA0065.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4f::7)
 To CH2PR13MB4411.namprd13.prod.outlook.com
 (2603:10b6:610:6e::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR13MB4403:EE_|SN4PR13MB5810:EE_
X-MS-Office365-Filtering-Correlation-Id: e63da1e8-a65e-4d4e-2b8b-08dc89e79d8c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|7416005|366007|376005;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?TCkfVThjHex76F4KDCb0f/nunD8yiA9W5JxhhKslVt8v6XWaGpbjIsmgIC?=
 =?iso-8859-1?Q?035OvBjVb3MDnQmOF4VxbLZ1KYIAfPMB8HO7E0/2/iQXDg5b+QY+fbQYm2?=
 =?iso-8859-1?Q?AbZXvPr6Moj1by6mzyCQj0qK/Gyo1AnXMnWBhR2cURQdxaarCySHDOHYVp?=
 =?iso-8859-1?Q?9IhcXORP1yzwcdIGzCofqoAeufNFuX0Z8RWG4IYMKTI5AZpC+3CIMCXneK?=
 =?iso-8859-1?Q?yCsNxj9BfFa+6lmnT0QtE333DCH7z7XRZkhjjHCLD0uSMnfkFAPeOIxgR/?=
 =?iso-8859-1?Q?G2+ZOyjx+n4zxZdES+IkBlvF0DIsgX18AMln4dIu8CbMgJ+EEnJBamRtE8?=
 =?iso-8859-1?Q?UAbvFofn8gOwvTDfQi6iyhKDckfRf+6/5n6IKqjFN8LfCizDptYr8HVBVo?=
 =?iso-8859-1?Q?22vYh4JdwXu50Y3WQgq5FWt/SKqwAp/SAvxBW8UKUIxq67QQERFnKBZTh/?=
 =?iso-8859-1?Q?wIkB9DFxGRX5P5DvhH06AMOQ2IsJkirl2kgpB7Lth5wSO4uKT3jqEvN7y7?=
 =?iso-8859-1?Q?Sg72aIfCEtDJN+dczRZSRmeVV1ZrhxBA3kn6ALyjA4NNt56GElmMYnKSaU?=
 =?iso-8859-1?Q?J0K/K+wAKyPqpGDf7PCKKTpgGV6H1Iw+3F5yTos4wtLohYKlyqTLcvBSl9?=
 =?iso-8859-1?Q?XjsyfOjNSgY3TiwI3qAwxDW3pWws1QzcFfqqtrnzwYiZ/+EDhYSe77FnQ2?=
 =?iso-8859-1?Q?P2CLGJh83GuYFcktR2Umtyg4JYv/7HRvH8h4jhfOhFqhBWCKiSVU0HX0Zt?=
 =?iso-8859-1?Q?Dcbkoo0flOyFrCdeNv13g5Pw4dZ8kph1gQg/wlH1N1ulmO7gfka+oJ0T1Z?=
 =?iso-8859-1?Q?XGozPk93852Q6yS2P5wkwmzD+S+E1wm9CjsUXIBAc3MRewvEz2A1ezfpKI?=
 =?iso-8859-1?Q?ILgNHG967ODB+p5Q6PeJzDPliGSuLxVJruIPW+5QUpoZI0GdwA2kSssdRQ?=
 =?iso-8859-1?Q?QgXlhdivMxP+KzAQIg8I00zaN8uxeNMuExgT/rguWc1e3ULwEstKQuYZq6?=
 =?iso-8859-1?Q?QjbJTceKBzqM17p0jVSNl7sWULhwiOkJPIy/Vi4XgAZtBYdLcviIgKywBl?=
 =?iso-8859-1?Q?4xRbBwx7j/kF3NV9LouXIEge6GmlZBF5l9LtA9bE3qLPbdjW6ij9Lr+YIh?=
 =?iso-8859-1?Q?IW+DPobYjLVcFcuNXMH7p8Ylj4hUiTxitjNCvziUp9tFWm8Tsl2f7+e0Kn?=
 =?iso-8859-1?Q?ImtvJMqWjal+LwPICWBxUU0C5R1Dc2qpeFQ16Qj/4dV4ZHPF3iDqv6+dLQ?=
 =?iso-8859-1?Q?1eepK6xoHFCR1zlU6dA++e51FhumYf4Hyoksg4MIqq550UriqUsCWzO080?=
 =?iso-8859-1?Q?UobBDhcT9VZ+Jc2hxvOmAYpVlA1gph6mzSoUARx3GYZxrbcsTmNY6EGpLp?=
 =?iso-8859-1?Q?kIyXLZvubc?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR13MB4403.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(7416005)(366007)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?45E0E67n3188+bIFbrxTorBHnsyClv7dvb7nKNmCiU7cgybmnQ7Zlmdxhd?=
 =?iso-8859-1?Q?pqQe6qwoQzgKLIeK15NYJhc7WjXBBaeAGEv4VYfNgQjnreUET/Y+PL3JxG?=
 =?iso-8859-1?Q?Kh6VKd0aaKhBB+8MbQTxjGEN4MuqIlssaaBKyj2hHdonGt3GrKhwgkAwmS?=
 =?iso-8859-1?Q?paYQmKq5tV90a+BWcp7u2YwoUuyQQMrMkGvtJ9Zk76y9U3h1rgcn/eRvZ+?=
 =?iso-8859-1?Q?WOWHyid/v4rwK6wJZhv/hQp6Ji51x6e8gSI1H/dlOuasDOvKin/pqKbYiL?=
 =?iso-8859-1?Q?sDw4ATUHYE1bas4k6JCgl5igThp9ZQuMDWMT3a4Fib9WFeMkN2vEGXIGPk?=
 =?iso-8859-1?Q?kU+4sc51+lRxsUErU2PpULOYJX/pKyzEjEDT5J79MwRNic8gIVZkIMU9z9?=
 =?iso-8859-1?Q?/J155nWo5ExJDtbbNXoaHwWoUa2KFkmb0bvm7//DLKeukrm+jcoHUBTPT8?=
 =?iso-8859-1?Q?RG+i2ub1CkYKN1imQUDiGnvXrdwoHLTKDObLDNcnf/JgYnrN6VRk51q5pO?=
 =?iso-8859-1?Q?+1lhMS/68DagleAC+J861EcKwP5vlIWOUoBMuZyfRX5JXWH7zoPi6R5NGE?=
 =?iso-8859-1?Q?2F/ZVcF3pG0odNohH38c7bBbYc8UeJ+UfbXGo6gxARNO5BlMYMa64bgKP8?=
 =?iso-8859-1?Q?C0lQQgDciY1wr5NwPy/fQVtJL3gvegx7Rrd+hbvVJICfRwhraQ11p9DITK?=
 =?iso-8859-1?Q?08pKCnBkbG/2FWNDAQg9k7kza1aQAnC+aBpzIj/CySVbCjgW2Zu9Qg80Mt?=
 =?iso-8859-1?Q?a3j3khol+4s2DR2IN4P2lYHvvJGRbXdQDo/9/z0d/jdYBHYr0dYH5Y/ix+?=
 =?iso-8859-1?Q?v2RQ83C0q45f9D2JrSAfPBLx7zvKFOst3E827+toKj+wS/8wWKDWlXH/BB?=
 =?iso-8859-1?Q?qsD7UchFxYikdyG8/YHiwrbemV7HWfj0IM6MMQ6o3nPnHEkhF9npgpS/L/?=
 =?iso-8859-1?Q?KObJlWVuRqE8ayVGC1EpUmEmmwA7VT/7Nh2YM75ps+KB2A1NIV8edR/ffa?=
 =?iso-8859-1?Q?2Xo71CcxDqDk6ysFSY38tsVIr+3yoRvjJ2yfLvpF5yRM6ytLpHUnbCsbaV?=
 =?iso-8859-1?Q?ue4BhaOjIHeUZuFa2c5IRuQDzccZAUqOVyBAxacBxTt3tKkAw+0dYEXF9l?=
 =?iso-8859-1?Q?+O7eESLwDBLDZHqBAtnyiADCMWIl9Cer2IBnQHkG9JvX+jfR9LlzxTiktf?=
 =?iso-8859-1?Q?tgGMVja6f8SQsNxKlKJGi+E+8ERcVKGgqJEJ/5Fp/QPsgaxTBnJ7AqA/iw?=
 =?iso-8859-1?Q?TQ+H773jX+HWdllMOzN+V7swg0O3iKZlUIvL2mziGvFlduHJJPdBUHH5vS?=
 =?iso-8859-1?Q?5bZvIRcJXIm3/dbcfNCdCbl48S8HEghTOdGIXbfTTYzAlS88mLgWLDS0vp?=
 =?iso-8859-1?Q?VtElIjvtCFV/gvIp1LwaVGWUtEgFqWTWPctDpbb7IPlKe3DSUW6aSh60Gl?=
 =?iso-8859-1?Q?/Xos7SvyNpB0vwbmvYFsEhu/UZqk7RgpOouPykJ2R4bWxVyBhi/Gs4xyUW?=
 =?iso-8859-1?Q?Zb3LDc3qbK7ZkSkK0m54TksEO0kohw3hrZzX+MrH7iDqcvju6T9qfymXHV?=
 =?iso-8859-1?Q?rUhsl5eMAtMLx6dMIt0qY3UJbqfJwkPHxChw3WAvehE4XWilsyr8dsGJ6Y?=
 =?iso-8859-1?Q?dREWQZDbrpmDeZ73tducdhrRM65xYh5CHJcW7dqzkYPuq66GEXKYfaKg?=
 =?iso-8859-1?Q?=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e63da1e8-a65e-4d4e-2b8b-08dc89e79d8c
X-MS-Exchange-CrossTenant-AuthSource: CH2PR13MB4411.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2024 07:25:05.9437 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bV8Veq65pJSvYPo1tMYUKTv4BhEITuhXZ+56UPdIjoh7Yf/32FUSXWpbhRuHbXtT+2iBSXDpRvYQ+l1yEzrgPMPuLx4R5cJ4f4klVUI94hQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR13MB5810
X-Mailman-Approved-At: Tue, 11 Jun 2024 15:01:04 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OADgyRF36HUIHvacjvGY+5OdTwX2ivFbmeyyPFjiFA0=;
 b=ARmqufDTWJIbidcERBNuyFOQmqBVWPzF3v3ETk5+NUrvWBWCye7hp3ed2BJ+u5udKe5glqEZ9cBUPy2zIpOSrbsVIbSZ8EJCiQmZxVMjmnFS10/R3XJTS/Twn5ZgbHSE5sWCdApepbKqVzl0XACnz7cxDg/1WQhyboYGtZmIjmY=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=corigine.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=fail reason="signature verification failed" (1024-bit key,
 unprotected) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=ARmqufDT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 4/5] nfp: flower: validate
 encapsulation control flags
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Davide Caratti <dcaratti@redhat.com>, intel-wired-lan@lists.osuosl.org,
 Leon Romanovsky <leon@kernel.org>, linux-net-drivers@amd.com,
 netdev@vger.kernel.org, oss-drivers@corigine.com,
 Tariq Toukan <tariqt@nvidia.com>, linux-kernel@vger.kernel.org,
 Edward Cree <ecree.xilinx@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, i.maximets@ovn.org,
 Martin Habets <habetsm.xilinx@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, linux-rdma@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Jun 09, 2024 at 05:33:54PM +0000, Asbjørn Sloth Tønnesen wrote:
> Encapsulation control flags are currently not used anywhere,
> so all flags are currently unsupported by all drivers.
> 
> This patch adds validation of this assumption, so that
> encapsulation flags may be used in the future.
> 
> In case any encapsulation control flags are masked,
> flow_rule_match_has_enc_control_flags() sets a NL extended
> error message, and we return -EOPNOTSUPP.
> 
> Only compile tested.
> 
> Signed-off-by: Asbjørn Sloth Tønnesen <ast@fiberby.net>
Looks fair to me, thanks.

Signed-off-by: Louis Peens <louis.peens@corigine.com>

> ---
>  drivers/net/ethernet/netronome/nfp/flower/offload.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/net/ethernet/netronome/nfp/flower/offload.c b/drivers/net/ethernet/netronome/nfp/flower/offload.c
> index 8e0a890381b60..46ffc2c208930 100644
> --- a/drivers/net/ethernet/netronome/nfp/flower/offload.c
> +++ b/drivers/net/ethernet/netronome/nfp/flower/offload.c
> @@ -321,6 +321,10 @@ nfp_flower_calculate_key_layers(struct nfp_app *app,
>  
>  		flow_rule_match_enc_control(rule, &enc_ctl);
>  
> +		if (flow_rule_has_enc_control_flags(enc_ctl.mask->flags,
> +						    extack))
> +			return -EOPNOTSUPP;
> +
>  		if (enc_ctl.mask->addr_type != 0xffff) {
>  			NL_SET_ERR_MSG_MOD(extack, "unsupported offload: wildcarded protocols on tunnels are not supported");
>  			return -EOPNOTSUPP;
> -- 
> 2.45.1
> 
