Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B995199A0B3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Oct 2024 12:03:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7496E820D9;
	Fri, 11 Oct 2024 10:03:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fY4gsAqOcNTr; Fri, 11 Oct 2024 10:03:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA2B8820CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728641003;
	bh=8jjPuRVAlxhG1aUasbDBTdfru+6miE2QrDFnuaPFR4c=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IW3sxVFMmeC5yLV7L4OWdYsphBxkr7zZudNyjVpTkb9aBgBR/UZzQCsZRmGmLJRgs
	 9soMd38vIB0ivN638AWI1ZDWnE2xDaRBbeVKPW9qjspuIr4LzpqiYHxypEe8uB8zSR
	 J8IlUdSEjgkOgeTWWfQAm0eWG7d8AY56TOWeAvvRy2jE/5S6gKTgkeHoEJ3PsfivFW
	 ck1Y1wU8pXYRbRPbeO9L8T93JAFSNTaz1y7ZzyHov2d8Bp548P/0O8sj7B3deMQv3/
	 vgsi5Jqazx+3Ci3iHF/hZPz5jqYkkcAOmhwXOrJUTqVzC8q0a4FEUkGH/KUpngopHE
	 Hvg1rIP3Qpl1A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA2B8820CB;
	Fri, 11 Oct 2024 10:03:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5E5851BF85D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 10:03:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 48E2C820BB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 10:03:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aOl4J8PoLGSd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Oct 2024 10:03:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7D40A820C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D40A820C9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7D40A820C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2024 10:03:21 +0000 (UTC)
X-CSE-ConnectionGUID: Hp+xDCmuRF+W9saEFNVf7Q==
X-CSE-MsgGUID: zuXxpcg8RrmINCGmpSoteA==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="27845692"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="27845692"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 03:03:21 -0700
X-CSE-ConnectionGUID: BZk/GHsQS5qiZdBzt3RJYw==
X-CSE-MsgGUID: OEuFKEeLQgmeTTYpUeG9tA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="81383433"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2024 03:03:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 11 Oct 2024 03:03:20 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 11 Oct 2024 03:03:20 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 11 Oct 2024 03:03:20 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 11 Oct 2024 03:03:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GFMeZkvkZUyx42GlZTtAx8pbmMkNeFM+YXxutjxYvV/zMZD55G+SyvObLRiSPx1uwqX5D+PQJcsMdsaLYat2eKqTfv6CBco5dLQYdKxdtZjULOImRLCA3mjDaVg68CJQTt/qeuqddIDfOKunmJIBO5VrH3uGvsAh4P8L9YjAvPcnEkTi8+lQufSpm43wniNUeIhKPTcHAH4uvVGffRoEvOA7qfnRYk+AwyX7Wh4VMWeuovXM3AxXrJSgnbwCuSpoTcWXMdAityZ1Py2UHNvC+hreM7Nj6gx1XmEiAo+LqFfSJRMbR7If1jkoN/Y4es/0fQKnV9M6QL3/K5XrD+bEOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8jjPuRVAlxhG1aUasbDBTdfru+6miE2QrDFnuaPFR4c=;
 b=GmrhjpwYSEscsq97JxgefPYEnmHupQnH++nFAgwU0FiEE9ZsgvsBZpuUO1TfIqj5uLv1tKysgI+qdEqbm0vVqP0DlfHVQjNRcKHW/ZQf0+eDBKTY8KEuLB9X/aqkPQj4Gvf1DBPNwULO3slnxFNEbKVLan4UMVTntpETkCKBuxYw5k+x5Tv/Q0fsVbRtoJKWo6CqCpWLn5Ejda3NfgxcripoAjAXw5sxzwIEVRhs/UZgTYGeEPZdc6/1ORRPssNouNXgqgz9SjF3QzbLk9zn9L2m4UA7YzGFXwYW5hKNERZyYSCakW2QTKOVsTy2U2v8Nf98KK7SinP94iIOIaUzwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH0PR11MB5078.namprd11.prod.outlook.com (2603:10b6:510:3e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.21; Fri, 11 Oct
 2024 10:03:16 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%5]) with mapi id 15.20.8048.018; Fri, 11 Oct 2024
 10:03:16 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 2/4] ice: split ice_init_hw()
 out from ice_init_dev()
Thread-Index: AQHbFMHCwBFY/YVtWE+VCTNLsZsU+7KBX05g
Date: Fri, 11 Oct 2024 10:03:16 +0000
Message-ID: <CYYPR11MB84294222DFF52958AC079052BD792@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20241002115304.15127-6-przemyslaw.kitszel@intel.com>
 <20241002115304.15127-8-przemyslaw.kitszel@intel.com>
In-Reply-To: <20241002115304.15127-8-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH0PR11MB5078:EE_
x-ms-office365-filtering-correlation-id: 13ebca84-24dd-44ea-72c7-08dce9dbecdf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?b0fVEMTXWF5ThxyfT2KmDMb340gwkYdTAB8c40S0hswOdEszw27Mfc7LADPe?=
 =?us-ascii?Q?U0aWJcTeO/5b+aPixxDUkoAjL2RpTbIIPudT+9CVT+NwF2hxp+lkGdd8tQPH?=
 =?us-ascii?Q?VfY9pgt9lc2LQGWwQBEuBMEv5PhmaeLeP0uHlCCOIRrCt8JAL3jnKtJaZyhR?=
 =?us-ascii?Q?Zli63VOdCSnkTTWVW0dx9AL0xWS77v80/y6bAc1NQRS5c3RgPLxi1z3DNXdj?=
 =?us-ascii?Q?/6RugtoLybCgjRwdqJghUXIM4WM0u4OaUCYtQlLcWSX6eEZ5MgwnYh13LyVP?=
 =?us-ascii?Q?VADtl6LMguoT7LdJ3bJsFN8cYsmMSeK0WcaxbEhdTm/vTcSrqCD11wljnFuy?=
 =?us-ascii?Q?JR1JWeTnph5ZMuTxATJXxD3uuB142dZkzVpDlXwBTplFwkoacOvW3N/CbDDh?=
 =?us-ascii?Q?Um4ZusRphlLYxiTPJXxDMC+C5KtRdd+Qzc9HO9qbbHcYHqMFlB549rgGhPB2?=
 =?us-ascii?Q?jwOPWbITyMeVmIh9/a4ovzfmZBQV2e6NMR/pd7270OsLSyUf5xGruAFcrVaN?=
 =?us-ascii?Q?5eY9ia5kL+NJOLHUZ2zryUW0KvuHPECWLT0d9i2jNUNCmPWtC8egVLU7VWbB?=
 =?us-ascii?Q?qjxV1IREaGtf1Vj+GozCSJzd4+Z86qLQuKf9bsuo5On+txP59bNFsfA5HEtU?=
 =?us-ascii?Q?ittiFoTXBS7RzB9QXGrvcIb88VH6XaYd0DLhnIG2AoqY3I1L6Q7ENXXyRxtB?=
 =?us-ascii?Q?C7Sm7nlViHUeeM8j50eqrhhUUknCHd2RIc/MYTvoJFmngokrXz4gszDjrKmW?=
 =?us-ascii?Q?qfSDxIdLZyiE1hqX6mTDTTBPfTz97hkTTleEwgie4+gOVs7cl+pePqie4Iku?=
 =?us-ascii?Q?5IZsniwXtFkjwJI8yWH13aoQunOSQZfgs9xvUs8SSLXEeGFCyuzne1FdlIw6?=
 =?us-ascii?Q?fsRqDgAlj2UBtptPSrXV053Tow/IJULfliYhYnP+5bY8q6wuZB3o/PyQJ0tT?=
 =?us-ascii?Q?ND5DTyNJl3ALcq2P8iC5bKz9yg9E6Urt6zQxQBisLnPf6d3INXnzbPRRgBov?=
 =?us-ascii?Q?T4ZVkWMLfi/Uek5+BcVm5eCVuvLwc9Jl3iwgXTdZJrzuoRtu8cmeJHNmFYV7?=
 =?us-ascii?Q?Cd9mz6fgzTni46M2aXUgm5gtH8Z/MWLcbiC472s0mvrp8R9MWi/MJWeQ0Vba?=
 =?us-ascii?Q?DZpqxAwKZLWDwYW7GEmTpxM2rj0mWcfeJcLdt40ewKp+2het5tuOxP9Wvmor?=
 =?us-ascii?Q?skSXrbnTyny73/wsexlrBynnRkyWi63Z/c5m0tww556IacELpOzM++SlhoS0?=
 =?us-ascii?Q?nz0ISLyI3tB6APDuBd0bCJrFuK8/cJZeE6YJyTXG++FQ8jPI2LLifETKdMT0?=
 =?us-ascii?Q?LbJ51az/9Qd6yCMoL7xunXdkKFw9/GVDNLi3xYcUI0pvgw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vlkhrK99ex9ddezOwXst9No15C9KdquOkdiseE9QACPURJTvGC/tbGtaxtfa?=
 =?us-ascii?Q?77vaFJ3/CrwQ3K+QAO63B812B5NRsGfvBHaX1ejIfGrSjweNDoCp4pNPkmGS?=
 =?us-ascii?Q?bti33vzHWUZSUOrRR/cEYabvCEUW7aInBwJIWdYM+CwfgGWMw+OOQoJsVrrE?=
 =?us-ascii?Q?0d/GyPqKNDn09cQFJBGP2mcxy5zAX2Jm+Hw4l4p/nM2++TawDsfS3/WR99lW?=
 =?us-ascii?Q?FOJwO2joQa5YgEXkJmtN6D+E1pYGisiIzRqiShwiM+w4dnGmCUmBLRVYXcz5?=
 =?us-ascii?Q?2UwWql2frsgxbPIxHD3CZ8yj+v2sbyA78L+aVhhgqI8tlRVEZtvDzPk27n4W?=
 =?us-ascii?Q?rQH9KNFrOWsjKwptUumbb8H3vrpLRXqiRk0a4Ev9fB1ljyuu52uP2GwPNyPg?=
 =?us-ascii?Q?R63ro+Y3FbEt3Y8KJrQQRNHjtsUDNj/Vc7LRNLgiMxRm1A9WtewNmh4GbGSr?=
 =?us-ascii?Q?B9qqjqDYJoYP+cmvOXMuAGynbaWV1PCeJIi46cMwXaDk4QmKxCGvtM0L6yj1?=
 =?us-ascii?Q?Bv8BUGS1K88EhP82eJ8bXtQWa/zsYCwf41vbfPNRG2rQ7As0l3Hv/YsC33n0?=
 =?us-ascii?Q?q7lXmdKkWm1qi1KM96YR2Ar+/7i0oz77L/nJdgzoO5hBi5MfZWHsbWfYLO2q?=
 =?us-ascii?Q?dX0jaosA3r2iFyqun89g6jeqvDotwpCEJCKM20SISHc6bpCubFKwrdC2VVmp?=
 =?us-ascii?Q?INjodW+XYiMGWCf6aBFTKHhnuuis8kG74MPN5eUSv/+hjrvezrF6G4Eos0bh?=
 =?us-ascii?Q?+73zxB91+z5+jLwadIcoSPM/F0rshnhD3QEKKSZyhotrO8Mz9o2MNhLLi75w?=
 =?us-ascii?Q?hmP7mHmOUWe7lNyaVR4ms4VijHCJNOlPysNMYdpXee39azrRK3BtC5sjJQD9?=
 =?us-ascii?Q?xZnVsfRZtiZsTP1HTOPHQl37rNAKtHXXPasH6JnHXZzFZnpbilgCSJpMbujD?=
 =?us-ascii?Q?2Qyme6Yv+GSV0hYMA67TtWIjv0bpsIX4T+VX/QPmAORc+8rVarwzU3/uHDen?=
 =?us-ascii?Q?zjx4yCoUKf3U2rFrO4B1lb5OXrIU+QGtxeqNe2LELmblq4vIHiWXBb4YonDi?=
 =?us-ascii?Q?GcNXdbkSK9k0Q1boEZKlsPKjQfY3nB8yZGk2jXsVpjDE5r2rmSN0qTrEPjpX?=
 =?us-ascii?Q?ag/HUHXxMqoe3qm0GYup2E2vIHwp+9nUoLS91+gT6wHUxu4hBKj9MqbFCvn6?=
 =?us-ascii?Q?p9ikYieLCh4ec/Pw3jIsBUkEZTfYxe7llg52dqHC2TYT6C5iEXwBhWWe9BXQ?=
 =?us-ascii?Q?w+qLM7hIUkYGkQdWBXQR3QoAs8PdpqABOfmrNrYxmFgaokXZHNXtuMkWHy1X?=
 =?us-ascii?Q?cKT8pN3GsAZgneTqsQcGkrs5A4ynaabFbPOtxcX4av13nagIyIUMfKZvLpTN?=
 =?us-ascii?Q?23heI7mLReMHbX54hLrdGHdDTOWgMXb0RiSduHSsIon+AE6qctu+C8CbhCFd?=
 =?us-ascii?Q?qRUP8F32MjGX/aMFRzbISvK8GY1s5j78VL5fX9yeQoRaOhtIGZZzNK7bAzS1?=
 =?us-ascii?Q?qwZHDmO0MY/bkihD29p+mDfGSTcNNLFngkITWg539WjqtdYeIiB2Vd5iv0VD?=
 =?us-ascii?Q?+KowVAB3A3qE9k7bh/v14Gy+LLFto+KZzMEgkXF/ikpxl+edDeCZ/W+9q9l7?=
 =?us-ascii?Q?pw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13ebca84-24dd-44ea-72c7-08dce9dbecdf
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2024 10:03:16.0879 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uj9XIGf5iaEDsYjYUaQDVXbx4vidHrCtXOCeinZ1j4aiYxTFluTkQI7uxlJaioHFAttMqeAig5wpGnXTeiOAWmDTxRsFP+AMqlzoPnbfYD10mnAMadFhIEAWlo0hZxj6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5078
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728641002; x=1760177002;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DO35ZZrP7RLlnBjSiWCHI+mI46YolDbQnsUhGQX9EsI=;
 b=HZuKyrqYFmMnUL1H6BRxmZci/ljWPaWbUmZpEYmqXYKMQAbUsb5ejRgD
 vxb7hYu8DWpJlwbNZl5kLqIrjP1KcQway68hD3ganUy8rACjERr88J/sS
 X5MHB42Wgxvgmo1rZUSpNat2xbNWVvvhOPf9KgO0YET6AvmaDWT74LIIB
 cgb59WHqq1i0OOLAnR1b2tupFc7J7Sf74yB/CF2+ASSF1OCK8NMk/yFKl
 EhS92mgln5VZmXLtAqjsGRl9WitylgrsLqOFx7ZJYBaad6I/NGc/zQvfd
 igesVo1qzSd7Mi1nbSpD2r0vErLKrDqqIVnrdxIiqGJwJ+AbXWICL2ocF
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HZuKyrqY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/4] ice: split ice_init_hw()
 out from ice_init_dev()
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Marcin Szycik <marcin.szycik@linux.intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
rzemek Kitszel
> Sent: Wednesday, October 2, 2024 5:20 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>
> Cc: netdev@vger.kernel.org; Marcin Szycik <marcin.szycik@linux.intel.com>=
; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 2/4] ice: split ice_init_hw() =
out from ice_init_dev()
>
> Split ice_init_hw() call out from ice_init_dev(). Such move enables pulli=
ng the former to be even earlier on call path, what would enable moving ice=
_adapter init to be between the two (in subsequent commit).
> Such move enables ice_adapter to know about number of PFs.
>
> Do the same for ice_deinit_hw(), so the init and deinit calls could be ea=
sily mirrored.
> Next commit will rename unrelated goto labels to unroll prefix.
>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  .../net/ethernet/intel/ice/devlink/devlink.c  | 10 ++++++++-
>  drivers/net/ethernet/intel/ice/ice_main.c     | 22 +++++++++----------
>  2 files changed, 20 insertions(+), 12 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)
