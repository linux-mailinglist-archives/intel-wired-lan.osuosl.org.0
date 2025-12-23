Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CB67CCD96F6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Dec 2025 14:28:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3B1DC403EE;
	Tue, 23 Dec 2025 13:28:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id drgnEIBdHTVb; Tue, 23 Dec 2025 13:28:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A331F40424
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766496530;
	bh=hhuao0J4M75L/ZgPkm6yKkEsHnDUJ/jHEvxx0DO4glg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xPq88m+treFZcoPKzZcD+H9feo6i263PptM2YY1GxSlJZkNOPrn84Pa+ZOepYFKz8
	 d41bk05ZotocpEtHqtFAFyLICAJI3UCAOh3xcUm82vxy38cvveJzhFzdquMWfvVFBr
	 u+OQMyIdXhkgDBHO+eX4rd0ezrKaSgDJgz90iyf/HKumtLxtGH+6/Cl63c7apbWXGD
	 pNQC52GacTCzkTtrf/oxq4P3Xqre1MAMUhGFTe+KF+q8t6MkY5HUDWsH/ymdFpaJbW
	 likBC6k950V6DGV3Dnmnvsh7CDRAkUVxQD+RQk9FUVS4W04leRteLJkndbTxdF0pWe
	 oWOoVEMo5Lekg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A331F40424;
	Tue, 23 Dec 2025 13:28:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id CAAFA255
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 13:28:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B969D40217
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 13:28:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zhyb1XjnOJfR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Dec 2025 13:28:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1B56540143
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B56540143
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1B56540143
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Dec 2025 13:28:47 +0000 (UTC)
X-CSE-ConnectionGUID: xTcBk4JnQPCQTGR7dt2tPw==
X-CSE-MsgGUID: wjV3HJ8GTFGH7R9nnpDomQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11651"; a="93816947"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="93816947"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 05:28:47 -0800
X-CSE-ConnectionGUID: YJK/t33YSyyEesaJ4pndCQ==
X-CSE-MsgGUID: jiRbSIwMSmCXzmp58Jxgwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,171,1763452800"; d="scan'208";a="198914499"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 05:28:47 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 23 Dec 2025 05:28:46 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 23 Dec 2025 05:28:46 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.27) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 23 Dec 2025 05:28:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kRdHQgy3TjscYBuPIJ9PAOkWX42eV/sXTveHZDvqdX9s+2JxCOZUBxFjlmrcBuaeV4T7s0Eog/1tePO5b2P3tvyUxc2Ynw1i+D8OnMNtHPeerQk1LmHVlpzYWXzLL+xiroR1/4KnNv+JdndLAoa3jz3UC512k/x+Ye4kBX0sNZUvf6UkmlPejYiXbjCx8IaBQQtvKWjpcy69WzOUWVZsHNDJd2ZSlxLzBZyqRkZUelNuP3yr1m7IAH0z7JYkNEhDPYsXBAIVGIImxDvvx6Jk1HdQD7rMkA7ff8wSgSXjsdtn4uB7dR3H1AKRLMl9bptlv4/MyT8Nff4J5mA8hufM3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hhuao0J4M75L/ZgPkm6yKkEsHnDUJ/jHEvxx0DO4glg=;
 b=Arlmj3gn2PWm5mQNAOlE3j5vT/F6559eKTlcjWlTiJAPnsetmZSSRPawZdUu1OUCzEHDdPhIyvSEFX1zD2E53t5+cIPH3ndCBnV8IQrXrIW83TDb7cekChT7VUIMWxAUiVIbhNIIps6YpHfFOgb41J5mX1wnxOh+Q/0Dg9nlBPHCg9h23c+4+gjxQk4d32Sx2u3kAJSy56XEDhPXXTNVqya0XB+k4Blh5iUqSTYne0GmCVO8RtidLe/mgs5OeH+IfTr8JRDdeWSOPGsJFAjUDKBXVz9/gWHhTLsYRUnqCx5+Lt+MbV+1f9o5pBBUWSlnU1q3HL/FH02XJqkaIoBoXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CY8PR11MB6844.namprd11.prod.outlook.com (2603:10b6:930:5f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.11; Tue, 23 Dec
 2025 13:28:44 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9434.009; Tue, 23 Dec 2025
 13:28:44 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1 1/2] e1000e: introduce new
 MAC type for Panther Lake PCH
Thread-Index: AQHcc/GiqOLZSe+C1EOTpyxSpduSxrUvNtbA
Date: Tue, 23 Dec 2025 13:28:44 +0000
Message-ID: <IA3PR11MB8986BDECF339D4BFAED01873E5B5A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251223095032.1379862-1-vitaly.lifshits@intel.com>
 <20251223095032.1379862-2-vitaly.lifshits@intel.com>
In-Reply-To: <20251223095032.1379862-2-vitaly.lifshits@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CY8PR11MB6844:EE_
x-ms-office365-filtering-correlation-id: f6bf5517-3b3f-4561-0a27-08de42273226
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?qSwAKma4PeYBZab74bbKfNL9RLZcUwzSuxkvANagsIkbLD7EqK7O16UESNyu?=
 =?us-ascii?Q?JpQirYUWipuI8Piv+BhFkrJ8JRNNp0mPk0WdQbvC6wbdIfKAMJQscAqLvQKt?=
 =?us-ascii?Q?iyz/HCtqZ0S1hcsb12oMmteILdVUznb/xXU5eKXLLaJvDi/BwVRChBFSucGk?=
 =?us-ascii?Q?p/S28f5XcQ//MCCuVzqdzw+bMiu3TEQjzv1sP8SusJWgKKkUtjLBmA8RSTJ/?=
 =?us-ascii?Q?cBLRTONjFkJG+2xr1RkRYeT7ljJ8VcNDoHL63M0upj7PSRRkWl6BxEC1cSYZ?=
 =?us-ascii?Q?tyanFdn/c/u2JdivwldT/olDZYHtcEPgyNMHwtCGsDAU6L62RnxJt99bjGLc?=
 =?us-ascii?Q?kLkKHxFJHxvhZMKAqt0wFf2UkyThVmaMTxeLuatY06FYkCi8HzVy37Sjk+pP?=
 =?us-ascii?Q?jn0XIx4ACCt0QyYRGvvcRrxwzQJiCxU94Cbx7ahP7hngByLYMpnboKNlWM3o?=
 =?us-ascii?Q?qeDq0YZpxdc5BEIL2uT7NlrAlz5+CkH0VYou4p/GA7B1+Qhd/S8BntPGpJM1?=
 =?us-ascii?Q?SEDneQEGTQNxFjmObdwG/dHYBZmz/2SxVUalfpGk/sYSU73wnn7SvYYfiBet?=
 =?us-ascii?Q?d8h6BXsNcREmwrzeaeXc+9lx6DT6dBrEuQ4r6Ihmj7k1lEp6V+pMtLCOJ50E?=
 =?us-ascii?Q?YxfDVxZq5cVIG1kA5mRR9D2OCOQMfeLKYxstFC7fXoDNa+nkGE1bpK1jAGEd?=
 =?us-ascii?Q?TDQgpER+Xcx5hrBjxEQ9xE65mxsunLBiaeNsbf+/n4y2jvLzYmCoPQ1J/cUi?=
 =?us-ascii?Q?U3FzZksh7ib3LKJWLydXgEm0tQ0oR+++8e/M9JunconenPWsgcFHTb6FucwM?=
 =?us-ascii?Q?HiBeATyuwUw3jvj8SSWGgML6lWVdvVupNiVfRk5gPEInhme/XDT0rq6cXZxO?=
 =?us-ascii?Q?nMPZP0zK+yO7wdl4UwM6Nj5ExC84YgvIkqRL86hDylHTaPbcVdG0PoHHSvkS?=
 =?us-ascii?Q?ehmL/5O1fPqT8/ENNW3CMeNwvJBXOaaNJtjYn1rGbfPl7Um2Wx2oEx9SR4hR?=
 =?us-ascii?Q?/Q2uacbq82XmFal5RLLv2hP7k1tc08Pin64f4Nixq5omVbRcBy0jPXTYUOt6?=
 =?us-ascii?Q?pzGVKGsGMebcLhyy75HImsAtr7EH/AjhBXzFnBbk+YhDO4ln4xuBQj8OLdeN?=
 =?us-ascii?Q?sFd1O5LWdtvfznjD6+tZly4EUEFmRMgVYEF+b7/nJjxGB1gC7NVHeGqjhn2M?=
 =?us-ascii?Q?4lnv8kLIiVaOluSFXYWOrokIH9gYdvpj4Ky+ZFJfYUyYShj8r2sxlXheIBjC?=
 =?us-ascii?Q?rNTrsF2s5wXNIEyKLflr6XZ4KpiaXHFFdUS8rSzbD3wKFW/SrXsC4eZv4KrL?=
 =?us-ascii?Q?hZUdRKz3ycaVhlc/bVRx2gLTVi9DIDrC4J5HAuYGll5b/RlTSLd7qnkalsAS?=
 =?us-ascii?Q?JchucKxieBrVz+8z64GSnblpsn1+JDy57WU+CJCndABd0pnVWyDekq7fppBo?=
 =?us-ascii?Q?D+z0ee1QjIaI7DT3Uf5rydws2606WuXF0UPFLQyMQsErDMMHkZd98+xRdQO1?=
 =?us-ascii?Q?54ioeebYt4kEdmnel/WKx0W2nm8B8JhrMSJn?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?i0tmj6s+WNienwMn4QxpOYguF12HAAK2H31vVtvgBe81HOOkwHNn8SEiap0r?=
 =?us-ascii?Q?3pwLvM0HOtgEsrBrBp8pTwdodGFCVPo/xaaCXc5UT6IyZ+GfmwyFAKOmp1I1?=
 =?us-ascii?Q?8C04GetdglBoq6MPQzLLGTWcWmH5QyUaNCooKozdE88lgW8zB22KuOqkbQl+?=
 =?us-ascii?Q?aTo8YbkZJVNOdIP+B0gcPSulki7X/p9mH7sKkZBEj19N5QO99cJiUvxSna+4?=
 =?us-ascii?Q?Snw8+Coae54tSlyE+E88cgdxo5OyTgaJhIcoCMeSiqCxjIejetMFzV8z2rkI?=
 =?us-ascii?Q?wPzYCDDTfoKCfJJ4Q7r05Tow2Olb75gdaqGpK3kJod0nLfhsiGv6OzvDvpo3?=
 =?us-ascii?Q?qqaX8I61Vpg2gP0rpu9G9JWnmENNJSnc/NvWdk2TYNBWePJWjpN1GtSf2yOo?=
 =?us-ascii?Q?X3nnZDghIHPkOW3DXavvee6Ds+5v8RswACVqz4IRr2xjO8foakkV0rra4rhk?=
 =?us-ascii?Q?s2Ws34uVfJJDwgCSdvQYQDRub6eq2q1d6WP5yc6mLAYD8ZlJSYIIM4Hhj8Ts?=
 =?us-ascii?Q?Z/iisPGprpH7M/FJcLT2NWs0ItkGxhmnAIhFpNwk4+EFtiMJf1kyntyFb1HU?=
 =?us-ascii?Q?ZpnMJu94jvAZfPB+KFvcaiLziOGR2T4SeVf87+BCbzpIClSXKJLbHg392Hkb?=
 =?us-ascii?Q?ux9JIF5p5F540hW6lqz8wmf0MWYjHp1pwTymcwapgj0oYHwHHo5LcrcMU7rK?=
 =?us-ascii?Q?yhqS3tN2q6XE4aAki2XC3zO9pK0gVB67PSz/4bf6fRU+dRw5zR4w0MBs0MVy?=
 =?us-ascii?Q?B2cnCYBdPMFFNnEGvtd+Co+BbxpMkHpyjRRgplRHXkD02KNpxBiUExhUCE4Y?=
 =?us-ascii?Q?POIJSvKGiqq5dhTQHlhl7YnQd5DqfdwBLbSFqTl9n5CU5IMzOjfhfDkskO4V?=
 =?us-ascii?Q?TshFXmLQRQK+cczE7s/3qSt8Z15nvDbNrc962dv7TRZOcPLNUI1c9jUuvDOO?=
 =?us-ascii?Q?RQWB0RQwM9/6imm5teFm4PacYHtpMixmDVjz6LIPQE4pz6WETOHAOdu5lC12?=
 =?us-ascii?Q?bNt537jim3AXV3RpCb00SksB8OnW3Q802Z3+7D0qO5EYTU/99hTKJ9ajt/vQ?=
 =?us-ascii?Q?spTvy+ynxhXdaqjuvdIVs5qqhV2dh0tyv3HIdZ1Er4ifGvx6tC47r7FZelyI?=
 =?us-ascii?Q?+ZlHj+Zc+kDZrW75SeTUT4ZPktQTL3E/eqRzsVNystWK33TEHXAH1aKIloUx?=
 =?us-ascii?Q?GJfxoY1I3TU72mJYGVSx6Ogp/JOZhzUZsnFGPp9hfAEza9zQ7mi3kLX3iJM3?=
 =?us-ascii?Q?ESm+SVOCGoYHV61t+CUxETWB8EljU20NwX0K4lTvxrE0MM9FTvZktUm2HxEN?=
 =?us-ascii?Q?769IfRZ5wgYPXlPN7J4TBKojCIAWsMgmoCCpYhNC/2X2F16VzYMksdsZO9Cm?=
 =?us-ascii?Q?OTaEAfDiRLIjrtCyLgESwsWtHDiYslUMuPz9wB54RJi0TE6GsbXK7KBoYtK6?=
 =?us-ascii?Q?DkcnyK0OlTx9d7+Tqay76Nl58jh525r4Jz4mJc8fgRii5Oz00Jd6+MinIiyQ?=
 =?us-ascii?Q?s830E8p58c7wn+hLxtTmaZ9EVapWVxeFDIIhOvKHsWMWgw2IvYTd3jMgQSSK?=
 =?us-ascii?Q?B9V056LF/S7gEBKG53DPMZLQkSryrzAFEXnGznf/vVsShGmSep5881PQSdmN?=
 =?us-ascii?Q?qyxoKX+hNFuEbr71jahwxzcxoroM6FE71SPLoAsT4Dn0ZMoFCIfgwWZQT5Zq?=
 =?us-ascii?Q?dR40cS6xaWgTL4DR9W4yzS3lcqAvvMcKiPl0wSpkz0zT1OnF0co2DIOmci04?=
 =?us-ascii?Q?QQeGSvPWnlRpl3qebNAQyCm89/C2REs=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6bf5517-3b3f-4561-0a27-08de42273226
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2025 13:28:44.5475 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QPXklHAungT1jiDVdgY8TGaToelEU52ECNrthiyWyVLLtAeb7VRX2FJhvvNrKJwH0EMGhSr0pD9N4jvRX8yiv/I7vUwOdEEc+TPDXD/PLwg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6844
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766496528; x=1798032528;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QV6KUq7al2pyFpddytQ7tNFp71DEfA2lkT3nr2n70uQ=;
 b=P8OzpnRvkd6GjWAHt9s3U0NikVMcrBHWT2tamPtl8CCcOUesD+ZmGLM5
 7ocfyLjUaONMk0GkZvrucLphw+aX0LmUs/QVF6FafAbzHwN1bKjhD5Vqq
 hy7k8oScNZG5dB2fCCdHAhVcF2OIMAxvZkB0VtxOFSFLaGuR3cSVO+7u6
 TnN74oPvPt+HFeA30m4f/fwWZxrtiQ8v9NUq9cxvxXN+DDkCD1GWsY2LD
 lYqaupCdgzMvMXiYk0A1vRE3W5XuKzOXTsE92Se7VarUbzzVF5qDMwADl
 woswVHah2F1+BXHZXuA0YCgNMxN6O8GB4vSp1z//TVvELJFKqblqoXClW
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=P8OzpnRv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 1/2] e1000e: introduce new
 MAC type for Panther Lake PCH
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Vitaly Lifshits
> Sent: Tuesday, December 23, 2025 10:51 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Lifshits, Vitaly <vitaly.lifshits@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/2] e1000e: introduce
> new MAC type for Panther Lake PCH
>=20

The commit title mentions "MAC type" but the patch introduces both a board
type (board_pch_ptp) and a MAC type (e1000_pch_ptp), plus it remaps several
PCI device IDs from board_pch_mtp to board_pch_ptp.

Since board types and MAC types serve distinct purposes in e1000e (PCI ID
mapping vs. feature gating), consider clarifying the title to reflect both:

  e1000e: introduce new board and MAC types for Panther Lake PCH

This makes it clearer for future git-log searches and helps reviewers
understand the scope of changes.


> Add new MAC type for Panther Lake devices for separating device-
> specific features and flows.
> Additionally, remove the discontinued device IDs: 0x57B5, 0x57B6.
>=20
> Fixes: 0c9183ce61bc ("e1000e: Add support for the next LOM
> generation")
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
>  drivers/net/ethernet/intel/e1000e/e1000.h   |  4 +++-
>  drivers/net/ethernet/intel/e1000e/hw.h      |  2 --
>  drivers/net/ethernet/intel/e1000e/ich8lan.c | 20 ++++++++++++++++++++
> drivers/net/ethernet/intel/e1000e/netdev.c  | 15 +++++++--------
>  4 files changed, 30 insertions(+), 11 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/e1000e/e1000.h
> b/drivers/net/ethernet/intel/e1000e/e1000.h
> index aa08f397988e..63ebe00376f5 100644
> --- a/drivers/net/ethernet/intel/e1000e/e1000.h
> +++ b/drivers/net/ethernet/intel/e1000e/e1000.h
> @@ -117,7 +117,8 @@ enum e1000_boards {
>  	board_pch_cnp,
>  	board_pch_tgp,
>  	board_pch_adp,
> -	board_pch_mtp
> +	board_pch_mtp,
> +	board_pch_ptp
>  };
>=20
>  struct e1000_ps_page {
> @@ -527,6 +528,7 @@ extern const struct e1000_info e1000_pch_cnp_info;
> extern const struct e1000_info e1000_pch_tgp_info;  extern const
> struct e1000_info e1000_pch_adp_info;  extern const struct e1000_info
> e1000_pch_mtp_info;
> +extern const struct e1000_info e1000_pch_ptp_info;
>  extern const struct e1000_info e1000_es2_info;
>=20
>  void e1000e_ptp_init(struct e1000_adapter *adapter); diff --git
> a/drivers/net/ethernet/intel/e1000e/hw.h
> b/drivers/net/ethernet/intel/e1000e/hw.h
> index fc8ed38aa095..c7ac599e5a7a 100644
> --- a/drivers/net/ethernet/intel/e1000e/hw.h
> +++ b/drivers/net/ethernet/intel/e1000e/hw.h
> @@ -118,8 +118,6 @@ struct e1000_hw;
>  #define E1000_DEV_ID_PCH_ARL_I219_V24		0x57A1
>  #define E1000_DEV_ID_PCH_PTP_I219_LM25		0x57B3
>  #define E1000_DEV_ID_PCH_PTP_I219_V25		0x57B4
> -#define E1000_DEV_ID_PCH_PTP_I219_LM26		0x57B5
> -#define E1000_DEV_ID_PCH_PTP_I219_V26		0x57B6
Commit message states "remove the discontinued device IDs: 0x57B5, 0x57B6"
but provides no justification or reference for why they are discontinued.
If these IDs were publicly announced or shipped in hardware, removing them =
may break existing systems.
Please clarify!


>  #define E1000_DEV_ID_PCH_PTP_I219_LM27		0x57B7
>  #define E1000_DEV_ID_PCH_PTP_I219_V27		0x57B8
>  #define E1000_DEV_ID_PCH_NVL_I219_LM29		0x57B9
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c

...

> --
> 2.34.1

