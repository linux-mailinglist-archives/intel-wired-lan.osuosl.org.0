Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2ECCB43AB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 00:22:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 013266178C;
	Wed, 10 Dec 2025 23:22:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J-LxFubSK0Zs; Wed, 10 Dec 2025 23:22:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4337A61C1D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765408923;
	bh=Fi2H6VcYbFhB2T52ff2iftV2BMaAxg/hpGfA8F5iIPg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eqEjbPO60dp0flnJxEChZ25W2Ryz55XvW0sFynQbeSARW+bnSYhcxSsIKFUm7xLQR
	 vhHdL6OyhXX8TrnY1x155PsuCQQxzDg8pNC1AWFoukFQc1uZq8ta667OFb1Rv/yKyU
	 pFU98wn4hb8keWXGKHG3kdk2EJFIiXSsStoxjWNWc0tXJgecczYW6LipZOPKOJvA+p
	 Er5Df3qV+RC8dXkSFMSPnZ8/P7cgr7fbr8Cc3kGyGVZSKs7dhPaL9i+unLhvpRcksf
	 E7OSo5ntVHlhuQEKjJIjctO1nofmsFn8oqD6Pp4L0VT/Z/wt6Nkibftc8vTbkj2xrS
	 kylsBMgPPmOiw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4337A61C1D;
	Wed, 10 Dec 2025 23:22:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 35488E7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 23:22:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1C008611A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 23:22:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cboZ5sGz899Z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Dec 2025 23:22:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 795BA6070E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 795BA6070E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 795BA6070E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 23:22:00 +0000 (UTC)
X-CSE-ConnectionGUID: sSB5zLh3QuOZQIJKB4D9Zw==
X-CSE-MsgGUID: Ntk6wIPhSKGQ3G7hyvLFtg==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="71236365"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="71236365"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 15:22:00 -0800
X-CSE-ConnectionGUID: MMe2HT/yQAmI9QkBmpfrhA==
X-CSE-MsgGUID: reDwXpYYS6m+LVH9i2RfGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="201566889"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 15:22:00 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 15:21:59 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 15:21:59 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.41) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 15:21:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xUALpu6n+lxrLjbw1vKMQOzI4LroabtumyqTKfpLp6yhl8UJoANX35WiBqcVxAV0H1dSIkMOtZaP1m8P852+O9xNaUeCFqsi5xA+ehUl2nEoy+/CMinFQyQA4nxaygAzvPI4z5jtJu+vKm9Wcd5jy1b9tqr0IQxEMA2+tp+0I9pAnfm+J4EIPhcXQ1vGqkEPZtBHQWEGjeitdjJaDH1wMVbwYaHDOg4o2vkUAoemqXQCMb9MbxkgI8jnWbtBzqSpqTgWpYED5LWCBoUB04STu7whA1D7fB/jMpxFx+8Abgr0M3Bf3iDigx8ISVO///LoFsn9XdZtX3Bjgk+31+YYVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fi2H6VcYbFhB2T52ff2iftV2BMaAxg/hpGfA8F5iIPg=;
 b=E6cVaNsGoPBUscmBnX0pcak1w17otreQXbE90qx+VUGTc6lQ2oexK/u5Vk3UL8g7KOH0+5Qbv2/ykAJleLcJhqHMGjSqIJz4/0ENdu+GsTdU2+4k4Qqa1Q8P9bESzB85Al/Xu5/LPmSUp+GC8fRqaNNGHKgWXSYsS0rjfu0A4CXVOPI2LeNKuO2yssuOxgYm34Tr2onTqD/KaZi+ccOFzKI5bXCsC5vB7teedQJ9Rh3vGjmFdd0RnIksAZnDndQWO3wyn42Q0+2/26ZqxB1chceTY7Y6D9hKBoufKGMjDZKeqPPvRlhafmeNdcxKnr9/i/TxRzyQhKyD3Eiz7hGYnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by SJ2PR11MB8451.namprd11.prod.outlook.com (2603:10b6:a03:56e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.6; Wed, 10 Dec
 2025 23:21:57 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9412.005; Wed, 10 Dec 2025
 23:21:57 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Hay, Joshua A"
 <joshua.a.hay@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v10 09/10] idpf: avoid calling
 get_rx_ptypes for each vport
Thread-Index: AQHcVDToZOmBON8UG0S+aR/ma6XBMbTwL2MAgCt/aEA=
Date: Wed, 10 Dec 2025 23:21:57 +0000
Message-ID: <SJ1PR11MB62979BC8DF1A2B7F11E9781F9BA0A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20251113004143.2924761-1-joshua.a.hay@intel.com>
 <20251113004143.2924761-10-joshua.a.hay@intel.com>
 <IA3PR11MB898647860D2ABF168477FC02E5CDA@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB898647860D2ABF168477FC02E5CDA@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|SJ2PR11MB8451:EE_
x-ms-office365-filtering-correlation-id: da04c33d-143a-4df7-4f9e-08de3842e9fe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?AvPM1NcnbCQc+39+HFLY5rWsAHnn21JNLtIDpglXqZlnSQ/uXquujqvr+vb+?=
 =?us-ascii?Q?/2PtSV2WxbXa4BpsCI8R6HjQgvxKF+8OAB4/YeFWnC33oIDhLD09O+TR2+av?=
 =?us-ascii?Q?ZHJvV2svGeqSD1PxaqtGtUCN5EjuYWKXl8Je2gtP0zMWFemiRE3cjaAog8IK?=
 =?us-ascii?Q?gx0EG4Hr0G9c0Vs3hXDLObKiR2QbGYaXxj3Mc+1HZFt7tay6GZAy0EQzkCbs?=
 =?us-ascii?Q?ELTwqFnIw8yMt3OOu+Gk3y9WtXVixX4n/Ox//XhttLz7xDK//YwirgQI8uNm?=
 =?us-ascii?Q?8U3A2R1P4MBtvxvqD4tNtCq0bE9LENk63ObdEPygW/6d03spsTcFb0/bqz0K?=
 =?us-ascii?Q?793koqQr4kmZpjh82QCexQiw6O5vsLG7xVM/av2tp1aP3grRoZaHGSrRKbID?=
 =?us-ascii?Q?NNI2KluWQ9a1LWwcAWCcLpyQLNTmKPmnC68wh6fmn80+AR0uvmFNPC1sJ4S1?=
 =?us-ascii?Q?88Rc2SUvjkSAmAZG1m2cjxZg5denS5tAihE3KVUH76oPgasWCX0cKfl+Dqj4?=
 =?us-ascii?Q?BzxgnQekcUDJDMUx9HkUC5Q8epHtvcyxKgosAr2zLE40hcR5QwfyUgPxgg6T?=
 =?us-ascii?Q?BTMydRkVEe0VfDK1FaYJKC6b2ke1zwNSrJGnJ639zeQQdFa1ivOIq3Z8VHwW?=
 =?us-ascii?Q?VWV7zjQzT3t40S3tnUQd6efGYanMDdfEIhPNPn3yHNJM0xamTwwDPbDrQqJg?=
 =?us-ascii?Q?IjvA8IR166RGDXOI0Sk8vllwv27a813lXUZoSeSoUQlGINNZb0Dt1pZ+uq2v?=
 =?us-ascii?Q?UEJkjYqe+Wd/lRkxHVznHyRF3nmxRAYRMXgaMdEZkkdwMVPlfM8Gmf1N3Kp8?=
 =?us-ascii?Q?irK+8+UND+aX6IplTq/aK8HhU/uR7WS09tJmfhraHk4l3NHllpiKLkE8aMX3?=
 =?us-ascii?Q?xjWHCiZiUdtDsLOl2jVpy3ndZjWIDA9IgdnAvfvqoIdMv4NyNM7Km4zs0bS9?=
 =?us-ascii?Q?4aMKTN3tfaM8ymF3pJHWZkjX501/DZctS6LgsJPc7JTH267f2RvOPtCotATM?=
 =?us-ascii?Q?3hUiJ+7T1NSh5Cd+b/XtHz0zXRj+gi1605EJ7I6bPdPohD3vclApFPv3mOlT?=
 =?us-ascii?Q?5GFqWQE5Wj2AsxgyNnKB8mTIXhFkOhHguVfRaxjsoIA6VwfLYdudoVcCRVuu?=
 =?us-ascii?Q?okkSVsbV66cu6hxbPCh4mHhSu5LN0ZoAQN9eC2M9K9W3Dv0j2eWnw1Lpflno?=
 =?us-ascii?Q?3yg3io8q5f5Fa3zr4Ju3QScsYhhlm+vILOjSBup5WRzDrNh49aK5Y3NYEH8r?=
 =?us-ascii?Q?4R6qlHOnlJUmGPSTEazjoXZvu6bx/oAlnUaqtDZEI2VIp4pmg3MSjzr1SCvD?=
 =?us-ascii?Q?1/8AiL8yVdSdVrCIGyCRyI7yyRqwqxlc2VGzMJsp+cgCDWTItE1j8dwg1cvM?=
 =?us-ascii?Q?BNRX6dXisCtgD9ksxuidAatQU6QAdLLRMob7RQFiIKkqNSCLwLZrl6Z6BzSV?=
 =?us-ascii?Q?fubN/PP3p2hQOXGMSkw8mw3Jvf9ArXe7AhRlkiN3SQaO6GpW0Pp8aG0Hz3mv?=
 =?us-ascii?Q?sbzH8CfFqVx0coyk+wjviIVuJs9cbDCEbmIW?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hAec2umfVrhBHYxWHnGYuZ8Oo8gPCSwYd+NmNH3KwQjOb2h3VZgWv7cf1OaM?=
 =?us-ascii?Q?WgmbqOkpbUnkJCYaIMKVHu7rQhu8sdmM2w3z36OH/2rMtpr8PLQ5rb1lgwWj?=
 =?us-ascii?Q?UZtNA+/d8b7kchKda24rkITt7ahv95gfNX4fV86D+iwRWtngZ1XikDkKz1tN?=
 =?us-ascii?Q?WZIxl8qj8wdO3cNRp1iNna8RVm875LNE2BAeinC4eh1A/rCx8C98plpjNzub?=
 =?us-ascii?Q?gZQFMtrYv7hLMcJsutZv44UnmaDXxSaQ18cmfKgZr2ZQq/97SwkEm6Tm3C9y?=
 =?us-ascii?Q?UUMNETylGfu/Kk4dMB3K0WrZ93Ip4k+4TIy2HO0tUrOxCHOAF6trWKjCTrj/?=
 =?us-ascii?Q?4fZZXi236Br2K984/MTWhIGyRb+MOmOMf/4wzP/Ybgo4Yn4JB+oxBVtRlIF7?=
 =?us-ascii?Q?qwr6MGz1oO73UnCZDhH/gQwpSkOjNFFtIo24uuU/7zcXqeoKw9iuWN9KfLuY?=
 =?us-ascii?Q?IGjcByFpemTMDdpRcD9nu7HsTTNdk7p1wQ6ApBUGB2d/1bRZ/Wq1JFReKWWw?=
 =?us-ascii?Q?tgIKvIt6s9l9Ref2PMTX+WO3aX6kgQY7OtR4E2ysEXSJIXM2WVBdWwPqDkH4?=
 =?us-ascii?Q?wN1tN2VPCT9Slf1cHCnLjk5qfwBwsfPv4vgQjOtPuUJAs2QXexFTWJnaagCM?=
 =?us-ascii?Q?q6AFAziBbnCmLdg9y4Xuk+5YVtILlWyRuiv0f37MYfGret1IjoK+bM03Kxhr?=
 =?us-ascii?Q?/EKf4GKS+CeNr2aEJ/EOPVK9jMJGyUGQuy05cJz6VV/OtPfmejjBO0DUIpO6?=
 =?us-ascii?Q?fHa+oo9e5oVbN3TppJ2DbAjxfWPg7+/CoMTJ3+tWFQP0y730eTs1iAThjzff?=
 =?us-ascii?Q?hpWl5nHvbWMU7Jxls9lwxXCrtXdFMbkKwdlkfqL41LOml4y4iGqwA3R17PD4?=
 =?us-ascii?Q?XIlN28U7yy3Z3kaoURW7UKIe15DCyhf07JQ4VKBD1gl5CN/AJPn/AdZVAsmT?=
 =?us-ascii?Q?mvCjYTr2TUAwqTvOyupHWmOLpVLcsQu10U4j7elRqImnxRUq027PAgXPxnf0?=
 =?us-ascii?Q?w7W7YJnouCTPQUWdNMDGaCRAq5TKcyDKEzqTWDCZifNCZC0S5apY/N6FF/S/?=
 =?us-ascii?Q?hn9z04Wp3mQuckr6g1jv0cwSHV1QJjpzHN8mb8pKLSD1tzzOfoV/+DGH4S/o?=
 =?us-ascii?Q?cCAJZw8nfvjs2nZb3nyR08EmL6BHnwPx1rVm/6vpgyqCR9LWMJP2SQvFRYYu?=
 =?us-ascii?Q?kw5mCQrgT6xYIVUgvYK2H2C2VTzAGKA89HfxNL4Kl0XNpwnrEB22FQgPBJB8?=
 =?us-ascii?Q?4zJw8cEvMPLXZutciZXBSISnC0LFg/JxmOiLZ+QRndcjsVP0JkwHg0ZUerA/?=
 =?us-ascii?Q?pWygFCaz+NF41DbCSexjJxCy1u9JxP5zhrR+0n75NsJtTXAouh92OYgIXmXe?=
 =?us-ascii?Q?EVXSoMjQeDoZTUfEsa4S140E3Vn6fFTvITNErXwB5Y7jiqDuHS+kE+2hBoyl?=
 =?us-ascii?Q?NewnGz7EXj7RjjllpreVDbzKHvB4crxdphvzVwI6/ELVEVmbQ5WOOr9PIozD?=
 =?us-ascii?Q?PpQXLBbO3ZAhV4Pr3Dvujueyg84/WG5Yuypw8aIWRvG9GukeElMmGfHV1DnT?=
 =?us-ascii?Q?2hNPKS4tqjF9FHgttj3m5E4ElLFgaCF5zTq7+rcC?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da04c33d-143a-4df7-4f9e-08de3842e9fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2025 23:21:57.7803 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QexzfSUoRlOywix/8yP1ytXqLg+oCXqR9TcLTV2PxNFthLDFR4l8Ods97vsYrQkl4I7ue4CNL4d14xTL5IxVjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8451
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765408920; x=1796944920;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Fi2H6VcYbFhB2T52ff2iftV2BMaAxg/hpGfA8F5iIPg=;
 b=iFk+qsEFRnZC4D9vhCKbBgBvZC1uo5WierHz1Vbecj1PpOHNa1De/nMC
 QSfot0LZSO9ZywbZ8mwXeVDoBcrszJ5ZLjYpsQEoiovX1ZbyfXVzCUgcP
 jzYSvUDLRNqoCkg3hGJPKiJIteYpl+UkRmpOT5Ig859NuJK2XTBalgxKQ
 ttpoIH0RTc87KbRB6v6w8caAiXPPIjC0bk55aZS95d7t8J0eybWazHLYP
 PgHwFmvBMiJn6t+edLVKr+W3R7H91B2+0pbB5WF/IdXa2HVXMfQM+jCkz
 I3z0UbhSc2bVNe73YawHn//w6a7uDYABs6b1WRYHJhrRnNPJRk8/HVUPv
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iFk+qsEF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 09/10] idpf: avoid
 calling get_rx_ptypes for each vport
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Loktionov, Aleksandr
> Sent: Wednesday, November 12, 2025 11:06 PM
> To: Hay, Joshua A <joshua.a.hay@intel.com>; intel-wired-lan@lists.osuosl.=
org
> Cc: netdev@vger.kernel.org
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v10 09/10] idpf: avoid cal=
ling
> get_rx_ptypes for each vport
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Joshua Hay
> > Sent: Thursday, November 13, 2025 1:42 AM
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: netdev@vger.kernel.org
> > Subject: [Intel-wired-lan] [PATCH iwl-next v10 09/10] idpf: avoid
> > calling get_rx_ptypes for each vport
> >
> > From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> >
> > RX ptypes received from device control plane doesn't depend on vport
> > info, but might vary based on the queue model. When the driver
> > requests for ptypes, control plane fills both ptype_id_10 (used for
> > splitq) and
> > ptype_id_8 (used for singleq) fields of the virtchnl2_ptype response
> > structure. This allows to call get_rx_ptypes once at the adapter level
> > instead of each vport.
> >
> > Parse and store the received ptypes of both splitq and singleq in a
> > separate lookup table. Respective lookup table is used based on the
> > queue model info. As part of the changes, pull the ptype protocol
> > parsing code into a separate function.
> >
> > Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> > ---
> > v8: rebase on AF_XDP series
> > ---
>=20
> ...
>=20
> > --
> > 2.39.2
>=20
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Tested-by: Samuel Salin <Samuel.salin@intel.com>
