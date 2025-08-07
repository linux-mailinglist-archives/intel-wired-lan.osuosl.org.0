Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56AE7B1D450
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Aug 2025 10:35:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B721E84CCA;
	Thu,  7 Aug 2025 08:35:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UHkk5WTLtlMs; Thu,  7 Aug 2025 08:35:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D879684CDA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754555724;
	bh=XvMU8c8O9JedxVadAUC3ZJX1ZuG8zwQebBEXVSpZaB4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=31njegk7HdZotFMobfwaAkmEh6+o10305PoupsJVq6KtfFb3a4cjQtl54TZOZ5EDy
	 zi4QH/pxQLIfxiB/BlX1uu+b/nFyR8flPXnpDWEZ8CHon4LV4npJtZuHGuAIUvN7B/
	 UVUstXa5luamyvY7KQhC/XyjX8ocZBs05oC+Ky0TvqDfphxNpwe3BNVv17HH5mEDPb
	 YiKBtbVvkm3gkzMMPhyVja4axxKT5KUKsBEKzOwKHTC4qaQyVltxaeYVYRsuI/BGpG
	 6lyRBJXSX6Lt2Qj5sSiq+qmnCytTvxMZ12ouPNwwmKtY5hvASmeZAAvD63owuj7fJk
	 DuwB0ZNJAXiLw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D879684CDA;
	Thu,  7 Aug 2025 08:35:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E8EDCD84
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 08:35:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E650484C2E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 08:35:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id clPi8ZCB45DQ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Aug 2025 08:35:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0B4A684CCA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B4A684CCA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0B4A684CCA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Aug 2025 08:35:20 +0000 (UTC)
X-CSE-ConnectionGUID: 2hKpvwK9S+y0hv1rIfm6bQ==
X-CSE-MsgGUID: UpwrjE2bRX2ta0ue94zs3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="82330225"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="82330225"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 01:35:20 -0700
X-CSE-ConnectionGUID: pzVk7QSKQ+ioq+Qz5mrc+g==
X-CSE-MsgGUID: V8rnJ8sXQS2K7Tdfjex+9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="165366706"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 01:35:20 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 01:35:19 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 01:35:19 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.53) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 01:35:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ut/7/R+uC2pflesJEWMRvNilMPAWrefY6tW7TdS1ZLFMNcin/luvU8cpOl6edD/jJHmkAA9FGMIkrt4QI5lSvwhbV+WIwi89b/f+AjAUVINVcDklUnnXyO7hAh7E8Yu236C089IHTpDEt5BbTflXHayU4u17ABjnNU2Rm0CaR4VnjOlwjl0KBmtbt29ZNH+nXXz+SA8K3P+EX7CKP2Fd1A8c8ykYJvwo0pIEGWvET9T56lEkaB7+gQBrCuyJlQtjyYKWVugEizIqXeExXFHwgXb4QB5PYtRkONM0D7U6K2qLfpFqngPmM6Nqsrk+XSJ9HrYPEJIormJHsInNlF4C/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XvMU8c8O9JedxVadAUC3ZJX1ZuG8zwQebBEXVSpZaB4=;
 b=ql9r6VgOmlH2Ui9RAg5V2RrlSTg/HuT4SHdmCX9i/gAeZHOH3ieAwC2HRGmk/U2Hg57yrEA+yqjUuH+84Zge7VDRvg3sjBhGEDLcOrZ0WTXNa4syUNDbvdaFkO+Dp496At4VYEtAUpHxLTw3QahcRef72+Kv8lpqJFGZh5so2jPV0Z9tEkAI37fnPCFnGr6RrQwCnb1J3o4y62X4jYNLprjyt9I4JplqdAEhp78sUOIxfrAbQw2TfPGu740qlauGZ7Ll44Ei10/DfXoALQ6rPAIu/OR/Gk2ztSMoCtr9l96qdhTCi7abcBRLdUMfsJG1DMjPGm9suVpfC4t151ppJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by SA2PR11MB5097.namprd11.prod.outlook.com (2603:10b6:806:11a::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.15; Thu, 7 Aug
 2025 08:35:12 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::f302:c534:2d71:822b%5]) with mapi id 15.20.9009.013; Thu, 7 Aug 2025
 08:35:12 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>, "Korba, Przemyslaw" <przemyslaw.korba@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kubalewski, Arkadiusz"
 <arkadiusz.kubalewski@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Olech, Milena" <milena.olech@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v8 iwl-next] ice: add recovery clock
 and clock 1588 control for E825c
Thread-Index: AQHb/JaMdkWjpx+EaEu+u+9+P8xPo7RBXg2AgAsB8CCACpEvwA==
Date: Thu, 7 Aug 2025 08:35:11 +0000
Message-ID: <IA1PR11MB6219A68EFD8E72E5298842A9922CA@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20250724122736.3398010-1-grzegorz.nitka@intel.com>
 <dff2578f-2336-4384-a1c3-427fc92dc1f2@molgen.mpg.de>
 <IA1PR11MB62193480CBF232FDCB54111E9227A@IA1PR11MB6219.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB62193480CBF232FDCB54111E9227A@IA1PR11MB6219.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|SA2PR11MB5097:EE_
x-ms-office365-filtering-correlation-id: d47abdb0-6be4-4c8a-4f12-08ddd58d5345
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?UWhmaHZVWmtxS0RFZDNQY2dZS1lpZ2ZibVljYUVON3V3Y3hvZXduNkJiSzBF?=
 =?utf-8?B?WElwejFqaHhzV3lHVlp3T2xULzZtWWc3M0VWQzA5enhKbTcxV3VuSEdTTERD?=
 =?utf-8?B?a2o2OHVaazFETk5LUDhiTVBieitaNnRYWGk4WkJxbzFVREgwSDQvNkI0SVda?=
 =?utf-8?B?WmhLeHQ0MHVUS2NCcms2MURHa0tyekVKUUlKME9lSW1pTjNrUVNlbTBqaHlG?=
 =?utf-8?B?cnp2TnhQUUpWZUc3YjZsK0RFQ2k0VGJyNXJrbFhYc3ZtbzRPTVBTUk1ROWpu?=
 =?utf-8?B?NXE2Y1RHTWZEalkwcXRRUjhLSS9mbmdEd1AyTGhENFFpZldqcUZ0N2g4K3pT?=
 =?utf-8?B?NUFNck1xU1dMb2lVWlgrZi9FNEsrSlVCTGVWUGFOcDVxKzdNNCswYkw1NmlW?=
 =?utf-8?B?VEpwRWRhSmx6ME90bEtFcVhyTGo3ZDNxTDBacW1qZTFCRExvdUdiSVczK3RB?=
 =?utf-8?B?STNmZ3dQWnJpRnoxNGlWZDZnbVNRQUZyOG4vbnVMQ3NyUGY3dXF5RFBTV0ZZ?=
 =?utf-8?B?KzFRNDBqaFVybGhPSGt5dzcxUVIxMTVZREl5aCtCekJxZG9ONkl1ZXhaeVBo?=
 =?utf-8?B?c2xFWGJ4VmdOVlNpYlp6aXV5M3RxWnZFU05kTXFmNHFoeWo4bU9nRTAvS0dK?=
 =?utf-8?B?TGxoVEo1UlVFZElTL29iM1NEY09jbmVaZk9scUxKRGZURXJwalNZenRRbE1T?=
 =?utf-8?B?ZGZ6RlEyNno2dTdkN25mM3U2Zm9wMHJnem1TM1o3dkFwa1E1bjNPYnJzWmZt?=
 =?utf-8?B?VWk0cnZXYnYwQ3hjdHI4MlYrRXA2aHA1aE1YZUZuWkZDb3JGbEJXYlY1bG9N?=
 =?utf-8?B?R0hxRzBzU3hGVU1kUDAwdktnaVoxUkVySkRMOU4zTzRveS94MzZBUmlWOFQr?=
 =?utf-8?B?eWlGSEZMeUVrcUkyd3ZuWU1tNUh1NUJlc3dEc1haZWRSUGxseUZYZUhSdVRZ?=
 =?utf-8?B?cEE0YkJ5MExMNjNmaUtwNFRBY2tCMzd2cUVldXZFR2VWdUh5TGJqTUt1VzhZ?=
 =?utf-8?B?MVh6MDRCREtBM3NmbGxiaDNSZGl6QkN4RVdMeFJUR08wQWpmUzBqQnN6QVdp?=
 =?utf-8?B?MnpTUVFvdVNXTVQweUxzZkdqUzU2d2hiYkk4SGxIeThybEhYdWsyNG9jemxE?=
 =?utf-8?B?TkZ1QWJ5dTlzSTlRSkNFZnlaTEhKM3UvelBTWkxtMVA1RUIxc2I4MXBkNTIz?=
 =?utf-8?B?WlVQYzJxTUwrRi9URHdKalUvcEFQYlpRdG1Ea0l1eUlvN1E5SjBHSDZ6Qlcv?=
 =?utf-8?B?eFR6R0ZVYUFDNjVvMlhOTDRucHZZWGx2WHVZK0JJM0VsSXB3Vit2Zkt6ZnQx?=
 =?utf-8?B?azVXRW9DbStHR2QrWkZpVzhHTEt1TUdmelNkSjlpdlJON0dXU0xDSnZoMEdC?=
 =?utf-8?B?dWQySTRhdDFKTG9URlAybGdybWM1TTVUUHN2WUljTFZyVTlMTnVGK3g5UkFM?=
 =?utf-8?B?YmFFeGtXaVk3MVFBdkRIbm5zdmtQV3NlMjV1TVlLbEFFM2JZTmx6TGpVcHZT?=
 =?utf-8?B?SE44OVNGMWJjRFdpcEVlcnkwUGRPOExaaXEzRllmU09RQ1hkNUROS1NIZk5z?=
 =?utf-8?B?WHNzUHJYMmFSdkcrdUMybG9DK1VsYVdXSmRtUWo4bWZOVGhMWGx6aTV4UW1o?=
 =?utf-8?B?cTQzWVlpbXowSmFxRFRHcEZqNnQvNGhOcTJYazh4cjBvbVBDZmp3QzYycFNY?=
 =?utf-8?B?SXVrY1B6UlhwWmNXWWNoVDBLcWtLUHY0dXBHbUZJWGptRFkvQVdKUTk2eHdk?=
 =?utf-8?B?UDNleWdxYWpxSFVOb1pzTGl2RVVwcFhuOGhVT0JYVUxRb2xTMjQrdE94S1Qx?=
 =?utf-8?B?SmI3dE15dDM0bHM4V2xjMVJMOGpLeU93RjdIcERzTVJQR25xb01HWlFZd1JV?=
 =?utf-8?B?QWlCNFJNTmhZdzlhQ3FWWlZMRy83MnlkM0FNUnoxbDRiUjRHQ2pYN2hLa2ky?=
 =?utf-8?B?QzFDcFdITHVDN09RMWpmdUJpYXQ0OXh0RnhYejBVQmFaTk9EUHg2dUVFMTA0?=
 =?utf-8?B?UXo4eUp3dXRnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eVA0Q1JRTkRlRkF6THFGL2taZDlHdll6M0NDT3ZlN2VKU3BINStxSjVxSURU?=
 =?utf-8?B?cnExMmFKUXpvbEVaeEFSNFdvaGtqZzRZTURiRDNKeWRwTzNqOGNLeHlseGl3?=
 =?utf-8?B?TGJWWEZRZzJFRzAvdnBXYk9MMzZnK29BbjJxWGJyWldXYk9wOXB4dXAzSWNt?=
 =?utf-8?B?bVNrcjFsUkU3TWJ5bFRuSyswN1VELysxSmpkWnpEdnZVbjRyKzRaNzZGMHh5?=
 =?utf-8?B?djl4aUxvbGdZTnk2Yng2U2hXT0ZIeHYyaHlOdFd4alFTSDJ6dS94NkVxaWdW?=
 =?utf-8?B?aHlzVnAvSWVRWGlkMmRiS3U5b043b2JrR3NQdHBTNGpuQ1dwMGpjeHh4VjFl?=
 =?utf-8?B?REZjZG9JYi9IdUZvcHJMZG5ZYTFHa3F3SzU4dzBBb0tsNTFxSEMxNUFlSThz?=
 =?utf-8?B?U0VBYVlCSnFaeS9abUZJakR2N0NndDBWRGNHaWdxcCs2L1VqcW5ldTNTNkxQ?=
 =?utf-8?B?RzdWaTYwQUlzaDdEU1NybGoveGF2azlRYnZGc212MjQ2Mk5NTjJNZ2tKbE9i?=
 =?utf-8?B?Ky9JWXBSUTZRdVJ3V1h6U0VmNm15ZDhSOC9MbVo1bGhiS0pZYU1ha2VvZkpy?=
 =?utf-8?B?Zk5IV2EyOE9pQVV0WVJBKzV3VnJlK29NRGcwSTNFQ1FkSDRjaEhLeEN3SlRt?=
 =?utf-8?B?SWJGWXVnTUxHaGdSS0tHUmRsRjU1Mkg4SEllTXNuSVZiMFllbnAyNXhZZ0Ra?=
 =?utf-8?B?ZnpHRkNPYURjZkFwR243cDd1N3JXR2NKYytWc0ZGbXFuREdFOGM4L0RKS2tU?=
 =?utf-8?B?Wk9xSTRQYWRlclZxT3dWKzIrbThUYmRrUElCUW85c21YVzQ0WTV3NTNyTGlh?=
 =?utf-8?B?L0NyTENOdVNFVlNZTytKVmVna3ZxcTlaUXk0c2taQUFkY0lBcXZHd2FRTW1h?=
 =?utf-8?B?MXc1ME5PTk1LcEZ0TjYwVVRHZ2VTMytPR3c5RDA1RjJ4Nk1YVm8rT3hrbWlW?=
 =?utf-8?B?Si8vVmovdDRIYUJQOS9yUVBid0JqY1J5Z09QOHYxSmV1VkR3WCs1RTFwTUFp?=
 =?utf-8?B?TTc3cmxsa3ZadldvZWQvbUE3bmJhck9ka1lKS2VjenJ1cFZZcDZVektEOUNt?=
 =?utf-8?B?dCtjWXd6ajhybVlCVmZiTW5ZZnBBc0dPb1ByUUplWkJmV3dWS1VlMUZBL1Bn?=
 =?utf-8?B?a2J2Rk1PTGlrUU9TbXBKb2NyMFRUd1NYK1N0WVVXQnpuZ3d3Z3UydUVjNHAr?=
 =?utf-8?B?dzFXOUZMWUhPZmtsb1pQNHZsbFI3K01tYU02elJaUzVMQkg3cHJBbFNhRllT?=
 =?utf-8?B?THluRGRZZFhWNnM0ZTIyam9XQUZQVlQvTXpmcG1JQzZ3MDVGcE9OR2Fkem1t?=
 =?utf-8?B?d0J2V0NwUFc1a3poYXdwV1dBcEQ5c3JhMUp2SXFmdGJ2a00yQzRVbGkwRHZW?=
 =?utf-8?B?cFh0V0QxRVZ3anZrdzNWdDRjR2IzRittZFB3eG1yWnFRVm9ib2hRU3o2V1Vm?=
 =?utf-8?B?NVJKYzU1TTU2VUFhODFmQmNLb3FRZ2lBUEx5MjFUUGZ2MEFRWXcyWVRpN2pn?=
 =?utf-8?B?NzhCcGNuV1JzUUN4cldCTjBwSFhBVzZrQzlKMGpXWHhqekhCNVlhUFEvdjJ4?=
 =?utf-8?B?eTRiaTdqR1Btd3pUS2FXWlBtSXNhTFpTQ3hHd01oTmQxOHJra24yUlM4R0FS?=
 =?utf-8?B?TW14V3dHU3I4VktmN3d4dFJOL3RzaFpXTmord1l5LytGR0hhYm5peDl4T3hN?=
 =?utf-8?B?aTBiTktYb29GMkdaT0NLQXN6aXJFN0VMWGRPSnpVbUo1N1ZYbFkrb1ZIWGVl?=
 =?utf-8?B?UDFxYzNXbzZmYzdvRkFZdWdSWjdNUnpCcVUvWjJxOWh1RUVraXREejRJVzIx?=
 =?utf-8?B?ZWFoU1Zsdkl5ZVV0dmlJSGFFeU5ySnFLTEdNM3F1TURwMFVRMVBVeldjVXV2?=
 =?utf-8?B?QmZWTHowVTAxcndheG9uQzJoSUtKYW5wT1VrNU1mVEEvVUpwVmRHRHZnczBZ?=
 =?utf-8?B?ZGwyZmxIUEtZOGNXUVYycjVQTjZ2NmJIM0NydDBFZzYvb0NnU080NUd3dnN6?=
 =?utf-8?B?Z1BkUG5WTnJWUkxaek1Kd1JqT3hmek9iTFRGTFBIQXB4VFluTVQ1UjlvYjNx?=
 =?utf-8?B?dzJhb1YyejV5YTViWEU4SjJ6T1laalNlTEY2KzBpZnBESU9xdnczaVpOZTZ3?=
 =?utf-8?Q?iXomSy8wnm/nt7Y7in56xc55T?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d47abdb0-6be4-4c8a-4f12-08ddd58d5345
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2025 08:35:12.0126 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3Er8fcqZrldTFxQQd1vl7K/iJwHS8JAO2x9wz5qzpDrvqPYxo9hXX595uLY17X8GkSG9IPavj+lxx4ivqki/PKkVOYsZZL1Mj3/HPFfusrs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5097
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754555721; x=1786091721;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XvMU8c8O9JedxVadAUC3ZJX1ZuG8zwQebBEXVSpZaB4=;
 b=b4NgkpVKUzpX4ARePvkKm7EfvAhwmHOEydq7uk55mFvaxDe8rl1LNIdx
 2FOlbsCi+yTZwSybw7gFZgePfNS7xJzPEljM2X081aeDXUd/cP8+ILo0z
 ODzEGvtkrabfOFfqDpqjozlEf9HwZm/aK89uddxvgVGgHv4iSofix3TSr
 GQ8HBprwDVQ1xvjkwastrSGXA5PIeQMGBQs7lAedZ5eBegpYN/mNKu6WO
 SDKAIGWBvm+HNDs/g9kk5YAA0Ok7xRU/QWuZZ09Ytp0Nep+2vsEtJ3sb+
 VflmFDBCAdmgnxShw9toRoPb9vomI2BSNTvtXFmXjjz1VhTdFfbceAAzP
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=b4NgkpVK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v8 iwl-next] ice: add recovery clock
 and clock 1588 control for E825c
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBOaXRrYSwg
R3J6ZWdvcnoNCj4gU2VudDogVGh1cnNkYXksIEp1bHkgMzEsIDIwMjUgNTozNiBQTQ0KPiBUbzog
UGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5kZT47IEtvcmJhLCBQcnplbXlzbGF3DQo+
IDxwcnplbXlzbGF3LmtvcmJhQGludGVsLmNvbT4NCj4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0
cy5vc3Vvc2wub3JnOyBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBLdWJhbGV3c2tpLA0KPiBBcmth
ZGl1c3ogPGFya2FkaXVzei5rdWJhbGV3c2tpQGludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBM
DQo+IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcNCj4g
PHByemVteXNsYXcua2l0c3plbEBpbnRlbC5jb20+OyBPbGVjaCwgTWlsZW5hIDxtaWxlbmEub2xl
Y2hAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIHY4
IGl3bC1uZXh0XSBpY2U6IGFkZCByZWNvdmVyeSBjbG9jayBhbmQNCj4gY2xvY2sgMTU4OCBjb250
cm9sIGZvciBFODI1Yw0KPiANCj4gRGVhciBQYXVsLA0KPiANCj4gVGhhbmtzIGZvciB5b3VyIGZl
ZWRiYWNrLg0KPiBNeSByZXNwb25zZXMgaW4tbGluZS4gSSdtIGdvaW5nIHRvIGFkZHJlc3MgeW91
ciBjb21tZW50cyBpbiB2OS4NCj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4g
PiBGcm9tOiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPg0KPiA+IFNlbnQ6IFRo
dXJzZGF5LCBKdWx5IDI0LCAyMDI1IDU6MDAgUE0NCj4gPiBUbzogTml0a2EsIEdyemVnb3J6IDxn
cnplZ29yei5uaXRrYUBpbnRlbC5jb20+OyBLb3JiYSwgUHJ6ZW15c2xhdw0KPiA+IDxwcnplbXlz
bGF3LmtvcmJhQGludGVsLmNvbT4NCj4gPiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9z
bC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IEt1YmFsZXdza2ksDQo+ID4gQXJrYWRpdXN6
IDxhcmthZGl1c3oua3ViYWxld3NraUBpbnRlbC5jb20+OyBOZ3V5ZW4sIEFudGhvbnkgTA0KPiA+
IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcNCj4gPiA8
cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IE9sZWNoLCBNaWxlbmEgPG1pbGVuYS5vbGVj
aEBpbnRlbC5jb20+DQo+ID4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2
OCBpd2wtbmV4dF0gaWNlOiBhZGQgcmVjb3ZlcnkgY2xvY2sNCj4gYW5kDQo+ID4gY2xvY2sgMTU4
OCBjb250cm9sIGZvciBFODI1Yw0KPiA+DQo+ID4gRGVhciBHcnplZ29yeiwNCj4gPg0KPiA+DQo+
ID4gVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLiBJIGhhdmUgc29tZSBtb3JlIG1pbm9yIGNvbW1l
bnRzLg0KPiA+DQo+ID4gQW0gMjQuMDcuMjUgdW0gMTQ6Mjcgc2NocmllYiBHcnplZ29yeiBOaXRr
YToNCj4gPiA+IEZyb206IFByemVteXNsYXcgS29yYmEgPHByemVteXNsYXcua29yYmFAaW50ZWwu
Y29tPg0KPiA+ID4NCj4gPiA+IEFkZCBjb250cm9sIGZvciBFODI1IGlucHV0IHBpbnM6IHBoeSBj
bG9jayByZWNvdmVyeSBhbmQgY2xvY2sgMTU4OC4NCj4gPiA+IEU4MjUgZG9lcyBub3QgcHJvdmlk
ZSBjb250cm9sIG92ZXIgcGxhdGZvcm0gbGV2ZWwgRFBMTCBidXQgaXQNCj4gPiA+IHByb3ZpZGVz
IGNvbnRyb2wgb3ZlciBQSFkgY2xvY2sgcmVjb3ZlcnksIGFuZCBQVFAvdGltZXN0YW1wIGRyaXZl
bg0KPiA+ID4gaW5wdXRzIGZvciBwbGF0Zm9ybSBsZXZlbCBEUExMLg0KPiA+ID4NCj4gPiA+IElu
dHJvZHVjZSBhIHNvZnR3YXJlIGNvbnRyb2xsZWQgbGF5ZXIgb2YgYWJzdHJhY3Rpb24gdG86DQo+
ID4gPiAtIGNyZWF0ZSBhIERQTEwgb2YgdHlwZSBFRUMgZm9yIEU4MjVjLA0KPiA+ID4gLSBjcmVh
dGUgcmVjb3ZlcmVkIGNsb2NrIHBpbiBmb3IgZWFjaCBQRiwgYW5kIGNvbnRyb2wgdGhlbSB0aHJv
dWdoDQo+ID4gPiB3cml0aW5nIHRvIHJlZ2lzdGVycywNCj4gPiA+IC0gY3JlYXRlIHBpbiB0byBj
b250cm9sIGNsb2NrIDE1ODggZm9yIFBGMCwgYW5kIGNvbnRyb2wgaXQgdGhyb3VnaA0KPiA+ID4g
d3JpdGluZyB0byByZWdpc3RlcnMuDQo+ID4NCj4gPiBJdOKAmWQgYmUgZ3JlYXQgaWYgeW91IG1l
bnRpb25lZCB0aGUgZGF0YXNoZWV0IG5hbWUsIHJldmlzaW9uLCBhbmQgc2VjdGlvbi4NCj4gPg0K
PiANCj4gU3VyZSwgSSdtIHdvcmtpbmcgb24gaW50ZXJuYWwgZG9jdW1lbnRhdGlvbiwgYnV0IHdp
bGwgdHJ5IHRvIGZpZ3VyZSBvdXQgd2hhdCdzDQo+IHB1YmxpY2x5IGF2YWlsYWJsZS4NCj4gDQo+
ID4gPiBVc2FnZSBleGFtcGxlOg0KPiA+ID4gLSB0byBnZXQgRUVDIFBMTCBpbmZvDQo+IA0KWy4u
Ll0NCj4gPiA+ICt7DQo+ID4gPiArCXN3aXRjaCAobGlua19zcGVlZCkgew0KPiA+ID4gKwljYXNl
IElDRV9BUV9MSU5LX1NQRUVEXzEwMEdCOg0KPiA+ID4gKwljYXNlIElDRV9BUV9MSU5LX1NQRUVE
XzUwR0I6DQo+ID4gPiArCWNhc2UgSUNFX0FRX0xJTktfU1BFRURfMjVHQjoNCj4gPiA+ICsJCSpk
aXZpZGVyID0gMTA7DQo+ID4gPiArCQlicmVhazsNCj4gPiA+ICsJY2FzZSBJQ0VfQVFfTElOS19T
UEVFRF80MEdCOg0KPiA+ID4gKwljYXNlIElDRV9BUV9MSU5LX1NQRUVEXzEwR0I6DQo+ID4gPiAr
CQkqZGl2aWRlciA9IDQ7DQo+ID4gPiArCQlicmVhazsNCj4gPiA+ICsJY2FzZSBJQ0VfQVFfTElO
S19TUEVFRF81R0I6DQo+ID4gPiArCWNhc2UgSUNFX0FRX0xJTktfU1BFRURfMjUwME1COg0KPiA+
ID4gKwljYXNlIElDRV9BUV9MSU5LX1NQRUVEXzEwMDBNQjoNCj4gPiA+ICsJCSpkaXZpZGVyID0g
MjsNCj4gPiA+ICsJCWJyZWFrOw0KPiA+ID4gKwljYXNlIElDRV9BUV9MSU5LX1NQRUVEXzEwME1C
Og0KPiA+ID4gKwkJKmRpdmlkZXIgPSAxOw0KPiA+ID4gKwkJYnJlYWs7DQo+ID4gPiArCWRlZmF1
bHQ6DQo+ID4gPiArCQlyZXR1cm4gLUVPUE5PVFNVUFA7DQo+ID4gPiArCX0NCj4gPiA+ICsNCj4g
PiA+ICsJcmV0dXJuIDA7DQo+ID4NCj4gPiBJcyB0aGVyZSBhIHJlYXNvbiB0byBub3QgY3JlYXRl
IGFuIG1hcC9sb29rdXAgYXJyYXk/DQo+ID4NCj4gDQo+IEknbSBub3QgYXdhcmUgb2YgYW55LiBX
aWxsIHRyeSB0byBjaGFuZ2UgdGhlIGNvZGUgYXMgeW91IHN1Z2dlc3RlZC4NCj4gDQoNCkkgdGhp
bmsgdGhlIHJhdGlvbmFsZSBmb3IgdGhhdCB3YXMgdGhlIGZhY3QgbGlua19zcGVlZCBpcyBqdXN0
IGEgYml0bWFwLg0KSSdkIGxlYXZlIGl0IGFzIGlzLg0KDQo+ID4gPiArfQ0KPiA+ID4gKw0KPiA+
ID4gKy8qKg0KPiA+ID4gKyAqIGljZV9kcGxsX2NmZ19zeW5jZV9ldGhkaXZfZTgyNWMgLSBzZXQg
dGhlIGRpdmlkZXIgb24gdGhlIG11eA0KPiA+ID4gKyAqIEBodzogUG9pbnRlciB0byB0aGUgSFcg
c3RydWN0DQo+ID4gPiArICogQG91dHB1dDogT3V0cHV0IHBpbiwgd2UgaGF2ZSB0d28gaW4gRTgy
NUMNCj4gPiA+ICsgKg0KPiA+ID4gKyAqIERwbGwgc3Vic3lzdGVtIGNhbGxiYWNrLiBTZXQgdGhl
IGNvcnJlY3QgZGl2aWRlciBmb3IgUkNMS0Egb3IgUkNMS0IuDQo+ID4gPiArICoNCj4gPiA+ICsg
KiBDb250ZXh0OiBDYWxsZWQgdW5kZXIgcGYtPmRwbGxzLmxvY2sNCj4gPiA+ICsgKiBSZXR1cm46
DQo+ID4gPiArICogKiAwIC0gc3VjY2Vzcw0KPiA+ID4gKyAqICogbmVnYXRpdmUgLSBlcnJvcg0K
PiA+ID4gKyAqLw0KPiA+ID4gK3N0YXRpYyBpbnQgaWNlX2RwbGxfY2ZnX3N5bmNlX2V0aGRpdl9l
ODI1YyhzdHJ1Y3QgaWNlX2h3ICpodywNCj4gPiA+ICsJCQkJCSAgIGVudW0gaWNlX3N5bmNlX2Ns
ayBvdXRwdXQpDQo+ID4gPiArew0KPiA+ID4gKwl1MTYgbGlua19zcGVlZDsNCj4gPiA+ICsJdTgg
ZGl2aWRlcjsNCj4gPiA+ICsJdTMyIHZhbDsNCj4gPiA+ICsJaW50IGVycjsNCj4gPiA+ICsNCj4g
PiA+ICsJbGlua19zcGVlZCA9IGh3LT5wb3J0X2luZm8tPnBoeS5saW5rX2luZm8ubGlua19zcGVl
ZDsNCj4gPiA+ICsJaWYgKCFsaW5rX3NwZWVkKQ0KPiA+ID4gKwkJcmV0dXJuIDA7DQo+ID4NCj4g
PiBJc27igJl0IHRoaXMgYW4gZXJyb3I/IFNob3VsZCBhIHdhcm5pbmcgYmUgbG9nZ2VkPw0KPiA+
DQo+IA0KPiBHb29kIHBvaW50LiBJbiBicmllZiwgIWxpbmtfc3BlZWQgbWVhbnMgdGhlcmUgaXMg
bm8gbGluay4NCj4gQXMgYW4gYWx0ZXJuYXRpdmUsIHRoaXMgY2hlY2tlciBtaWdodCBiZSBza2lw
cGVkIGFuZCBsZXQgaXQgZmFpbCBpbg0KPiBpY2VfZHBsbF9nZXRfZGl2X2U4MjVjKCkgY2FsbC4N
Cj4gDQoNCkkgdmVyaWZpZWQgdGhpcy4gTm8sIGl0J3MgaW50ZW50aW9uYWwgdG8gbm90IHJlcG9y
dCBhbiBlcnJvciBoZXJlLg0KVXNlciBpcyBub3QgYmxvY2tlZCB0byBjb25maWd1cmUgc3luY2Ug
ZXZlbiBpZiBsaW5rIGlzIGRvd24uDQpXaGF0J3MgbWlzc2luZyBoZXJlIGlzIHRvIHJlLWFwcGxp
bmcgZGl2aWRlciBzZXR0aW5ncyBvbmNlIGxpbmsgaXMgdXAuDQpJJ2xsIGFkZCB0aGlzIHBhcnQg
aW4gdjkgb25jZSB0aGUgd2luZG93IGlzIG9wZW4gYWdhaW4uDQoNCj4gPiA+ICsNCj4gPiA+ICsJ
ZXJyID0gaWNlX2RwbGxfZ2V0X2Rpdl9lODI1YyhsaW5rX3NwZWVkLCAmZGl2aWRlcik7DQo+ID4g
PiArCWlmIChlcnIpDQo+ID4gPiArCQlyZXR1cm4gZXJyOw0KPiA+ID4gKw0KPiA+ID4gKwllcnIg
PSBpY2VfcmVhZF9jZ3VfcmVnKGh3LCBJQ0VfQ0dVX1IxMCwgJnZhbCk7DQo+ID4gPiArCWlmIChl
cnIpDQo+ID4gPiArCQlyZXR1cm4gZXJyOw0KPiA+ID4gKw0KPiA+ID4gKwkvKiBwcm9ncmFtbWFi
bGUgZGl2aWRlciB2YWx1ZSAoZnJvbSAyIHRvIDE2KSBtaW51cyAxIGZvciBFVEhDTEtPVVQNCj4g
PiAqLw0KPiA+ID4gKwlzd2l0Y2ggKG91dHB1dCkgew0KPiA+ID4gKwljYXNlIElDRV9TWU5DRV9D
TEswOg0KPiA+ID4gKwkJdmFsICY9IH4oSUNFX0NHVV9SMTBfU1lOQ0VfRVRIRElWX00xIHwNCj4g
PiA+ICsJCQkgSUNFX0NHVV9SMTBfU1lOQ0VfRVRIRElWX0xPQUQpOw0KPiA+ID4gKwkJdmFsIHw9
IEZJRUxEX1BSRVAoSUNFX0NHVV9SMTBfU1lOQ0VfRVRIRElWX00xLA0KPiA+IGRpdmlkZXIgLSAx
KTsNCj4gPiA+ICsJCWVyciA9IGljZV93cml0ZV9jZ3VfcmVnKGh3LCBJQ0VfQ0dVX1IxMCwgdmFs
KTsNCj4gPiA+ICsJCWlmIChlcnIpDQo+ID4gPiArCQkJcmV0dXJuIGVycjsNCj4gPiA+ICsJCXZh
bCB8PSBJQ0VfQ0dVX1IxMF9TWU5DRV9FVEhESVZfTE9BRDsNCj4gPiA+ICsJCWJyZWFrOw0KPiA+
ID4gKwljYXNlIElDRV9TWU5DRV9DTEsxOg0KPiA+ID4gKwkJdmFsICY9IH4oSUNFX0NHVV9SMTBf
U1lOQ0VfQ0xLT0RJVl9NMSB8DQo+ID4gPiArCQkJIElDRV9DR1VfUjEwX1NZTkNFX0NMS09ESVZf
TE9BRCk7DQo+ID4gPiArCQl2YWwgfD0gRklFTERfUFJFUChJQ0VfQ0dVX1IxMF9TWU5DRV9DTEtP
RElWX00xLA0KPiA+IGRpdmlkZXIgLSAxKTsNCj4gPiA+ICsJCWVyciA9IGljZV93cml0ZV9jZ3Vf
cmVnKGh3LCBJQ0VfQ0dVX1IxMCwgdmFsKTsNCj4gPiA+ICsJCWlmIChlcnIpDQo+ID4gPiArCQkJ
cmV0dXJuIGVycjsNCj4gPiA+ICsJCXZhbCB8PSBJQ0VfQ0dVX1IxMF9TWU5DRV9DTEtPRElWX0xP
QUQ7DQo+ID4gPiArCQlicmVhazsNCj4gPiA+ICsJZGVmYXVsdDoNCj4gPiA+ICsJCXJldHVybiAt
RUlOVkFMOw0KPiA+ID4gKwl9DQo+ID4gPiArDQo+ID4gPiArCWVyciA9IGljZV93cml0ZV9jZ3Vf
cmVnKGh3LCBJQ0VfQ0dVX1IxMCwgdmFsKTsNCj4gPiA+ICsJaWYgKGVycikNCj4gPiA+ICsJCXJl
dHVybiBlcnI7DQo+ID4gPiArDQo+ID4gPiArCXJldHVybiAwOw0KPiA+ID4gK30NCj4gPiA+ICsN
Cg0KUmVnYXJkcw0KDQpHcnplZ29yeg0K
