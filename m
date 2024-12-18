Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8689A9F6667
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 14:05:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 27F1184E63;
	Wed, 18 Dec 2024 13:05:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J_IJPiuWObK0; Wed, 18 Dec 2024 13:05:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 76A0C84E3B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734527104;
	bh=NjAfdg5dWRPOSNo0xdc54L1owSwSaUY9+k/d/c/lJbs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TFcvSnqHlmpQBR5K+BLbdB2N4/8/QKNZFWueSGbutrgRtAdULYfHmWRxpY7jqbTHI
	 Vdnhy0QBA4lgtNagW7S+w+ASI+ik0GvMcKlsgvxeQpuzLjLgvHGQRnTG5C7v1NPaXR
	 Pdld52cbtESqoBNdKn6gwFSiLKM0Zn8kv5/9yh1e/pcDtEMBmXZRz3jDooFkLIAoLb
	 f7UhpaYpuEbEJVQflyozXww+ICZ71QDryqoG9GyF28Tmvan8zODy/XVwNjhIqwSLAE
	 4ddnBhAbMWWTUcKU11tP/EimN2LjJWHPebjs1Hrji67pDAF61mEASE6rcoyYuyTulF
	 cwsPf4VGvf3sw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 76A0C84E3B;
	Wed, 18 Dec 2024 13:05:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D4BA3C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 13:05:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C2CE461334
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 13:05:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YVH_4KIOm9rI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 13:05:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 04127606A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04127606A8
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 04127606A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 13:05:00 +0000 (UTC)
X-CSE-ConnectionGUID: euD1sycAQeKKYm/in4JJ7g==
X-CSE-MsgGUID: u5vbhwukT426WqA7zjRD8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="46414465"
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="46414465"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 05:05:00 -0800
X-CSE-ConnectionGUID: ns7tGSq9TcGGvN4Z8Bz9EA==
X-CSE-MsgGUID: 0CHhARcQRP+jP4QBX3Y6lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="98276736"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2024 05:05:00 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 18 Dec 2024 05:04:59 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 18 Dec 2024 05:04:59 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 18 Dec 2024 05:04:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rVQ37jE2+CKySNJ1dls2gsFw582CRP9UPjQf53h6eWtaSzcKAI4Xug7SSMPtuRICnhCjYc3wE3Jo7Hz7jC6ktm1J7hobdW3RnAEwWQq/TBoog7IVE+2/WG107YVfWJNsUDp34sIvsfpfcmhFAsQzl74CXjh9iLgI/6cJf1lOx/b59o6wuHixCnVV5biG49GCzCvqZ8eaWG6v6t8CxyejkJtnHj6N+X30tVnQ4SB918IqxcPnc8t1eAe0RoKSwEN3sRKGpuTC848PywRaVvaorfEjjIy9xaJRJIpZtVXSvUeU/LfaKvvo4qYEFsVwcAOoPyjhM/0ctfl2qnFbaEQdcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NjAfdg5dWRPOSNo0xdc54L1owSwSaUY9+k/d/c/lJbs=;
 b=o1RLgnWzr41U6azhgzJBi7fzMl/K6/cf2aflthr2mIhjhsfHcs23vkw+152s//Qfk6ROKrpeqZTonqc4vURrH5Jn5KM4fSkvSXy9RcStpv/G4NIMiDpxTVFG5toi/wHVXpco9WO4LzZhC0vML2SErx2mgA4diAgO8VnQX6l+AUgMLZ7ZJ4aZG+WzaMn/OIhBuafW96JKW5qRvIOV2QP0A+KubmtCtMxtJ6ngjt4xIsifEjQDBzpRgyuOH4YeB7HMG0brZmi10bSe/1Yul8xQ5Y6GFu3eK015DeAIgepjaMzucABUZLtYT/Fer5huNXYHRHqNXCVXcyXI/DTjba3pJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by PH0PR11MB5951.namprd11.prod.outlook.com (2603:10b6:510:145::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.12; Wed, 18 Dec
 2024 13:03:43 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%3]) with mapi id 15.20.8251.015; Wed, 18 Dec 2024
 13:03:43 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, Simon Horman <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v12 7/8] ixgbe: Clean up the
 E610 link management related code
Thread-Index: AQHbRvIu2zgwh6NQD0u1B3LyKG7VYbLsDIQg
Date: Wed, 18 Dec 2024 13:03:43 +0000
Message-ID: <PH8PR11MB79652EDCCEE98C03786C3ADAF7052@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20241205084450.4651-1-piotr.kwapulinski@intel.com>
 <20241205084450.4651-8-piotr.kwapulinski@intel.com>
In-Reply-To: <20241205084450.4651-8-piotr.kwapulinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|PH0PR11MB5951:EE_
x-ms-office365-filtering-correlation-id: ceb95d8b-2221-4105-6605-08dd1f646663
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?HSaUwMI1FgrWZv0NUoBs0EwiVuprOjVyxN24UilKVq/gK12s83VdUKa7d8Tj?=
 =?us-ascii?Q?jDCOILADMu8XCZf69Kbh95OqU4QP1UUkuj+W7oTh5MyL2jtGGr2rf3D8Ezrn?=
 =?us-ascii?Q?IADQhegTGJY13Nlg3EbjGuLRNi5rSKM/Upwvb8/gDvLuOnzQaX5PuG7ktjP9?=
 =?us-ascii?Q?k6JFtlkkjwJYbe9dTdY2e4ezGSE2aMdSha96+94ruWUqcLPuoRBtAkSglOmQ?=
 =?us-ascii?Q?bCX9ArQYBJ0KCcWUKEd8kBtT7PhLZ8iay//Z0XgYbCTs3e2g6eizejX+M+7H?=
 =?us-ascii?Q?4PqhIrMz23ivkvjCy340YY6YTETbeAM9DiidW6EV+uOwXaRps9DO9jyjlrJ3?=
 =?us-ascii?Q?Zn60bwetyH+AJv2v1so7HwyageGidb+tcI4v4d2RDdL+lMJ0Mcl81X2T/+8z?=
 =?us-ascii?Q?0MzCN+zbRsapplITKdDBDUJWDLGE2QaIEH2JdqMS8DScp39M+XYYcY1YvfE0?=
 =?us-ascii?Q?b1qnsdtC0PgJduPPJt6aGlE0D1Dyvr9sdm9VI0YO6rX/0jLQuwsqw1XdaWuF?=
 =?us-ascii?Q?97JgVnAZWp9dV46LpfaY+qFi1ZVBaAMa8EJa7tX1a9wT22T3gf+aCQr445B/?=
 =?us-ascii?Q?i2guJhRpk6OBNr4CMD+4MonrUX4NgVKWPcFuUqmXXWopjoFp6yoGlxYTA4Yc?=
 =?us-ascii?Q?zB28CduR5Odh2SRhwiWqsk/5gXpgUxYN+96WwoNfaNpUSqSQpsnthu9UeiWN?=
 =?us-ascii?Q?oZc1M4xAM+67mztWs8vRjDpri5srN+7LMvAQ6b7xY1cvoEAVZ0g0SAPeLZAR?=
 =?us-ascii?Q?aA4raN2gQTooCCP+bWxWkLUh1NidNIjFt6HLODBLbbwyFGva62Orr+4l/LB3?=
 =?us-ascii?Q?oFLeKX9h+vyf4dcjVFhes1Mnhg/R+bS6bhT9eYaSuKLYwdAG613C79MHpcDM?=
 =?us-ascii?Q?7AbVjKdGIfBys9k7Us6W8NndDBLYodIjnll9eAjqcsxh57/2X/ox994XgfZT?=
 =?us-ascii?Q?FkFCGu3pK6OR2FWDKBGH9wfvviSPPq+exFyXERwJ1Vti89bx7K13Gy/1auu8?=
 =?us-ascii?Q?kVpshwUncmLKZFGptWa85Zug6lML7KGx8B55E5dVtinHfOkfF80UwEfOMkQ6?=
 =?us-ascii?Q?QMF0doDwDU5tkSp4E8ubjsXs813+Z7N8tB1KCJKKaA3ZboC73r9xk0HiLH4/?=
 =?us-ascii?Q?teWLyAPMLntQ0drsohtNXQSgrbCkLd7Ne6k3FX56ogpv3F/zRcBNHDdC8XbH?=
 =?us-ascii?Q?Stbyw9YgGsKDTe7aGL+74+X3CKw6Q8sBmd6nEZ106KNGiqWHjkmpZu16/gtK?=
 =?us-ascii?Q?O8HRBydIuQJ6rIuDlCBPGaQEXHoHzfCLJTZQUdC/AKPVuJ90u748PLNIql9+?=
 =?us-ascii?Q?gHB5NyOnynElJR2USRNiYkLroejEQrdM9WL7BuztE9kj/3WEIB2vG49Rksl/?=
 =?us-ascii?Q?BbLGFZkJbqwGaFG4/i8JZWEuFeiHoOHYHZNxoxMvrDIm1WwKryWi9FkPGQVF?=
 =?us-ascii?Q?manGI0Oy66dmrFe038QdZJDkTD7jDcG2?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rKaRS5XDmbTf3QEF41/1WiTzbrLXNSgIrPPCR1Jx/ehzAnlM38lXJdt+8CjL?=
 =?us-ascii?Q?LYFGwYbAHy1Mibq12QfR8VANjkKOy7XQ9giwe5xDkYSh1sdNav6MO+TJbyu5?=
 =?us-ascii?Q?Z7qdHPFRyExDolDfILK/yXGf9z2hsR8A7Qw2M5fqtg/mIU+oqxbfGLG1ZXCk?=
 =?us-ascii?Q?jYZ+3hCeWsA5RUSlqI3VsqHllQRLG9FgGzyuGFtrKI5pSNJl1K9mqjYkPkhf?=
 =?us-ascii?Q?/u/YGdFTBkKOzebYRWVuHkWxqHuEOK8XQAUqSzy2OQaA9AOqd7toftcwVNB5?=
 =?us-ascii?Q?v+j9omBqVUMSeit3oc90KHQpYi+KFFo0vZ1tsf98Eepf/X0L/bP9iKKi+3XV?=
 =?us-ascii?Q?KMgF99SnjCy/F4kIYhijzQqTV+QoW89yXoMnmy8ml/hmRp58kbHhgN2nucLR?=
 =?us-ascii?Q?ChtSBdIhg0hlzoszF5inmzzc7L1RHaBw3OouIOIfnBtFnizKbnBryP2fUvGi?=
 =?us-ascii?Q?jgqS9osYa17Vxey++upylNsYj+22lC2KS3tlS5tF1qn31avOrM2r3nUa2ggG?=
 =?us-ascii?Q?SDCXvFiwZ8UwbElXegbT4/NmAJvx8J7Nr8TrJRyftlDyXmJWlGQK64pjUcyH?=
 =?us-ascii?Q?JXoY0U99TfI6K8omo32BwbMM+TLxaVRZ/IlogvSBk0gCfaW5m2BbMZVnsHsk?=
 =?us-ascii?Q?yfbK/Eg0XhucHE/I+e5K2jc7/2hcBt8I0jx2Oo2ph5ZPTTX6j+XxHDwwucUd?=
 =?us-ascii?Q?neCiH6m8P391scdSRclh02kiPe32AD6jou+jBtbJyMW9CYlHwRQVgY5Y7uMj?=
 =?us-ascii?Q?pxEdYCwsvaPIHnBOisnkmIytJTNU8z3cp1f6ts/LvOlWgm3ke8jFkGAMOLiH?=
 =?us-ascii?Q?DtzusTbLfsoncqJOcr6JIzAPkd8Mx8efVnytZqyWZqGLU2Yw3R2Wbkjz0rWG?=
 =?us-ascii?Q?th1dhHIr0Od4QxeERfA3wBUKxQYaL2kXZE3gby+NOvFa9BaXOMkzolqz9PeW?=
 =?us-ascii?Q?bYZ3N/v3ukLUELQ+DfoooZMnGk+bgFvGxzeNyc9M/Su1Q334VLMgFItFYhWm?=
 =?us-ascii?Q?UEgTqO3x1aw4PAz19WlTEz6ERZ/DXBg+b32aKQrBpY3Di3P33lMei9sbzgu7?=
 =?us-ascii?Q?aUiZHjMHM3d0lIXmj1U8gJbcQQuVsItNTuq2i74oB7C/Let++5HNkAsI9/KA?=
 =?us-ascii?Q?kEtjJ/48w94n+wUVciu4jruvAi1TwLv27kl+n9gmTE2k1Q+a3EZjswLF/IBZ?=
 =?us-ascii?Q?8QQ4u2U9SaBMQbIaJ4yDSuMa66ahjJSTkh8FqFemp0zRbDiugOg7YkfpW2Cl?=
 =?us-ascii?Q?EPCBfjz11zP6R8qNZ1lwqBldV/om0UjzqUu8cJAr4CKwH7su7/G9pLwi7ZdJ?=
 =?us-ascii?Q?U6fhsQxkS6bLQuExW6CSPqjKoqkPHz2TQ2M8K9d/k9OV7i3tOrRyiAtUCFv4?=
 =?us-ascii?Q?LEAr+Ut8zKaW7Lw5WjpFJLFugkmjCTKoj4ZHO4co2Msawq5ndPZ9OTbhyma7?=
 =?us-ascii?Q?fJ2beXJn3hHeOTks3vlVaiVGAXIIRh+TebLRPnOAOaqmfV+48yuR0JG5hTn5?=
 =?us-ascii?Q?wfadeXwJ3d0J/8vFPzkzTtqr9OVbL2vama05L49TCgoW5ykzNDx4xUBUyuSo?=
 =?us-ascii?Q?WdrE+3UraQa/1BUn9tNnIfuFE4Gyg6ddiz7+mv5/?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ceb95d8b-2221-4105-6605-08dd1f646663
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2024 13:03:43.1054 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Knv5Th6Xhtm+UH3js/pearZw4wrAeH+eb/ACcX5QG4c0yRonDnJt0DLwMTSjEifLh/ozsYvGvfL/hulXbPjS1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5951
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734527101; x=1766063101;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m/XYb9IhExWPRPBcwUbWe9GWvGmhjn24BQZCSNcRgYc=;
 b=k+DvZn553+RaJ9V/toRFrVHs50T7/M1Bl1xOQHTynezO1VEJUG1jozqq
 49aij1FfuAtcAYdvaO1YYlY8u8hbeRMUOJEbCqXludk/nzD45SBToFHS7
 o07zmhwKkwxsj0McQBWBPeUrAkNBOzxEwzf7Scr2m0X0+ao2jk0xBPkQD
 PErHtWvXi1vb/Xp58Oizxy5NRnUQ5cgtAz/edQwpDwS2PFy//FUD8GHFn
 mE+nR4LFeom9ARHwIs9otrk8Ghycsh2ct3+XcQqoxV/2ynuaoXxnTA3Dr
 9TcEX9GhjBCddxvJl1cN2//80iCQi2fMM40RIJJBcDnqtOCJcuy8MAAEy
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=k+DvZn55
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v12 7/8] ixgbe: Clean up the
 E610 link management related code
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
> Piotr Kwapulinski
> Sent: Thursday, December 5, 2024 2:15 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kwapulinski, Piotr
> <piotr.kwapulinski@intel.com>; Simon Horman <horms@kernel.org>
> Subject: [Intel-wired-lan] [PATCH iwl-next v12 7/8] ixgbe: Clean up the E=
610
> link management related code
>=20
> Required for enabling the link management in E610 device.
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 17 +++++++++++------
> drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 12 ++++++------
>  2 files changed, 17 insertions(+), 12 deletions(-)
>=20

Tested-by: Bharath R <bharath.r@intel.com>
