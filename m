Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iPhMDbIiMGqpOgUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 18:05:06 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E150C688153
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jun 2026 18:05:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=f5Tsya61;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D68741312;
	Mon, 15 Jun 2026 16:05:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tt2pz9hahkGU; Mon, 15 Jun 2026 16:05:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 61C5741336
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781539501;
	bh=CaIDOxDqsWP6u8QupRt5NArQqF6utw8y7mZHCscViHw=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=f5Tsya61aG8Z879Lr+rjMWUvoXGhhumHlZxDhXopUneR76050NUv6sl1lkrO2730H
	 1WjU5UisCnM+hzU3ya9Ed50Q71MOA9M8WSYt96lAsZyfnoU5nVgtB5r/xQOAj7BoRr
	 0Z/9CBF6kuwFKBPeLkyCXzVOQ+wYrWHi7VLW7x0NGZ/lwGJ0ABxuEozSZ963wOgTRY
	 DRVx9D9Xw+pMMTvEx2pQSXcOmQsHzCee2sM20lvxsJ/FQEkAFPmOiNuxY0dsRB39C6
	 N9R3fhETOX+r8msxqpZ9VYG45ZvQT549/5Xx1k2p5ughblyCpxOmYp2QuSbL4XNWnC
	 2rMyfmCaNxMww==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 61C5741336;
	Mon, 15 Jun 2026 16:05:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8311DDE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 16:05:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7FF0560890
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 16:05:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id svN28wqgbXzs for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jun 2026 16:05:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 817C36085E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 817C36085E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 817C36085E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jun 2026 16:04:59 +0000 (UTC)
X-CSE-ConnectionGUID: cyz994CZS+ij+DPgSEk3zA==
X-CSE-MsgGUID: ZjhR1oZeTkOzw8kUH27dhg==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="92955280"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="92955280"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 09:04:58 -0700
X-CSE-ConnectionGUID: sGp79sO4TiOVOjTA9xIgOw==
X-CSE-MsgGUID: oqWLAOY1R52aA3zpTrXw9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="246606735"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 09:04:58 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 09:04:57 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 15 Jun 2026 09:04:57 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.3) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 09:04:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BgMka91Yn4qFaqqrecunSMh+SIApFHgMmo/+S/4ocu2bkUIsA2AKFwOtGjof9cat0bjKELhiAcPFsgBdrUcZSHYqvDi9oEhYXvgNjDap5QVGF6g+2iw/y7BlTSKMubZpfh3OEd0geMhuOz7P0oGhF8WebG9DJC4SBPTBpB4HYvgl9pDmX0AWd0b6m8YW8LNZFmW/353PaqkM85r1pngF9v74OCwY7C8sDiGjj4g5306eNZj5Shl+qNepkdNLyKXAsmpcNJ59BhkQXeBgP51KwWHaFdLTwjsp99Wy6lOSx9lYYwNrOJ3Ndi3SlnpL6uawrUSbB8cRkCaqGp9PYQ8LuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CaIDOxDqsWP6u8QupRt5NArQqF6utw8y7mZHCscViHw=;
 b=DNQPFRBPGXTLcunpslFPYjN7pNr5rAH3lnvJWMCtl5jxRvvWVZku4a9xbT9T1fSib/zLReqsYktMhZAxKRJn6/88vmj84nM8uhJnSaqo5pPjJpYH2eNT/jXWinNfnwErEfuy3aiH5TFvDH7xaaAjs4yhmKNn6iDbdxSwd+Plbonq7/pKf4U8bqBMx7LDhTNy3Qs/crPB23+W1+Om3oEjLq4RN/hcinVCUvybO8wP0FcH9FXDF6HMrqhHa4na/11WFVHReRVKw81frYcJz+s/u3mA7vi5rScRy2VSJOg+xuE8s5ti5RIXe/mCFc68+sCakrIQ6fq8THLTSTdUDIdmhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SJ0PR11MB5772.namprd11.prod.outlook.com (2603:10b6:a03:422::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.16; Mon, 15 Jun
 2026 16:04:55 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%5]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 16:04:55 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 6/6] ice: refactor
 ice_sched_cfg_agg to take agg_info pointer
Thread-Index: AQHc8iT9/zRgUs82iE2mZRSfFh6FubY/10vA
Date: Mon, 15 Jun 2026 16:04:54 +0000
Message-ID: <IA1PR11MB62415FA4F6DFFE79C0E707A68BE62@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20260601-jk-cleanup-vsi-aggregator-nodes-v1-0-36d6ecbe5ede@intel.com>
 <20260601-jk-cleanup-vsi-aggregator-nodes-v1-6-36d6ecbe5ede@intel.com>
In-Reply-To: <20260601-jk-cleanup-vsi-aggregator-nodes-v1-6-36d6ecbe5ede@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SJ0PR11MB5772:EE_
x-ms-office365-filtering-correlation-id: a4a0d176-06d1-4336-a96c-08decaf7d74b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|23010399003|1800799024|376014|56012099006|4143699003|11063799006|6133799003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: lrH/S1t6xOcmMAIKSprnUv59B2ytGX2bLf0flI9KG1p+IAgziuaD2mEOjZTjThWbQfoIopvmuHyzsuhTJf/b3Uk/9iYy0iX3AwkOm+HQMNHlTlkvgPK9g33e02bpyJregax5xv/5KJ0KFNQuay0kcd69hcbu560D1aWzjf5JtqFawZoDFFN2/w+f50WkWdcVmhhCUcUNX0LoVkeSfin9sCwpMfl0mq4TrjxwigBE93YduycvIru6RNY7GHRQkpxTLX7pJDdZVmzPgVFIJ0IUom+nxWE/vcMbeU0Yfu68qUW4AMBV4ybU5YOPrxGQdmWI7f66lUUolZCgHqymo2iEX2s9dwjTTmHHdgLBpGHHoPurzPCDU2n5bk5iC53emk+HixfgQv9X7KqC7OJWeAHsQxk3LFm6AfU12Iq3gf5N/5abda9lwatv4RO7J5I7Wt5zZbOs62I7qnVLkM2XO7s0rHnWY3qI2Lo7qu6K73T9EqsGgDLyL/ygdY2vKviDdH4iymTmZo/u4LYnPuqoM9rQH/EcMx8XxaBKN8VovHDoLWhMEWm+01q3w0xFwSjY4zhK0cYWvI6fOhUMAwo6/kOeLaM7yowRoFcG3FWI6E2YV24e71Be1mpHWerb1gJ+1D/joxnI709eq05SJqTkyF4sl0L3VREqT4egLSJrkmPAVf/uvotk03xfzdFB3Pv3ChunvdowhY4G3PGvrzMsg0yiqqRBWSfVkdlh8l3tSc4s/s7Ixwoa3+P8bTK1IIkU2L15
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(1800799024)(376014)(56012099006)(4143699003)(11063799006)(6133799003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SmlnaXRrUG4yMDRRVFdGMjE2ZS9JeCthMC9WZVZzRnMzSHVRaGM1WUk0cHZj?=
 =?utf-8?B?RUUvZXZkT2dKN2pwKy9tQW5KUER6OVFSS3g0S0lYQWdWTStnMnMxSG9kMUww?=
 =?utf-8?B?VHZYNzhWWG9hbW81THI1Sk12TFBHL0ZQWGRuK04yN3I4WllEblFRMFZRaXNt?=
 =?utf-8?B?THoza2pzbG9wWGVNVlNNZ0RLYVZUbDBaUFNPUFFpUXFrZTMwTlgwQnY0Q3Jr?=
 =?utf-8?B?OVFSOEZsNUU4bU9UUGt3SkRtQnpmcWJNK29kODlkNy8rN3pXb3gzSHZqa25U?=
 =?utf-8?B?OHc2UEM5Wm5LT3N6bGNMdVlJenBRNGE2WWY3NGhPR2R0dnRkdGFDcmk3eDYr?=
 =?utf-8?B?b1ZhZm1EamViOURGUFkxY1ZFdnlHKzdxY0dJTzhUUmwzU1pUa05aSzVuK1Rv?=
 =?utf-8?B?Wlc0dnJKM2JnTDhTZXpOdXZDTElyYzhJSFVkVW5ISUM0Z2tLVEpYMkpvMGph?=
 =?utf-8?B?WDFqRVJNd1c5TERkV2dWT0FMU09SbkZWUlhJZHM3OHlGak83MDA4TGExQkpT?=
 =?utf-8?B?VHRtR1RxNmFHYkNqaDY3NDN4M3pTbmtDMHFCa240a2s5eUd2ZTRIbStHY08w?=
 =?utf-8?B?ZUl6Q3cvOTlnR3hoRWtRNXdBMldSVW14YTZoWWhCcWFvVVlBQ1d1dk5KWnZB?=
 =?utf-8?B?WnJRTXlGc0JaQS9FV0lJaWZrUkl2REJUcDZvVlp5aEtLc2tMcERnMWhBLzhD?=
 =?utf-8?B?WUFsaVBvdzMyZStjaGpST0NNVG0vTlZqVWwzSE5mU0kwSUdnMnVMQjVOOG1S?=
 =?utf-8?B?Wkg4eWptcTNBWDlLMHZnc1VldXUyQTZFdFdjYStpdWNOQ0ZDYUs5QWRmcmU5?=
 =?utf-8?B?bkFmdm5PM3dKUGFBanRBdndXSktvMjkza2VCcTRGeUcyeVRYVmNhalR1Zy9q?=
 =?utf-8?B?bTdLbDZMNTlrc1VCcm5lMDhkaU1TODR4NWprZm12TnhBUTMwT1lmbEhsSjdx?=
 =?utf-8?B?bllQVTl4L3lJaHhmcklraWE1Y3RVdkVKemljNU9UNlhWNjdSM0g1U2dIWW5q?=
 =?utf-8?B?TmVrc0UxQ2FVY1ZuWUhNWGJsVWtyenQ1NHlPRUVBZ0xJdG9TUUVUL24zNm52?=
 =?utf-8?B?elNhYlFPaFlvTEJiOXdjekpPTWMxZElueFJwZDJnTGZ2Q2NJa0RSK3ZweGxs?=
 =?utf-8?B?ci9XN1BHUEx2L2NURzVRSWljZVpKRnl0cHo1Nko0YmxhRWlPVVk3cVV4d01B?=
 =?utf-8?B?T0tlZk03Q0xlM01IVXRMYjNyUzd1R0ZlQm9EclRPdlppanZRM0tIZENZYlRu?=
 =?utf-8?B?WDIyT0U3SkNRRlRXSkVXWXNKeUJvbXVHeDFWd3hrQ2xaT2w5eGtkMVh6dStU?=
 =?utf-8?B?VEwwZTdmVmR0SE9HZU5iU09vVmVyT3dIQnhrdWs0M01xVFZrU3hDTTY5cDZj?=
 =?utf-8?B?WGFZc1lnU2J5cHJCR2pDMWRyQXgzSldna3ZEMzU0YTJsOVBZVGxRVXFCWnVB?=
 =?utf-8?B?SW9LS3hrY1kxbUNGTHc3UXY2VFFRNnhBd2MxcWdVTGxSRmw3d2hObHNFMmg4?=
 =?utf-8?B?eFBHVkU5WjZuc0RpQUlEUTg1UVJtMUgwb2RZVit2OUJRT1h2OTIreitQUWox?=
 =?utf-8?B?WHo2ZnY2eVgvZE81TklOdW5DWW45b21kSkRwbkZKb05ZMVRkM1VaOElQQUJm?=
 =?utf-8?B?UUxKNEVyZEpxaTZwdlZVRE1YdFlpWWpYOUhlYzFUNmp1cjhBREFTS3JoU2lY?=
 =?utf-8?B?U3lnc2MxZUVjSEV0RmxLKzY1VkpPKzh6MFA0REN4RnVZY0FuMGR3eTcxaUpQ?=
 =?utf-8?B?SnZpV0huYkRVeUtmV2lTQ0E3QndIV0JzK0lwcUJxQUZ0dGpaYll3N1QrN3RN?=
 =?utf-8?B?MXp2cEtycXd6YnhRVUhxTjBSV2QzK0pUemRqRWxQUjNiVjFtcjA1K0VCaktx?=
 =?utf-8?B?ZnpYRVFnaitlKzkybmx1dDd2Z1p2Mm03cktzVExJaHkrQVNwVmZxWGlGRGkz?=
 =?utf-8?B?amhJNlA1c3ZCd2Q4ZUczT3hNazl5dTNHK2hSWEZOZWpOT1JBQ3ZneWdSdG4z?=
 =?utf-8?B?QWxlaGJaZXhGMEdNK1lNcExnN1BoeFhMUzVKMTBYd2xFMmpncWxQZjg1bk9N?=
 =?utf-8?B?OWY2WEJrcEFBTTBEQUt5c2phUm9qQjdrNWh5ZGl1WElXQ0VtZnhjd1JqQmMy?=
 =?utf-8?B?SXBuaXFDc2VHektOVmtRYjVLOE9PTjRoU2tRRmhmUVllM0hZcVlpd1d3cGxq?=
 =?utf-8?B?alpGZjJmQzAxVzMrRk1WdjZjRHA0MmNKVUlBZ3dMcW85b0d1czZBckZ3MFRT?=
 =?utf-8?B?b0xjOUtaTk1mMkxKNlpCbTZhU3R6dUpHYU9Lb0R5MXZINEhyMmdUZ1NORkZH?=
 =?utf-8?B?ZHY5QnI2UWNKRUJwSy9uZEM5VFg1T0xwREFSVVQzQ3JIMlAzZ3Z2dz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: NgpYVQPJD/NVw6J/zfwgEBA8WZIyh192+0mrYGHtpAiwHJRoMLPw6l3N2knY/zf7uDByAXz55D8UjJzhQFxcGkJD+IK/pCrSBL18q3DCdwb0exATZ/qJXdMmDRyhX9lFpdrVL1D5Pdrr58w5Co4DkDE85NU0PvOW+M3rem6XMnLotZ5OCEYni3nZ2bKUATOp6SL5y9iISywkWQeWC4MeZaNqaL3cLCGTrtx7iXY/tYOlQRzf6UrbmC/X47thHwyE1RuW90KfZcKLXgr7Lye4C9ewoTV6ZiXmvV0st+ioow2+Pk6u7v+Zl6lOPtFo9KkyWQWFzDpYFQkN9vC26avtGg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4a0d176-06d1-4336-a96c-08decaf7d74b
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 16:04:55.0184 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1BJxbCvL+geo9KlUCepid2t6bPootLn4XqL7HXxFyvbggdtgIwXloC6OntY4guLPP1ysUuZLyi5lTk9nzCCTGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5772
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781539499; x=1813075499;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CaIDOxDqsWP6u8QupRt5NArQqF6utw8y7mZHCscViHw=;
 b=DOpcaKt2pO5Kh/p9IptNcfc4KPOqSiW9DTEs6vYNYmt2EZB951/9a1/t
 uOx+aeFyt6PIIxUt7M459BGf/RgkQ+6T4x+l1fwf2v3AppZSNwJiwDxgy
 ojIl59m3q3Uf7U23yNEUCEder0pSGbls+7MCjfgvfzbCsXwdMgDPOqaGD
 kHg/jlca2iNf7MjMRN9uZxGGQFT6iiAndx9vgWk+h9lr9VB/dfoFGeH9A
 DEowzHAPZGx5Q6+yVuuxfNrPENBxhUH8FQCzO839779BjGZfzYsjHIY6Y
 JPCmHBCz7IbbrWroqG+s4e6LaCGybEVkzMOXSg7MMvsrnpwSWy5BjYn03
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DOpcaKt2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 6/6] ice: refactor
 ice_sched_cfg_agg to take agg_info pointer
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sx.rinitha@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E150C688153

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogMDIgSnVuZSAyMDI2IDA1OjQ0DQo+IFRvOiBJbnRlbCBXaXJlZCBMQU4gPGlu
dGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnPjsgbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsg
Tmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPg0KPiBDYzogS2l0
c3plbCwgUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IExva3Rpb25v
diwgQWxla3NhbmRyIDxhbGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47IEtlbGxlciwgSmFj
b2IgRSA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPjsgTG9rdGlvbm92LCBBbGVrc2FuZHIgPGFs
ZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFu
XSBbUEFUQ0ggaXdsLW5leHQgNi82XSBpY2U6IHJlZmFjdG9yIGljZV9zY2hlZF9jZmdfYWdnIHRv
IHRha2UgYWdnX2luZm8gcG9pbnRlcg0KPg0KPiBUaGUgaWNlX3NjaGVkX2NmZ19hZ2coKSBmdW5j
dGlvbiBpcyBjYWxsZWQgd2l0aCBhbiBhZ2dyZWdhdG9yIElEIGFuZCB0eXBlLg0KPiBJdCBwZXJm
b3JtcyBhIGxvb2t1cCBvZiB0aGUgYWdncmVnYXRvciBpbmZvIHN0cnVjdHVyZSBieSBJRC4gSWYg
dGhlIGxvb2t1cCBmYWlscywgaXQgY2FsbHMgaWNlX2FsbG9jX2FnZ19pbmZvIHRvIGFsbG9jYXRl
IGEgbmV3IGFnZ3JlZ2F0b3Igc3RydWN0dXJlIGZvciB0aGF0IElELg0KPg0KPiBUaGlzIGJlaGF2
aW9yIHVzZWQgdG8gbWFrZSBzZW5zZSB3aGVuIGljZV9jZmdfYWdnKCkgd2FzIGV4cG9ydGVkIGFu
ZCBpbnRlbmRlZCB0byBjcmVhdGUgYSBuZXcgYWdncmVnYXRvciBub2RlIGZvciBhIHNwZWNpZmlj
IElELiBUaGlzIGlzIG5vIGxvbmdlciB0cnVlLCBhbmQgYWxsIHRocmVlIGNhbGxlcnMgb2YgaWNl
X3NjaGVkX2NmZ19hZ2coKSBhbHJlYWR5IGhhdmUgYSB2YWxpZCBhZ2dfaW5mbyBzdHJ1Y3R1cmUu
DQo+DQo+IFJlZmFjdG9yIHRoZSBmdW5jdGlvbiB0byB0YWtlIHRoZSBhZ2dfaW5mbyBwb2ludGVy
IGRpcmVjdGx5LCBkcm9wcGluZyB0aGUgdW5uZWNlc3NhcnkgbG9va3VwIGFuZCBhbGxvY2F0aW9u
IGZhbGxiYWNrLiBUaGlzIHNpbXBsaWZpZXMgdGhlIGZ1bmN0aW9uLCBhbmQga2VlcHMgaXRzIHNj
b3BlIHRhcmdldGVkIGF0IHRyYWZmaWMgY2xhc3MgY29uZmlndXJhdGlvbi4NCj4NCj4gVGhpcyBy
ZW1vdmVzIGVzc2VudGlhbGx5IGRlYWQgY29kZSwgYW5kIHByZXZlbnRzIHRoZSBuZWVkIGZvciBh
ZGRpbmcgYWRkaXRpb25hbCBlcnJvciBjbGVhbnVwIGZvciBmYWlsdXJlcyB0aGF0IGFyZSBpbXBv
c3NpYmxlLg0KPg0KPiBTdWdnZXN0ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5k
ci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKYWNvYiBLZWxsZXIgPGph
Y29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9u
b3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPiAtLS0NCj4gZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9zY2hlZC5jIHwgNDkgKysrKysrKysrKy0tLS0tLS0tLS0t
LS0tLS0tLS0tDQo+IDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAzMyBkZWxldGlv
bnMoLSkNCj4NCg0KVGVzdGVkLWJ5OiBSaW5pdGhhIFMgPHN4LnJpbml0aGFAaW50ZWwuY29tPiAo
QSBDb250aW5nZW50IHdvcmtlciBhdCBJbnRlbCkNCg==
