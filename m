Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJnKOgRkemmB5gEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 20:31:16 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B8EA82B3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 20:31:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4EE88233F;
	Wed, 28 Jan 2026 19:31:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AwtpYYQsbXf7; Wed, 28 Jan 2026 19:31:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD94382B3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769628673;
	bh=3865eehU+z1j4/CeK0yp9G/qf9SmDbH5RqR9J7zo66c=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ox/lU0or46Rk6L4hHSJ0klgLDqDOwvM96IrZ9lekThqbk8r4/R6+bm8/kxL/nIfol
	 z7aBkuTmTyLF6ufEc+APmF0enuduIrhqHIEqeFWCA0X1omEX7joCarTt/w+O3eb4L1
	 NrTkPbhRU4etwpgsEaCmRLrLUVAmm3Cxd1ZgcM1jfmpXmW8BmPtbecaCSNpO0JouRJ
	 xwe+S//jLA1b4UCXakC++fbJm6GEwadDRGVu6+Gb3KaJOqateffk+kLQK1uac9pEpb
	 NPzTihjJ/5U4P5SFKYuZaDn+3wu+4y9Ft0jjruCLXzTShzLsihlI6KinAiRyHzEwbi
	 nOe+FjFES+fuA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD94382B3E;
	Wed, 28 Jan 2026 19:31:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8B6E81AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 19:31:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6F3454064E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 19:31:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rHl9dmgR74FQ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 19:31:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=sunithax.d.mekala@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3E9E940636
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E9E940636
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3E9E940636
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 19:31:11 +0000 (UTC)
X-CSE-ConnectionGUID: fpc5e7HDTtCq3HxvF0MMPw==
X-CSE-MsgGUID: 6HedejfJSzuTB7c8cT7+zQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70569914"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="70569914"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 11:31:10 -0800
X-CSE-ConnectionGUID: cJVR/TfnSuKrJ2VFOPSsxw==
X-CSE-MsgGUID: GMAfwOu6TwWYDBcjuQrlwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="208380353"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 11:31:11 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 11:31:09 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 11:31:09 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.7) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 11:31:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RfyvNvckuwaKxbwpZjUZzo2GOZ5knfWDtVDpIoTLIKl0oaCjH+ZeBrcZb49Qu637gQBVVn+cEWCeVqmhnLlgksFMiCtrxV2wbJ1Z0hLTRxntE5Cj0ZJBobESEXDZF55XJaiu/tXr0ZS+XtrvDhMT4mEAdn7dAfIOcRw/7FNMUPzeRPoiR3g0ofY/4StCY9rkYzDT6ae3qGgDwxuPWUH3tAfjQ8IKZIWG1wXLnViBchqLQCikHzmOxiRckFoWR0C+FevOPPU0nkaqiGgK2DmSVmRk85MlVzZT2C0ECSjmCpG0aps0cTdj3zt1U72AsVFLy1PMVKVfM82wbcSdEu1W8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3865eehU+z1j4/CeK0yp9G/qf9SmDbH5RqR9J7zo66c=;
 b=m0vGN1NYeDNLTEQPtF270VQB1AxajnJyh9Pguc3yQCIMvuga2VQVvGtQTOu2HY4mJZxYvzDhpnaMLa3nhBd0uAnyo3DxnEHOI8jMFlP3DMPxKtCemIfP/szuLf64KQ4iEI8ya27sml10VRbq/i0vS/rYULcQYGC9/jiDaZ+NcKjbrhflKu5C31hi9vQIe6x4ly+qE6ma7fQwovBl21EMFRO9zIUNgJ99Fk3yHc6Y6bEAxlznfGD4nB7Iz+rD9TSS2iTwvp8LvSL0g4q+ZOsLwr83IfdyEr3/kInjs4aJdDCB8C0PsfBItC7eBGcLQR30eZIpk5J7UeNUxOwptBwo+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7522.namprd11.prod.outlook.com (2603:10b6:510:289::8)
 by DS0PR11MB6471.namprd11.prod.outlook.com (2603:10b6:8:c1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Wed, 28 Jan
 2026 19:31:06 +0000
Received: from PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::ba5b:e8f1:5eb8:3ca3]) by PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::ba5b:e8f1:5eb8:3ca3%6]) with mapi id 15.20.9564.006; Wed, 28 Jan 2026
 19:31:06 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Korba, Przemyslaw"
 <przemyslaw.korba@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
CC: "Keller, Jacob E" <jacob.e.keller@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: PTP: fix missing
 timestamps on E825 hardware
Thread-Index: AQHciwlNEqFffK1mOEK+QN8IyJDnALVoAJfA
Date: Wed, 28 Jan 2026 19:31:06 +0000
Message-ID: <PH0PR11MB75221A4DF00325021940DB8BA091A@PH0PR11MB7522.namprd11.prod.outlook.com>
References: <20260121-jk-e825c-fix-missing-timetamps-v1-1-f090eabfc823@intel.com>
In-Reply-To: <20260121-jk-e825c-fix-missing-timetamps-v1-1-f090eabfc823@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB7522:EE_|DS0PR11MB6471:EE_
x-ms-office365-filtering-correlation-id: 46cf469b-2f92-4a97-ddb8-08de5ea3c842
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?aXd5TmZIUjlnNmdxYzgrV0h6azR5RjdRWDN0dVMzZTJWNnJuSzV1VElMWWZ6?=
 =?utf-8?B?UnMrNitYT0NUYlBTcnViaWVMWnA0THlrN0QrMnBqZ2JwdCtiWE0rVWpJUlFD?=
 =?utf-8?B?Nk5meFBrUVk0YWliTGw2YVB0U29FY09kODc4cjQ5U3EwZ2JJcUhsdS9zZGhD?=
 =?utf-8?B?alN0bEFOL3dRaVpKSTRVWjdWUGRxbG5ZaExmSldxdi9RNmVVVml3ajJPN3Fh?=
 =?utf-8?B?L3JoUHo5bExkcnd4RTFmQXFYSEtBZ0RhNFNvT0N6dmNLUjBaY09kcDExdDVT?=
 =?utf-8?B?eGNYOFBHV1ZwSFQvYUZNMzFDOWxIb2tLcGEyU1pBZHY2cWVnSUtJYSsya00v?=
 =?utf-8?B?eVdYSnY0TVFESklnajNYaithS0UxaG01ZWpnM21zVmwxTm1abTVKVUR4WTg5?=
 =?utf-8?B?MnJNekdDMk83enVEbnF4RFFzOWhETDYraTVXaTU3NW5qa1UrSS91SHJYcm9k?=
 =?utf-8?B?ZkQxN0dVY1drVTZRRnFCS042UzVnRlMzd1BqRnhXQW0wQ1ViaVVJZTRMZGd0?=
 =?utf-8?B?KzJSM21uQnBjcThTU3FDaEp3WWh4V0RqZmN4aWhBQ1JPTXloREJBWXdxMVpx?=
 =?utf-8?B?UUdPc1luUFpFYWdQWjA5U0FZLzNmRDgxc1VvWWhhZW92U3BGbWsvT1dGQlBM?=
 =?utf-8?B?aUlzcjl4RUhtN096NDE4UzIrZGpBNGlmdXVjTlRJR1ZZM2lUaGRjSDI1Zy9h?=
 =?utf-8?B?bWJabGxaK09OQm4xU1Y5bVZaMHJIcFRDVUN1TVJxaFgwVnVDb1NtZ1gyWmlQ?=
 =?utf-8?B?N1RFUExQdjhtc0NkZ2ZNQ3dBckd0VFN0TXVGM2VMdnRqUExRcG15Vm4zdFBI?=
 =?utf-8?B?R1RRV3Q0N0d5ZHVIK083NHNobEl1akJERkFRS3M3OGk1V2FZaG9laVJEWmpU?=
 =?utf-8?B?M2FUelNEY2Fpc3ZzQmRoY3Yvc3dNcWlDTDlBdjlGQktRTTFjd0lTeTl0aGtU?=
 =?utf-8?B?cVlnNVVRZzBIdkNRVnNjSi9QRmx4TVRaYXBwTVFNWWUxTTdmUEE0TTFkb1pZ?=
 =?utf-8?B?UEs2MHZTTHdzWGJSNEEyUmE4a3lIUCt5ZDNDNjY2dUJpR012L1ZEd2RwZmI4?=
 =?utf-8?B?MFNrbVpaNkYyVllCQmZJK0pqUHBTN2NsMXowbTd0czhLZzVKVHF6UlBKVjFJ?=
 =?utf-8?B?OHhsdlFaUHl4S0gwZjhiK3VYWkloNzRZNU5aZTA5ZG1WMXExRkdpSG0rRTBV?=
 =?utf-8?B?cmRhRkYwSWFWdi84ZmI2eVpEOTNaSHVWMFhnNjUyL0NHUVhCczMveEJPeDky?=
 =?utf-8?B?WXpyczRuQ25Kd2kvd0pSR1NDQW4yUWNXYjJsNDVyMFBmSW0rbTdvbGdHK1Zx?=
 =?utf-8?B?N2Y4UmY1V202Y3V5bDl4a1dxS28xbjhwSTR1NEVxeFhpNGdQclpTRysvYTNy?=
 =?utf-8?B?cVdqWENZM1NSNzZUYy94MUlJdVJtTU5DTTZzWVFMdmxFRFNEbXppc0ExNkpH?=
 =?utf-8?B?aWJ4UmpROU55TG1tVUl1OHdqL2ZPM1VuekUyL0x5S1Zla1FrVXhlaEsyUFRV?=
 =?utf-8?B?L1hCcGw3WjVDZDNqa3hmWkEvTTlHSHFtYi9UTEtYYjRLVHRySitUWEwwUzF1?=
 =?utf-8?B?UTh3cVdkT29pNDJ3Uk1lRkNYNVJScEhJVGxzZW5OOGVkYlliSFRWdnRQRE9k?=
 =?utf-8?B?NHBLR2FxcndZQytNbUQvVXRsYktoRzBIVW5ybUFNUHRoV2RqaW41MVBnKy9u?=
 =?utf-8?B?TnVqZ2hZWlJadWpjZGR0aHp4akN0VmhoT0RpZ25mSXhPYTZndnRoblViZFFP?=
 =?utf-8?B?NktadTBmSnlQQ3ZIZW9IZE9CSmFKS0dQT0JiOVgrSENQczBwc090bEg2SFVk?=
 =?utf-8?B?Z2dvYXNyMHl3NTFyUWFOYU5sdFpjK0xCa1o5THdmeEU1UjdINk5lUHdJYXlv?=
 =?utf-8?B?SWlEaW8vQm91bWdxQVcvM2FudGwzbFJENkJ0QWJ2VjNBSzRlcUlSckxvODlJ?=
 =?utf-8?B?UTVoNU5RdjZYM3VUTjEwWWVoWHBtWUJtbGpJY3ZISUhDaVorZWNWSC9wYkxo?=
 =?utf-8?B?QlU2dXp1ckhWbVRsdENkY1BXMzJjWHNjeFZWUmtuMlpkSmRtbFFDQ1lIN3N1?=
 =?utf-8?B?U0tRcHZGZjRNUWdkS1I0WVZkRE5UU1QrS0NsdTdETjdtRitqZE1TTHZZdmdX?=
 =?utf-8?B?QjMzRXBLVHBuNUs0TFp2VHE0WFRRV0QycGdRdjJpUDhaMlZHK1JyQnpFM0d0?=
 =?utf-8?Q?LGeOUZajzxSdmRT2Zorib0/mLB+MafCOtTSFsjTWb+dB?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VGxGYlhhektXb25TaEhpd1k5RmphOWZpN01TMjcxY1dGVlJPMFp2dndOSkhp?=
 =?utf-8?B?LzRjTnFtTHVIT2JEUGVjU0dZT1lOc3hpc2IrVEJyQXBkR0Y4dHUrUUNKZjZJ?=
 =?utf-8?B?MzhsckhXOWNBdHJ1VUNZTUR3S3VDdXRLL1NlWDc1N21IVFdMQXRlMVMxRlBN?=
 =?utf-8?B?MWlPWkpSOVhTVWF0aXFYRHlORlNYaldtRis2SlhtaUNkNmxCQUZRQVRRRTJY?=
 =?utf-8?B?VlRvWnNPR050U1UrRVdrVEM4ZlpMZ0JMallTaVp5bkYyckZ1OWhGeDI4T2RH?=
 =?utf-8?B?N3lJUk5CWCtwL1FEYTZqVlJ2enVNSDgwTXYwNFpPdHU3VWQ3ME9aOG81RWhm?=
 =?utf-8?B?cWszaElIQXFWdzlnY0d6aW5xUFpNcEVQOWh2VHdYOXVpVG5SMU9FZmgvQmY5?=
 =?utf-8?B?YTcxUG1WT0JXTi9Vek41L1BKWURDTjM3dlZxQ2ZKUFZ0SHpkbWlLcGdSVzRN?=
 =?utf-8?B?R0NqWHU0aW50Z2o2bWhmMWpDTTJEdkZmaWVDMy9zcWVwK0JLNHovMkQ3NnFj?=
 =?utf-8?B?bk1nNVJpUTIvWjhsTU1ZelVSc3BGOUNzTG15M3hXQWZ3VW5lWTJFRThJV1pn?=
 =?utf-8?B?cFpUV0dyaVlUeTZDRUZWTDB3d2tDaGxKcFBsMDNqV3B5OUx3dnVsWG1nTGVk?=
 =?utf-8?B?QnVYdTcwWmJtajBySUswNm5iem5DSVNISitHb0dwUUU1cmRZWk1jZ0x0K3BN?=
 =?utf-8?B?dHN1QW8xSVIrMGZoNjlGV1M2NkZ3ZUg1eTY5VkUvRERZbTEzSUFZY29sNlhn?=
 =?utf-8?B?Wmgyb0c1bjU2Y2YxeUZxZnR0b3pHVUx0SnR5U2ZjbUhUQU96TDNNUWdaZmlW?=
 =?utf-8?B?L3ZZaGlVQXBqMnR3MXZQbS9MQjhkZzI4MEZuT25vSWFkdDNxTVl1RHhZOGky?=
 =?utf-8?B?NTdJODlSRmo4ZjhhUkhxWkgwOEh2WVk0WHFwdkNDeEprOHVrTGpqZnhoL3Uy?=
 =?utf-8?B?REJ1ZFE4Ly9ra00yYTVtcXQwNUtLa3lCdHlhdFVkV2NCUVNYYS9UbG9naUdr?=
 =?utf-8?B?dHQ0U0UvNUN0VCtoejhndFRnMlFtbHJvaEo4UWoveHI4d3FEZVREUytBNjNa?=
 =?utf-8?B?UjdwUFJBMVBtQ3VvVHdyNkpuRVBidzlqMEJVMWhuTUhKTXY0bVlSdmJOcFFy?=
 =?utf-8?B?M292NFlLeFRCZWxBeFBTMFYvUmpxZjZuNThUL3NsY0dHS09MV2tsMkVWN3po?=
 =?utf-8?B?dGdEN2NGN0k4cVMxeGY2MmNuVDd6UVE4MTNvWndhMGQ2WXlKSEc3WDQvL09v?=
 =?utf-8?B?R1VuKzcxS1huQXFYbVhCdzZXOXFraitYUEdFT29Lc0xlYkZvQmx5ck1hRDFK?=
 =?utf-8?B?WFRxRHNrK0pPTmo5ZkYwUkNRMkk5a0RSRDNLTnl0N0c0ZngyT2hodFBrYmIz?=
 =?utf-8?B?NHZwMS9VTU5QQW90am5abWVEYWJ1aTVmWmpVVDBUUDR4L2IvaUVCSmIvcXhG?=
 =?utf-8?B?dFFYc3BKZlpQN3J5Z3VVZGF5d0ZPZHdTUG80Q1huV05nU0RJMnh0MHNiVlFq?=
 =?utf-8?B?ODc1ejRLY09OaUtmR1JaQ2JMZENHcWNUM1pyMXplbk9zMi9yVm5SS1lFRXlP?=
 =?utf-8?B?ekFSVjZBUjdha1JVSGxKR1pEVUdlKzlCclpjYVU5NGRHU1hJRkFuU3ZabkRs?=
 =?utf-8?B?N3pQd1c5bkZSWnFLeXQ0aUFoSnBWOXhkdzZuejBrVkVlWi91UUt5L0lJb0ZF?=
 =?utf-8?B?UXlDRkZIay9mUms1TUQ2bjVwdEloZ3pSNXR5OVV1clV2SGk2RzFxMFlSL1Rt?=
 =?utf-8?B?K2czUTJ1c1gzVEQrMzdhSy9zbDNSWkljSGlWOHdSeHdnK2s3VGxyVEs2cjU0?=
 =?utf-8?B?Vk85T1F4Y2l6U3UwZjBBTVRDdlpRYy9OUm9PV1E0cFprMC9zNk9uT0tGejJV?=
 =?utf-8?B?a1JUMDFNOTJyN25sRHQ0Y2thbU42aFpTTHBZQ3ljK3R6UkRKRzNKd3lZcGlt?=
 =?utf-8?B?elJuK2d0UnJvZHBmMHhRbVoxRzlINFRNeFhPRHRseDVtcVdVc3VQUWF0WkhG?=
 =?utf-8?B?bDFOd2hDRzA1di9MRWYrSUh3cXJoV2tIeWxHelllZThodTl1eHlPSDh4endZ?=
 =?utf-8?B?Z2l1TCtDdGJsamtYUFFYdDZNVnBpcFhIK1I3T0JhRW1ESnpXT3IzYldvV3NJ?=
 =?utf-8?B?dll0T0hDUWE1R2JyVjNIb0k0em1YSlIvZXZxbFVRUWdVNU14WHFuMzIyYlVB?=
 =?utf-8?B?VE54NDFhYmhPQk84dC8rcjl6RnVwdlBXbHBzOGo0Z3h6K1JadVRrUmQ4YXNV?=
 =?utf-8?B?WUgxQlZUcmY5TUZNb0JzOThpcCtmV0JpZWxVRnp3VTUvaXArSGZyQkRDSDN5?=
 =?utf-8?B?K1NhaktMTlZpZlk3NXRST01BNDU1SGd1eG9FWjdZeTRjYkxrS25vNTgwQ2M4?=
 =?utf-8?Q?i4Vd8wknuMizUY70=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46cf469b-2f92-4a97-ddb8-08de5ea3c842
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2026 19:31:06.4965 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iYH31HzPvbj0ILpBPAx/h3WaR75jPgkHLReJOXdcXMX0fk3uKHGnr2WF2Dj+jcjz3E+ab1FW/vgFKQyqEqDgCNRdJ121sIfuxi5qY9eREh8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6471
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769628671; x=1801164671;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3865eehU+z1j4/CeK0yp9G/qf9SmDbH5RqR9J7zo66c=;
 b=bjWgWSYuroG+m3adnhuI+IAtMxvtDqoWa121/q69VCWo6HGGBhQ1eHGG
 POahb4uOJPOb4KYrvlYHb8ypxX2wvWqofzMgm5ZkQcn2qJrqcNA730+JD
 muhgzUtRnCdnk3YHuBA1aQeWuhKSIbUbbw51hNYAetHTSkwziAuTR1aGX
 VbvXXjSyfSZNYQYkAPMbFWdBcmE5SOjJ2OXSZeqeNWn1k6+hfRKkcl0PV
 SUmbT8QBcy3NHhoNWRVcyXHzi3nLWG9jyfj2TinAuWTMml0/TQb/lkake
 bRnpCouq7AiEgOL2U2nea2P2rL8coEfNJiCBU4ZKPU1LCs4kg82RXCf7L
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bjWgWSYu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: PTP: fix missing
 timestamps on E825 hardware
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[sunithax.d.mekala@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sunithax.d.mekala@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: 38B8EA82B3
X-Rspamd-Action: no action

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBLZWxs
ZXINCj4gU2VudDogV2VkbmVzZGF5LCBKYW51YXJ5IDIxLCAyMDI2IDEwOjQ0IEFNDQo+IFRvOiBJ
bnRlbCBXaXJlZCBMQU4gPGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnPjsgS29yYmEs
IFByemVteXNsYXcgPHByemVteXNsYXcua29yYmFAaW50ZWwuY29tPjsgbmV0ZGV2QHZnZXIua2Vy
bmVsLm9yZzsgTG9rdGlvbm92LCBBbGVrc2FuZHIgPiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRl
bC5jb20+OyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+DQo+
IENjOiBLZWxsZXIsIEphY29iIEUgPGphY29iLmUua2VsbGVyQGludGVsLmNvbT4NCj4gU3ViamVj
dDogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXRdIGljZTogUFRQOiBmaXggbWlzc2lu
ZyB0aW1lc3RhbXBzIG9uIEU4MjUgaGFyZHdhcmUNCj4NCj4gVGhlIEU4MjUgaGFyZHdhcmUgY3Vy
cmVudGx5IGhhcyBlYWNoIFBGIGhhbmRsZSB0aGUgUEZJTlRfVFNZTl9UWCBjYXVzZSBvZg0KPiB0
aGUgbWlzY2VsbGFuZW91cyBPSUNSIGludGVycnVwdCB2ZWN0b3IuIFRoZSBhY3R1YWwgaW50ZXJy
dXB0IGNhdXNlDQo+IHVuZGVybHlpbmcgdGhpcyBpcyBzaGFyZWQgYnkgYWxsIHBvcnRzIG9uIHRo
ZSBzYW1lIHF1YWQ6DQo+DQo+ICAg4pSM4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSQDQo+ICAg4pSCICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg4pSC
DQo+ICAg4pSCICAg4pSM4pSA4pSA4pSA4pSA4pSQIOKUjOKUgOKUgOKUgOKUgOKUkCDilIzilIDi
lIDilIDilIDilJAg4pSM4pSA4pSA4pSA4pSA4pSQICAg4pSCDQo+ICAg4pSCICAg4pSCUEYgMOKU
giDilIJQRiAx4pSCIOKUglBGIDLilIIg4pSCUEYgM+KUgiAgIOKUgg0KPiAgIOKUgiAgIOKUlOKU
gOKUgOKUgOKUgOKUmCDilJTilIDilIDilIDilIDilJgg4pSU4pSA4pSA4pSA4pSA4pSYIOKUlOKU
gOKUgOKUgOKUgOKUmCAgIOKUgg0KPiAgIOKUgiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIOKUgg0KPiAgIOKUlOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKWsuKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUmA0KPiAgICAgICAgICAgICAgICAgICAg4pSCDQo+ICAgICAgICAgICAgICAgICAgICDilIIN
Cj4gICDilIzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lLzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilJANCj4g
ICDilIIgICAgICAgICAgICAgUEhZIFFVQUQgICAgICAgICAgICDilIINCj4gICDilJTilIDilIDi
lIDilrLilIDilIDilIDilIDilIDilIDilIDilIDilrLilIDilIDilIDilIDilIDilIDilIDilIDi
lrLilIDilIDilIDilIDilIDilIDilIDilIDilrLilIDilIDilJgNCj4gICAgICAg4pSCICAgICAg
ICDilIIgICAgICAgIOKUgiAgICAgICAg4pSCDQo+ICAg4pSM4pSA4pSA4pSA4pS84pSA4pSA4pSQ
IOKUjOKUgOKUgOKUgOKUtOKUgOKUgOKUkCDilIzilIDilIDilIDilLzilIDilIDilJAg4pSM4pSA
4pSA4pSA4pS84pSA4pSA4pSQDQo+ICAg4pSCUG9ydCAw4pSCIOKUglBvcnQgMeKUgiDilIJQb3J0
IDLilIIg4pSCUG9ydCAz4pSCDQo+ICAg4pSU4pSA4pSA4pSA4pSA4pSA4pSA4pSYIOKUlOKUgOKU
gOKUgOKUgOKUgOKUgOKUmCDilJTilIDilIDilIDilIDilIDilIDilJgg4pSU4pSA4pSA4pSA4pSA
4pSA4pSA4pSYDQo+DQo+IElmIG11bHRpcGxlIFBGcyBpc3N1ZSBUeCB0aW1lc3RhbXAgcmVxdWVz
dHMgbmVhciBzaW11bHRhbmVvdXNseSwgaXQgaXMNCj4gcG9zc2libGUgdGhhdCB0aGUgY29ycmVj
dCBQRiB3aWxsIG5vdCBiZSBpbnRlcnJ1cHRlZCBhbmQgd2lsbCBtaXNzIGl0cw0KPiB0aW1lc3Rh
bXAuIFVuZGVyc3RhbmRpbmcgd2h5IGlzIHNvbWV3aGF0IGNvbXBsZXguDQo+DQo+IENvbnNpZGVy
IHRoZSBmb2xsb3dpbmcgc2VxdWVuY2Ugb2YgZXZlbnRzOg0KPg0KPiAgIENQVSAwOg0KPiAgIFNl
bmQgVHggcGFja2V0IG9uIFBGIDANCj4gICAuLi4NCj4gICBQRiAwIGVucXVldWVzIHBhY2tldCB3
aXRoIFR4IHJlcXVlc3QgICAgICAgICAgQ1BVIDEsIFBGMToNCj4gICAuLi4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU2VuZCBUeCBwYWNrZXQgb24gUEYxDQo+ICAg
Li4uICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFBGIDEgZW5xdWV1
ZXMgcGFja2V0IHdpdGggVHggcmVxdWVzdA0KPg0KPiAgIEhXOg0KPiAgIFBIWSBQb3J0IDAgc2Vu
ZHMgcGFja2V0DQo+ICAgUEhZIHJhaXNlcyBUeCB0aW1lc3RhbXAgZXZlbnQgaW50ZXJydXB0DQo+
ICAgTUFDIHJhaXNlcyBlYWNoIFBGIGludGVycnVwdA0KPg0KPiAgIENQVSAwLCBQRjA6ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBDUFUgMSwgUEYxOg0KPiAgIGljZV9taXNjX2lu
dHIoKSBjaGVja3MgZm9yIFR4IHRpbWVzdGFtcHMgICAgICBpY2VfbWlzY19pbnRyKCkgY2hlY2tz
IGZvciBUeCB0aW1lc3RhbXANCj4gICBTZWVzIHBhY2tldCByZWFkeSBiaXQgc2V0ICAgICAgICAg
ICAgICAgICAgICAgU2VlcyBub3RoaW5nIGF2YWlsYWJsZQ0KPiAgIC4uLiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBFeGl0cw0KPiAgIC4uLg0KPiAgIC4uLg0KPiAg
IEhXOg0KPiAgIFBIWSBwb3J0IDEgc2VuZHMgcGFja2V0DQo+ICAgUEhZIGludGVycnVwdCBpZ25v
cmVkIGJlY2F1c2Ugbm90IGFsbCBwYWNrZXQgdGltZXN0YW1wcyByZWFkIHlldC4NCj4gICAuLi4N
Cj4gICBSZWFkIHRpbWVzdGFtcCwgcmVwb3J0IHRvIHN0YWNrDQo+DQo+IEJlY2F1c2UgdGhlIGlu
dGVycnVwdCBldmVudCBpcyBzaGFyZWQgZm9yIGFsbCBwb3J0cyBvbiB0aGUgc2FtZSBxdWFkLCB0
aGUNCj4gUEhZIHdpbGwgbm90IHJhaXNlIGEgbmV3IGludGVycnVwdCBmb3IgYW55IFBGIHVudGls
IGFsbCB0aW1lc3RhbXBzIGFyZQ0KPiByZWFkLg0KPg0KPiBJbiB0aGUgZXhhbXBsZSBhYm92ZSwg
dGhlIHNlY29uZCB0aW1lc3RhbXAgY29tZXMgaW4gZm9yIHBvcnQgMSBiZWZvcmUgdGhlDQo+IHRp
bWVzdGFtcCBmcm9tIHBvcnQgMCBpcyByZWFkLiBBdCB0aGlzIHBvaW50LCB0aGVyZSBpcyBubyBs
b25nZXIgYW4NCj4gaW50ZXJydXB0IHRocmVhZCBydW5uaW5nIHRoYXQgd2lsbCByZWFkIHRoZSB0
aW1lc3RhbXBzLCBiZWNhdXNlIGVhY2ggUEYgaGFzDQo+IGNoZWNrZWQgYW5kIGZvdW5kIHRoYXQg
dGhlcmUgd2FzIG5vIHdvcmsgdG8gZG8uIEFwcGxpY2F0aW9ucyBzdWNoIGFzIHB0cDRsDQo+IHdp
bGwgdGltZW91dCBhZnRlciB3YWl0aW5nIGEgZmV3IG1pbGxpc2Vjb25kcy4gRXZlbnR1YWxseSwg
dGhlIHdhdGNoZG9nDQo+IHNlcnZpY2UgdGFzayB3aWxsIHJlLWNoZWNrIGZvciBhbGwgcXVhZHMg
YW5kIG5vdGljZSB0aGF0IHRoZXJlIGFyZQ0KPiBvdXRzdGFuZGluZyB0aW1lc3RhbXBzLCBhbmQg
aXNzdWUgYSBzb2Z0d2FyZSBpbnRlcnJ1cHQgdG8gcmVjb3Zlci4gSG93ZXZlciwNCj4gYnkgdGhp
cyBwb2ludCBpdCBpcyBmYXIgdG9vIGxhdGUsIGFuZCBhcHBsaWNhdGlvbnMgaGF2ZSBhbHJlYWR5
IGZhaWxlZC4NCj4NCj4gQWxsIG9mIHRoaXMgb2NjdXJzIGJlY2F1c2Ugb2YgdGhlIHVuZGVybHlp
bmcgaGFyZHdhcmUgYmVoYXZpb3IuIFRoZSBQSFkNCj4gY2Fubm90IHJhaXNlIGEgbmV3IGludGVy
cnVwdCBzaWduYWwgdW50aWwgYWxsIG91dHN0YW5kaW5nIHRpbWVzdGFtcHMgaGF2ZQ0KPiBiZWVu
IHJlYWQuDQo+DQo+IEFzIGEgZmlyc3Qgc3RlcCB0byBmaXggdGhpcywgc3dpdGNoIHRoZSBFODI1
QyBoYXJkd2FyZSB0byB0aGUNCj4gSUNFX1BUUF9UWF9JTlRFUlJVUFRfQUxMIG1vZGUuIEluIHRo
aXMgbW9kZSwgb25seSB0aGUgY2xvY2sgb3duZXIgUEYgd2lsbA0KPiByZXNwb25kIHRvIHRoZSBQ
RklOVF9UU1lOX1RYIGNhdXNlLiBPdGhlciBQRnMgZGlzYWJsZSB0aGlzIGNhdXNlIGFuZCB3aWxs
DQo+IG5vdCB3YWtlLiBJbiB0aGlzIG1vZGUsIHRoZSBjbG9jayBvd25lciB3aWxsIGl0ZXJhdGUg
b3ZlciBhbGwgcG9ydHMgYW5kDQo+IGhhbmRsZSB0aW1lc3RhbXBzIGZvciBlYWNoIGNvbm5lY3Rl
ZCBwb3J0Lg0KPg0KPiBUaGlzIG1hdGNoZXMgdGhlIEU4MjIgYmVoYXZpb3IsIGFuZCBpcyBhIG5l
Y2Vzc2FyeSBidXQgaW5zdWZmaWNpZW50IHN0ZXAgdG8NCj4gcmVzb2x2ZSB0aGUgbWlzc2luZyB0
aW1lc3RhbXBzLg0KPg0KPiBFdmVuIHdpdGggdXNlIG9mIHRoZSBJQ0VfUFRQX1RYX0lOVEVSUlVQ
VF9BTEwgbW9kZSwgd2Ugc3RpbGwgc29tZXRpbWVzIG1pc3MNCj4gYSB0aW1lc3RhbXAgZXZlbnQu
IFRoZSBpY2VfcHRwX3R4X3RzdGFtcF9vd25lcigpIGRvZXMgcmUtY2hlY2sgdGhlIHJlYWR5DQo+
IGJpdG1hcCwgYnV0IGRvZXMgc28gYmVmb3JlIHJlLWVuYWJsaW5nIHRoZSBPSUNSIGludGVycnVw
dCB2ZWN0b3IuIEl0IGFsc28NCj4gb25seSBjaGVja3MgdGhlIHJlYWR5IGJpdG1hcCwgYnV0IG5v
dCB0aGUgc29mdHdhcmUgVHggdGltZXN0YW1wIHRyYWNrZXIuDQo+DQo+IFRvIGF2b2lkIHJpc2sg
b2YgbG9zaW5nIGEgdGltZXN0YW1wLCByZWZhY3RvciB0aGUgbG9naWMgdG8gY2hlY2sgYm90aCB0
aGUNCj4gc29mdHdhcmUgVHggdGltZXN0YW1wIHRyYWNrZXIgYml0bWFwICphbmQqIHRoZSBoYXJk
d2FyZSByZWFkeSBiaXRtYXAuDQo+IEFkZGl0aW9uYWxseSwgZG8gdGhpcyBvdXRzaWRlIG9mIGlj
ZV9wdHBfcHJvY2Vzc190cygpIGFmdGVyIHdlIGhhdmUgYWxyZWFkeQ0KPiByZS1lbmFibGVkIHRo
ZSBPSUNSIGludGVycnVwdC4NCj4NCj4gUmVtb3ZlIHRoZSBjaGVja3MgZnJvbSB0aGUgaWNlX3B0
cF90eF90c3RhbXAoKSwgaWNlX3B0cF90eF90c3RhbXBfb3duZXIoKSwNCj4gYW5kIHRoZSBpY2Vf
cHRwX3Byb2Nlc3NfdHMoKSBmdW5jdGlvbnMuIFRoaXMgcmVzdWx0cyBpbiBpY2VfcHRwX3R4X3Rz
dGFtcCgpDQo+IGJlaW5nIG5vdGhpbmcgbW9yZSB0aGFuIGEgd3JhcHBlciBhcm91bmQgaWNlX3B0
cF9wcm9jZXNzX3R4X3RzdGFtcCgpIHNvIHdlDQo+IGNhbiByZW1vdmUgaXQuDQo+DQo+IEFkZCB0
aGUgaWNlX3B0cF90eF90c3RhbXBzX3BlbmRpbmcoKSBmdW5jdGlvbiB3aGljaCByZXR1cm5zIGEg
Ym9vbGVhbg0KPiBpbmRpY2F0aW5nIGlmIHRoZXJlIGFyZSBhbnkgcGVuZGluZyBUeCB0aW1lc3Rh
bXBzLiBGaXJzdCwgY2hlY2sgdGhlDQo+IHNvZnR3YXJlIHRpbWVzdGFtcCB0cmFja2VyIGJpdG1h
cC4gSW4gSUNFX1BUUF9UWF9JTlRFUlJVUFRfQUxMIG1vZGUsIGNoZWNrDQo+ICphbGwqIHBvcnRz
IHNvZnR3YXJlIHRyYWNrZXJzLiBJZiBhIHRyYWNrZXIgaGFzIG91dHN0YW5kaW5nIHRpbWVzdGFt
cA0KPiByZXF1ZXN0cywgcmV0dXJuIHRydWUuIEFkZGl0aW9uYWxseSwgY2hlY2sgdGhlIFBIWSBy
ZWFkeSBiaXRtYXAgdG8gY29uZmlybQ0KPiBpZiB0aGUgUEhZIGluZGljYXRlcyBhbnkgb3V0c3Rh
bmRpbmcgdGltZXN0YW1wcy4NCj4NCj4gSW4gdGhlIGljZV9taXNjX3RocmVhZF9mbigpLCBjYWxs
IGljZV9wdHBfdHhfdHN0YW1wc19wZW5kaW5nKCkganVzdCBiZWZvcmUNCj4gcmV0dXJuaW5nIGZy
b20gdGhlIElSUSB0aHJlYWQgaGFuZGxlci4gSWYgaXQgcmV0dXJucyB0cnVlLCB3cml0ZSB0bw0K
PiBQRklOVF9PSUNSIHRvIHRyaWdnZXIgYSBQRklOVF9PSUNSX1RTWU5fVFhfTSBzb2Z0d2FyZSBp
bnRlcnJ1cHQuIFRoaXMgd2lsbA0KPiBmb3JjZSB0aGUgaGFuZGxlciB0byBpbnRlcnJ1cHQgYWdh
aW4gYW5kIGNvbXBsZXRlIHRoZSB3b3JrIGV2ZW4gaWYgdGhlIFBIWQ0KPiBoYXJkd2FyZSBkaWQg
bm90IGludGVycnVwdCBmb3IgYW55IHJlYXNvbi4NCj4NCj4gVGhpcyByZXN1bHRzIGluIHRoZSBm
b2xsb3dpbmcgbmV3IGZsb3cgZm9yIGhhbmRsaW5nIFR4IHRpbWVzdGFtcHM6DQo+DQo+IDEpIHNl
bmQgVHggcGFja2V0DQo+IDIpIFBIWSBjYXB0dXJlcyB0aW1lc3RhbXANCj4gMykgUEhZIHRyaWdn
ZXJzIE1BQyBpbnRlcnJ1cHQNCj4gNCkgY2xvY2sgb3duZXIgZXhlY3V0ZXMgaWNlX21pc2NfaW50
cigpIHdpdGggUEZJTlRfT0lDUl9UU1lOX1RYIGZsYWcgc2V0DQo+IDUpIGljZV9wdHBfdHNfaXJx
KCkgcmV0dXJucyBJUlFfV0FLRV9USFJFQUQNCj4gNykgVGhlIGludGVycnVwdCB0aHJlYWQgd2Fr
ZXMgdXAgYW5kIGtlcm5lbCBjYWxscyBpY2VfbWlzY19pbnRyX3RocmVhZF9mbigpDQo+IDgpIGlj
ZV9wdHBfcHJvY2Vzc190cygpIGlzIGNhbGxlZCB0byBoYW5kbGUgYW55IG91dHN0YW5kaW5nIHRp
bWVzdGFtcHMNCj4gOSkgaWNlX2lycV9keW5hbWljX2VuYSgpIGlzIGNhbGxlZCB0byByZS1lbmFi
bGUgdGhlIE9JQ1IgaGFyZHdhcmUgaW50ZXJydXB0DQo+ICAgIGNhdXNlDQo+IDEwKSBpY2VfcHRw
X3R4X3RzdGFtcHNfcGVuZGluZygpIGlzIGNhbGxlZCB0byBjaGVjayBpZiB3ZSBtaXNzZWQgYW55
IG1vcmUNCj4gICAgIG91dHN0YW5kaW5nIHRpbWVzdGFtcHMsIGNoZWNraW5nIGJvdGggc29mdHdh
cmUgYW5kIGhhcmR3YXJlIGluZGljYXRvcnMuDQo+DQo+IFdpdGggdGhpcyBjaGFuZ2UsIGl0IHNo
b3VsZCBubyBsb25nZXIgYmUgcG9zc2libGUgZm9yIG5ldyB0aW1lc3RhbXBzIHRvDQo+IGNvbWUg
aW4gc3VjaCBhIHdheSB0aGF0IHdlIGxvc2UgYW4gaW50ZXJydXB0LiBJZiBhIHRpbWVzdGFtcCBj
b21lcyBpbg0KPiBiZWZvcmUgdGhlIGljZV9wdHBfdHhfdHN0YW1wc19wZW5kaW5nKCkgY2FsbCwg
aXQgd2lsbCBiZSBub3RpY2VkIGJ5IGF0DQo+IGxlYXN0IG9uZSBvZiB0aGUgc29mdHdhcmUgYml0
bWFwIGNoZWNrIG9yIHRoZSBoYXJkd2FyZSBiaXRtYXAgY2hlY2suIElmIHRoZQ0KPiB0aW1lc3Rh
bXAgY29tZXMgaW4gKmFmdGVyKiB0aGlzIGNoZWNrLCBpdCBzaG91bGQgY2F1c2UgYSB0aW1lc3Rh
bXANCj4gaW50ZXJydXB0IGFzIHdlIGhhdmUgYWxyZWFkeSByZWFkIGFsbCB0aW1lc3RhbXBzIGZy
b20gdGhlIFBIWSBhbmQgdGhlIE9JQ1INCj4gdmVjdG9yIGhhcyBiZWVuIHJlLWVuYWJsZWQuDQo+
DQo+IEZpeGVzOiA3Y2FiNDRmMWMzNWYgKCJpY2U6IEludHJvZHVjZSBFVEg1NkcgUEhZIG1vZGVs
IGZvciBFODI1QyBwcm9kdWN0cyIpDQo+IFNpZ25lZC1vZmYtYnk6IEphY29iIEtlbGxlciA8amFj
b2IuZS5rZWxsZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfcHRwLmggIHwgIDEzICsrLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9tYWluLmMgfCAgMjAgKystLQ0KPiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9wdHAuYyAgfCAxNDggKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tDQo+
ICAzIGZpbGVzIGNoYW5nZWQsIDEwMyBpbnNlcnRpb25zKCspLCA3OCBkZWxldGlvbnMoLSkNCg0K
VGVzdGVkLWJ5OiBTdW5pdGhhIE1la2FsYSA8c3VuaXRoYXguZC5tZWthbGFAaW50ZWwuY29tPiAo
QSBDb250aW5nZW50IHdvcmtlciBhdCBJbnRlbCkNCg==
