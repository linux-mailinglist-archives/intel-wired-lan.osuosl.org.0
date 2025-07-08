Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 162D7AFC293
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Jul 2025 08:21:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 395E581F1F;
	Tue,  8 Jul 2025 06:21:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JnCMDBs7kOSu; Tue,  8 Jul 2025 06:21:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 590CB81F3D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751955698;
	bh=yOZeFWV5EZZF/6ej+VJiQrOEmMVm2dVV9krqSo5KpQU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NPV52S/6yLZCcYFMTxh6b69AYoaOQoipEqr42FXYhJjEggCMia3bOUoVu/zrbHMQj
	 IUmApbwWb1yIZeOq5e+b7YHKKCY2D4hWeU2aOIvW3/cAzPrZ/8mfPJ4kPjMrrbz9+U
	 JZjarAEN+MIwMmXnEelcRVfu8Lq3IhgSWakphGANjJJYy5Nn1Jcb++hGogJpcIUJha
	 /t5bSj+lQMQQnENsDCLlqXXxnsZbLqLN421z/DqdG4fwnUw+NsHfB8Ct9LUH5bGL3V
	 uKt13Jcwk/nZsaWs55NEgkeYUIAx/MMLBh8YGqroDwmUKOGn3zzLT2j9SxKwHImf73
	 DOSmaxXBwTApg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 590CB81F3D;
	Tue,  8 Jul 2025 06:21:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6E2E71BF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 06:21:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5EF7E40B13
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 06:21:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mFUtgvsi9Kxz for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jul 2025 06:21:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=sunithax.d.mekala@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 41EB940064
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 41EB940064
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 41EB940064
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jul 2025 06:21:34 +0000 (UTC)
X-CSE-ConnectionGUID: 7raxGOTaRiyfkdrLu2HC+g==
X-CSE-MsgGUID: FQeaPqcOSGOvXeSVuNGweg==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="71627478"
X-IronPort-AV: E=Sophos;i="6.16,296,1744095600"; d="scan'208";a="71627478"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 23:21:33 -0700
X-CSE-ConnectionGUID: PjW26qrSSyu+3ncdhG3aXg==
X-CSE-MsgGUID: bRAPEaBrQnGoNH2r2GEjEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,296,1744095600"; d="scan'208";a="159683782"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 23:21:33 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 23:21:31 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 7 Jul 2025 23:21:31 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.80)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 23:21:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kb1a38YGWY+23pbSfTSKvj9DW31UJ8QDddpJJ4aqW/R7AhV6WRHnkOvs7FyRyU46cZvlFQfD2MxOoDf9wNnxq1pRuGo4NK4NFmGkMomhDNIotii8tUFOn3dCqqx1ukRM5lALEj8S8oRQ0bRLpv7HI6a6nbuRSt83UwgSu+KEPELas9986HwYUsb70znZFcIOM8kdwAEJNG5FnBqstGc+ksSxJQ7nJUKd8GeF1/uAFOpmxXFjNxqj3AxQWFPI2D2kwpCQvIlnMp385eNWF21IuHkWTA6ZSi23PBC4oxOn+1aMhM1ZfDBwrCGUe56aSA/t8wUd2dNAuBwx6QKHyDg2vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yOZeFWV5EZZF/6ej+VJiQrOEmMVm2dVV9krqSo5KpQU=;
 b=VDXLiYZRj93GcM4/PJNRVEwImt883VlDh/WNduwfWO9qjMXIuZGX0jfGF8SYD3qRBgJmFENJoOt80DCXpTiwdKP6/KPkAvWImOosJz8EV9TmX+zUuwCsADwqKIg9zqvIbTX1rnhGdX4KtZedUH/5/832lTUTIhWvSaRQc5Q7vmCOCZ2O/D9Y9h7i5jymOHi3G7b/PucTViWiq7hDNV0iXmUUR2AczdUy9vhEaH19c1PK1MXR2vr88n6S6gJdamq70boh6nrDCpiZzYKyETJqsIUOKL0Wk95t3MjW/NWOVQyawbSSGwFQQhV2rYYcjNAs1WI25GxPQsT75EP/XaMAng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7522.namprd11.prod.outlook.com (2603:10b6:510:289::8)
 by SA1PR11MB8523.namprd11.prod.outlook.com (2603:10b6:806:3b5::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.26; Tue, 8 Jul
 2025 06:20:47 +0000
Received: from PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::68cd:b021:a654:e42f]) by PH0PR11MB7522.namprd11.prod.outlook.com
 ([fe80::68cd:b021:a654:e42f%4]) with mapi id 15.20.8901.024; Tue, 8 Jul 2025
 06:20:47 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: Arnd Bergmann <arnd@kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: Arnd Bergmann <arnd@arndb.de>, Simon Horman <horms@kernel.org>, "Dr. David
 Alan Gilbert" <linux@treblig.org>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, Dawid Osuchowski
 <dawid.osuchowski@linux.intel.com>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>, "Polchlopek, Mateusz"
 <mateusz.polchlopek@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Mrozowicz, SlawomirX"
 <slawomirx.mrozowicz@intel.com>, Martyna Szapar-Mudlaw
 <martyna.szapar-mudlaw@linux.intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH] [v2] ethernet: intel: fix building
 with large NR_CPUS
Thread-Index: AQHb4glOw7/HYrlOjEiU8havYJYre7Qn26tw
Date: Tue, 8 Jul 2025 06:20:47 +0000
Message-ID: <PH0PR11MB7522E19A5C157371EC184179A04EA@PH0PR11MB7522.namprd11.prod.outlook.com>
References: <20250620173158.794034-1-arnd@kernel.org>
In-Reply-To: <20250620173158.794034-1-arnd@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB7522:EE_|SA1PR11MB8523:EE_
x-ms-office365-filtering-correlation-id: 63bc3b83-e25e-4458-80f2-08ddbde79423
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|921020|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?WmFxdU5TdzlxQ1U1VzBsZWdzU0RCOTcvZjhzTzBwOVFLSHI3NHFqck9qcGg5?=
 =?utf-8?B?UjVENEN0VzBmNnZmbVMxTmJCMUNTRjdrM0NFOTZPamY0VEZMdUpzU0RLb3l5?=
 =?utf-8?B?TVowSndIUEcyQTkyY1RSWnBaNHBKMWtvbFRVdnZuWWtMRXZQcEFOdXNlNGE5?=
 =?utf-8?B?WUgvVktJYk5lNXVjbXBzREhEVVB4M3NzMFpnOWNRdjA1SjFRMHc0a3dWbFJi?=
 =?utf-8?B?Ry9Ja0Y1UXJLNEJ2TEhVd1NHS3Z6MHdOUUpzdmNsU3lzYndjbGJrSzJOQzN5?=
 =?utf-8?B?TVVWbnhxK0k3ZEVRV212U01jUGlnYXRVVmhQbjdpRjB4UVZFa29JVjNjSis1?=
 =?utf-8?B?YTVhdmV4YWJ6a2dIaEUxK3pFVXVmc3Q1OC9BZS96cGc1N1ZxVW5BdWxxM1Jl?=
 =?utf-8?B?L2xURmR2dTREcS82c1N1SXNqYUtxaWtIaUxKd0hSWG9Gdk9TZlNwZTNoem9v?=
 =?utf-8?B?WWlsZHVnbzUvckU2QzdWRDdBK0grWDUreHY1WnEvcUNna2F3RWlackVuSFIz?=
 =?utf-8?B?dkhFb3BMT0QwcVNtczdIalFnTUhlS0RpRjlSSm1Kd0Exb1JWVFpZMTNraEdh?=
 =?utf-8?B?cXF5Z2NHK3hjM1B1NW5XbFVDWTE3Y3JNSlBBcDZEYmNwcGNoMzlXN3M2WTds?=
 =?utf-8?B?TjNOTkRacUt3QUtiSEpVNkxGczltQXFRdlVsenFnNE1BOFRTQXJVMGE0OFdC?=
 =?utf-8?B?aFMyQ1FtaFRNWEFHZjdOTTROVkMrNkp3ajVzMHVHQ21peUFzZG9WdmNHWUZB?=
 =?utf-8?B?NTVOZ2krR3U2Zkx5b3YraE9NakU3c2JRUHZBMzVKcXRhNTFuQ1ZqWFp0UXhT?=
 =?utf-8?B?NlFsNlI1ZUl5SE9wUjFaNFAyR3pVejIxbkJ3VkNWS2xkTVZFa2gwd3ZjM25G?=
 =?utf-8?B?YUJGK0Rsd1IvNXl0eGZEclRkb1FQN0ZYTUpPdU85MTc3T3BzQVIwMHRETFR0?=
 =?utf-8?B?eHUySnNqYXM5bTZ3dzE0SThmaDdZRmtLZW5XYkgzejJjcnJZT25lZHgzRzZI?=
 =?utf-8?B?YTRZMDFNRm9xUzRnMVNsMGlsdjFRYm5EdUNwQWd2K1drK0RqbkVzeEpKdlpB?=
 =?utf-8?B?SDdLaWxFUzNWdWhvN01OZDF4TFUxVEtGbmNmcjJkL2tLMXZKZ1ZtcDh6ZXpk?=
 =?utf-8?B?b0RKT2swaTRTaHdiNy8rV3VmalFMY01ZWnc0VDJIeDNnWTd5bTdNZllwZGIw?=
 =?utf-8?B?d0I3T3dKUGJFUnh4a3pmS2ZaV1VtMkJyZ2pzTVR6MTIvbjk0dDM1QzJQSzU3?=
 =?utf-8?B?c0RxVnZ2YS9qUVJsaWFLaWU3SVVPVXdoQnZ5M3Z1SHJTWjFQbytRRnkyVmlW?=
 =?utf-8?B?bG9ZSlc0L1N6ZlRWRnQ5RFJWL2Fzb2gxVEIvb293VVJwb0lwTjd0dU8zLzJa?=
 =?utf-8?B?VUhLaGh4bEt5K25YdXV3dEp2d29oeFRhQlFUd0tpZ1ZYYndvKzd5bjJxWmxt?=
 =?utf-8?B?TzBCRDlvRXBtTUhlVEFsdHBBaGw3VENuTHhSMGNGSmJxM1VlQ3JaYlRITHg5?=
 =?utf-8?B?R3Yrd2hyaHhybys4TmtPREpRaHU3TDdITUlxYjY1K21GTCtSOXVlN0QraW9a?=
 =?utf-8?B?MmgweFlJUnVtcEZuN0V1azdHVW05bEMzc1Ixdm0zRzdWTTg2OHYwdTJ3ZGFv?=
 =?utf-8?B?ZWlOS0wwN1NrQ3c4d29OMzYyYUdLU1RpamNJVEZldDJIWGNPd3hhVlBTaTND?=
 =?utf-8?B?clV5b1BPNTBaODZEV3gzM29xTnlZN0lQQml4VFovYVVBK3hRNWREU0JSL0lw?=
 =?utf-8?B?MnZRaitZUXM5U3Z2ckpBb1hpOWRYSitOT2xRbXorcUp1VVJyemFzOEJEbWU3?=
 =?utf-8?B?YURCTC8wWmtSTURsVGdEREMzOHk3bTg4b0hsaVRiUEFFeG5JT2M3ODBlNUlz?=
 =?utf-8?B?MloyelpMcjU5SVprTG1OMU1LcFhvNnNBRWdYMUZFdXQxOFdISTJJTmpVWEVn?=
 =?utf-8?B?c0R6TEdkVkZpU3VkVjdTSUJHN2JnWHc1bjFMbm5RbHVPOFI5RHJxQTZ0NXQ2?=
 =?utf-8?Q?fmG1hvCTsxtFZTNFYlXYRjsKqeNZk4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(921020)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S1UxZSthaHZzZk11WDdOWVp3YnpCSDQ2RGlKbm9RT0ljYmNJMWVDZ2tRUzY5?=
 =?utf-8?B?eWozQTRvWURVUERpOVQrN3l6YXV0WDdDUU5OTHBpNU85UnZBU3poMjhoY1FB?=
 =?utf-8?B?bmRBaHJIYlBUQ1dUaC80a0luZjJzdm5RdVN3S1JKWkh1OXdXRjVlSEpmaUk0?=
 =?utf-8?B?dGxMRnN2TWNhNTVDcE9UdW1rUVdSZno5TWw2dk1uVmVaYXl2ZGZzalg1ZzVh?=
 =?utf-8?B?ZFNJVG8xa2RGRXNxem05VWY5ZThiN1JjdHVSK2FJc3RGWDg3OXJhdDF5T1pQ?=
 =?utf-8?B?dU44Q3Q4WGxXRkpBS0M4MEp6QjVpc3NJbW1iT2ZaQVZpTFg1Q3I2bUVMN1hH?=
 =?utf-8?B?a2pQejhYeFRMTDlPMENPWDNabnROTXk3U21GQXRpcEFUV3M0Sld3NnhTem4z?=
 =?utf-8?B?eXFVZXBBSUJGMUROcW1UMEZxMUNDU29xcUFyR1lhUUl4NEduTEx1ZnNFL1Zo?=
 =?utf-8?B?V28xQ3ZNRFRiTlJxWElxOTFvQkZGYUpZdzI5TkdyNlExLzMxdVBaTnVudDR4?=
 =?utf-8?B?dTV0dmdXcVdlSURLZGF2YW9tOEFsaUY2QThpTExFcUpvWVpzT09XUkNiMmw1?=
 =?utf-8?B?VTBrM2RXNVR5VVQ2Y1pTM0ZHckF4bWNodlo2UEUzMWVyWTFOWTRzdGxPQzNM?=
 =?utf-8?B?dEhhWGZvZGg5ZXNZb3JtOFljd1JTUzRoKzlNSmhpcHBmc1ZLUTBOU2xMcjVD?=
 =?utf-8?B?dkpwNTE1RHd5dkR5L0NyN2JwbkJSa0p5bUZPY0RyUEQzS3k2MXVnRzViNHBB?=
 =?utf-8?B?UzdvL2lKTFFGMDhIdEYxMU0vaG93cm5BTVJ5REx3S1lmR2pvOHErSFRsdWZF?=
 =?utf-8?B?T1djeVE1Z0h3cFVLcldrU2h0YTNTalJ1cGFZUHA1aUJET1V6eVNPY1UxRWVG?=
 =?utf-8?B?NUF0Vk5JUXNrWmVmZ3VseVFpVUN6djZzTUFONm9sZHl2dkt5UTZFaDRPcmFh?=
 =?utf-8?B?a0xIT2haSnptOVBuWlZuYlIwYTJBS3ExeGxoMTgySWM1NjBRRTduN1JDNnUr?=
 =?utf-8?B?YWZON1psSXAxRmtIZVhlQzRXaVc2VUxGWk1jemJ1VE04YkNiUzR6U1U5eWJa?=
 =?utf-8?B?NVN4WTRxcTFhZXZ5dWlSd2pySmRyd256UDhRTlNqckQwZkF0SkNLeUxhL0Fh?=
 =?utf-8?B?WGFzTExMTGsrZzJ4R1BEZkVGN0o1UnBsazJrTmhYOW5NQThBZ2VLYWprL0lj?=
 =?utf-8?B?WllReGlwUU01MkRqR1FUSkNrOE5XNkVIZDZ5NGlGRFU0cHpsU2V3S3Zxd1BP?=
 =?utf-8?B?Y1RsUFYyMURhUHJYcjJTVS8xdWtOVTM1THU4M0xwOG5yZkFvdnMwNTNzQlVP?=
 =?utf-8?B?bnJxVXcrWEJlUC8rRTJvNzNJUFhhOG8yS29CNkhSc1BGUEtlU1pCbzZ2R2pO?=
 =?utf-8?B?SWVGNTd3N0hveEwrTC96S1g2S3psTXQ3WkVKQlFRMEJiWnBYc1FPVE0wcVVD?=
 =?utf-8?B?Tm5Ib0lsVTRxWU40VElkZnMxVW5obGJtRVlTUXRIYTFDWVhPL294bnFvT2M3?=
 =?utf-8?B?cWdVMzJ4V1J5eGZtalFLMkROd0phT2VvVDVkNmJTOGRIb1NPd1YxaGRtSGpv?=
 =?utf-8?B?RTFnZlFJcG53Y0JaTnZKYnJLbnFSRWIyN0c1ZnNBKzlnTzd4ZW9KZUxlcGxT?=
 =?utf-8?B?eEYyQmJ4b3RmdUdwNmlOdlc2dUVYcWVIVTVESHlDeXdXQ1JkUythWityUFR4?=
 =?utf-8?B?OXc3MWw2dXF2NDBibnl1SDBmSjVFcXcya2VjSFdVR0E0QjM0YjV6R2pqSjdt?=
 =?utf-8?B?Uys3bURtUngrNXFCN0N5ajNwMHIzaUx1MU5mWDRSYWdNak4xalhOVG5MUWIx?=
 =?utf-8?B?aXpOWU1xUG9wWGlod0o0MTJTR1owN3A1WjJrSE5ON055QUJUYk5BLy9CZHZB?=
 =?utf-8?B?enE2dEROR1hoZ1hFUHlVVzhpb0hsUEJyK2F5b3U1TE0veGVKY3hxYnQzM213?=
 =?utf-8?B?ckFVMnZIdEpZcXZiMVlNVVhQYmNFY21NY2VMOGVaQzFGNytQNHBvKzVXdFlN?=
 =?utf-8?B?VktLZk8yazZwQ0I4Wm9kV2RLSHFRVVJKZ0tzYVdOQUFGdlF0dmd6RVdaOHNW?=
 =?utf-8?B?Y2ZCODVFYTQrS2Y2Zm1rTmNWZzhpWVJWcjdmZmpOcUJHRlh3dzdHbVZaM05B?=
 =?utf-8?B?Yy9wbjVBeHBhMVdaaDZ5RjQ5SEhKQzd1Y3dZcVhrRkxQYXRucWRTVDB6SzRN?=
 =?utf-8?B?QWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63bc3b83-e25e-4458-80f2-08ddbde79423
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2025 06:20:47.6715 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mZ9uL8Pay2N2ZifhsSolh+rg+l4qWjoMCOY/seEH3/pDaduJYR3TDCB6VVNY50WPlm4ILNYxBnPIsdbEzvjbdVX3YeD7eHneIKaDk03jXbI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8523
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751955695; x=1783491695;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yOZeFWV5EZZF/6ej+VJiQrOEmMVm2dVV9krqSo5KpQU=;
 b=MoSl8jje3lsnfm9c9CRXlTwy/Bsgsz40sCthrmTXwCs+yaKxQxPlmtFk
 odE4zcRouIHgYvyn5aJi5klF3zaxZdDC7uncALQiqFyRQBGK7IV6nCsdJ
 1siyBHBDCYXFK59F+e1ZVONCnwl5WGbAamkbl4fYcWvFP9buAZ7AcfRSM
 GdR8JPmg1RKhjoGP01LfAkxvoP5PwEvwyCmMK/q8S6N5nHvJAF1jdahqb
 c58oK8WcRR8ovySwytle7QfJQsM5nrbjiXQWaGktkjs2xYIVkbR68aDLs
 mfp+n05URs/ADdIsK5dlUf+pLinBJ7elxVaey2a+d3xaD1OJRYmLdFps/
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MoSl8jje
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] [v2] ethernet: intel: fix building
 with large NR_CPUS
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
dGVsLXdpcmVkLWxhbi1ib3VuY2VzQG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBBcm5kIEJlcmdt
YW5uDQo+IFNlbnQ6IEZyaWRheSwgSnVuZSAyMCwgMjAyNSAxMDozMSBBTQ0KPiBUbzogTmd1eWVu
LCBBbnRob255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwgUHJ6ZW15
c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IEFuZHJldyBMdW5uIDxhbmRyZXcr
bmV0ZGV2QGx1bm4uY2g+OyBEYXZpZCBTLiBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5uZXQ+OyBF
cmljIER1bWF6ZXQgPiAgPGVkdW1hemV0QGdvb2dsZS5jb20+OyBKYWt1YiBLaWNpbnNraSA8a3Vi
YUBrZXJuZWwub3JnPjsgUGFvbG8gQWJlbmkgPHBhYmVuaUByZWRoYXQuY29tPg0KPiBDYzogQXJu
ZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT47IFNpbW9uIEhvcm1hbiA8aG9ybXNAa2VybmVsLm9y
Zz47IERyLiBEYXZpZCBBbGFuIEdpbGJlcnQgPGxpbnV4QHRyZWJsaWcub3JnPjsgTG9rdGlvbm92
LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPjsgRGF3aWQgT3N1Y2hv
d3NraSA+ICA8ZGF3aWQub3N1Y2hvd3NraUBsaW51eC5pbnRlbC5jb20+OyBKYWdpZWxza2ksIEpl
ZHJ6ZWogPGplZHJ6ZWouamFnaWVsc2tpQGludGVsLmNvbT47IFBvbGNobG9wZWssIE1hdGV1c3og
PG1hdGV1c3oucG9sY2hsb3Bla0BpbnRlbC5jb20+OyBLd2FwdWxpbnNraSwgUGlvdHIgPHBpb3Ry
Lmt3YXB1bGluc2tpQGludGVsLmNvbT47IE1yb3pvd2ljeiwgU2xhd29taXJYID4gIDxzbGF3b21p
cngubXJvem93aWN6QGludGVsLmNvbT47IE1hcnR5bmEgU3phcGFyLU11ZGxhdyA8bWFydHluYS5z
emFwYXItbXVkbGF3QGxpbnV4LmludGVsLmNvbT47IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vv
c2wub3JnOyBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwu
b3JnDQo+ICBTdWJqZWN0OiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0hdIFt2Ml0gZXRoZXJuZXQ6
IGludGVsOiBmaXggYnVpbGRpbmcgd2l0aCBsYXJnZSBOUl9DUFVTDQo+IA0KPiBGcm9tOiBBcm5k
IEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPg0KPg0KPiBXaXRoIGxhcmdlIHZhbHVlcyBvZiBDT05G
SUdfTlJfQ1BVUywgdGhyZWUgSW50ZWwgZXRoZXJuZXQgZHJpdmVycyBmYWlsIHRvDQo+IGNvbXBp
bGUgbGlrZToNCj4NCj4gSW4gZnVuY3Rpb24g4oCYaTQwZV9mcmVlX3FfdmVjdG9y4oCZLA0KPiAg
ICAgaW5saW5lZCBmcm9tIOKAmGk0MGVfdnNpX2FsbG9jX3FfdmVjdG9yc+KAmSBhdCBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jOjEyMTEyOjM6DQo+ICAgNTcxIHwg
ICAgICAgICBfY29tcGlsZXRpbWVfYXNzZXJ0KGNvbmRpdGlvbiwgbXNnLCBfX2NvbXBpbGV0aW1l
X2Fzc2VydF8sIF9fQ09VTlRFUl9fKQ0KPiBpbmNsdWRlL2xpbnV4L3JjdXBkYXRlLmg6MTA4NDox
Nzogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmEJVSUxEX0JVR19PTuKAmQ0KPiAgMTA4
NCB8ICAgICAgICAgICAgICAgICBCVUlMRF9CVUdfT04ob2Zmc2V0b2YodHlwZW9mKCoocHRyKSks
IHJoZikgPj0gNDA5Nik7ICAgIFwNCj4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9p
NDBlX21haW4uYzo1MTEzOjk6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhrZnJlZV9y
Y3XigJkNCj4gIDUxMTMgfCAgICAgICAgIGtmcmVlX3JjdShxX3ZlY3RvciwgcmN1KTsNCj4gICAg
ICAgfCAgICAgICAgIF5+fn5+fn5+fg0KPg0KPiBUaGUgcHJvYmxlbSBpcyB0aGF0IHRoZSAncmN1
JyBtZW1iZXIgaW4gJ3FfdmVjdG9yJyBpcyB0b28gZmFyIGZyb20gdGhlIHN0YXJ0DQo+IG9mIHRo
ZSBzdHJ1Y3R1cmUuIE1vdmUgdGhpcyBtZW1iZXIgYmVmb3JlIHRoZSBDUFUgbWFzayBpbnN0ZWFk
LCBpbiBhbGwgdGhyZWUNCj4gZHJpdmVycy4NCj4NCj4gU2lnbmVkLW9mZi1ieTogQXJuZCBCZXJn
bWFubiA8YXJuZEBhcm5kYi5kZT4NCj4gLS0tDQo+ICB2MjogbW92ZSByY3UgdG8ganVzdCBhZnRl
ciB0aGUgbmFwaV9zdHJ1Y3QgW0FsZXhhbmRlciBMb2Jha2luXQ0KPiAtLS0NCj4gIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ZtMTBrL2ZtMTBrLmggfCAzICsrLQ0KPiAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlLmggICB8IDIgKy0NCj4gIGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2l4Z2JlL2l4Z2JlLmggfCAzICsrLQ0KPiAgMyBmaWxlcyBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQoNClRlc3RlZC1ieTogU3VuaXRoYSBNZWthbGEg
PHN1bml0aGF4LmQubWVrYWxhQGludGVsLmNvbT4gKEEgQ29udGluZ2VudCB3b3JrZXIgYXQgSW50
ZWwpDQo=
