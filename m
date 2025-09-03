Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D7BB414FE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Sep 2025 08:21:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ABBB341FB4;
	Wed,  3 Sep 2025 06:21:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5wmRQ--N2e5G; Wed,  3 Sep 2025 06:21:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F09EF41957
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756880474;
	bh=Pkxp9bOT/JV0ejOrOTra3FBrRovjlE74kjxRPSq3rIk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=t9I8mYgCc3glxCq/QcY4nGsD0WR6V6OpUMLb83fH/C2+/ibbctaDITeyV0nnlVdQQ
	 YENcgnFcA+aOjthEQw45y/1avssmvHTH2nkx5X+3zTAn4UscOak05JnD4dnQLmyXGV
	 sVfak09iK26V5eY+uZss7Ecw2aVBiJ5UibACEGIHg8P4B+ksXELsDZZwIr4/TTln1f
	 eILgIyiG6JrXP6cn2R2M4rEmVEjfQEe2EDqolz196DCNxT8XAG8RQZfqZpMK7xJU1r
	 nBk9wVkNnvn3z4bNB+kNBHBs4DZFOSyOzzbUOUoaC5AjDty5madP4Ch8eP6E6wZUu2
	 zPxFNErXO4YBQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F09EF41957;
	Wed,  3 Sep 2025 06:21:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0FFF3439
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 06:21:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EACCD40D22
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 06:21:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mljQUg8ivPuA for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Sep 2025 06:21:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2967C40D00
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2967C40D00
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2967C40D00
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 06:21:10 +0000 (UTC)
X-CSE-ConnectionGUID: p72v3yxCQTaqeLhhQF7PoA==
X-CSE-MsgGUID: UkFGv48lSiaZPpKb8Z/tpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59251049"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59251049"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 23:21:10 -0700
X-CSE-ConnectionGUID: EuXFRXJYTDmBQfIKsyI5Aw==
X-CSE-MsgGUID: aFFC9O6WTke1V/8gwKW2qg==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 23:21:10 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 23:21:09 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 2 Sep 2025 23:21:09 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.46) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 2 Sep 2025 23:21:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dvdFKlHZOELz/dij8GrJengaPf/OskmTM69AY8W9PrhhxM3Vr6p5lV7JR2ZBfQ8Gr3zSeLZpQbePhOq3YnoSIznGciWyDlMd8iFSb1BKweBt/21au7TvjAFoqRyuBKsEbq55UfQHvhbOoiEp6jdDBaqZw3yy0+s+wEj9VKCdRAae6OgHP2S0N7S1XnxobV5JdwmGfM/qOlPuVCPnHPQPFu5QfpJEq4KRaT4MziJJ+5avE3NB6+sYYvFEU2lXYoZpXmbpJ9F1yyqyZBht3q2iJGR+UmJLzcIZ+RiOzQ4MTFs1arfcXpd1dBeACoHgwfIKDF4dHlyel0bb732FO65wIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pkxp9bOT/JV0ejOrOTra3FBrRovjlE74kjxRPSq3rIk=;
 b=Ecf4unY0zL0ChY7hmfzsp2Cj++jIsffWzeyf40fXwCnumjC52NXmeFJ5iR3eFICjotRUqpkxahvqIdrQHxiUYt07G3/hizy5MN1v2+g6WVpQBYGPzsFZv713+R4ugIQjBvlWLsXE1JbyhXYSLMdO2M1bi98fPSeM1CI3FK5K9VpnuEX63CCvCDHaNceI+6iddSr4FIevsxRTDEYDNg1Ys7BN4Jk77+Zzx2PAK5+bhVT6ek73qnb63wJvjTT/zoqE6MXiY1U6ICntEVl/mbW298RQhl9uWaeUdEmYvCl7dsUPrmNQvI1sbyLqYO6q5E5/GU5gEbOm4RwtjFjspNQGgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by LV3PR11MB8580.namprd11.prod.outlook.com (2603:10b6:408:1ae::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Wed, 3 Sep
 2025 06:21:06 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9094.015; Wed, 3 Sep 2025
 06:21:05 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <enjuk@amazon.com>
CC: "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kohei.enju@gmail.com" <kohei.enju@gmail.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3] ixgbe: preserve RSS
 indirection table across admin down/up
Thread-Index: AQHcHALqHCOGVcm6xkqBr/9dXuH277R/30awgACDGwCAAAABgIAAA1aAgACVrYA=
Date: Wed, 3 Sep 2025 06:21:05 +0000
Message-ID: <IA3PR11MB8986B31F209249FFC30F0A35E501A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20250902210447.77961-2-enjuk@amazon.com>
 <20250902211640.85359-1-enjuk@amazon.com>
In-Reply-To: <20250902211640.85359-1-enjuk@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|LV3PR11MB8580:EE_
x-ms-office365-filtering-correlation-id: 72982e5e-afeb-4397-113a-08ddeab21064
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?uve5sInmLyk0DoKx67NJ20Gn5tM+33KYbl9WYepC5cQKlx03Z8Unb4ueMf2G?=
 =?us-ascii?Q?M7hSpjLYu2oc7mqH1KmkrbphSzVrwNYZnfdWFbyjtraaJQlCozcZtDMsAyn9?=
 =?us-ascii?Q?BK700qXzi/DBMpEjIVft4LdWwZzdNQoo46xthjEtG6rjophDWjLBzu/KV5Al?=
 =?us-ascii?Q?KbVnocQPCRTy8lELiXfl1IOnR0kyYl+tYZ1rdge1dCW5J2GSffZ0Oyn0224U?=
 =?us-ascii?Q?loUM4gluaPnUgf3BJ93l8L1FFEMXavlbfXxlXQYlKZVF/22unmqdD9ifRzHa?=
 =?us-ascii?Q?HNhGWgsUONQaAsaLLHwpZqrHXZlP9s7y9D49uvInaIW3ia48W6IKXk5mu8ft?=
 =?us-ascii?Q?oBoFTeoCIezzmR7iZX9q1rn6YGdoWv4mRTPXJIGLBDwOeIjvqymb4hnF1wK9?=
 =?us-ascii?Q?c8HxevmE1zQSEcLTu93If3ONK7YcMW9oYhC6drNQ/y3iV4EG3zRY1d+vMO2P?=
 =?us-ascii?Q?seWks+ZwgheP/SdhOlmzvWe1qbnSS8i+6qQyPY6v67lfC/bO0ZZoOnY++PcA?=
 =?us-ascii?Q?rUjqs+4bWZgnH6zudC+HKnY0C8W1nMuZRvW9VrFGxeyRveHmLz7bMFja+2yI?=
 =?us-ascii?Q?u6ol9SPZUBhXOqYZU3ugoyO3e6MP8RZZr92NlsnuwDRW9nyUfIWd1nnMOu+j?=
 =?us-ascii?Q?pAgA8KtsZF8/CnaGsIk0bQjdVZDy2ZkThtoWpT46rHAZEDbiqUfZuJ5PB99g?=
 =?us-ascii?Q?QSfD4m4TE1t6pvEwx6qLjDjfaLqjSxRVvrGKoIPQAcc+FO57EKtKrQbO3PR6?=
 =?us-ascii?Q?80qXKC7y81xkl/8U2l41nwsHZ0XaGWz8aVre4tABVh0GAJA9JTBKKc3UwBiN?=
 =?us-ascii?Q?hvQZY/aR3v3yb7Jr09hVTCCHC2lA+1YgvzaMyPjSSjrkygn88Wsvf7O9aVFz?=
 =?us-ascii?Q?q0p9AGV7BKd7nw2tPlY/pRelH3qjV74SwQVgHI0YZeO1pgm2K4m3VhsqT8RP?=
 =?us-ascii?Q?YRDEeFF3BFA0tPEKhPSgbfBwArBlgqpZcCQjwgwvOLsBplKxGT18eiiCWz9f?=
 =?us-ascii?Q?aTSRQj61pjsF6Q5+5i2yjukrgvmBSiF8I2Q8WZPHxRcvy7TBFpAhMg19KmCj?=
 =?us-ascii?Q?BCB2d9C1IuE31kZUbb54nGuNRFrO7lpMlzu1/XWTz0dpgowX4uWrLbyfipL9?=
 =?us-ascii?Q?7hq7Ppt8OjE1jY9JWyGYQehX0nFPkOPMsbrjbESR4GUT927tne71lfkOq465?=
 =?us-ascii?Q?7345zBHmaUlZYywe+b929P0rSwzKINooTThrAzx396YCStXe5BH+AKV+heAs?=
 =?us-ascii?Q?xAyhkEVG+gt5rHZb9webPSC6SJV2G8l/XAd/zxBUNBwNxL2ZTFPP0txXCkQ8?=
 =?us-ascii?Q?CanoVPPGDMwO/YeP70mEDSuOF9Z6Ha/lFwq9GdAziWjYmerjT+8R94dBvlQU?=
 =?us-ascii?Q?8fGBeqoAdw0B/dp5kLpVBHV1/XGpURDYnh0K3epEJ15EHzsw04o3U4LwTJTb?=
 =?us-ascii?Q?s5o2KNo5EiiAVFpT5kjeOvTD41xW3fwNNHiDzGsIzAmoD6ulaKthgw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ONrXDBzWxKIGJr6PFODqBTzHRNOMyumhLC+zN69ftdm3hu9GaPr8Vjt86mlR?=
 =?us-ascii?Q?FF7NPjFVjxQQDhFv/jvaDVHGgAbAAZmSfusoLFkU9XfBkhwoXz41Xkk9TqG0?=
 =?us-ascii?Q?XaBeD072e+Btp6warlLp8OS0somX6R6r1hOwmPL1Bbt0v2i8lV2Rt2QpURGC?=
 =?us-ascii?Q?nUrWJ5vV49gnWV0Zl+LoIHj/H8GI7fBoE0bDyGSSZdi/4p+htLzpXjyV/k0l?=
 =?us-ascii?Q?vXlWnTrb1ahJwIwwibzGwy9ci803BQc9/Ppvepev909VZKj9SIHHdi3Mz+PI?=
 =?us-ascii?Q?BqnKbol0o0Fv9lL+2rNWxw8238Y8gIgT6xkKtgLYbFPN3ZZjvrjcYdfl8v/C?=
 =?us-ascii?Q?ZF+Huzi4TWDTLEQXmtS3CUfiwnPaSlUkxGT3C7LgM8EYoOcZNYTpb/3CPH/R?=
 =?us-ascii?Q?zi+GwqSIcy2FhBZNwSbe4d9r2oXZQo7S97DQWLhW4P7c2/UWJte0sDRcPSLe?=
 =?us-ascii?Q?ULda8tadraEc+0LJAX2Kuqv7OsR7cfxM/kpdLDh4Eqkt2rwRrxh9LbalcV8a?=
 =?us-ascii?Q?0lElXjAo1pH3sQt8tp8Us5AeEM4Nv6+bTdbIIUGNIZ8ftmP0YaBcnRRpZBsl?=
 =?us-ascii?Q?1zGc2cv0GSBiMTeRENkL11Ky7EGXxDlApEZ1aJm4VZfWVFi+bJibFQS35wtO?=
 =?us-ascii?Q?NHUTChgNur9Gn0pVORhsIWPOP/sP6m2DmAAm3lPZvVZ4rIMZJJYUE9Kt0qst?=
 =?us-ascii?Q?ntTdcvShtqAgKvdEpOafYKf5oZihs/8M8Ad0uNa70FkP7UHyhkp1L2ZFz3Dk?=
 =?us-ascii?Q?V0CzyYa6X4RpCacWpAkg5GpbA+A9I3X1Y+WxKiIjyrAu3uMB8uGsLBlVeu7j?=
 =?us-ascii?Q?X8ZX9hvFAz9l5kh7Lau0KN4n2aLO4UQ8c+hoXYua4crPsT6CVMJUZ5f+SCER?=
 =?us-ascii?Q?uDHXM9VkiMDhTEEiGdkwXn1Ybclc4601Gr5TgExyiiezq2cgA1dqRftDI8UQ?=
 =?us-ascii?Q?o086e7ZgAvhCLgR8dWoSmpjE1X5sYlT5sh4RvMokOjj5fsWlqbaA+YLiCjQT?=
 =?us-ascii?Q?HgmdpjJHYhjopVWbPqhMy0xrVWJb3TC3a6oBsq/S6oHgQBX2YwijwqYX6SHf?=
 =?us-ascii?Q?2QZrwBmrYAyPlCzQiWjcsjYBPNLD/zJIwNitQTvgNqx6qnppadpUh7ORWDNY?=
 =?us-ascii?Q?1NdZf/ugBwE68Q5TriK4C8DtKdWXca/IN7lkq6syf/GwX/C/KGufa5ct/qa6?=
 =?us-ascii?Q?CxkdyX6WWUsWqbE5wUa1FpOXDCpPqH97Ocg3CDysbbQeCqZrywXE6OTqhDHT?=
 =?us-ascii?Q?rIX0lSR23Xq69ctkPx31lxcqNOaJY25fq6Kr4feq7Y+rkUQUjc9zT9E6/E+e?=
 =?us-ascii?Q?mbpgWly43myov3CWwfyCXbTM5yRKcUpmCIPdp7xVfihe7sbYQxvRAFHGKUg+?=
 =?us-ascii?Q?y1wAoxgtV0JhTUOjlmnvDFg3PNr7bfR19CEOPKqnGP/R3hVG5bjeAGihhL7F?=
 =?us-ascii?Q?aEc9Nqsh8WNSsXfT3Y0qNOBdSVTQYQFbzSg+y5qnw+LOqdhURYHxOQZN3qap?=
 =?us-ascii?Q?hhEky2MblAcv6BCDosAkUTtgq8zbl7tsI1uasck58HnUHaZoTD5zm19XvvWw?=
 =?us-ascii?Q?v8skPNdOld26M43OYPaalkj4YJkcG+iyDnb/wnXr5uDz59BeBkRDyclkkTm/?=
 =?us-ascii?Q?Xg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72982e5e-afeb-4397-113a-08ddeab21064
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2025 06:21:05.6336 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /rT50y/4W6tPsK2VWUWI7EiqMfQcaSC2mmWEG3UrJnwr0PjLzXSpBhTESGyB865oXBxQiV8rDRzO4PmCyeYNhwX8j4do+CmEtIGGSapaIbM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8580
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756880471; x=1788416471;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=etXiwE4wx/TrVrU2CAqVO2fltKOXG2MgteGzFeQ0m0A=;
 b=lFsuCU3Q2LM0jjKt1GPHZZHZjNDU0rwsI27HTe4ohciVYJ2Rnh6JOWsY
 lIxQa4wYxtbpJaFJz0JJhIBMD8wEnmBXxz9vv5lQVB6nE+EQIqJbnQCox
 RFPTualU00CZteKZcjPKJu0DsrpcQjDq3goKEQ2NeYzzj9C8ia8RjOONK
 6u8VMXkzSVG/gTe1ZSxMhq7VpGz5UoRku4OKSAULDkm0RJA635yQFqj+Y
 gFWMUDDRuKOWavqM9Sg1qhSsWmxFo/aLzfbEmM7BEWTmkf+bnX29/1kwR
 Ay9VwnjvlWHMFLus+DjKSyM4hYvmaQ1cTOn8YTgFSkNHVZSzkx/A/wkvp
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lFsuCU3Q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ixgbe: preserve RSS
 indirection table across admin down/up
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
> From: Kohei Enju <enjuk@amazon.com>
> Sent: Tuesday, September 2, 2025 11:17 PM
> To: enjuk@amazon.com
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>;
> andrew+netdev@lunn.ch; Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> davem@davemloft.net; edumazet@google.com; intel-wired-
> lan@lists.osuosl.org; kohei.enju@gmail.com; kuba@kernel.org;
> netdev@vger.kernel.org; pabeni@redhat.com; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ixgbe: preserve RSS
> indirection table across admin down/up
>=20
> On Wed, 3 Sep 2025 06:04:43 +0900, Kohei Enju wrote:
>=20
> >On Tue, 2 Sep 2025 13:25:56 +0000, Loktionov, Aleksandr wrote:
> >
> >> [...]
> >>> -
> >>> -	for (i =3D 0, j =3D 0; i < reta_entries; i++, j++) {
> >>> -		if (j =3D=3D rss_i)
> >>> -			j =3D 0;
> >>> +	/* Update redirection table in memory on first init, queue
> >>> count change,
> >>> +	 * or reta entries change, otherwise preserve user
> >>> configurations. Then
> >>> +	 * always write to hardware.
> >>> +	 */
> >>> +	if (adapter->last_rss_indices !=3D rss_i ||
> >>> +	    adapter->last_reta_entries !=3D reta_entries) {
> >>> +		for (i =3D 0; i < reta_entries; i++)
> >>> +			adapter->rss_indir_tbl[i] =3D i % rss_i;
> >>Are you sure rss_i never ever can be a 0?
> >>This is the only thing I'm worrying about.
> >
> >Oops, you're exactly right. Good catch!
> >
> >I see the original code assigns 0 to rss_indir_tbl[i] when rss_i is
> 0,
> >like:
> >  adapter->rss_indir_tbl[i] =3D 0;
>=20
> Ahh, that's not true, my brain was not working... Sorry for messing
> up.
> Anyway, in a situation where rss_i =3D=3D 0, we should handle it somehow
> to avoid zero-divisor.
>=20
> >
> >To handle this with keeping the behavior when rss_i =3D=3D 0, I'm
> >considering Option 1:
> >  adapter->rss_indir_tbl[i] =3D rss_i ? i % rss_i : 0;
> >
> >Option 2:
> >  if (rss_i)
> >      for (i =3D 0; i < reta_entries; i++)
> >          adapter->rss_indir_tbl[i] =3D i % rss_i;
> >  else
> >      memset(adapter->rss_indir_tbl, 0, reta_entries);
> >
> >Since this is not in the data path, the overhead of checking rss_i in
> >each iteration might be acceptable. Therefore I'd like to adopt the
> >option 1 for simplicity.
> >
> >Do you have any preference or other suggestions?

I lean toward option 2, as the explicit if (rss_i) guard makes the logic cl=
earer and easier to follow.

Handling the simplified case first with:
if (unlikely(!rss_i))
    memset(adapter->rss_indir_tbl, 0, reta_entries);
else
    for (i =3D 0; i < reta_entries; i++)
        adapter->rss_indir_tbl[i] =3D i % rss_i;

Improves readability and separates the edge case from the main logic.

While it's possible to use a ternary expression like adapter->rss_indir_tbl=
[i] =3D rss_i ? i % rss_i : 0;,
I find the conditional block more maintainable, especially if this logic ev=
olves later.

Regarding unlikely(), unless there's profiling data showing a performance b=
enefit,
I'd avoid it here - this isn't in the fast path, and clarity should take pr=
ecedence.
With the best regards Alex
