Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oLiNCj2Rw2mCrgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 08:39:41 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D27D320D50
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 08:39:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F3608123C;
	Wed, 25 Mar 2026 07:39:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fNDzT0bslGCq; Wed, 25 Mar 2026 07:39:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E0D068124C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774424377;
	bh=dYW2tgqhHo+owO4tvp3IgQsn+YZbKf3veshkBIr4Hwc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0OubDz2J8tFguhwIN+4/5+mtl/4rX+Jdu403L17jbmK462rd8QplD0COFCOb9MA5W
	 Oaq/lPmbjAN2p0T/S8jN3S8eWW3/z/iIXURFUgWM/UbMR/yhtKs+dlQNHxs728owlz
	 Wp2BuACtsREaVKaVJo4ZFf1SVszoGUCMeyuC67yxhQ7FMSkvpmhoBOjGgys0kCd6Cg
	 PNfRX7MX0onx5BwsjWM+Zkz6gAkdXuds2cNsQnkMpiaEV3MfrQr7AOa4Z5AwCmo21T
	 m+kBll0XN5kMpL8gWcDzn6yR7vuM/kMTcCPDBNuiHDf+O9PKiZ1fPsD4lowimdNtjR
	 go1lor+8Hqhxw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E0D068124C;
	Wed, 25 Mar 2026 07:39:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D5786353
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 07:39:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BADBC60866
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 07:39:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cm4EqPoOhzxx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2026 07:39:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BF3E560855
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF3E560855
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BF3E560855
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 07:39:35 +0000 (UTC)
X-CSE-ConnectionGUID: ++Oj3wIsTxen42gsIUTW8w==
X-CSE-MsgGUID: fkEp0y/iSMqNDXs6lsG1jw==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="85765021"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="85765021"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 00:39:35 -0700
X-CSE-ConnectionGUID: qifzTXs6ShivR4nFECO7ZA==
X-CSE-MsgGUID: G1XJimh7Ry686PeLj9xPrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="224863605"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 00:39:35 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 00:39:33 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 00:39:33 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.27) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 00:39:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PGK7Uoa55c8XaYzAoDA4RoAHeO1TQrg9h5VChwMpqNMizu30MoysaKqIXzsutHSKpyiZcrKN889mgU2lWJI929NC5jJHEPn1a/la4eTQVDUeAj6+IPufHXRwzLjGlrpf+W9ynfWysl57tV6M3erD5vZTJifLt+k8JDUMfOF/hB8/wLWLoW/yTVt+YHyWTFECzGRPFJeKf+H+cfkTMF9s4+oZ/ieqfkgxMp6qN8tgljyNaLGHvMONM+WSzFnOqHLDtsrLEs6CEeioKFgwgQyuLeEKOREntLLD+rE/wS+i7UzxpRQSN+Wdy8itZ09wbDXNOiXV3QSn6wzL/aOcBtjFxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dYW2tgqhHo+owO4tvp3IgQsn+YZbKf3veshkBIr4Hwc=;
 b=azdIR1ZrC707YbNRl3m0x/Pw9CiZROCZBG8+BviNSfyGW79y0y0yfLLkflKbe0FHmOsdjP2/OCOmu8wFD+SNqFZOKNvtN2e0a9eFlaC8KUYcjrOfrBzVitJU5/q47U0TRKl1cPqhFoWkNhu8Bw1ryoUPIIff9AMI+4hyBVP73EWTmXp0cI8nm6zPuQtP+qBa0yX2C5CG+9SIJ7FIjV/UoQNDV+bL/tndeOwknupbdsCkoIracm/riC32/joFhk46YhPHIFNLBDS50sqOAwFp6cWQV10xr99e0WTKIi9YkPc6Uq9S+8WJBRfkvY8o5WOi9ZGjfj0EVz9xfYjHq+TujQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH7PR11MB6500.namprd11.prod.outlook.com (2603:10b6:510:213::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.15; Wed, 25 Mar
 2026 07:39:28 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9745.012; Wed, 25 Mar 2026
 07:39:28 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Jiri Pirko
 <jiri@resnulli.us>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Jakub
 Kicinski" <kuba@kernel.org>
Thread-Topic: [PATCH net-next 2/2] devlink: unregister shared devlink
 resources on destroy
Thread-Index: AQHcvCEa0R+4EPZh/kmFtI1r4a90I7W+3LLA
Date: Wed, 25 Mar 2026 07:39:28 +0000
Message-ID: <IA3PR11MB89861D42103B1981EADEC1A4E549A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260325063143.261806-1-przemyslaw.kitszel@intel.com>
 <20260325063143.261806-3-przemyslaw.kitszel@intel.com>
In-Reply-To: <20260325063143.261806-3-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH7PR11MB6500:EE_
x-ms-office365-filtering-correlation-id: 2cb571e3-d026-424f-79d8-08de8a41a551
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|22082099003|18002099003|56012099003|38070700021;
x-microsoft-antispam-message-info: vTZQ2ZYEGGGHZ+lRdkpFMyt25qL8iSXTr8DwNoWpLRqa83PjnY79WkKkul5GsiERtZonDNyORIrW5HfXs2lFAjOhrgASYSQlaSpLbYV5SgiIhnmLpthM0UFxyu9SsYGxKyeqTC44Lcf8PwtSuQmS8jWUJEzUtqj65jLPTWhwsyNSXaJOalKFLavATqrAZz2vu/DXAZ/QhTu51V6FMM1Y/DAsGoLmKcPkb5QHLje6GEY1hipq1+mF3biwg0v7vSd+6MqLQCF8NZlGzHXttBbBI7awKebuq+XxXpezH2c3JWe886wW3PtjoU6WSK9DKOoAcRLh8g50SotK93hpA8lNrdt63b/dRIxXQLos3LvNNE9QO2DTSudvRIyyS5ubqImYQbREOk1HKt+vVIpnOLFEju9vlKm3t0GiWMe2f+HYxSVMSISR4aY65jJ+vyaKTP6AxiY33BXcmajogdufjTqsPLuLE+MrgWYVaQIMNx73mZBrAD5MORY/Quz9hCHGIM64MgIGAectsmvpx62rYustmPrMfTn+KSDLbN+A1JFpBNH8M5ZH03333t9sF0pMKjCkjJlyPAKq6ceh87Ws+1WvFEC8MGWZraTaGugP/+PoVdMu16ert5XtRsbA3/6ezheyPFghXU5dV+iQG6IveKoT5VSIGVCSAx8sO/1JMtYZ97LJQL7Tde38MjLcH9POU8xj5uNBqAcO3z0JxEnGDJu9FKaz0hTYTLmzgeAOH8Cpm2AeXid6T3my5+eXPEqIIIeoaLexxLFL9g7zn1/JEdHxjcgGjSZ1Sg5Uhl94j88mK/k=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(22082099003)(18002099003)(56012099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?i1hJd4zhz+gEsax7iDKPaSiNamPOwAoHl+fh670QVl8SwHMG9BUO+kNKaRVl?=
 =?us-ascii?Q?MfAQSYUVg1RIhyU4ONu/52IzdXJhC++fgKSH1Ck8UfK3ICHCFQETDUsYnk00?=
 =?us-ascii?Q?qIjeKEnRWp+s2phUEYVH4BpINenb4tosEszTGAWl0mKYfuRMB9ax0XA4FVCA?=
 =?us-ascii?Q?zO4BiGaRyKXW2HyQhpJZvbd/0tAbXJBxbAU9oYRuiDtHvKo5IsZW/tuVu0Rr?=
 =?us-ascii?Q?1bwg6a+L/a4mayyI8Y0CspDqKax5OOh2o5KtQqKSAwUYsFk+YcBzkhGc2BlK?=
 =?us-ascii?Q?zpZjAjPvOx3+ppQJYiV6AeoiK4iu5y8I9hffpVJV+co2pfh+M31jtOhfSWUp?=
 =?us-ascii?Q?WRUigm5ZKUBhy7LC4/FtdVR1pkCH5FGpQu+niTPDmwZUJIk9hAKAiE6l/+OD?=
 =?us-ascii?Q?Ti0M+kGKqdhP1y6Gemvql67Ij5p5kEQg0WEBrfRqa6DQ6xgjbJwIa2AL68P8?=
 =?us-ascii?Q?QUxFB0M4q7AZsCxV++gEByhxQja14VIt0t9IykA1QFRyQvCb4GUKfeTeswiY?=
 =?us-ascii?Q?PiYV9zc9HUNjXG5nWbJ3xngBoORP6LKR+NDONCtFwDdVrvaSQSv0HRZFXDmy?=
 =?us-ascii?Q?CRoYA+tpRCvmIsW7UgcVYczUzbTEbtI6CMGbwsPXJskcI9+F0lWI+Tlilz9A?=
 =?us-ascii?Q?kMmlC/d/PcU7Sxpf9Z2jHVxhCERxBIy7PAg6iXGv/Uwh7ufgMF8tX54tnXxK?=
 =?us-ascii?Q?is7AojFEmdkNXlLGqUQf/qgF4Ge6JE6j+VlghD8mtzz47oFsO5c9emQl4dm+?=
 =?us-ascii?Q?ehKxNn5Jprb9cZ62m6ngTzo8Y0YwGA2w5X5XuhvUnCLLO+1DBjeE19YuM0ff?=
 =?us-ascii?Q?s50W/Y5yPhqmiYEn4RXNYno8eG7Ili2LHhZLwX8oiJfldOLn96r6r7hrkG8G?=
 =?us-ascii?Q?8vK9Bx4rFFLUBxUc4gvKxZjX5xblTiCfK6ClfjHhkZeX7FUxhYIDNKC9qwum?=
 =?us-ascii?Q?7S/q3x3YcEchIdJS2AAfCx1Uu8MujtGR95YFTcs4a/ryobgEgCSTRrT1OhJd?=
 =?us-ascii?Q?b/TVdnFjUTX95YP3AG4ygEgI3uHsE8MeR984buOR58VGbEdVvRuSBYWeDl6O?=
 =?us-ascii?Q?j05rZrbGptPP6dw+g0IEUqAXAJiyCqgxvC6It3G62gQ1MwdQwvoEo986cPno?=
 =?us-ascii?Q?Hwqms2fG9XD0HW/MrozQeiexNUQoqHWyk/PGpF9UvorPirjZoAaCc0v3DBXJ?=
 =?us-ascii?Q?6ofGF5lPkcxe6bLBLLEkMT1ZZnqGrMe6L8PSzkRYZZh+5Qst6x97rLxzE/2l?=
 =?us-ascii?Q?zUpKEDQXBnVfl/DJOekJYVSINnIpbr3o89D5jvQ9TZv1gYAbZ14qlQkxBMAt?=
 =?us-ascii?Q?Mnmr9cRreIzEz+oGMxhgPmJju58zE+ptAlfiTej6rGtonu58SJlVs6We+Z3h?=
 =?us-ascii?Q?KPnSBSzLkGTAC5IY9MDzi0PX8ZJgvS92GO+5QXWxOsGK9ByhnKOb+oLRy1dD?=
 =?us-ascii?Q?YrHNp6OfK2Ke/SbfL0Al8ITfwRxly2pDKPwm01NPbSlXQrbp1LpFRlXUbeya?=
 =?us-ascii?Q?9/p03QbAuqwca11zc5/vI9yYeM+FOx2uVdWYMq8OmO53GNMB/U37h7Wp3JEj?=
 =?us-ascii?Q?qIVuYlQo7KA/sO1HHaEqPEz84L0yD5nHwuMED6p3Xjft2dXKEuSrBxykZfQy?=
 =?us-ascii?Q?sTaetkkyyDsGcBD50Ok6BYCcO1qUac5g1/XZIyXUZI+88eoAzefVio3L7cOc?=
 =?us-ascii?Q?i3kbhTWmVeOGJbHecEi7r9wXKSJxm70wqsJBdROtbvQZg2tXlk/HBujoY2iG?=
 =?us-ascii?Q?UbQ0t9o/rBIauEqoBPBwBLcjlQ0XzCg=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: vSVb1+GTmxuNCMiy/38pLBTs7YjZ8GjVswUWU+4EQ/1HXvT4hvGBeprdgAGC1tWL9VdeO3JWNAqF7xpzsx8Po1URoRMlFzIIoT9XGlxCHP1faO1qndw0FBW7GUgLlDJyyp1b06la7wKQBvQp2oXA04Kd0+JXiXJZJpvVNaQlSbWJ+Kzo00qC4bdLDDissVH417FgboaOXr62sG7bVP+3g3f5gprClv9nETiKGTExi8VCu0/vVxX1gbX3gRC16jXjzRh43ZWqNRFTb9iG890fgRGIo1BVZREiq+M0BFW/VT6EqWDTSuDmFyFi287Q1qol/v1iHjzls8RMx/E2ZbL+bA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cb571e3-d026-424f-79d8-08de8a41a551
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2026 07:39:28.3940 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8ZLN6jUzqbjls46aYJsZXWWFuvWOvaCfyeyS7oGKaO8rkKkgQtOTtX3ls+BTHzRgR8GodzoZ+Wj2p4pjCBN0udae7y9hL8jC/KWaN2l0GaM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6500
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774424376; x=1805960376;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=f/JxnOcsa6YKqdjuG1RN5PZUP34+SayVv5OXDxGvoaw=;
 b=h3iRDdqS7x33JFKE8M49eL5KwJkCFNV+zC1SR/3GYHmGz6ZFN6IwRlIu
 FhTwIzmHeS17AWXhVvVymgvmVmnkB7vzyhT+7tBHSy1pYJgYvqzLcuBAY
 18dqh8mdI8flZFuRPhHtNMriWwJEwbXtbRu3BpoDh1zyjJSRhaYo+CW32
 tHvDpxUpaj/k4KXovtUxiaRQ6n+592W3ExnnwtGMP1n/1Ta5LwXFNHunV
 DqRWF4trmSCLyV8gTzc2TFfp76KS8E7QODw6HqyrZUBi2RPx1ijzMwenj
 lqH1/azF5eioAbCM6xBWEHb7a1dXUKHzlc3FuX9ZmQbTXUgtc1jTI0PQz
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=h3iRDdqS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] devlink: unregister
 shared devlink resources on destroy
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
Cc: "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:jiri@resnulli.us,m:netdev@vger.kernel.org,m:kuba@kernel.org,m:edumazet@google.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 0D27D320D50
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Sent: Wednesday, March 25, 2026 7:27 AM
> To: Jiri Pirko <jiri@resnulli.us>; netdev@vger.kernel.org; Jakub
> Kicinski <kuba@kernel.org>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; intel-wired-
> lan@lists.osuosl.org; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; edumazet@google.com;
> horms@kernel.org; pabeni@redhat.com; davem@davemloft.net; Schmidt,
> Michal <mschmidt@redhat.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [PATCH net-next 2/2] devlink: unregister shared devlink
> resources on destroy
>=20
> Since shared devlink acts as a normal devlink instance, capable of all
> usual devlink operations, it must unregister its resources.
>=20
> I plan to make use of devlink resources on a shared instance for ice
> driver by separate series, coming soon.
>=20
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  net/devlink/sh_dev.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/net/devlink/sh_dev.c b/net/devlink/sh_dev.c index
> b85e5cb1edbe..5de138bf3630 100644
> --- a/net/devlink/sh_dev.c
> +++ b/net/devlink/sh_dev.c
> @@ -71,6 +71,7 @@ static void devlink_shd_destroy(struct devlink_shd
> *shd)
>=20
>  	list_del(&shd->list);
>  	devl_lock(devlink);
> +	devl_resources_unregister(devlink);
>  	devl_unregister(devlink);
>  	devl_unlock(devlink);
>  	kfree(shd->id);
> --
> 2.51.1

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
