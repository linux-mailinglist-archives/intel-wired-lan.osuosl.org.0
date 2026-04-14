Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oK15H2WA3mnkFAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 19:59:01 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B3D3FD60E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 19:59:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D748184DCE;
	Tue, 14 Apr 2026 17:58:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4SiVO8pAII99; Tue, 14 Apr 2026 17:58:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F25D884DCA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776189537;
	bh=uCtOM1HYTFKozcOJEncytoG38IKz4n2/lLWeIfRJo/c=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=e2yZUBnd9HY8BE0aQIYl2oiMbV98SigDZbIcopWd80ePwfHShqsQlABBMDY+G4j7H
	 VkGOxO7qnemeFttPh3JP0BAjGgOZwGft9Dpdmh1zijs3Bw9YjdeOSKZGUe0Zt6XGkT
	 t0o/3OMlKyrWz7d1rZwwwl08REafnliKN9dZap7HCUt86gs5DqA5ma/1J2X6yL0o5L
	 ahnDcdqXhoT9xMqWJ5PmoqQfjFfhN1pzyAg1YEzlvDs0T+I6FF5qlMnBSZophD5lI3
	 NPf1Wce9QHPtLgN9uz2fls+2kBJxeVunEY49tCaOG9CajyXkpu5Og44FNmIotBn6lq
	 U4W5XlzX8DN7g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F25D884DCA;
	Tue, 14 Apr 2026 17:58:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2049C375
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 17:58:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0567C4041A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 17:58:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ErI9Gm0EC8BE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 17:58:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=sunithax.d.mekala@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DC6DF403E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DC6DF403E5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DC6DF403E5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 17:58:53 +0000 (UTC)
X-CSE-ConnectionGUID: vefFbXcRRtOCaEUfFetp4Q==
X-CSE-MsgGUID: OVAxYr0rQIGcY0hq38ObQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="80750544"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="80750544"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 10:58:53 -0700
X-CSE-ConnectionGUID: pgO7COyERm6McaZ3/zzWrw==
X-CSE-MsgGUID: MGDFikfnRcalDlrULxOjVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="230390978"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 10:58:52 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 10:58:51 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 14 Apr 2026 10:58:51 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.2) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 14 Apr 2026 10:58:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dknfXh1UjhHWlClwCw1FgWQVbwrFPP3fKak2wj4VXUn4CnD8XbFRWhhUJKUoKWhlL0uKeaeVljRwfeoxbDF4DKF+MREBz49SlwC/eNbqfpGaPpflm8UF/8Vb4Z5czs6LZ0IRv08xRMXALYAr98Q/6cAgj6T+yPJc7jFWTIO7D4ebqYMKs/06cEfTbFPfjaoMv+Z0zANt1DH+DsPuE1dMEXmXTv0DEeIhBhUMPhnblt2vf2qaS2MHrmURCDe+GiIZg1/16aGn4NlG+Nl5GsVmeLv0Qy4El7I4csueYERM90jfOJDrR7dYxAihTf48R7uGKrV5WFsrUIgFILubsCaQMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uCtOM1HYTFKozcOJEncytoG38IKz4n2/lLWeIfRJo/c=;
 b=MiHO3exhhWCesx8lVsbf0RCBv1FpC5twPMOUseEFEmvSO57rUOd/MNNvBTuceA+XQed5BK/BS60MfG3dO6tpMWJnXBT7yp706b+DhbcrDmM81d/nx+RU0z/eEqySudUBBDU6amv9r5p7DWQtVBE0lIr8kwCaExgj5GeiDIDhFZUfsTZPDoHqvHQiUIA3NIi6IvhWblSpcsTumRE1WOLVnuNRgvpsOYzq7gaPxZ+XMarYPGYPwOhlqE9um6TbFxMDQOpvTpxtUmMqWwTzjG0ZKjpVvODb/KTOwA4GcaJmR2Tk0D9YsF1Hj6I3IEOn/4uhBvh6TmZsfI0eWV+C2+Xtlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7522.namprd11.prod.outlook.com (2603:10b6:510:289::8)
 by CH3PR11MB7793.namprd11.prod.outlook.com (2603:10b6:610:129::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.49; Tue, 14 Apr
 2026 17:58:47 +0000
Received: from PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::ba5b:e8f1:5eb8:3ca3]) by PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::ba5b:e8f1:5eb8:3ca3%6]) with mapi id 15.20.9769.046; Tue, 14 Apr 2026
 17:58:47 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Jakub Kicinski
 <kuba@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] i40e: fix
 napi_enable/disable skipping ringless q_vectors
Thread-Index: AQHcu498BFwUbLaiFU6LRrmUAtjYNrXe+HRw
Date: Tue, 14 Apr 2026 17:58:47 +0000
Message-ID: <PH0PR11MB75223C8A00C3183C5082A096A0252@PH0PR11MB7522.namprd11.prod.outlook.com>
References: <20260324130922.562714-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20260324130922.562714-1-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB7522:EE_|CH3PR11MB7793:EE_
x-ms-office365-filtering-correlation-id: 802f8095-d8be-497d-0337-08de9a4f7a36
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: Bo8I+O32acC+inQs/bKyK3cqzk4uaAinoYykMz753Qeo/Gb9tCyIsavgBf9pMIoleoUwtBZ+iqDp+u35eiACB/uNhtum7dFA/QkayHpra6uMf2bMGXrc7r9SBBGnKWv0wpXakk8Xz4AdAhq7DZMruNJK/Mw30l+GZAdlZPDuqnSNvqemB2XFqDbQicqdV0/j9FFfIFyl5xD6jM/sMzOfBJQZ0n31xQLpju1+sIwLBCs5VfvmIcXb7TnCLxskF0LyPGmCDrJ2nqw6KmZUesapbtoXHFTCHD/LA5vTPys0xu7VLWkJe89aKWbb4wwhFDfqqeU5RU1y6fnyiRQEHTLh8qzFcLZ9u4Z4JgvApXZCY+uJ0xlvQWHyHWvCgQe69G6fjIFW8ofNTKoyJv86Mifsr76CMGx8e35lW8h7N9yzDzrO/awhhUGHUDEZQIWpwJ1ClPCWkTeyYxDSSL2iuXTlha7fWSUciqTY8+IfluAMhSLzCO5Xv8sYMi9dIES6/JsCYuf9DP64OwjpdFOZoEGDt44pZERaGwRYMwwMRM0cATWjAe6GbWIFJr9FBwDBomvpWNkqCCC4CzJZ5Hi8M++QpW2bOvdH4bViN+bnxP+RabiNuglLC+Ctng0iFYG5GiCmrgxZbt1W4AnknTHV3DGNMUwKwbgUd52mTc1qzW98dkBQkCUt4u3PpzcvKEqbP53LS9v7/6fF8P+qbJdnd7uxuZ48DYPg/9cbZ3Bb3upGBwQ6If/HB/VrPOab3xR0gWJVnklvVePkHbXV6eEuEd5JLXImLlQasa/izHlrNlVJo8U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?egevJKzFgT+IKd6YQ8W8Pcs5c2VP2R1xvoS1hPfvQi6wM63lVvLR+Ftg0bJw?=
 =?us-ascii?Q?BBHiOUj5kjykof6T1AVMsOAXClMGVqxPSZxcIlkjfmXaa2tiA27s9SuqRc8q?=
 =?us-ascii?Q?teCtNjE3+XEbrT5pqtv0Sb126rfy+nSGA3so+9lVvdneqnobkYBYi8TVaM5U?=
 =?us-ascii?Q?cpStqOoVL/XqMPt2Nm+nwBWOqS7/F6x5Z9PgAE8DeVi/TCV4a5r4gSHmlh1k?=
 =?us-ascii?Q?AyQgPn8gPcyV+4tdtBrmqhhBZmZHrfoXVnjmstRN5uoi3t9Ji7O3WWz8Pl6L?=
 =?us-ascii?Q?k3Am55XermWU4U2+Ho6WRVLpwQlwx5COYDpSZ2y1UXuLnwZnt8bPYKIZdkfn?=
 =?us-ascii?Q?HPtCIuIS5vU4txHhNuEF/GNkhQn5PoJymVXMSbENvpnqP1ZHlr9/Shu7oYot?=
 =?us-ascii?Q?CvPh++US7huQklfOojPctpGZuitdFD/EFdrMqR4eVrYsp41ooQ9jBHMxEtDP?=
 =?us-ascii?Q?q9XgAmQv5iVZidNo/4OGDxoE2h2s6Eg5GdM6XEVw2rtJyjAsKzX6FvhotbWN?=
 =?us-ascii?Q?btM4I9u4BYYyq/e8nyYWi+Vh87+R+3HTTNTRIZ0ZRuzthWVnNZa2iL/FPkWB?=
 =?us-ascii?Q?yFW2bsQiLBmD93yM+sy+kRk2ASve1YXYZTilHjMFMRjXv1eZFwQypLsxWmDq?=
 =?us-ascii?Q?SE4Ju2bYbImT40kuA2XTlvro5rPoAYxxk/6O4hj0dq94aeWNpdZb45RAXYDA?=
 =?us-ascii?Q?8zQJoZBfAJgSjEnV/Q1DXU8RB8JLcL+w09zNb1k3oWwH3jpCQZBBlTjLRPoQ?=
 =?us-ascii?Q?8PMD359rCVTqwdPgmndLNqbKnNyS7jilmsPqb1RVxu1tTQ6jzfHcm/4OypyZ?=
 =?us-ascii?Q?i8aCin3HfKiQ8hXrsLuzgW/PCbM8RGg+0nDOP2H4G3fT0dgyCQLG018cADWP?=
 =?us-ascii?Q?s1eAg00gm+ErN9W2OTZaXwxaQgnC0TxWvFE3KC4bD5gQSM6HOxSkLQb5RVv/?=
 =?us-ascii?Q?wi6Ah1CI+HTkPNDOstvS5rBH9b9uh2XxDNcxOvJ6UjaH+ZtUsdY/x2gnIPYA?=
 =?us-ascii?Q?tgDnqjE/P+S4BuwY7GTLoqsnRiwt9l7wPazeUPUUFbUeZXESc2XL5ody5A0w?=
 =?us-ascii?Q?1XY11vZ8xMjSuUSWdJp+GxQwr6sklVzb0k4jUZh7a/aFQxg4HILPo6szE5t6?=
 =?us-ascii?Q?PvyzcyumpMqoXFsKkHsb8EmRmWJH92NFpf+mrMscnpoGbzx2k+vocnL1Q66t?=
 =?us-ascii?Q?0biHi2tcscVXRqN/LVM3iBy+MRnAl2rnAoWW99C8LqFsQRZCll9UIFMf6hI+?=
 =?us-ascii?Q?ZGkQL2cx9dcUkodsLsj14dxmwIjHfstNttxGKbdrNOo5uHtz+zz8BOEKQ4y3?=
 =?us-ascii?Q?08J9ehqG7Bi7/juvMGQOThejVZwVwiyEfr4N6uaFupposWNxzF/GDogQzL6J?=
 =?us-ascii?Q?KgGuO321ocmi5gFvsfpfDlUWUVQYF+seFn4tV2StRpPMN9cNr4AmuEEpDYcT?=
 =?us-ascii?Q?r96H6rLxw3+rPMzcotfRecdfMGoLCJBm9eAeA2pcLh/Y44OQBwQyKLV5/REf?=
 =?us-ascii?Q?rgyP87rxzF7KYtyK73Pj/GIbm/FmPnULUsU9Lc4ts8VYi3ygYzRO+ppMUvKy?=
 =?us-ascii?Q?libAo8a+G0HPxiNn+TXXNClpGRdVKdHyHxNyZeK4jTmdc2MJtEPWH5cp+A40?=
 =?us-ascii?Q?gQwrN+h7wgB2Es4FeyEoBf+IDUw0KkqC+2omJIGSk3nSXaLG5ANDNwCpgHt6?=
 =?us-ascii?Q?yiUZxqiWAfQ80jU5JwCegoJiIZAb8NlFMNi+i4uN12kiAWJxVUc5HzrBEk6u?=
 =?us-ascii?Q?OjHU4soA1/AiEb6PlR1z5WlLcffz3u0=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: J7Y5oLij6ZFv2Ws0zqRFyxKtfKyQU0s0wEHi1Am9QtAdD8eMb0IB3FhptCh7DnAQkklr/pC+c3mB2X1vfYKaA7XNqmaHq74/GWhbW2/BURTRJgRfin3a2XfXz3W2ZN7B0pOndrvx2oChDma1mrylxXxEX0uFzMyCukEF76wTNzBOjI2S0SV9jIETkTTGVF2lbJcRHZK1rx/W37diYEMxQkeobyCprOYgcb6UpneUHwBZRa4LBW69qJjUWayCuHZEE4DA1TwIPb0o4HiifS1Zu/Hm1iVJvF+id+YIj1aWxFK0cEmh3utvQb8vnU+VTF/AJv9sv532TrDLeWBRSuO9uw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 802f8095-d8be-497d-0337-08de9a4f7a36
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2026 17:58:47.6427 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9EPL4yoaMazeE9h7wF+3GpCf7bpgLxoTdF3pXlZ7YGpQmoILoZguOyvVi5yzeQIWPp/HIGdM0teJAKuhaOd9TiLxfmWB9IU/xpuCR7Sik7c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7793
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776189534; x=1807725534;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=otjVQHCEmzcUl0njekQEoGNF2fQ6FW5jj/Gvescywhc=;
 b=QW5pso70JWzmFYYJynVXpTTbUUjD5/sulp2/W3KB/ilhAd2p66k3irY4
 vOaYC8MRdy4uex9a2kDdAVDK/q9+iQrsyi8qvMOctfefG8QoNgjF+lGtV
 0uH/r2iUq6TjLl898NWjTa3rDQhJTgL6fxgfpNcPq6bSXA5JVuoZgeyGd
 IEKnubgtdKoig8h/GmeCL6VMwNbOG2+EpKvPiVTguJOwGmF7TYlZlbAmt
 /77d2EKjLJLFSCqbyFxKDGpasW4oytLAxPExsZ7dwjaMdc8FkWA2yS+aU
 jps+6hjWZmNVcXw6hmLwea1uf4G2fi129RDv/aETgMN5iNrFfhe0VuWzV
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QW5pso70
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] i40e: fix
 napi_enable/disable skipping ringless q_vectors
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:kuba@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[sunithax.d.mekala@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sunithax.d.mekala@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:email,osuosl.org:dkim,osuosl.org:email,PH0PR11MB7522.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 89B3D3FD60E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
leksandr Loktionov
> Sent: Tuesday, March 24, 2026 6:09 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Jakub Kicinski <kuba@kernel.org>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] i40e: fix napi_enable/disab=
le skipping ringless q_vectors
>
> After ethtool -L reduces the queue count, i40e_napi_disable_all() sets
> NAPI_STATE_SCHED on all q_vectors, then i40e_vsi_map_rings_to_vectors()
> clears ring pointers on the excess ones.  i40e_napi_enable_all() skips
> those with:
>
>	if (q_vector->rx.ring || q_vector->tx.ring)
>		napi_enable(&q_vector->napi);
>
> leaving them on dev->napi_list with NAPI_STATE_SCHED permanently set.
>
> Writing to /sys/class/net/<iface>/threaded calls napi_stop_kthread()
> on every entry in dev->napi_list.  The function loops on msleep(20)
> waiting for NAPI_STATE_SCHED to clear -- which never happens for the
> stale q_vectors.  The task hangs in D state forever; a concurrent write
> deadlocks on dev->lock held by the first.
>
> Commit 13a8cd191a2b added the guard to prevent a divide-by-zero in
> i40e_napi_poll() when epoll busy-poll iterated all device NAPIs (4.x
> era).  Since 7adc3d57fe2b ("net: Introduce preferred busy-polling",
> v5.11) napi_busy_loop() polls by napi_id keyed to the socket, so
> ringless q_vectors are never selected.  i40e_msix_clean_rings() also
> independently avoids scheduling NAPI for them.  The guard is safe to
> remove.
>
> Add an early return in i40e_napi_poll() for num_ringpairs =3D=3D 0 so the
> function is self-defending against a NULL tx.ring dereference at the
> WB_ON_ITR check, should the NAPI ever fire through an unexpected path.
>
> Reported-by: Jakub Kicinski <kuba@kernel.org>
> Closes: https://lore.kernel.org/intel-wired-lan/20260316133100.6054a11f@k=
ernel.org/
> Fixes: 13a8cd191a2b ("i40e: Do not enable NAPI on q_vectors that have no =
rings")
> Cc: stable@vger.kernel.org
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> Test configuration:
>   Kernel   : Linux 6.19.0-rc8+
>   NIC      : Intel Ethernet Controller XXV710 for 25GbE SFP28 [8086:158b]
>   Driver   : i40e (in-tree)
>   Firmware : 9.40 0x8000ed12 1.3429.0
>   CPU      : 2 x Intel Xeon Gold 6238M (88 logical CPUs, x86_64)
>   RAM      : 64 GiB
>
> Reproduction steps (FAIL before fix):
>   # 1. Reduce queues so excess q_vectors lose their ring pointers
>  ethtool -L <iface> combined 1
>
>   # 2. Enable threaded NAPI (completes fast in 6.19, no hang on enable pa=
th)
>   echo 1 > /sys/class/net/<iface>/threaded
>
 >  # 3. Two concurrent writes to disable -- fires the msleep deadlock
>   echo 0 > /sys/class/net/<iface>/threaded &
>   echo 0 > /sys/class/net/<iface>/threaded &
>
>   Both background tasks enter uninterruptible sleep (D state) immediately
>   and never return.
>
>   Observed kernel stack (W1, holds dev->lock):
>     msleep+0x2d/0x50
>     napi_set_threaded+0x10b/0x110
>     netif_set_threaded+0xe1/0x140
>     threaded_store+0xd2/0x100
>     kernfs_fop_write_iter+0x138/0x1d0
>
>   Kernel hung_task message (~120 s after trigger):
>     INFO: task bash blocked for more than 122 seconds.
>     INFO: task bash is blocked on a mutex likely owned by task bash.
>
> Validation (PASS with fix):
>   Both background tasks exit within 1 second.
>   D-state process count: 0.
>   Busy-poll (net.core.busy_poll=3D50) + 50000-packet UDP flood with
>   1 active queue: no NULL dereference, no crash.
>
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 28 ++++++++++++---------
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c | 10 ++++++++
>  2 files changed, 26 insertions(+), 12 deletions(-)

Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worke=
r at Intel)
