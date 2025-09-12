Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E33EB541D3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Sep 2025 07:00:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C481608AB;
	Fri, 12 Sep 2025 05:00:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kYTw4De0pCMp; Fri, 12 Sep 2025 05:00:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9E07608A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757653249;
	bh=cOgez3/2XEG697dU2zfX+OjJQn0NhImX055190si4xw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Lu4O8/eEpLICFnZBCFD/ZL2KhdEacA7OGQfgyWsd2cjatqMuyOEktJnZtuk0Qbq8K
	 RPUEqmLijQonAGaxwhO7DU9RWqCpdX8035DWjem2H9CAbaVnoXwvQIj20w+P+72Pc0
	 bKwAbh1LKMMkn2H+FLMOY2ouyVTtFKCfaKqfUmPQmBkmLdrVNSeYVo9k3PmEsDjNyt
	 iAvBTOenx7U2jypGOE9mTQwVhjXdyvV0yPJ9x0ExWS+PpSE2MXFV0dx3icR7fa6p3G
	 H72tERvJbRbHrpM8MCxawYF1rGwksbxJkYspE6txwqWWwlo4UGq0W+RYoUgFo07j9c
	 dUrrfp+v9ponw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A9E07608A3;
	Fri, 12 Sep 2025 05:00:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id A234725B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 05:00:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8858340BA3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 05:00:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1-UJBMe6KijQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Sep 2025 05:00:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A271E40B9D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A271E40B9D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A271E40B9D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 05:00:45 +0000 (UTC)
X-CSE-ConnectionGUID: HRtQpG36R4S5ALWX0Tdj5g==
X-CSE-MsgGUID: mtx+jPKbSoyJM3Os0bwliA==
X-IronPort-AV: E=McAfee;i="6800,10657,11550"; a="59225073"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="59225073"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 22:00:45 -0700
X-CSE-ConnectionGUID: xtqYsiZXRNSf5c2DwKn5FA==
X-CSE-MsgGUID: rrOstQ/jTjqF+j1h3QxqbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="178189242"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 22:00:46 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 11 Sep 2025 22:00:44 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 11 Sep 2025 22:00:44 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.75)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 11 Sep 2025 22:00:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=esJ8Jr7AJEuGl06ygbC1Xj9znHvrIGGZL0rMNsg/l4TKL/4bp7vLZekIs+PBBjA1kYnzaQVfWBKP1y1mDnYvkr+tA42KxGAvo8N3pllTEsUNQZBxO3b42AuFwhnnxvUjyDK+fepjvuN+b19M4+HRG3gk08MlDZ0KfJ0/8396xj1wFp2dt3ghK3QGEBBxL+GaI/FeEXtaEp4NBe4dGRQxDRKyp+NM/qnzZuLwtIsvU2qnUQCEvG6/HNwoRXqGcXk9IG2HC2blzUjYjlD2fHiYaHzk2JMKh5JQKh7wy0+71xAky7FMibSEYFrnl5OzUmJxuY3OCOkdmIY2si3ZaRc5qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cOgez3/2XEG697dU2zfX+OjJQn0NhImX055190si4xw=;
 b=hsBFgI2DKoZ3kDGbDZBsV8lwaUGsao9BUX3o4xKpMNG1hbKya7KMz6tBXeiFMAhwf+U8OxqrjWgYAqJwYpoMAMdcE2ULFlZTy0ke9JPmn3mlWpBASR0ILut9WQ/Mx4l0aShwlsnFTknkEOU8mK10E9TRw0sM2E/Zl5AaCmrByg+hhpm1es6lkBw6ZhOAFCcRPlH4CnGbu5egLVsu9B6lNgHgBPnSk7QxDkWomQHCdo8MrTV6p+W5FJ9o9US89ez+zBpVnFFZDGC0SjHEoztS9ZTRXXnndp1y+g4Ed9zK9b1TAezVxnZmmkBn7W5NOVqCQHYc5x4bDW74pe/MlYIC7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by CO1PR11MB4785.namprd11.prod.outlook.com (2603:10b6:303:6f::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Fri, 12 Sep
 2025 05:00:42 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9094.021; Fri, 12 Sep 2025
 05:00:41 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Karlsson, Magnus"
 <magnus.karlsson@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] i40e: remove redundant memory
 barrier when cleaning Tx descs
Thread-Index: AQHcE3fX/ox1iENfCkyt4jVdPg5H/rSC8KFQ
Date: Fri, 12 Sep 2025 05:00:40 +0000
Message-ID: <IA1PR11MB6241633A18C6497E503DEB278B08A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250822151617.2261094-1-maciej.fijalkowski@intel.com>
In-Reply-To: <20250822151617.2261094-1-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|CO1PR11MB4785:EE_
x-ms-office365-filtering-correlation-id: db495085-5a18-4678-483c-08ddf1b9525d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?b6+++SIqSZAqdQFoJzaL0OhFa3p5Y/Rcbr9O1Qnfij62tMw0XIMD9L3Aq+VN?=
 =?us-ascii?Q?UKkaAbCpgH6zlSzYirJX4zGsr1w0Q2vYZSQkL7CRUc/P4Mvl2HqADBuOii+q?=
 =?us-ascii?Q?PGOBU4HI2O0NMdF0H8Iy4NrQAcxEOGcn94kd8BowtgDKhswwUdeKwFj/d8kn?=
 =?us-ascii?Q?OY3VwCg7PFD8uVDw/3HA9R9wj5PSdnFQRx070D0Wa4jH/XLDfAaF60mJXpAc?=
 =?us-ascii?Q?nBhlscuj11V4QFpI7/++BvhFw5fEgoADIs33tHRFT5+sggBTYvmIVc2NbzwL?=
 =?us-ascii?Q?N/0F6Wb+HKgVS/ZTCvtft6JEuwuej0N9cD5XZUc33zMRwZFqXq3j7aMW3WwL?=
 =?us-ascii?Q?xrEsWDA22sDyy6/tuqlGDLBLvkzILlrVMaJQkh1Zbeadt9K9MFAJiAU1xxms?=
 =?us-ascii?Q?k06ov9Qq1TeyuI2z5G3vdfpZKDrbN1vaQX6/b7GI2uat+0/HIQQgjvYP5ywW?=
 =?us-ascii?Q?2zzrH9wxqUKACJFzrGwXG/l6HDN3r2OE1btIKUJ3cpx+nkGyYma2jiqzvyZI?=
 =?us-ascii?Q?tEVQSMtW7DDS0mH94IbGMzRR46jlZk1Skf/po+uWDwfCNkmEFnNQ6x7M0KOy?=
 =?us-ascii?Q?d+S1pldeJILMNuu3eqmhgpXYKIrftLaOqec/DDDrL9d2XFHFxQcSwTuYYX0/?=
 =?us-ascii?Q?+S40kBxKcXovM1RTtOgESdc5T34VxbJVu0Ai8SZNHpV0utTpfCaMvMmfQBl7?=
 =?us-ascii?Q?Htu344/ACToh335e1paxV5sYuEgVvU5fyalHHVWTiWdoL/4KcC7vxMOwvlE4?=
 =?us-ascii?Q?XixJyJMATKERNOmVzZxbnAeNiJ8B+HrfbJpLEiwlHxOH/bhmqkmrHeMej5ke?=
 =?us-ascii?Q?Nx2Yt0rwpgiAOOzTthQSIX1g8meLiWWyw0ahe2ptLyATPdcAIVVxtOoA7uYo?=
 =?us-ascii?Q?7WGfcDDGMIW/INfo2vScLfh055ZwlwL/cXeZexpn9RJlLptiBiGrW2dpul40?=
 =?us-ascii?Q?uHmyDFg89tddo+Sc+Qn4oByPyaqiKUmIavM9SLm5ZUkgsJJ7yNkuu5yNnZnJ?=
 =?us-ascii?Q?MlcOqmzTwyjijQQGJmmlFufqwnghsDyMLp3tpzDX3DD6MrzID61JAxhC40Iw?=
 =?us-ascii?Q?kPgsxba1BB95T1DzpriBaNCWwIj14eepnpDhRJHZf9IJtGPKX4tSRRnMJwvB?=
 =?us-ascii?Q?k1riu9nNB0vqcEyTn4I1aWhgvN99FJxLHzVk1o7pXllECd6sHJsKljMY4THD?=
 =?us-ascii?Q?D54AELMgH1xLBxsZckewGj6dqnX8bRN9V0DyN2cTL2NbYBjyNg43LhwwUPjR?=
 =?us-ascii?Q?/lEHjqGrXk0ejzSdpf5Qvtg4ARgi4p3GdCbqBoTuEf3TisYf6Jqs9qhBmMMq?=
 =?us-ascii?Q?sQSs1suCAKUeSPlaRDwPv910+pnE9VQ+2AbV9jjLlljo5fcTMGCPtuxCBfTn?=
 =?us-ascii?Q?OCzWGQ9QHKBZKGnXA8rntcqHMpRHmqzgcr3/itXNuc8wyoATT6tKnV3+B8ui?=
 =?us-ascii?Q?i4KSjs/1cpgd6UpHUAb0sgQrDtepUbwy4NJDYX0gxrg50RncQTq76sug8/Jw?=
 =?us-ascii?Q?P9P+bihKqeWb4Xk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bLvD6KIU/g7tLusHPZA3RILiVJNCZAHPaq5rTU5VsqkOaY/IYvEO/ffjeel+?=
 =?us-ascii?Q?tvPZWwEH/8SPU6dxXe77bN0hjbFm9VEPONGUfrDTkcrSsB6XDVNeCKlVwuXr?=
 =?us-ascii?Q?hDmxWM2rSLhxCkCnxsJZG3fH6ctbFzzPQeJseJvMfqd7rTE1RvIDIBu+OuBx?=
 =?us-ascii?Q?QScaAPx8ZWQp+/wlsrY1xO8tfk0ge+V88pHIUV5DfmofPH9hM1mulXad2qch?=
 =?us-ascii?Q?kIfzn+xbLHUCvEk/kF1hOvuvigFoA6xG1hZcaapO+iMXYF5dBR4CoWUYEAbU?=
 =?us-ascii?Q?XnX/+4uV9wEoQJKdyiQ+tv7UJiimlxr6IdhS8XkZbBWVsOSE0lOIyWp8se53?=
 =?us-ascii?Q?hBZvLOabSYo5ktdtKRYyemKZEY8L7fAWBk/jH0Iij50g6XDjcGP4Jbf5yz5N?=
 =?us-ascii?Q?LdV1OdecojWGfkkrO3GlpsWH7fjNN9PnlajFSzJ2V9k+wLDGih1uecj1N19H?=
 =?us-ascii?Q?jb4WlU5dQ8PpVpWYJ0FN2RWSdE264iBKwLcAP9R3uQpnIg9PmKvKFwmnMhfN?=
 =?us-ascii?Q?OcvTVhxeaO3z1OncPjcBNuj7TyFmLprNa6g656E4d6bCKlYFRxd8IU9vx3rH?=
 =?us-ascii?Q?9Xx5GBXHHWdXy6M19yF7FI//cdUMbQ0XboTKeCcxAsnx6RZgoA0RslLo4pNn?=
 =?us-ascii?Q?Cq0WBLyt90F2uapnzk34UhWcx3aV04drTSHJFsW271TgMUH4p0WGqn3Xqog7?=
 =?us-ascii?Q?ZNh86sVxjAR4BE1RB/HCMaH5Vuba5oE/2T1Xp9xtaUQudV/EHcKGQ2GwqvfS?=
 =?us-ascii?Q?bW9amJzjd1ZtcQuI7BqYH1r09eK58q5YbiZUBvNVDI7Rb2KZI2Np+913ATU+?=
 =?us-ascii?Q?y8bEyt8d0dMfvQBzqeE3AEufNKePV4opdMus6CjisSrGKvhXKItauiHLZhi2?=
 =?us-ascii?Q?6kt0ZsqRDbJ4VejY9VEAGlZ0kXskzk/obIHr7qq75fH01kA3YqMxLmu0NMdF?=
 =?us-ascii?Q?NbfeUuxjwVtCbqi+YF/HVq13IPkidBR8RtC70gFIhDgc87hxyl2kauhEpzU7?=
 =?us-ascii?Q?ddtMKdL6VpkC+weHeGpIKLhDm7Nq1vak1to9BIu4LMBob/PIotW9iou2+6PB?=
 =?us-ascii?Q?ztlqgBHx07vYbK3t49WOMsaK7crFKyZOryDXwTUoEsUbdhbIdkQ95Z2p9Zih?=
 =?us-ascii?Q?Mf75e2YP3QzB9WnWWSlZoekTJHVKrKAoutZHbi9X9uNfajsruhoKomnKOdyl?=
 =?us-ascii?Q?2H288N7E+kNhjDquURB1z2MP8jgrWOjgOdrI4boVvYSJH/Q/5HoTIiuyqppP?=
 =?us-ascii?Q?aklKSDGHv6o24WzDFNBds0qdmheBN7Hym7uYXBYJdXYBiVXA1JPf8H0o8mH/?=
 =?us-ascii?Q?TO5fGjJu55fM4xNXf1g8QpXOBB8noHdkT/MMoQLbZsKuqlN6Ziwk0EZFmlyP?=
 =?us-ascii?Q?6BUIWciv2eLbuh1m+gsf+qvXzaWjASfFyh5C+4kS3k16QdbPvw+UKzyCRDN3?=
 =?us-ascii?Q?1kdi3BACC5mna78kw0RClnDBh6PrUYX09aS9HRNALigjTLat0iuEvuIP45O2?=
 =?us-ascii?Q?mdgQiVOtR9FEKOdSzQW9pY1nRStAXTpGTYIoArXLX8Z5Fps5LR1vE0OnsouY?=
 =?us-ascii?Q?7AW/r04bhP06YeNqtodCYQ484yjGT51tvdeDAx6V?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db495085-5a18-4678-483c-08ddf1b9525d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2025 05:00:40.9513 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hqloDRaOSX3D8fRs2xQiCzoUpT2lf0d3uJlygs+tPwcjrX8m9lh9+NVc72NHfhsR2/XYlsjvFbrdlcJRl69FzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4785
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757653247; x=1789189247;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cOgez3/2XEG697dU2zfX+OjJQn0NhImX055190si4xw=;
 b=KmWBm2r2xPMrBh1xkyQo8Lwma6+rm667jSipfV62jNPTcTOgtHZbQh4q
 NDmBFcabXOnatYn76gueTFaCx+LOnfAZhBt4MpVUHrnFMsOgesv1C4fjE
 Xv1N5LlpQAbkTtdhmosu4Mv/2XfK0TXTNb4jfPmplOAmvjWK1dsPY58Tw
 f/7I/v6tXV19bAIG0kTXp9ASzgaDaPiYR+Q45VkxIxPkNEra04AmPL2/l
 ST6l0tcrvGcvadDDDFEma0u6Hr2REUqRuC/yx8evYN12bKkUJDgiYYLf1
 FFF0K/gjsj3lKlnnB2FxYPVGS9tCZnd5D0Pnpa/Q3+NkmiB2cbxGknB34
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KmWBm2r2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: remove redundant memory
 barrier when cleaning Tx descs
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
aciej Fijalkowski
> Sent: 22 August 2025 20:46
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com=
>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Karlsson, Magnus <ma=
gnus.karlsson@intel.com>; Fijalkowski, Maciej <maciej.fijalkowski@intel.com=
>
> Subject: [Intel-wired-lan] [PATCH iwl-net] i40e: remove redundant memory =
barrier when cleaning Tx descs
>
> i40e has a feature which writes to memory location last descriptor succes=
sfully sent. Memory barrier in i40e_clean_tx_irq() was used to avoid forwar=
d-reading descriptor fields in case DD bit was not set.
> Having mentioned feature in place implies that such situation will not ha=
ppen as we know in advance how many descriptors HW has dealt with.
>
> Besides, this barrier placement was wrong. Idea is to have this protectio=
n *after* reading DD bit from HW descriptor, not before.
> Digging through git history showed me that indeed barrier was before DD b=
it check, anyways the commit introducing i40e_get_head() should have wiped =
it out altogether.
>
> Also, there was one commit doing s/read_barrier_depends/smp_rmb when get =
head feature was already in place, but it was only theoretical based on ixg=
be experiences, which is different in these terms as that driver has to rea=
d DD bit from HW descriptor.
>
> Fixes: 1943d8ba9507 ("i40e/i40evf: enable hardware feature head write bac=
k")
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
> drivers/net/ethernet/intel/i40e/i40e_txrx.c | 3 ---
> 1 file changed, 3 deletions(-)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
