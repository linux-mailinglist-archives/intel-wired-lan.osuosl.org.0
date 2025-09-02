Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DEBB3F19A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Sep 2025 02:36:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 684C7615DB;
	Tue,  2 Sep 2025 00:36:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ORatpfPwWagS; Tue,  2 Sep 2025 00:36:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C52D0615EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756773382;
	bh=QdvDP0gpeOzo3nd863hUszeewihubgv1Wew15yYvVo0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qjBbLp9C6jMQtfajoEmOr3InOciI7mn1PrDKvqrW8dDk0LEFQLxEIlqYtXff6gpQi
	 IoF/Zomae7Nh7jXwUHDFk/kSpgUUiBFTzr+1JtLgpqjEGuaiHoxbOfwnNeM/1Vnd8E
	 nw1R+rUBGT9LvDzPUywgR6/Hb6DwrA6BZj5CXStBTq768k+PHJBqALdQzjFj5ZacRH
	 TMqSvrk7EYdwiKjIxMrAXXCCfaR0z6FVwpwRoE1qj8OE5g/oXOBXHOy8mENwq8CKz2
	 FjorycOMoMI4HGso5Wh5lt78CrlTnD4DLojgsalSOlD2MrpkrPP4kSRBbL1MFM1cLG
	 ZBhg+cQvb8NBw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C52D0615EB;
	Tue,  2 Sep 2025 00:36:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 5079B10E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 00:36:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 41C814049C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 00:36:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KCRd6z5yue31 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Sep 2025 00:36:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.228.14;
 helo=os0p286cu011.outbound.protection.outlook.com;
 envelope-from=den@valinux.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 88B0D40813
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 88B0D40813
Received: from OS0P286CU011.outbound.protection.outlook.com
 (mail-japanwestazon11010014.outbound.protection.outlook.com [52.101.228.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 88B0D40813
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 00:36:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xioh3+e4PzRXrf4cOD1iuuAz+T6DEazpA8oq/bGCyenv9AjC783ZXi0EAea6Cp2cXALUr+bhsNl2hDRaIjpwIp5AELEhfm29gkmTINs4ciPrevIf9r5yqXnjKVIK8oVy581z2FDslDsSk5jANnO7bMGhWhyM0RCH5ODVJoDwCHi7Eyw6a1/Fdgio8yEAPc/g22wKxiW+WHFZ+WvSXsk6czcFNiIqEPGC1EjBMpWSDtacstVnbFAxeXHWwvDxkX3wQ9qU8iFlT0bRvVDHHFXaj2HNN9rWqzfJtPBjAXMyZhaUiCOjK79dLlqqBdKhCWW9+8DEsrWQoJi2AtKiRfRvqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QdvDP0gpeOzo3nd863hUszeewihubgv1Wew15yYvVo0=;
 b=ArRYCBJhhw6Nl+cLOYh9TAGj8B9MrGdYb+/iKR3c0WKgUEC7fNvTSgujlKf1z0N1olMcPelJPWxwJj88JI5Y6Cqk6/aiAh2ISt9bUy/YJQtgUVyYVFPBYBt8uOZ0ANNUxWBQaF2PHkxijka5Zcsl1sokTZT5qOvRTUBHUp9BlHWVUfaw3hiV/FRAgdpSAVrx34YohiS8KZBBZQnf5HjLfOASNIdyPcQ84onindUbKQhJ2sPM0woYYBl8OlR2nKNaSs8E9OIqcSZ4Qq0OwZfmInSty5HkuBlv609HMdoLp5gRTK9QD7FguizS+wUlRdYrPJMKPCa2xhiZ00JydvK3Ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=valinux.co.jp; dmarc=pass action=none
 header.from=valinux.co.jp; dkim=pass header.d=valinux.co.jp; arc=none
Received: from OS3P286MB0979.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:10d::7)
 by TYWP286MB2298.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:13d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Tue, 2 Sep
 2025 00:36:14 +0000
Received: from OS3P286MB0979.JPNP286.PROD.OUTLOOK.COM
 ([fe80::80f1:db56:4a11:3f7a]) by OS3P286MB0979.JPNP286.PROD.OUTLOOK.COM
 ([fe80::80f1:db56:4a11:3f7a%5]) with mapi id 15.20.9073.026; Tue, 2 Sep 2025
 00:36:14 +0000
Date: Tue, 2 Sep 2025 09:36:06 +0900
From: Koichiro Den <den@valinux.co.jp>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, 
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "mateusz.polchlopek@intel.com" <mateusz.polchlopek@intel.com>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Message-ID: <bh24mquk7l3ghs7z4ej4dkeqnq25nlxfcc43l6lq5qftc7wmct@kmfake26rj4a>
References: <20250828020558.1450422-1-den@valinux.co.jp>
 <PH0PR11MB5902C5678F60DB7F088CB528F007A@PH0PR11MB5902.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PH0PR11MB5902C5678F60DB7F088CB528F007A@PH0PR11MB5902.namprd11.prod.outlook.com>
X-ClientProxiedBy: TYCPR01CA0144.jpnprd01.prod.outlook.com
 (2603:1096:400:2b7::20) To OS3P286MB0979.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:604:10d::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3P286MB0979:EE_|TYWP286MB2298:EE_
X-MS-Office365-Filtering-Correlation-Id: 74f6ca7f-72bc-43ff-c493-08dde9b8b559
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?PmPl/XaqH3If2fVdRIdeWlc76o1YXg8Iy887uPc7GLsGxCmGBDcTm10ikWrs?=
 =?us-ascii?Q?d7Cm1vBelg2kbhaDWZpNa/ULuE+o5xpZeKSfm8P0TDh3Ag4j/6yKdiGNn5Nf?=
 =?us-ascii?Q?KyjLioO1029csVP5by21HFyb+dugfjmD3QqeTugtldYjDc3YODR5HKDNnvPs?=
 =?us-ascii?Q?oM4+hkGWN/zjc5UMgVgJcbzUyTDd1xSqbEy9AB+wFGxfbJULURC5YkBGuvw3?=
 =?us-ascii?Q?nnByEic9mhHWkXv8AiRuINZDj45Eb7DmA1h0XAygU55NXK6gB4Z/EDwcLkht?=
 =?us-ascii?Q?2xY54figKsubuZ5PounRnhHIweRiKZwIUGWJs5V58mn9PmzPLk/EbuwrUXIO?=
 =?us-ascii?Q?X4fQfeXkkGDUBuw9X84WRRlSpoooah77MTp0GPmHiq2M6ziVdf01Gg8bKHZ0?=
 =?us-ascii?Q?d+llo2TQUc4xdYdh+e0IB5p1A67Gs4/d5c3rZi1txhMwvfI9P8aAt1GExKS0?=
 =?us-ascii?Q?F/7CkPczjvrr+i6OXiIw6fdBWXSBbkzloo857Y1YpvcbDY9U3nzgQMAD8CLF?=
 =?us-ascii?Q?RVYQXeV40GYuVwJXlFoCjmVs/FSkQkS7H5l4hPRX8Y0Gxm9UI5/2fGL2DB0N?=
 =?us-ascii?Q?NGGkv5+D+qzxBBRYNYthsd+Y6DhUr8R56pr/uOwSYChhXNRv9vRjNNaZA2Wz?=
 =?us-ascii?Q?90K7QEO+qMzPJ2qB9bQoZzan5HubU3ZOm3OsguPqJEwO+Y1ljqNRnwYvN4+/?=
 =?us-ascii?Q?Ryz5KMvS234Nl9fAwe36w3a43Yh0DEt8IkNt3GmJPh81EXSV6iG5dW1CzHxf?=
 =?us-ascii?Q?assUH9YNiskvDSm+UmtfmLnLt445Vq9ylJdPJrU1oBPb+Hx6gxXfAXrauUjk?=
 =?us-ascii?Q?8KNpM1ejtWK/d6OUxdTek6X2NZ+hI0vPKmhIGyDWHu5ZLPreMO40ciXUbLPG?=
 =?us-ascii?Q?P3P2bN3GB+VGcbcXK64XSae5n0cTRmxbf0GH2sHlnHiOpnptBroG5enP60l1?=
 =?us-ascii?Q?8G75zpIZzjBmzF5wNdbxpMrcHmu8rk05VVSrINDUC2cC8Gqw8HhzjrKwmm5F?=
 =?us-ascii?Q?CG8zhTsSYLEVH93VAhW1MsfHsQuVdy17SXlHerwvn1kM81b7WrXi+Suu4xEc?=
 =?us-ascii?Q?L1J/4/bFy3cHziZCVxD4SYiNBuoA06AmkhjDFm0h1E/Z4FV3vAxpnNqGqCCH?=
 =?us-ascii?Q?oSSzhu4ptyP8p+8PiKULYGQ1JlLY7PD35uO0CgNHq29pVTCL5mPSFGW310nh?=
 =?us-ascii?Q?PobE2iOAzGMLuO0xdb58awGmIk9D1sGjwzgctfNXNzVV42i37emMoZ+L08Zt?=
 =?us-ascii?Q?AzP/PNA995de8o6rzHBPTRpQ2cP2zDqLeZ3sB2mk05klk7Th8rwQEsvlrZaM?=
 =?us-ascii?Q?v4YxQZsD75n6+8reSHvlIIes8SIfJefUPE9AEmHcKVOAHMD7aQHFsPOLolUG?=
 =?us-ascii?Q?6zs5VtGx6aXT8FsKk5vs2bM6OrgNUYpHL7+nfzZzDKjebLkmAkdvx9aPTRX3?=
 =?us-ascii?Q?4aFO+Pi7aio=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:OS3P286MB0979.JPNP286.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UBXcuhPAl3vfSVr2enY5DPuVhCcffZzxHo9QBUJ74GcUkTa0zbH28k8iwOLr?=
 =?us-ascii?Q?uuV0GNAVgSl3PML+xQ1ong6g8rEqx6HZrlZjdzD2RUBmUU4AX2BVk/0glLw+?=
 =?us-ascii?Q?B6lyv6ahlcWSZUYhq6vEbAf0mNO6rgZoT3p4UAMt1KIjlKoR59T6lEyYZf4w?=
 =?us-ascii?Q?1U+b9Jf0lOeYTybKwJtMRNx5nSWhxu+qOJFkmvg4EHccJp1nQYqROi22ieNn?=
 =?us-ascii?Q?QMTxrvDlfemCGqfDL2QWrnam9jWH1UQdl6yfRbMqcECuwWS+tGrMR53lXFKc?=
 =?us-ascii?Q?OvjvIKGwqUGHJ8+KvTn06wxwdZYy/yGoTRrUzp9QiefmnORuIdvZcDzTRNXm?=
 =?us-ascii?Q?94zTmph+HVGYroAFiw74DihDxKwemdUZyZ9SBJ/41pX+cL1cETKofGweWq/s?=
 =?us-ascii?Q?3QBYnlFrxQJwP0wN1n2mgMgESAwM5UYptateQ00hKDddUmWi9SsWpnFH0M17?=
 =?us-ascii?Q?ga1Zzp/48nRPEpfGx72ZB2ZfTS2PNOczImcHIgsCtC/f230xOPwq2brapMvN?=
 =?us-ascii?Q?DptgSvTIJb3+VHeoAhTdkbu6m9nTL5u/oa9pZzv5I+7afv3+K7AzH/sFzhCq?=
 =?us-ascii?Q?qAWoXkhAQGXXqVhe/fiV3Lwg6Xb+l9rIbUgFuNGpGnJumcgsC78Ur0Utd3Wr?=
 =?us-ascii?Q?FB7Cjsh0Lc/fATVt897Num/NJqfzEJrQu93ap+Q26DjgloaPkg5h9ooo/S5n?=
 =?us-ascii?Q?tJTqmfV2875TGvvP3S8g7URyx9tk9S0MYOfp/JqfsfVFQYWmPoMS3msO3k9W?=
 =?us-ascii?Q?SSYAY3UDcAEDvagMFNt6gFiJp4CyexMTHgzERBz88ZNgCzEF7N8pmCRJ+AVv?=
 =?us-ascii?Q?9p8m5UO+jXsoxp6qAdLadHn4LkOrwFCnwpbkgdVyMvcUDHjucWzoME2FcPlz?=
 =?us-ascii?Q?XlE4haLUUrTMs4t9aTDcQ2YGipUet4FKGbdZOu5D9LgSpsC8Kf+8cQNgK+c5?=
 =?us-ascii?Q?05K1xbO/fAEdcVvN3TJqeYvCUuz/hAUMCgB5hNlxq4iJdYukTvceycQbgVXc?=
 =?us-ascii?Q?NFiTRNaOzO6HTTkDn+4U9/npPZ3JR7/SSCfUDsDpHNHI9gTJbnqQUH9DqZ+C?=
 =?us-ascii?Q?a7wGgaeWdHwuSHumccH+3c5PoMv+zhN+5l7QdA2vYmGw93LjDTlc6rKSHV0h?=
 =?us-ascii?Q?x0m+BVsCBXui0N3Y6MNGPYOqpEu7Bm76FtVV0LPnqoTvHX29TINAHK8Yhpaj?=
 =?us-ascii?Q?LqhvA6DzVWLAKyr5yDjiaE94D9yJ0gPSpOM7IETcK6g0pE3SjFOn+Gl62ZJL?=
 =?us-ascii?Q?PlZrGDLMAquRt8TZaxub5iZ/SEaTLQhfwFU63vRTApB65ectegg5Zu2V4+W6?=
 =?us-ascii?Q?m3HH5SFa33WYGpt4IytR/oGg3w0ciStgyrfWfT/4W3E/dJBfWCT/8RSmrPhv?=
 =?us-ascii?Q?vcDEiZxQzDdjkfcY05VN4yjJzRimnAodoBCk0Ie5H2wX+27HhtwX4CCVoKtf?=
 =?us-ascii?Q?HaX3f47kofY9EDQljaULdjLe2tzr7Ci1HoB+2Lp26ERyDKRl1oX83/o+JffB?=
 =?us-ascii?Q?uYyUXi9v69LK7a1F3ckRZ6YhGC6p+OVi1Gq+tUGWi2/Ogd0ZMGQ6Dv/8TsqI?=
 =?us-ascii?Q?59NQrw1YPner1KohtZjkhhG+WMMR2WSEfUYgy6YrVErrZJ5RNCW+bNZohY7r?=
 =?us-ascii?Q?seUeUjzk0RS1tywh2cgpfj0=3D?=
X-OriginatorOrg: valinux.co.jp
X-MS-Exchange-CrossTenant-Network-Message-Id: 74f6ca7f-72bc-43ff-c493-08dde9b8b559
X-MS-Exchange-CrossTenant-AuthSource: OS3P286MB0979.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2025 00:36:14.3647 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 7a57bee8-f73d-4c5f-a4f7-d72c91c8c111
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m2ZTGdDPSeadMjTUuYLNt2LQnPfzZbw6ruhns2Eeb+/IM+l0RG+9MWVLC19fue3YrlP99SUFsnpCwiHedUrz+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYWP286MB2298
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=valinux.co.jp; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QdvDP0gpeOzo3nd863hUszeewihubgv1Wew15yYvVo0=;
 b=SuC+2/X6oItzoeK5S4Wsp82ONU2CqEbj6FdLY9HoOzJ1oWPZgZF7gI6qbiBNAaa1813MioZIogFllcRWSlWdpHjhI5hD38qa5MkFsBkDHmEjZcf1I3HV4eOZwlG7+5CmGwaaEAi3d1n9FAxi7Rw/DVbwL+NuMMS9VrShrncEZuw=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=valinux.co.jp
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=valinux.co.jp header.i=@valinux.co.jp
 header.a=rsa-sha256 header.s=selector1 header.b=SuC+2/X6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=valinux.co.jp;
Subject: Re: [Intel-wired-lan] [iwl-net] ixgbe: fix too early devlink_free()
 in ixgbe_remove()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Sep 01, 2025 at 07:53:54AM +0000, Jagielski, Jedrzej wrote:
> From: Koichiro Den <den@valinux.co.jp> 
> Sent: Thursday, August 28, 2025 4:06 AM
> 
> >Since ixgbe_adapter is embedded in devlink, calling devlink_free()
> >prematurely in the ixgbe_remove() path can sometimes lead to UAF.
> >
> >Move the devlink cleanup steps to the end. KASAN report:
> >
> > BUG: KASAN: use-after-free in ixgbe_reset_interrupt_capability+0x140/0x180 [ixgbe]
> > Read of size 8 at addr ffff0000adf813e0 by task bash/2095
> > CPU: 1 UID: 0 PID: 2095 Comm: bash Tainted: G S  6.17.0-rc2-tnguy.net-queue+ #1 PREEMPT(full)
> > [...]
> > Call trace:
> >  show_stack+0x30/0x90 (C)
> >  dump_stack_lvl+0x9c/0xd0
> >  print_address_description.constprop.0+0x90/0x310
> >  print_report+0x104/0x1f0
> >  kasan_report+0x88/0x180
> >  __asan_report_load8_noabort+0x20/0x30
> >  ixgbe_reset_interrupt_capability+0x140/0x180 [ixgbe]
> >  ixgbe_clear_interrupt_scheme+0xf8/0x130 [ixgbe]
> >  ixgbe_remove+0x2d0/0x8c0 [ixgbe]
> >  pci_device_remove+0xa0/0x220
> >  device_remove+0xb8/0x170
> >  device_release_driver_internal+0x318/0x490
> >  device_driver_detach+0x40/0x68
> >  unbind_store+0xec/0x118
> >  drv_attr_store+0x64/0xb8
> >  sysfs_kf_write+0xcc/0x138
> >  kernfs_fop_write_iter+0x294/0x440
> >  new_sync_write+0x1fc/0x588
> >  vfs_write+0x480/0x6a0
> >  ksys_write+0xf0/0x1e0
> >  __arm64_sys_write+0x70/0xc0
> >  invoke_syscall.constprop.0+0xcc/0x280
> >  el0_svc_common.constprop.0+0xa8/0x248
> >  do_el0_svc+0x44/0x68
> >  el0_svc+0x54/0x160
> >  el0t_64_sync_handler+0xa0/0xe8
> >  el0t_64_sync+0x1b0/0x1b8
> >
> >Fixes: a0285236ab93 ("ixgbe: add initial devlink support")
> >Signed-off-by: Koichiro Den <den@valinux.co.jp>
> >---
> > drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 8 ++++----
> > 1 file changed, 4 insertions(+), 4 deletions(-)
> >
> >diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> >index 80e6a2ef1350..2b1f3104164c 100644
> >--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> >+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> >@@ -12090,10 +12090,6 @@ static void ixgbe_remove(struct pci_dev *pdev)
> > 	if (netdev->reg_state == NETREG_REGISTERED)
> > 		unregister_netdev(netdev);
> > 
> >-	devl_port_unregister(&adapter->devlink_port);
> >-	devl_unlock(adapter->devlink);
> >-	devlink_free(adapter->devlink);
> >-
> > 	ixgbe_stop_ipsec_offload(adapter);
> > 	ixgbe_clear_interrupt_scheme(adapter);
> > 
> >@@ -12125,6 +12121,10 @@ static void ixgbe_remove(struct pci_dev *pdev)
> > 
> > 	if (disable_dev)
> > 		pci_disable_device(pdev);
> >+
> >+	devl_port_unregister(&adapter->devlink_port);
> >+	devl_unlock(adapter->devlink);
> >+	devlink_free(adapter->devlink);
> 
> Thanks for finding and fixing!
> I'm fine with putting devlink_free at the very end of ixgbe_remove,
> but wouldn't be moving only devlink_free enough?

Thanks for the review. You're right, let me send v2 shortly.

-Koichiro

> 
> 
> > }
> > 
> > /**
> >-- 
> >2.48.1
> 
