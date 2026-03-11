Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8M8PCGJhsWl/uQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 13:34:42 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE6C263A78
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 13:34:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B032844A3;
	Wed, 11 Mar 2026 12:34:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GYGfb_Qrwkln; Wed, 11 Mar 2026 12:34:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B6602844A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773232472;
	bh=V8NpWbHOi4Ogwyn9G3RD3IuopNdQPtCG94H/1dpmKME=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=buap2sO7FzddJQxPGx+GUK8mB+m4XAeUocl3QmAnM6ZThxmwChYBOGufDy2QgOom9
	 0Sp+brGRwOTiHZlfrgbdTN3gbTfuxQXXYZzkD0UCRy3jbotgaDDqOsH1MmFNknksME
	 d8BaurzwIPjSjKKZ47bd6QCCMLVvL76QRHUyEmbmmyplZpA2oDjs5Qr4G4SMwPKPm6
	 1CZohStmWC5OSDl1jlZv1gwrMIf4IaQqjPd2MwgK2IGWSxRYcBWTk9Xh0Qtl8KpOa5
	 OVsPAPnAIzufO2Q4H9C9BaX2mMkY7WExeQRCkwEA0i/o5WSQ71m1ZARxz2wFvwuQQJ
	 usX4m0wsoyb4g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B6602844A2;
	Wed, 11 Mar 2026 12:34:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id F34A1201
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 12:34:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CA77A844A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 12:34:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gJ3i9Zoy6Z_F for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Mar 2026 12:34:29 +0000 (UTC)
Received-SPF: Temperror (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 894F58449E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 894F58449E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 894F58449E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 12:34:04 +0000 (UTC)
X-CSE-ConnectionGUID: eAC7i4U2SzOiikEKRFFdUA==
X-CSE-MsgGUID: 4LMzMhV8RLeTMtc/zlzGwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74268019"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="74268019"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 05:34:03 -0700
X-CSE-ConnectionGUID: zkoyeIBkRGG3TILclGTgqw==
X-CSE-MsgGUID: WqvfUvGxSGyQhYrV93BUJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="246031687"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 05:34:03 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 05:34:02 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 05:34:02 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.0) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 05:34:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LNFQfkj7KOohQgxRW3izwotO/3pFPf1dfLjFhiYSt4cHAEl1tFAVdC5JSp15c+M0+ayX00a+6dru/tfwAnYLCdBDkvXSUql3EqgOZ/svHbAyQNoyOammGRFssGZvDl02xL64Y+Z9+V3pWRpT1dUS83rsgwS7NnYoQdgSm2nYtXhoe7kjApECAnfT8NEEkr9rjMGs3rImNpoSOMN/Pq0QQAj/ADTESJnp92Q30UZAhCeERVTddWh9mKYtc22Ng7/0PKzZSbBacy1cdDW8dKvxIOZtJw9+VjrmH/Wcwyphxu/DgDnh6CUxg9TjcLhgc6ygrgu6KyUZOHIRbXFHlMtS0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V8NpWbHOi4Ogwyn9G3RD3IuopNdQPtCG94H/1dpmKME=;
 b=EgAgRr2bSLa/sG0rXIEqlbcRG/Ru2FYRUDgkDWUAUZvz7aDDD7/aV7DPDNuVV2UN/GkLmqQkMY7A88fIZUTHt8z9QZuiq5hEV9JORLGnsa0WKnks7BQtGK4JzwOx++b57Z4l5YxzwVAQdeJaX7A0Jo0XeEXCcdMM5GY4t9WhgxpftLOT8G4HIzdxvj/s4Rv1CyzhfqdZNvOtnlp+v7c+qe1/8ml+AdQBXVXvmljGK0uCY+ITTqTxEva3zOL2byGH6EYzHi2NE8h7wDJKm97oA9dtfihpju1FLVs+Tz3W7Yzvq3cfU2rlq77DYf2TB8tcrTSeQ7k5UKf7PyhvhEhkPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by SA1PR11MB6685.namprd11.prod.outlook.com (2603:10b6:806:258::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Wed, 11 Mar
 2026 12:33:56 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::355c:96ca:a45:dd5d%5]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 12:33:56 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Oros, Petr" <poros@redhat.com>, "Schmidt, Michal" <mschmidt@redhat.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Eric Dumazet <edumazet@google.com>, "Ahmed
 Zaki" <ahmed.zaki@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, Jakub Kicinski <kuba@kernel.org>, "Paolo
 Abeni" <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] iavf: fix VLAN filter lost on
 add/delete race
Thread-Index: AQHcpj3danrGpBdwUkyL62MZZB1oCbWTRA+AgAA9hQCAFdhzQA==
Date: Wed, 11 Mar 2026 12:33:56 +0000
Message-ID: <IA3PR11MB8985854829F6D953BE6E40E88F47A@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20260225100137.383527-1-poros@redhat.com>
 <CADEbmW2WNCLuRYVs5FTKR6GR16yOMmQGyg0vYR98SQCCwb_5HA@mail.gmail.com>
 <6d93637e-cc59-45e5-9365-8140f53e4004@redhat.com>
In-Reply-To: <6d93637e-cc59-45e5-9365-8140f53e4004@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|SA1PR11MB6685:EE_
x-ms-office365-filtering-correlation-id: 62a55f8e-0f3a-451a-35c8-08de7f6a764e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7416014|56012099003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: fvTTwCYRKN5vhdHTu/cP/7CuUqA/EhMu+DH4HmheAQtiVETdMJw/m1/KJF9EQRx5Hh6UKLu22OdnpbxFv9q1sYRpm8aEgDkq1mZpuiNcKU9QpXIrYyZjSbBiXQLZI5KNYlJMgi4E+M0WcoWPjcrKNunFh/deKTCQ1vM8sZlvEGrQUoxBSsMav7jtNl4pFUl3TAB8krCXyELncg/gOmRH7c6VbMbGrOb42VrfgWeRZtk6hOIYIY5D5UCeh5PAi7O+oPKz/bs1AbSSiaBLPRSwdu740YB+b2oXz/v8CB+ghcBCQeBAxZtsfsNNBLyUWWraIbkJKPL6o6VCZ8jzVlBvPcnX/tkGcV9mxBptNf8hxCdMGYIbcMO08/3LBTgkhBUXEZLYzuo8v8OH9/zpdWik48L3ToaPdzeNfIoCQalsDkhGG2DxGbvMf07DQGgS41i0t0K1lQw5IsfcblYCaQPKim4giOrZPs6g+evLHlWIKz8NsmJiIV8CAF0MdkxzdcApnNVLo/BZ0TZCNDQwGnrQU5+VaZugW3Tyi+fzplztUDcTi3ASpBByPwzJCW+CamiH93qBpcoIYY6sPnT0UC3j2IjYvHdkDmqj2ZqL+FyAua8rmPEF0cTnLhAZXn5VC0WoXeq/k7KsIltfAdCb2OVAKT/rlwFA0FvzYUSfyCNbVJc7sX+Pvg6m+clqjsc8dJiHvf6D7s4sQ9mZO59LQuIAeEXbEay44SdT+xcqUOh+kVfdo0yMX72gcbDlTyDyCZwVRngGKfNj9syhmUR0Av24UiiwUfyQ/X9NLr7TEmvayU0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7416014)(56012099003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OHBuSCt3THRnVmZPMzE0cTNuUS9sTFpNMDFoOVFBRE93WnRUS3JOSEljVHVr?=
 =?utf-8?B?QUNkUnlGSkQ1MmlkK1lYZGczallCVGJvNXcwZWRLSnNQa3NkZlgzeVZ5eldI?=
 =?utf-8?B?Q2Z0WHpyTnY0a0xsaDEzWTgvTTVnYk81ZEZzRVVDbDRvYmw0ZUt1bFNkR3hr?=
 =?utf-8?B?VmFtdmgvRXN0R0xZVWE4c1RTRGkrZ3RVRENzNzBmYzFTcXJPZVI0NVkwN2JJ?=
 =?utf-8?B?bnZKejBXTjZtZ2wrOXVDeVVuS1ZLcHl1UDR2K0doWGYwQUlOSFZsWEl1blRJ?=
 =?utf-8?B?Z1RTSkdzV3ZHL1J6TERCZm5KU0NRNnNyUzBwNTd5bEsvNS91UTdiZnh2d0U1?=
 =?utf-8?B?NW9RaHpoM0k2dUFESmZzOEIxNnZuRFF1U3RnRDRrekxpMEkzOHVXdjc4V0tk?=
 =?utf-8?B?MWN5SkE1cmhMSWM3UjlyS1NpRmxBUkhjWXFWaEVaUzhYbXZCaFpqcWRBMCs2?=
 =?utf-8?B?VXlDd3hmRXlSME1RMCs4dmJlTzl3THErTWFFNHNKU0dBQXpYaEJBL1VqZlpF?=
 =?utf-8?B?YXFMdWYwU2wzUnFXZWRNWURndTJieEIvSW9rTVk5M3B6MWNaQjRGZk5DS3Fu?=
 =?utf-8?B?MFEvRExMMEpuWUhqRkZDNEk1ME1VaU9vWjEwc1JwVFlNVzJ5YndocDRnNXJD?=
 =?utf-8?B?QkJPZjQvaFVld3VDWGltRGhBN1cxa3M0dEtNcW5memh6UWw4NG9ZUEp3aHk3?=
 =?utf-8?B?U1hGdHFGbHhSSy9yc0J4cmNwK3NibXlIeUlzOXRuM3pJR1BZQnBMaXBvVDZB?=
 =?utf-8?B?MS9sTmpnb21HejlVYzdYc3VCOU9WSmpRRHBhTEdGZ2szYzc1c2huSmJOSVQy?=
 =?utf-8?B?c1pQa3lCTHlNZ0Q3a2oxMk9wMFdjQktHRS8reC9BbjkwWTZMZzhUMnZSamNh?=
 =?utf-8?B?d1dhMkZlc0wvQWU0SWg0Yk1DZ2hPTzUzZ1dLZHZKWDJxTyt2YVk1RVIzWElE?=
 =?utf-8?B?N0ZXSml2T0hkU3dwbFp1RllhUzlyelUvT3I1SkVJZ3Q5ZTNLS1liY2Roc2Nu?=
 =?utf-8?B?Z1JDb1pjSTZqblFvVWFmamZqUWJmbWRSNFE1emh4TGt1ZEs5WG8rVEs3ZldI?=
 =?utf-8?B?WlU0b0l4SGUvbm1Wc0hvSm9NaWZZN01tU1V0aW4vOWRKTXc5MjZZN20rVTVK?=
 =?utf-8?B?YmJsS0JIMHhDczllQWVIMmhiNWM2TjhRYzJxWGJRTVp0cGdqcUo1YVRsWWpB?=
 =?utf-8?B?bjhyb0dLWU02akc5SWQzZURIU1UvRENYNkVWNG1SekxvSmo3T2R5Z3JyVEdr?=
 =?utf-8?B?RE1EdURIMm5IV0prT3NVYkNmTFI5L3MrVVVvR2E5Q0VKSnIwWnhkbW1Jd3Ns?=
 =?utf-8?B?bnNZanRsVkdZWmczNE1lbDVMeDRwN3d1cThaSGFDU1JUckhQcUs3bUtsRXM2?=
 =?utf-8?B?UWlqR3hVZmFOcGY2TFN0dFpSR3hPZytPWjBQNndVMy9LNHF1RkxPUldWMm1P?=
 =?utf-8?B?ekZPeDFlVm00ODBPVUdEUE1Uc1RMVGZIVjcwNTVzSG5qbHB1T0o3OHE2dVlj?=
 =?utf-8?B?WCsxR2xFZVNCUjlRZHpoMUNYS3VFZk50cUNLdlA2bTBBU1dKQTBIdE5NMTNJ?=
 =?utf-8?B?TW5GZ2dZYTB3bm9jY0RWbks2akMyVm5Cdk1Da0JIMDY5ZDRMbnRWc055akkz?=
 =?utf-8?B?N3dIUU5ydEVFWDR4ZkFoeXFzZWgwQW50U3RXelRFckwrTFdoRUpvTVRFZUlm?=
 =?utf-8?B?aFpoeHFqY1phTDQxa0xadjd4bmlBTmVWSTNaV2NqSmN3TWd3MVkyUFZKNDBC?=
 =?utf-8?B?NkRnNEIydGdlV3p6eEcxbUg5UGlPYWdLNEVWZytDaVQyNnRKaUVVQnZvVXd1?=
 =?utf-8?B?ZUdKRXpEeDBqZk1rcjRocDZOL3RHcmVvbEtPY1ZzRW0zem9oeC9maHQ0RjVM?=
 =?utf-8?B?RlBJTmRwMS90Y3JwMDB6Unl5OGdDU3YrZ1hqZGlmQlVYdE9hYzZBVC80WDdq?=
 =?utf-8?B?bzhnUlV6eXZVRk1td3ZDZXRSR2JvZTM5dkRsMEt2VUh0M09ReDNiSXJXbkZV?=
 =?utf-8?B?bUFQVXRYWVl0ejI4WHVvR1NEcG1LRTVzcHVnYU9MVFRMNlVpZzNwQ3JKSms2?=
 =?utf-8?B?Y1gwR0d3eS90bngwb21NbFZPdStvd2xVd2FENFFzQVNWUHVlNUFZMXQyOE5q?=
 =?utf-8?B?NTFiMWFTeTlSL21kSityclVBY2dRYXVJeTJyS3gzK2F0bnF6YXJ0SXRJL1VG?=
 =?utf-8?B?U0tFcU13S2ZVVTBpb0NNaGN3dnBhWnVvbWExNWF1R0VQd0tVaXhxeXlJbHpW?=
 =?utf-8?B?WFhqUDZYeFl1Qk5xYVR5eHVnMFNYT1U3dEQ4WVB6TnhzSkMvMThQQ0FmanlI?=
 =?utf-8?B?c0IzSFVIZC9EWTY5SnBqV3lueXRzNW5kbjVFaktack5KV2tYMHhmUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: rwPcgOBNHJVi4K+IzGK+OdsGYwEKFwLNwTwpXMoNn12X9h49xLEEcTA6YNWEf8aM8FfH358jUJrtBHz5Onpl2tOAWqrf/aCsubVB/yitq00yso8YyYOarQuv3neCt0PMHZhti/3soYem4ZT9QA/EUQoPmxEeGlVTE/HeFL7VhAnGR0S6omw7Gz6PKXdfRa/gJEeb7Yu9O54+mcsbDqpuUOBGBcIoFX+SCn3rJJRNdYXB651/y7iCPPMli/MKMMwoVLwfM1nrNh6xhFa+XjznpoEP3yPI0OaQ/Gf0/UB+xDyCS0eowPH5LbM8Y8g1UQrSmU+PbCe/qI58k4UwWi2gTQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62a55f8e-0f3a-451a-35c8-08de7f6a764e
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2026 12:33:56.0770 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fOHIvF0EXHGWIdCCnLJ7b2FEFOHnhCtZi9mosoHZpNLGR3HCz/TeIIrH+5NePCdBDO+3oUJHtgkzMK/kuBgRxl5T0hWNdb6eY+S2qRms6ng=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6685
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773232467; x=1804768467;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=V8NpWbHOi4Ogwyn9G3RD3IuopNdQPtCG94H/1dpmKME=;
 b=CNN3leCOCU9P1zJ4zMOJAE9BxwcNNe+8SIwT7dfmEJ3M6pyIQGwshsww
 8pXzyqXvRq66l0X59x4q81PZimgTyx7hLdyb6ekJ7MD+OQBA+riJvPbOd
 pJ7rDNArcdxLBjGTaY+p1d0x5XWKcK95zOWN/LuO6ysNJIwI9sHG0wKXj
 OqaOhJrqUxatiT+fpubqPwr23BEknCNxfUdb87mYArOdGVdIFUoLGbn37
 82jjeapK5lb3e9F64C8hWgfALALUl+XFEgX61ehD2ICAP3WgqJtGikhC3
 +ZMAKSxPC+Svy+h4QEe31VbvOvvSygJoEHWSKUi8JEY6ylwwLeqVB65e4
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CNN3leCO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] iavf: fix VLAN filter lost on
 add/delete race
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
X-Rspamd-Queue-Id: CEE6C263A78
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:mschmidt@redhat.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:ahmed.zaki@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[rafal.romanowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo]
X-Rspamd-Action: no action

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGlu
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBQZXRyDQo+IE9y
b3MNCj4gU2VudDogV2VkbmVzZGF5LCBGZWJydWFyeSAyNSwgMjAyNiAzOjU3IFBNDQo+IFRvOiBT
Y2htaWR0LCBNaWNoYWwgPG1zY2htaWR0QHJlZGhhdC5jb20+DQo+IENjOiBuZXRkZXZAdmdlci5r
ZXJuZWwub3JnOyBLaXRzemVsLCBQcnplbXlzbGF3DQo+IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50
ZWwuY29tPjsgRXJpYyBEdW1hemV0IDxlZHVtYXpldEBnb29nbGUuY29tPjsNCj4gQWhtZWQgWmFr
aSA8YWhtZWQuemFraUBpbnRlbC5jb20+OyBBbmRyZXcgTHVubiA8YW5kcmV3K25ldGRldkBsdW5u
LmNoPjsNCj4gTmd1eWVuLCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsg
aW50ZWwtd2lyZWQtDQo+IGxhbkBsaXN0cy5vc3Vvc2wub3JnOyBKYWt1YiBLaWNpbnNraSA8a3Vi
YUBrZXJuZWwub3JnPjsgUGFvbG8gQWJlbmkNCj4gPHBhYmVuaUByZWRoYXQuY29tPjsgRGF2aWQg
Uy4gTWlsbGVyIDxkYXZlbUBkYXZlbWxvZnQubmV0PjsgbGludXgtDQo+IGtlcm5lbEB2Z2VyLmtl
cm5lbC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV0
XSBpYXZmOiBmaXggVkxBTiBmaWx0ZXIgbG9zdCBvbg0KPiBhZGQvZGVsZXRlIHJhY2UNCj4gDQo+
IA0KPiBPbiAyLzI1LzI2IDEyOjE3LCBNaWNoYWwgU2NobWlkdCB3cm90ZToNCj4gPiBPbiBXZWQs
IEZlYiAyNSwgMjAyNiBhdCAxMTowMuKAr0FNIFBldHIgT3JvcyA8cG9yb3NAcmVkaGF0LmNvbT4g
d3JvdGU6DQo+ID4+IFdoZW4gaWF2Zl9hZGRfdmxhbigpIGZpbmRzIGFuIGV4aXN0aW5nIGZpbHRl
ciBpbiBJQVZGX1ZMQU5fUkVNT1ZFDQo+ID4+IHN0YXRlLCBpdCB0cmFuc2l0aW9ucyB0aGUgZmls
dGVyIHRvIElBVkZfVkxBTl9BQ1RJVkUgYXNzdW1pbmcgdGhlDQo+ID4+IHBlbmRpbmcgZGVsZXRl
IGNhbiBzaW1wbHkgYmUgY2FuY2VsbGVkLiBIb3dldmVyLCB0aGVyZSBpcyBubw0KPiA+PiBndWFy
YW50ZWUgdGhhdCBpYXZmX2RlbF92bGFucygpIGhhcyBub3QgYWxyZWFkeSBwcm9jZXNzZWQgdGhl
IGRlbGV0ZQ0KPiA+PiBBUSByZXF1ZXN0IGFuZCByZW1vdmVkIHRoZSBmaWx0ZXIgZnJvbSB0aGUg
UEYuIEluIHRoYXQgY2FzZSB0aGUNCj4gPj4gZmlsdGVyIHJlbWFpbnMgaW4gdGhlIGRyaXZlcidz
IGxpc3QgYXMgSUFWRl9WTEFOX0FDVElWRSBidXQgaXMgbm8NCj4gPj4gbG9uZ2VyIHByb2dyYW1t
ZWQgb24gdGhlIE5JQy4gU2luY2UgaWF2Zl9hZGRfdmxhbnMoKSBvbmx5IHBpY2tzIHVwDQo+ID4+
IGZpbHRlcnMgaW4gSUFWRl9WTEFOX0FERCBzdGF0ZSwgdGhlIGZpbHRlciBpcyBuZXZlciByZS1h
ZGRlZCwgYW5kDQo+ID4+IHNwb29mIGNoZWNraW5nIGRyb3BzIGFsbCB0cmFmZmljIGZvciB0aGF0
IFZMQU4uDQo+ID4+DQo+ID4+ICAgIENQVTAgICAgICAgICAgICAgICAgICAgICAgIENQVTEgICAg
ICAgICAgICAgICAgICAgICBXb3JrcXVldWUNCj4gPj4gICAgLS0tLSAgICAgICAgICAgICAgICAg
ICAgICAgLS0tLSAgICAgICAgICAgICAgICAgICAgIC0tLS0tLS0tLQ0KPiA+PiAgICBpYXZmX2Rl
bF92bGFuKHZsYW4gMTAwKQ0KPiA+PiAgICAgIGYtPnN0YXRlID0gUkVNT1ZFDQo+ID4+ICAgICAg
c2NoZWR1bGUgQVFfREVMX1ZMQU4NCj4gPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
aWF2Zl9hZGRfdmxhbih2bGFuIDEwMCkNCj4gPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBmLT5zdGF0ZSA9IEFDVElWRQ0KPiA+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgaWF2Zl9kZWxfdmxhbnMoKQ0KPiA+PiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBmIGlzIEFD
VElWRSwgc2tpcA0KPiA+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgaWF2Zl9hZGRfdmxhbnMoKQ0KPiA+PiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBmIGlzIEFDVElWRSwNCj4gPj4g
c2tpcA0KPiA+Pg0KPiA+PiAgICBGaWx0ZXIgaXMgQUNUSVZFIGluIGRyaXZlciBidXQgYWJzZW50
IGZyb20gTklDLg0KPiA+IEkgZG9uJ3QgZ2V0IGl0LiBJZiwgYXMgdGhlIGRpYWdyYW0gc2hvd3Ms
IGlhdmZfZGVsX3ZsYW5zKCkgc2tpcHBlZCBpdCwNCj4gPiB0aGVuIGhvdyBkb2VzIHRoZSBmaWx0
ZXIgYmVjb21lIGFic2VudCBmcm9tIE5JQz8NCj4gDQo+IFZMQU4gdGVhcmRvd24gICAgICAgICAg
ICBXb3JrcXVldWUgICAgICAgICAgIFZMQU4gc2V0dXANCj4gLS0tLS0tLS0tLS0tLSAgICAgICAg
ICAgIC0tLS0tLS0tLSAgICAgICAgICAgLS0tLS0tLS0tLQ0KPiBpYXZmX2RlbF92bGFuKDEwMCkN
Cj4gICAgZi0+c3RhdGUgPSBSRU1PVkUNCj4gICAgc2NoZWR1bGUgQVFfREVMX1ZMQU4NCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGlhdmZfb3BlbigpDQo+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlc3RvcmVf
ZmlsdGVycygpDQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgZiBpcyBSRU1PVkUsIHNraXANCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgaWF2Zl9hZGRfdmxhbigxMDApDQo+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBmLT5zdGF0ZSA9IEFDVElWRQ0KPiANCj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICBpYXZmX2RlbF92bGFucygpDQo+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGYgaXMgQUNUSVZFLCBza2lwDQo+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgaWF2Zl9hZGRfdmxhbnMoKQ0KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICBmIGlz
IEFDVElWRSwgc2tpcA0KPiANCj4gSXMgaXQgY2xlYXIgbGlrZSB0aGlzPw0KPiANCj4gPiBNaWNo
YWwNCj4gPg0KPiA+PiBUcmFuc2l0aW9uIHRvIElBVkZfVkxBTl9BREQgaW5zdGVhZCBhbmQgc2No
ZWR1bGUNCj4gPj4gSUFWRl9GTEFHX0FRX0FERF9WTEFOX0ZJTFRFUiBzbyBpYXZmX2FkZF92bGFu
cygpIHJlLXByb2dyYW1zIHRoZQ0KPiA+PiBmaWx0ZXIuICBBIGR1cGxpY2F0ZSBhZGQgaXMgaWRl
bXBvdGVudCBvbiB0aGUgUEYuDQo+ID4+DQo+ID4+IEZpeGVzOiAwYzBkYTBlOTUxMDUgKCJpYXZm
OiByZWZhY3RvciBWTEFOIGZpbHRlciBzdGF0ZXMiKQ0KPiA+Pg0KPiA+PiBTaWduZWQtb2ZmLWJ5
OiBQZXRyIE9yb3MgPHBvcm9zQHJlZGhhdC5jb20+DQo+ID4+IC0tLQ0KPiA+PiAgIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9tYWluLmMgfCA5ICsrKysrKy0tLQ0KPiA+PiAg
IDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+ID4+DQo+
ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFp
bi5jDQo+ID4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uYw0K
PiA+PiBpbmRleCA0YjBmYzhmMzU0YmM5MC4uNjA0NmI5M2M3ZjM0NzIgMTAwNjQ0DQo+ID4+IC0t
LSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl9tYWluLmMNCj4gPj4gKysr
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uYw0KPiA+PiBAQCAt
NzgyLDEwICs3ODIsMTMgQEAgaWF2Zl92bGFuX2ZpbHRlciAqaWF2Zl9hZGRfdmxhbihzdHJ1Y3Qg
aWF2Zl9hZGFwdGVyDQo+ICphZGFwdGVyLA0KPiA+PiAgICAgICAgICAgICAgICAgIGFkYXB0ZXIt
Pm51bV92bGFuX2ZpbHRlcnMrKzsNCj4gPj4gICAgICAgICAgICAgICAgICBpYXZmX3NjaGVkdWxl
X2FxX3JlcXVlc3QoYWRhcHRlciwNCj4gSUFWRl9GTEFHX0FRX0FERF9WTEFOX0ZJTFRFUik7DQo+
ID4+ICAgICAgICAgIH0gZWxzZSBpZiAoZi0+c3RhdGUgPT0gSUFWRl9WTEFOX1JFTU9WRSkgew0K
PiA+PiAtICAgICAgICAgICAgICAgLyogSUFWRl9WTEFOX1JFTU9WRSBtZWFucyB0aGF0IFZMQU4g
d2Fzbid0IHlldCByZW1vdmVkLg0KPiA+PiAtICAgICAgICAgICAgICAgICogV2UgY2FuIHNhZmVs
eSBvbmx5IGNoYW5nZSB0aGUgc3RhdGUgaGVyZS4NCj4gPj4gKyAgICAgICAgICAgICAgIC8qIFJl
LWFkZCB0aGUgZmlsdGVyIHNpbmNlIHdlIGNhbm5vdCB0ZWxsIHdoZXRoZXIgdGhlDQo+ID4+ICsg
ICAgICAgICAgICAgICAgKiBwZW5kaW5nIGRlbGV0ZSBoYXMgYWxyZWFkeSBiZWVuIHByb2Nlc3Nl
ZCBieSB0aGUgUEYuDQo+ID4+ICsgICAgICAgICAgICAgICAgKiBBIGR1cGxpY2F0ZSBhZGQgaXMg
aGFybWxlc3MuDQo+ID4+ICAgICAgICAgICAgICAgICAgICovDQo+ID4+IC0gICAgICAgICAgICAg
ICBmLT5zdGF0ZSA9IElBVkZfVkxBTl9BQ1RJVkU7DQo+ID4+ICsgICAgICAgICAgICAgICBmLT5z
dGF0ZSA9IElBVkZfVkxBTl9BREQ7DQo+ID4+ICsgICAgICAgICAgICAgICBpYXZmX3NjaGVkdWxl
X2FxX3JlcXVlc3QoYWRhcHRlciwNCj4gPj4gKw0KPiA+PiArIElBVkZfRkxBR19BUV9BRERfVkxB
Tl9GSUxURVIpOw0KPiA+PiAgICAgICAgICB9DQo+ID4+DQo+ID4+ICAgY2xlYXJvdXQ6DQo+ID4+
IC0tDQo+ID4+IDIuNTIuMA0KDQpUZXN0ZWQtYnk6IFJhZmFsIFJvbWFub3dza2kgPHJhZmFsLnJv
bWFub3dza2lAaW50ZWwuY29tPg0KDQo=
