Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A32698679B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Sep 2024 22:23:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5CDFF84A4E;
	Wed, 25 Sep 2024 20:23:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Lq8IcpYqGQ7h; Wed, 25 Sep 2024 20:23:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F93E84A5A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727295789;
	bh=dyUqyTUL90tqJDoB7r+30QQG0ehAY6IU0GXbfJgea1g=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xnMaBg+01ZurIshHl64T3KKlnqsywGK1sMUsiezoOH3TfALBw2L4r50aVU61O2dIH
	 OybGhysoit0d4Zy8CD5NWbcP31XsPyxapvoWgMnUJlj7ZgFXFKuJ0JzXw1l2gZFvVl
	 PlvUhazm7hs2Z8xwOag0Y4A71TUtQbDk5UxbOSlNMGt3lc2VC84fajb0nJZKR2YI/7
	 B6l5/ESqurMch0wfHWi9G+ZWoXxfiWm9QDFmr8eSj7lVIxxOPzFKBKG/4DMDkS+8rE
	 TmrfemhzmBprYEYghiRYPPHhY/WnvAknlsn1wIZvJEfGKIZkDhF8EtDcfUiMnP3R5B
	 vmtMgewx/msSg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9F93E84A5A;
	Wed, 25 Sep 2024 20:23:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 919AE1BF340
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 20:23:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7D776404F8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 20:23:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8I3H1oVu145S for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Sep 2024 20:23:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=krishneil.k.singh@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 482B1402F4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 482B1402F4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 482B1402F4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Sep 2024 20:23:06 +0000 (UTC)
X-CSE-ConnectionGUID: /blOB661T/SJ9jU9oLw2Kw==
X-CSE-MsgGUID: hnQuz/zHRjyLmrrHXsSQOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="26239244"
X-IronPort-AV: E=Sophos;i="6.10,258,1719903600"; d="scan'208";a="26239244"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 13:23:05 -0700
X-CSE-ConnectionGUID: xoRmeYI4SnesRLSMRU8g0Q==
X-CSE-MsgGUID: w8KSoZSkTcmxYCA8vo6M/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,258,1719903600"; d="scan'208";a="109360991"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Sep 2024 13:23:05 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 25 Sep 2024 13:23:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 25 Sep 2024 13:23:04 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 25 Sep 2024 13:23:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BVf2RJljOdZOd770TOMFGrtcHKTAJCA6JVP73qhTt29SUDCw9x8LbuYCZfHavEX4ErZ8UzG3gIYmLY7pcPLVdoQKrmo/d5DP4vTWPdqPNSyQqVplIZIyEMjxfZKLxEmA7zSjsaAQN+ZuEpTYc0QZ9n+P5DJh4Mzomdyuhqr+vXanb0jXuzbhS47HlcbKv71dvpOJMLLOBX8N5sAIsX0eY3Owc6t6pKixGD+h1PrUObIV4BFEBzBAnXNyettx2BFadDAyEqjR5SaBFPNNuOQHGV/UQ0c8oC62i3jwH9yvNrjgulV8vZElFIroyB5w3wT/ArEethLjr+OBm4gDz7qbjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dyUqyTUL90tqJDoB7r+30QQG0ehAY6IU0GXbfJgea1g=;
 b=vW5dw79kmcSl2IVtF/V9EUxAS5yqFUBLLEsxp9EKCESNyC2aswLHl9Lgk66MgOgKJ391aG38Eb/7V9iEsJISg7Uts8dFWaqkCs2ySalJgT6v+GnZC3pVULpxeLWgBt6udLbu7oHfofWGlhF355/UvOWtdLcbLtVkDwwgWWKaDT6IObD6iBGLnWUS4AlSURu9fqHSY05nPQVXjnvFDYUSIlCvy31ifeXSEECFZAn3pdp31OxqobA1ka51Ll51UdsW3u0P4z6J6pqWDJTq0qNQ6WRiXVQAUFpEHKOrNlejhF8U3ecsZmFpMG5x/WZSlGFfa1ED4XKaIzabbjTpeRBBFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by IA0PR11MB8379.namprd11.prod.outlook.com (2603:10b6:208:488::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.28; Wed, 25 Sep
 2024 20:22:53 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::1d00:286c:1800:c2f2%4]) with mapi id 15.20.7982.022; Wed, 25 Sep 2024
 20:22:53 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: Simon Horman <horms@kernel.org>, "Zaki, Ahmed" <ahmed.zaki@intel.com>
Thread-Topic: [PATCH iwl-net] idpf: fix VF dynamic interrupt ctl register
 initialization
Thread-Index: AQHa/S8evBNo08XxX0ebgF20ycn46rJpFt9A
Date: Wed, 25 Sep 2024 20:22:53 +0000
Message-ID: <MW4PR11MB5911E8D0AC68974B9B41CAEABA692@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20240828223825.426647-1-ahmed.zaki@intel.com>
 <20240902084918.GD23170@kernel.org>
In-Reply-To: <20240902084918.GD23170@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|IA0PR11MB8379:EE_
x-ms-office365-filtering-correlation-id: 0c6393e2-b149-4df1-51ad-08dcdd9fd5c4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Kw4gF8sR10ynU0RF7Dphul/d11x5gOUkpxxl5MEJqrwk7TYuoxj11a9VCTW7?=
 =?us-ascii?Q?FGLKdBqD4UkNDJs1INpsq9ZhgEeskiUrOCFA6u0cnvbSMXmZDn0NCbCTCdpJ?=
 =?us-ascii?Q?0iriy1rSzeQm81SXq73p1kTj+7LZqUZtLU7RbGqm+q/xA/AZQf0dzcVf1k2p?=
 =?us-ascii?Q?qUQNcyBrQQVevPH6NyFX2pdzHrPAxo/WEujPG2E+eZRgUGk6GHbXWb0uRAOq?=
 =?us-ascii?Q?zOMB1YJlc5V5GNt+Qof9A9cVrSbn12PKKv8m7Fxh7ZSkeTFJh1Jvadrkcqew?=
 =?us-ascii?Q?BAgSJMy1RfWLv1CfinKVbD6N4iFLCEnDUQhbIzpGnMU6GW4QAwCYBG8M65ih?=
 =?us-ascii?Q?4StPUMeswBt6lpwg0BCNBTfSmzjlcgn0Q6JCzhLWLpC+vfo79oyo6HRlThSS?=
 =?us-ascii?Q?VtS5dJSb70cCTvdUuj2TdjnMZTn4+Yhg7V2OicBURiV941BSKpM/aefxmMHg?=
 =?us-ascii?Q?6BTcCv+ePcmhUv5la/hPxl9k3E49mVzq9Qr9Vz2c8iNAY4kWgVi+2G6OgV/E?=
 =?us-ascii?Q?v87/AgMcovIs5wAxYy84C05xx+LaScAfU+djMmswuvUjJawBz+5UaU/0u5It?=
 =?us-ascii?Q?RCj9xrp+9yc6mw+BIzObVTvXvvKimDJthY/XJcc1dkzVhuDxh3pBNuice/Yx?=
 =?us-ascii?Q?YyfM3m1XYZ9hSoy4chVMtPA2VYcqpnIOSKuqvct04QE+8+Nghym+1R0SoHot?=
 =?us-ascii?Q?LLSacRAwFZyhc7dr5KfoPKqnLrZfEw6x5MzIkJ5tpD4hnmoPHsTMrFKrgTiV?=
 =?us-ascii?Q?ggqzrn79JJCJDGkOE1Fz8Z3gRhDfWCXR3v9jRU9QFkI0rptUOS4l+q2/cnJc?=
 =?us-ascii?Q?/kkwUDhEomO8ZPoX72VC+OT7O12Z0eQIpM+xJey7zTiTRTb5+cMZ7id06FCd?=
 =?us-ascii?Q?Hlem7Uqm5OZXOuD3m2BCKm3CF2FBHjTV5KlQAknQEVhK1RK3R8r770VSb2CJ?=
 =?us-ascii?Q?25g0azBjgKogPOfW4ePHqJYiC4CB1R6ATkYRgprBZm2dYSTxnqsXQmBDWVkp?=
 =?us-ascii?Q?OhHJDdutUtiY6Fb5kLhd3yTdY/G+YeXZbpJSiC1pr5rHF4/r2IkAVFk/T0So?=
 =?us-ascii?Q?HebX2ZXLiS7lfkgmxW1GyUIPtBkE5sgwtrIZer5XOeg51dsSrdSx6igOfV2n?=
 =?us-ascii?Q?NQ5Hll5dWlT433e6qlbPo+IpaJoq7kDAQcxf5ZZjnuDn43GdShtdBB0+V973?=
 =?us-ascii?Q?iQWiB1UyrLVhPvXrEl9SwA4nFTvHgDTRxqF9FmzQEsAr+knh7gNr5nHIPMED?=
 =?us-ascii?Q?sVLFOesfx1WxuC5/7PCciewJTrAEdbtp6hYtBH7pOyJYd6nDjnkeqj7m/aZz?=
 =?us-ascii?Q?ErA7wTXvyeABAWqnRZDvFnRApmNFaoDsW3F7ft4Mxe0XnQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?A19bkp2gNL36eXUMez+HfMAJxW4vZthZTR6F8zd82eHJLjX1DfBFhJdM6ljj?=
 =?us-ascii?Q?o7QrtYkZa8vvlNeOpGrj/PGwwxM4nWM9fEBpMo8xll0ql79LEOz8kvM74+Kb?=
 =?us-ascii?Q?AG1pNrHnaub5Q+jhUcMffFcsth5bm1WIii3eOXTW0XQZABKXPSAJjJzCPELY?=
 =?us-ascii?Q?BhqO9kRb2ItQ578BtoFBbv5WJkGmCANI9lQRzPCC8rCXGFQwmOhPAfWbvGoQ?=
 =?us-ascii?Q?zYM2SpanAVp0r3dPm4Y3xEAwEwkPElVmAN7Y3aJS0GSPFg2+7IiG+IUm1rGH?=
 =?us-ascii?Q?FhHNGniJzDyBPiLlpveI3huVWKzBmiLkxDOlU1jhKmgXPA5AKdeaIKZ/tO5h?=
 =?us-ascii?Q?IfwkAcJyYLINUW0xylrAIOAw1zREbBtyQeU/ITyKRBG90zuqbxTQOMU1QH24?=
 =?us-ascii?Q?tjOQcqXDP1p4tInghObLr3cuZz1Su8dlRIoS5gvWBgYGx+tiJMf1/oRDDXHy?=
 =?us-ascii?Q?NCiWvw79N9aVejKP219fWqplR3EuitbAtH3GpO1makkdRr4s1JKeRnVsJ7W3?=
 =?us-ascii?Q?Y7qnbZisdHwAwtw5syCPV2Z72BVqYeBtqdWZx2d+fHwzgidl/uI5v9B0kkcO?=
 =?us-ascii?Q?dzs1SuBPL4+mfNjq4vaH09UoDD7yyXTQza5uYgHC1DjECOI/pclkzwvdVI2v?=
 =?us-ascii?Q?zruqCEWFaf4JiEsWKvfWedtL0a6scSFVWHu8X1L0UHDZEqgJCwdkL/ziPjxr?=
 =?us-ascii?Q?lDDsvagAQkEVSMHU8q3Ym9wuqH4Bcy9A7+Om7k7URhV/cMD1VIV947UpfruT?=
 =?us-ascii?Q?Z1rZHtnpnRWn5RE+Ifu7lF8twwujWSC+tMpJQi2FBcvEfTAHIG6nrxyLN4Do?=
 =?us-ascii?Q?3AXU6Xcx3uDsWcZ4y9RzKejCqciXT/V+s0SeuJEDR7CgjGTJKib8JD7YeF/B?=
 =?us-ascii?Q?A4Q8BlZgaGfYTJ/aVSpM8oqPRhTdaiVdNCK0NhxwAon0kDfKIuUCA+aI9e+W?=
 =?us-ascii?Q?wfafhgcOfG5tBxir0zNeVMNTVEU1jnjWIns5lFm1KwieNQpHq5IJm4sDO4yW?=
 =?us-ascii?Q?Ml4Swt8k2fym4ZGtIc8v2Q8O8qYjzE1v6nNFLZTK7vsHyfMvK9mhy5+hQ+2A?=
 =?us-ascii?Q?9SVagWbwgHgLcBO99oL4etBBkGl0l2b9U0sOHxCUmyf5O9/KtugRGlkDIi7z?=
 =?us-ascii?Q?FExnvIkDBncuwdRZdnlre3FEksHy97z9A/FBleQ8RV/Immbxoo46cMPIBnds?=
 =?us-ascii?Q?ZhInJMUKno5KNSUtmsG6LwEQBDFSAmowpJKCMJPBfXltEj5mVz+H2Uata/Jk?=
 =?us-ascii?Q?Xg+LS5mk9Suug+96R7OzYO3MFDObNlfqpb+FOmOyhVU81I+uRrMeOem42Wb7?=
 =?us-ascii?Q?WgL3CwA6SitaEVWq2qj5JrNaF8uwvBkiPmalMgms6FRLQB8nne+7/AbUeBN1?=
 =?us-ascii?Q?saZan2gSG/rVwn3OLBOUztVZx7LUJKSjLJKalqGTiiC/jQFgBN4oXFeW0ukr?=
 =?us-ascii?Q?yNld9zQg4YLachRkC0LYpsoWkA/CLJ6xZwFYzpVNw2uhsmH5l0V5avqLrVpu?=
 =?us-ascii?Q?HF0ibpRx9yTgkWDzb+vTgG8uO4oUTBENUsWiTDqhwzxYMmGRb8Elg0Bos7Qi?=
 =?us-ascii?Q?e9w0P7oW2Smcr3dGZH30ADaeFAtyss2OOvdX9vcyWn7ZqAgs8+Txx+g4txlc?=
 =?us-ascii?Q?JA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c6393e2-b149-4df1-51ad-08dcdd9fd5c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2024 20:22:53.5533 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xPVlUnBW3aKPdwyy9IAi/FHIRyW012G2U0gdoHpWxDPcowXQ1Po1XbD8krkHP7I8gR1BjeSTDf54FvLNEQFmxu+Pmh7KsCPcJZr/9nyUQ9Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8379
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727295786; x=1758831786;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=V6mxGkDdqJZq9NSfFVniBW9RMLt066UEOSeX6txxyZI=;
 b=IXpbR4qrNBjyloSm0HqhULMOK8jyu2AWMpgmkDjkDCE+fdaXhjyORenu
 /qGS38se2gnCXdc3GX7G6Xiel8030iniE28EFYS2ZtkP+sqD4TNkBnAf2
 uGgeR1bHMRSREvF6h6N8F5pdDEPATMmGBHTKETw67Yue+xvkPIdLgsd9W
 KxVuqBMq2Vr94YXDV0FETMIkkLJQnUHq7W0ZLLY2mOz0pQHlHFeFOkyHD
 bKbHx0F3+fosv9DUYpqeyk6PnT15dQcjH/nsFhYzCakAPOF0R1BkgcG4t
 ohSVurKFjAI993KJrsafeB55lW8aaZ1Hc+2CVDfIffmOCjKquEqfjXBKR
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IXpbR4qr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix VF dynamic
 interrupt ctl register initialization
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Linga,
 Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Simon Horman <horms@kernel.org>
> Sent: Monday, September 2, 2024 1:49 AM
> To: Zaki, Ahmed <ahmed.zaki@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Linga, Pava=
n
> Kumar <pavan.kumar.linga@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: Re: [PATCH iwl-net] idpf: fix VF dynamic interrupt ctl register
> initialization
>=20
> On Wed, Aug 28, 2024 at 04:38:25PM -0600, Ahmed Zaki wrote:
> > The VF's dynamic interrupt ctl "dyn_ctl_intrvl_s" is not initialized
> > in idpf_vf_intr_reg_init(). This resulted in the following UBSAN error
> > whenever a VF is created:
> >
> > [  564.345655] UBSAN: shift-out-of-bounds in
> drivers/net/ethernet/intel/idpf/idpf_txrx.c:3654:10
> > [  564.345663] shift exponent 4294967295 is too large for 32-bit type '=
int'
> > [  564.345671] CPU: 33 UID: 0 PID: 2458 Comm: NetworkManager Not tainte=
d
> 6.11.0-rc4+ #1
> > [  564.345678] Hardware name: Intel Corporation
> M50CYP2SBSTD/M50CYP2SBSTD, BIOS SE5C6200.86B.0027.P10.2201070222
> 01/07/2022
> > [  564.345683] Call Trace:
> > [  564.345688]  <TASK>
> > [  564.345693]  dump_stack_lvl+0x91/0xb0
> > [  564.345708]  __ubsan_handle_shift_out_of_bounds+0x16b/0x320
> > [  564.345730]  idpf_vport_intr_update_itr_ena_irq.cold+0x13/0x39 [idpf=
]
> > [  564.345755]  ? __pfx_idpf_vport_intr_update_itr_ena_irq+0x10/0x10 [i=
dpf]
> > [  564.345771]  ? static_obj+0x95/0xd0
> > [  564.345782]  ? lockdep_init_map_type+0x1a5/0x800
> > [  564.345794]  idpf_vport_intr_ena+0x5ef/0x9f0 [idpf]
> > [  564.345814]  idpf_vport_open+0x2cc/0x1240 [idpf]
> > [  564.345837]  idpf_open+0x6d/0xc0 [idpf]
> > [  564.345850]  __dev_open+0x241/0x420
> >
> > Fixes: d4d558718266 ("idpf: initialize interrupts and enable vport")
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
>=20
> Thanks,
>=20
> I see that this now matches the implementation of idpf_intr_reg_init().
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

Tested-by: Krishneil Singh <krishneil.k.singh@intel.com>
