Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CC364B18B18
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Aug 2025 09:36:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8EFCE40950;
	Sat,  2 Aug 2025 07:36:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SKUFsXuU1W56; Sat,  2 Aug 2025 07:36:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0BE8D4098A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754120175;
	bh=BO6FFeqrMVkcusL2dZapbIJa1fINBgwAfdYNM51exRU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lOKZUNxMZmxlT426UFpf1+avi5CApraIO718F4Z05VOhCALdvsjkEUclzLcEwDldu
	 lVNbP9rBw2N0BrS2CnzJj4G3GjX0SbNvLXAvcVV9eAFHR9uwFA31NRs4LRLCEoCgeg
	 WwJMEn7Wyw6GiqMX0CHOzK2caedjA0WI/b3FZ75lka2tzSojHDAq4Siy/tN37BtAop
	 lZzLFSSYKLc4IYxB+CaLfsdfDDAR7hVuQcmxaDNqesc0xuHw2UeidGbPARyZtATzsh
	 IoWv/tlQJCpEo+6c8zKXy0JPXEZgbBvnQdqu2++H/DpozWYrynKQuKyZyPZaIsFSSa
	 Sa6DynwVBXbzg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0BE8D4098A;
	Sat,  2 Aug 2025 07:36:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E997A160
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 07:36:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E6BDA83927
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 07:36:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8okn7Noltr-f for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Aug 2025 07:36:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 59673838B2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 59673838B2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 59673838B2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 07:36:12 +0000 (UTC)
X-CSE-ConnectionGUID: XKlmLpEYSN+FhXuTffp08g==
X-CSE-MsgGUID: 307uhlQjS3SoTVYSyQ2+ow==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="67827015"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="67827015"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2025 00:36:12 -0700
X-CSE-ConnectionGUID: PLy6oQNBSuaICF51vbAnWA==
X-CSE-MsgGUID: ivWJS83jQiSiftgzXol0gA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="167932722"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2025 00:36:06 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sat, 2 Aug 2025 00:36:05 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Sat, 2 Aug 2025 00:36:05 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.83) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sat, 2 Aug 2025 00:36:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TSrQDOTXLA3b9DBw+MFLMIi5Js1yLHkBYuLcnnvYLJgxz/mOOKtpjhKGG3CR1Pylkl81A85ilwlL9k+oyMCUEgZKFTvXa6Fu4VkaLOem0BBS06+jQFYSuw0UGTeyD5gnTkGxs14JNPlPzUAd5Ql+TauN4jvDIA0oC8/rh7PIFlAF1SOig0kQE+DJL7zFdUGJyoInTCRuspMdb0xx/ieQ9DhQH8karLmKcS90Qu8chsF/t0V6qSOaYkl5x2jm+/QLKfozL/uAAmwIaiisH0dsGHdQeg1iPv5FQA+VlLm5uSqNHVuo3wAAawECV1VpEZUCU9q/IOz5t/15tWAxIZoC0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BO6FFeqrMVkcusL2dZapbIJa1fINBgwAfdYNM51exRU=;
 b=rORhqjlT8mg2969kKEOUay95AmoyMvnom9nHcAt9UGtwd4iaDNvRCZXF3T+1RbAdyv1Mnkqo8Sohp9K5hhNK5gjaKxkBhDpLjmBF/Q+NhNObAr93V+rqjzKptDGjQaB5gu11ptxRxWe0lvXxxEXhyHztT4Dn361qjzSVdFJGHZ5eGiBaynIhXK+56gOrb5kgMtoga+39Ai9V5dcqc63AvhdkxfcAatnnbPqXtzcaJd5RDPSXMsJEKe54TJ0RePbag8zCCSTLHXtpuUJTgN0QJ8uedXvg9KeP4QAF3OC/P36UAiJfE5sjby1PxhztKJDC5aEfE0W0CcEeFyBY+prvXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH3PPF1AF044E07.namprd11.prod.outlook.com (2603:10b6:518:1::d0c)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.14; Sat, 2 Aug
 2025 07:36:03 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%7]) with mapi id 15.20.8989.015; Sat, 2 Aug 2025
 07:36:03 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 5/8] [PATCH iwl-next v3
 5/8] ice: Cleanup variable initialization in LAG
Thread-Index: AQHb3vFZNUdyLYikGk+0YMMjNxAQ/bRPQjsw
Date: Sat, 2 Aug 2025 07:36:02 +0000
Message-ID: <PH0PR11MB5013667033A44255FCE3CC009621A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20250616110323.788970-1-david.m.ertman@intel.com>
 <20250616110323.788970-6-david.m.ertman@intel.com>
In-Reply-To: <20250616110323.788970-6-david.m.ertman@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH3PPF1AF044E07:EE_
x-ms-office365-filtering-correlation-id: dab8f810-1080-4c47-ac82-08ddd1973bcb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?F4gqZhfglAT+Ifnp8gH2N+JmGsLkcSQ+Qsga2u0l1MB5cezA5C/DamGqb3lV?=
 =?us-ascii?Q?Nl2lG+A1xlEEScyeNhkj72WG1HMu94DEiRNqC2jNNoLVFQoZMtnuVLZvSwvG?=
 =?us-ascii?Q?nbEVdCGedwWMQ0Yuz2qDsYKaWgdH/aftOk//CRywJZhagHOEgNW2GNjFGV/n?=
 =?us-ascii?Q?I21dR4gfUCtb8aWnnn3Ef73qKMuOrI8HHWKupbAJe1Iiym8mEnjxQNvqpUzV?=
 =?us-ascii?Q?3csY7IHL3A1Y2zOHEQBVVQLW48aWarfB9l0BdthS63Z24rb9fFDtNnrBJHBb?=
 =?us-ascii?Q?K/NLcVZgh0UeOfp+mW8cMTEU+lU8Bgi9FUwdNM8BNTO6U03sU4OocDRVcMJy?=
 =?us-ascii?Q?0OBEGIpP7rlyTlejC/vzdzGdymcB4WZEIq9tEITBq818Gp6x7//gIHhLYm8E?=
 =?us-ascii?Q?sPGLgkW6NMBrEIR1nOmAhqYr976bAgjbZG6US9Q5t0HNiOgvLsNTo6WPnnZu?=
 =?us-ascii?Q?Kcop8R3NlHEgoKxXdGsEoC9v826boRsKgFAF/UZMpPMjLIn4nvkr9r4/+H/7?=
 =?us-ascii?Q?MLWUkiPl7M7v+KUbpXmIcqBIwEbGKCxx5a9odLXzQe5mfB9JaLo7aQTyhL+X?=
 =?us-ascii?Q?aVQlUVI+CGTGTjkPgrTvc35Ff6RwWep/KK+8gEtsCoOIW00ZgYoiqP0pxaK2?=
 =?us-ascii?Q?aWRoP6tPiHwuBBCDDrkI9qXv2siJRFZM8dr23pF+jzTP28LxUW283A9pmX64?=
 =?us-ascii?Q?BFGJWqIUurdDhyQCr5Y2OwctjmGFNNWsudA1VXNbFDiyKcp3i5AQW5gxiriA?=
 =?us-ascii?Q?RGe24X5qlOTF3PC6MdDFrrIJANotFAFD/f9G+zFkY4gI6gaVqyIe309Po295?=
 =?us-ascii?Q?WJn1WTw4lyzfbCnYRvjedofj0VKqTD0qWL1Q1iidThtZ+apoexAKwW9sxqNQ?=
 =?us-ascii?Q?LWeiy+4cxd7Y2N3SiDV+dfvEEL7HUPbWmloEtCvpx1l72T/I8Sx4yUSXnZXN?=
 =?us-ascii?Q?PeS58zBZs5wvp6u0FReBzaOBBWnO6BUTRtiJLpiEKOVcAqsMV6QgMB4rB5nO?=
 =?us-ascii?Q?y72n/syb7DpuNw4gxJm/y5N8MU71pKLVLW/uMS4pyHyHck6P2bD2GpTgScoU?=
 =?us-ascii?Q?FO2+Jauiigx4otlN1Qut82dMnhvf6th6GsWztxtnEioiRT5PWyVIqTAe3xvp?=
 =?us-ascii?Q?vz/gKSv7gR0ytzwgUko9o81EEA5np3lzjjzvn+BYNYBpVLkqklCpfYU3VzzP?=
 =?us-ascii?Q?3daE4lECS+oqunl8k2z1hLa1lvQpXBruIB5oiA7AImG8OJnaaMxZLKekGIni?=
 =?us-ascii?Q?+j6fAHwLe00RbZF5SRdSfVhcyuOjwQbMo6n8xPkLrqJ/tnt6dWH13F59xwan?=
 =?us-ascii?Q?vx37z97r7Wn4y6fsv+mg5NkZm1ZoTTlNRa5CUcCd+smsaBF73++vo/ST94sT?=
 =?us-ascii?Q?9mvu8+iguh8Ho8osghqH1euJN5ru2lxnXVhTXOG6+30flUxcfSsxF8v+gEzk?=
 =?us-ascii?Q?J5B3oZeVsj08VlfZtUpEhM7fEss6JqJsu3lRkMhnKOSncn9skJ8+Kg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hLmOv+1dQtSN6Kd3cJpwVZcNoULvdNBpGrc3HgDR8PkQlw+KISH/OWPRO+Au?=
 =?us-ascii?Q?zS2mOH6TMvkHsgrM+pcSm9n8yC7uQLxRsJg4UxcwCG/S41mQL//q7u6kgE93?=
 =?us-ascii?Q?R+guaLtuwRSU8w/NozuNwjAuM4chUUZkn3RgFID6rHzrk0/wQ1FqeQDkYkiL?=
 =?us-ascii?Q?lG+006BzAn4VHm0v94KsajIWM4YnLyGK35fHx4HCBvAR+1Ys7LQVfoS8ffcP?=
 =?us-ascii?Q?AoanfAukfisea2IPazlV5Srvv+BiP5KDTVYPB0DuMLjJsgQbaQXNcbTtTYbC?=
 =?us-ascii?Q?gdSDnmaMWUxzMT6xDjQA9xWXIg+XLcWdkoRlEWb2xnODKxTC8h++l8+heSxP?=
 =?us-ascii?Q?FBUkpPxzNF6+6aTIN6RMiwto/NSEPq+wsk4Fu+AuiEFy+5Y1BQR3aZ8aMlAh?=
 =?us-ascii?Q?pNcKFITL1VkmOR+BJzCyxOXAOpteKalcTt4OutENa7INpcCtlF8bsr4bMYrB?=
 =?us-ascii?Q?pT04LJUemp35gpB5RtO8tvx9bohUw5ud5xYEGfnek94GlAN/FDjl5RB7Dd52?=
 =?us-ascii?Q?exW2rbcDpp3r8GbtnvDhMYHhWw/gVJxDXbL52TjI+yDFsvJTXEy+zxx2G/5C?=
 =?us-ascii?Q?tT/1qXOcWcFirwZ8o/SCycMK/t+LQWbBafGEvOIq8Qvoqmgue5lofZCA7VvH?=
 =?us-ascii?Q?YoCucIcrTbxVHDf/2/NpjEmih2tk8Y32YQCtB3CY5qITZhQtkiPYWR+Up+ZF?=
 =?us-ascii?Q?8+FsItd4M9ABqIQUkw0iG/bZFwvB8qxboyAWnt6iuflTKvJl6cQG7qygsLR0?=
 =?us-ascii?Q?ZSJrS6fksN7Yeh2oXBTIB2ecwx2y/sqED2btQ86E9ZIKQfvVs/ruPeab9b0C?=
 =?us-ascii?Q?qor6KByzk+ZWU9Bd2fIjffDckxtAma2ei7w0qZV1gaqCXb/LAFc0U+OmO7n4?=
 =?us-ascii?Q?Rp9CeBSI0ZdhNdqVj5TmXD+Nw7h6kPKPESUNi6racoO7wEzp2mV3GMU1716I?=
 =?us-ascii?Q?j4g2nTdua1v4Tm+JmtcUUztdG/S8veDqUw1EBSb1khXmh/fzqcaAVtWb9o1y?=
 =?us-ascii?Q?HyzWdS55EwWCltloBcXRWWW+eRyAvxx43xoe1adZr3omAAvFeNJ5A2oKTV10?=
 =?us-ascii?Q?arzH4WDX2EjHk2DgsVp2ssizsEPjJqUtMuUhfSdwWXofuEIp99bt3I8HRIvm?=
 =?us-ascii?Q?j6uzY+S3QXwZIuJhV5KZW0aD7v5TkQRvDpCmU45xbtRaoNxaYFQokWRU8CdE?=
 =?us-ascii?Q?/ONNVAxiNoHHsmNcSM5IuVP3F/iPEVwzQv9w+A4TZkUm38NPYmF/d1r6KTee?=
 =?us-ascii?Q?ofadwOz8itHnBVjFhdhT+RW2oblkuWMpToBwxoNVeWg5bhN8rZrbJxm/6kzI?=
 =?us-ascii?Q?FJDQ15XOPlFDPImXrTgiLWGuRAOSViRIJOhhHH7AI4/pTHZAq58EKn77I2wk?=
 =?us-ascii?Q?jviuRuEJMdP5MAgUPaedqzqMcVNi+0Z839ztsgumpdku9+Q+NzyvzFii315n?=
 =?us-ascii?Q?lx5VecVVw1IrStJbYxRYRUvgZrv5WRc6WQxkneZeVUgeod1/z/fzhi9EW/Lo?=
 =?us-ascii?Q?C346e/YlBWwbLdfJTsvgr00Uma3AZV1To5WNMATfICtosn3hKq8dJzL1JTLK?=
 =?us-ascii?Q?He6TYkO8lGTMAJ4rrWWiVDg6oumxuaPV5YoMD+y7tGfEbdwevvUDTVZXJ/2o?=
 =?us-ascii?Q?9Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dab8f810-1080-4c47-ac82-08ddd1973bcb
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2025 07:36:02.9890 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DNqcjgJ4uyoU5w1C6Rsm2ER3Ac0/Ex5VgvIDpG8CHDz5MZwaIm0TwKZ6VoW4aavEcj3Uvp/EaKy02uVBj4KBuQEeCf7wL6Yc3Z9YdXwFyuA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF1AF044E07
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754120172; x=1785656172;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xNTGzP+b42XcUMjDHDePw6oBil+cClorpqcg9MZOUoo=;
 b=HcuORA34XC+YXivlQkLbYpSC1dhQszROaC1XMC7zQdtpU3yULi5g1CSX
 xBp7LqlpbPpZHX6jM+hT4p1+LXB3oL/IBaXliGp4og/j1gBqAXXD8/Ze6
 /J8TCqR6+MsysxicyUF1HUm8DAtU37t/qKMM3n03gSfh2Iae8efRwjXq3
 BT9r7e33anJPH4sXA8G6LdwD10ImSQKBBI/cH8JDbppQGeARVBiulOusb
 OkFwwyxVBTjdNKNO/QXtjt3NVht5r+MY717s9vKs5i1HYuJeDA6eZRfZ5
 Nb4KDXvTGhdJJ9RFek+AKnijy54mmJg5gc5ImVhSmkEI0HjDgY9ZDBJAw
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HcuORA34
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 5/8] [PATCH iwl-next v3
 5/8] ice: Cleanup variable initialization in LAG
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
> Dave Ertman
> Sent: Monday, June 16, 2025 4:33 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 5/8] [PATCH iwl-next v3 5/8=
] ice:
> Cleanup variable initialization in LAG
>=20
> code
>=20
> In preparation for implementing SRIOV Active-Active LAG support, cleanup
> several unneeded variable initializations in declaration blocks.
>=20
> Also move a couple of variable initializations into declaration block tha=
t
> shouold be there.
>=20
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c | 54 ++++++++----------------
>  1 file changed, 17 insertions(+), 37 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
