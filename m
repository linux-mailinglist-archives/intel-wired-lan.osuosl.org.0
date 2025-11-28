Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 34852C91352
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Nov 2025 09:36:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 75F0140713;
	Fri, 28 Nov 2025 08:36:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dG8T8PP672FK; Fri, 28 Nov 2025 08:36:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F2BE5406B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764318989;
	bh=Xj+SVM/9/HrgRp45l7B6j8ClNeiXh8FLYM4pmGwoo9k=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ixbg0S7YM3EdIJBwR0S2XUL+FD78oV5hAQriaDg4+MiZ/GaeujahsLP+0+aoDJTdZ
	 /7QTu7y2CyDO1UZQIQeUANX1XZZsiwNcx1skYaE4QUV+xeMvQZsw07EELAThTvqwkz
	 2dim4JEcFoq8JZLl4pfB1pc8zwysVMUzjTO3YJNNRgmBUzhRkafkFHCG+rWabuL1z8
	 dv1CrVWYB0Byl2hTxlzGwR9HMYgfJjKLREE+O7gvS0pvvhBay10nX3J/EJxN6CZ0kB
	 2mfd3w9HS940HUkOGkmFGblEVU1P0abIsR8QF2K2C94E+wBYoEceQZJfHIIsVombPd
	 hb50ZSyeh+SlQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F2BE5406B8;
	Fri, 28 Nov 2025 08:36:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 41A721A9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Nov 2025 08:36:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3D4B760B3F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Nov 2025 08:36:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iL6NZ7IBKalQ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Nov 2025 08:36:26 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 28 Nov 2025 08:36:26 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2A72460821
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A72460821
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2A72460821
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Nov 2025 08:36:25 +0000 (UTC)
X-CSE-ConnectionGUID: Pi2vmYJEQVKnRoONc8IwfA==
X-CSE-MsgGUID: tN2T7qWvS0edA/Vmhc4LMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="66241608"
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="66241608"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 00:29:18 -0800
X-CSE-ConnectionGUID: XIxZMF8IT9mmZo2a0As3Zw==
X-CSE-MsgGUID: OVxq0+EgRJ2wdzkBl+MbTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="194206956"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 00:29:17 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 00:29:16 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 28 Nov 2025 00:29:16 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.12) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 00:29:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EUQjB0U6Bs1iT5v8gLuS4bbsrVfTjxMQE37FUITOFBqLmHDxK+Hhvb7Fmk0QOADOHobENTC8auKiwZjKtkmqm1PC2q9DC8w966fJholm+rYWzCkOAWQrmk9BrDnrna4cZhibiWtHnjG7M3tiOsIphMWgB9DIyKTOriYYLA/Asxz/vPnYGgmznSMVY8APMvFkcV6AcVOFqhTytfOIAaa3m2WwCMdZls6YAYAYQLz5mSubr3G1uJkupe/ZR72RVxWCcGvQ1r1ee2DIWZUr1mM0IMvBz6tDeqDbii3aEuSJgu50+LgElyO00DFcVpQhVUfxm3eFqPBaAzj7Cz25kaZRTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xj+SVM/9/HrgRp45l7B6j8ClNeiXh8FLYM4pmGwoo9k=;
 b=aw5L948YfCgUiMcZfrkmMn6zJFLMTNNwK6/Ku8Bn+hvc6Y5pT2E3Bss35G++HHbjps+o/Ewa4IhV7Pkb9MFijZkmflr0C+uRll7EdXOjk6H7pygB+ozcxScYZYe8LMhCdI/dwlMqZv9ZDpCaNgx1zF5iNDOfdPJj+ftUPYsjbsaERtP10rYQu1VF4/6+yRL4P93NAvb7nDDoOpHakWMa+qf0WtqK1Cbr8heji7WM8pj6zFffivD2BGsf8L7m1zkMfbFL2FI7kEs+MeAG19XReqsl6gdKvRmS9bq9zQWB3G6acEDR8M1VELZh38WmRae/YMvp/2jZQlFZIK5zLOaMEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8308.namprd11.prod.outlook.com (2603:10b6:930:b9::19)
 by IA3PR11MB9376.namprd11.prod.outlook.com (2603:10b6:208:570::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.14; Fri, 28 Nov
 2025 08:29:14 +0000
Received: from CYYPR11MB8308.namprd11.prod.outlook.com
 ([fe80::68e1:d6c5:d11d:4858]) by CYYPR11MB8308.namprd11.prod.outlook.com
 ([fe80::68e1:d6c5:d11d:4858%7]) with mapi id 15.20.9366.012; Fri, 28 Nov 2025
 08:29:14 +0000
Message-ID: <30c166ee-c113-434d-acca-15bc7c46722f@intel.com>
Date: Fri, 28 Nov 2025 09:29:08 +0100
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "michal.swiatkowski@linux.intel.com"
 <michal.swiatkowski@linux.intel.com>
References: <20251125083456.28822-1-jakub.slepecki@intel.com>
 <20251125083456.28822-6-jakub.slepecki@intel.com>
 <IA3PR11MB89867D7081F88828EAC0E107E5D1A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: Jakub Slepecki <jakub.slepecki@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <IA3PR11MB89867D7081F88828EAC0E107E5D1A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR04CA0113.eurprd04.prod.outlook.com
 (2603:10a6:803:64::48) To CYYPR11MB8308.namprd11.prod.outlook.com
 (2603:10b6:930:b9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8308:EE_|IA3PR11MB9376:EE_
X-MS-Office365-Filtering-Correlation-Id: c7c8399e-9a9b-4efc-df6c-08de2e5836b3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MDc0WjB6N2c4M3dwRVhLak44b25XRWh6dlg0ZVlFejFyTnBiUVVZSEFwamNM?=
 =?utf-8?B?T2wwRlp6SVRBd2xSRk1zcTRaZmgrK3VHMzF2KzdzYTB6ZzZ1dGRjaE5iVEVx?=
 =?utf-8?B?NzR1endwTGwyMGw1R2RZWDd4LzFjdEowVzdGVWpYWGErL2ptMCs0L1YwNFhF?=
 =?utf-8?B?QkxBeC9CazBoQzRQMHg0MGNkdVZIVkVSTmxFWVU0ZkF1WjV3RWl0clJJWXlk?=
 =?utf-8?B?ZXZ2OEJQWjgybHN2U2ZqRzd1Z0pyOGFGVmNYTTA3RllVbi8xbzIyZ0tHdDV2?=
 =?utf-8?B?RmZldVJoMnY3UFFxRktXTjlzUnBzcHdSbTdFQzB6bjZHeHkxaGlHSEpvd0s5?=
 =?utf-8?B?OFIrRUQwSXJ1M1R6Z2g3bXZXRXg1Z3U4SHlCN3hDL2tEQjUycFFybW52YkNm?=
 =?utf-8?B?bVNGeDR5KzFjbFVoajRsTUZWNmdxbjByUE40cE12Ujg3dXRYSGtsWkkwZWM3?=
 =?utf-8?B?TWtFcUxlTlFVaTdiVUhOdnVtcTJFN1FqY3pSOW02ayt4bGdleklOV29zRjRn?=
 =?utf-8?B?QllRZERjVTB6Z3Ric01ucm56RFVOSzk1cDdlTm0rWlZNTXdrcldzOGJoMW5s?=
 =?utf-8?B?eHJUU0pReURPK2NzSjEzOHNiU0o1L0dxR0xtYnBxODFDaVJURmczSmVuM1p6?=
 =?utf-8?B?MnlrQjRHOFdxV21YWUVUaU5Ca1pKWVA1UDRtdkZEaVp2QkxFSzZLdnVBTkJK?=
 =?utf-8?B?MkUwRHNFVmZRTC9FU2dxald0ZjVZbzdrMmJ4L281Qlg5WkhDZVhVVCs3aFhz?=
 =?utf-8?B?cjJSV01XZWdKcUdMdUtwQ29jV1FiVFBYK3Zlb2hZcTNWeDl2andlZmRhZmxH?=
 =?utf-8?B?SHYrSHYyNy9JRFViY2xTbktVcWpoazJ0RGtQcGkzTzRGemNMa2NwNFFwLzY5?=
 =?utf-8?B?YnE5S0Qrbzg5bWFDbU0zMzd1T1o2M2RGRjM2azYzTzFtRFV6d0FVU2t5T0th?=
 =?utf-8?B?aEdJNUhtbUtseXJHKzFRSmhJcXZYbS9wMERtQWk2cW9KWk11QXBrQ2F6R2hn?=
 =?utf-8?B?V0ZQL2lCc0VEMU9aQ1NvMDZHYTFXaDNHUTJOK1RvK3NDRkN5azZrVjRiSW11?=
 =?utf-8?B?Unp4VHkrZHRaNjZpSzhZSVNHRkhpQUkyRVdkWDQzbUZMTlA4Skg0Y1B0OEIz?=
 =?utf-8?B?RnMwQVgvOCt4akJEU3dFTWRUZjV0ZGkzZyt1V2V4L2JVblU3cERMQlVQWGIw?=
 =?utf-8?B?TW9RZW9pdFZtY1dvZGdhTitrYWIwNU1Ra2wrb2dGek5HdFo0dWFZaTlHNTZt?=
 =?utf-8?B?OFM0alZlQ3RyQlFzeDJLNW52TFZoVDZGdUgrYW1qZUZTUkJoUXdyeGgxbmEx?=
 =?utf-8?B?Sk5ya3JybExkK3UweDFIMFEzQUZBNWRCWTl0cVJKa2UvTWl3NDNXQVBuV0pY?=
 =?utf-8?B?Ty9qWTZESUE0OVJDcFFCdlRyaUt3UThiays5M0hiT2pLdEZieHFMWEtlVWFH?=
 =?utf-8?B?a1B0dzFCamlBWVFzVGFJZjBmdFBzZ1NUaTFLKzJKWEFiN21Jd3RidDNWbUQy?=
 =?utf-8?B?TENsdHEwYkFDMWtLbnJMRW1GYVpkamFPK3VEdDBOZlgveFVCU3dEL2tjK3l1?=
 =?utf-8?B?U3RsWHVUZjZ3TDVSOWUyU00zc20zQWRmdWhjWkR5ZFg1czVJK1dERzJsUUt4?=
 =?utf-8?B?V296NTYrR290MXdaRC9zQXVlcWNIWGcwblVGQzE4ekVCN2JsODdqSE9BMG5j?=
 =?utf-8?B?L3NjTm04NTJEV2piMVhjSkt0eGw4enNyWExlK1BMR3kydy9Zd2VNM0NVeWFW?=
 =?utf-8?B?TkpYVUQ4Y2RVaWVBd3ZZM2dKY0dvenZReGh4dmxxa0VKVkhsZHVodEh3R1BO?=
 =?utf-8?B?eVIxZUkvZWR6Z1poSjBaOUZrVFdicGtmTFZwekNNZnlqQ0Y1MnBYMkNzQnVI?=
 =?utf-8?B?RVdqZDdsM3k1eTF0c3ZTWmpLSVZjQlF3ajNaMmY2WkkxWFFqTFRBYnc2QnJs?=
 =?utf-8?Q?40hdE+lA+Lpnk5K8z+OvOVaapowUYktp?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8308.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZzFCZVdUYzk1Tk1HMkw0WDBha0p6MWNOVzdZRWJvNjkrYldLemJvNFFFZ0Jx?=
 =?utf-8?B?bFlpTjdkeWU2eGlQZ3o5UVpPOFFlSi9Gd21CTzc0akdUS1ZnSWJEcVVNa1Ri?=
 =?utf-8?B?RnZUTUttcTJLWDBwQ2c0SzV6Vlo1L3RtbzVsTVVTZUk4SmRjcjdYQ1pkNm05?=
 =?utf-8?B?b05ZdURxNzd1VXFQVStWTlRBRDNYZ25kYm00K3hDVmJOSkphK0tvWStTNU81?=
 =?utf-8?B?T2Jkc3MzazI5ek1KSmhDT3FEaklCU3NoZ3psZUlTS1dIdndyVzBobXJVaFZv?=
 =?utf-8?B?TkhraTRCN2M0K1BEY21Sak04Uy9jUlcveUpuNDZVNVpKNG9xUVZYM3VTRTdz?=
 =?utf-8?B?M045RllvMncxQjlOWEphNVhLVnMvaXVtUXE0SFpNVk9JZzRCa2lFNVNMY2Jx?=
 =?utf-8?B?Nm9HMTdZbHN3SjV6RVV3Y3o4b05xU2Fib3B4OVNRQTRBVE5LZEcxNkRwUEFD?=
 =?utf-8?B?QnIremxTQmhhMVNqQ21tRTRBTDdrdHFBTUV5QklFRnpHcFM4WWRoN09wYWpt?=
 =?utf-8?B?ZTgrMmZ4ejNObURtWWhST0U4Y0N6UkptUmhiYjAyT3JFQVB6amNPRmluV3FL?=
 =?utf-8?B?b2hxYmhGc0xlWmJlWjJna1kxMThMTy9zVDVsWUowbkpsZDN1blBSNEU0NXRG?=
 =?utf-8?B?eGNlSk5rZE1reGhEQmwwMFlmK29KbjlaM0dyQytsZXAyVHp6Y2VCM05Qb1ow?=
 =?utf-8?B?RzVqQ3UxSENEYnA0VTBmNkJ5YnhYSG9jU0N0cEFLdzNyK0ZWSXNSbFR0Wi81?=
 =?utf-8?B?WnZoaERTdzJOUzZWUzZoTm1uYUo3ZnQ1QTV2R0dybGp3Z0laRVkwYkc1Nk9n?=
 =?utf-8?B?VlhaaGwyZ3ovZm9maTZmaWkyei9vU3M3S214NkttSGZ4dHQrU3B2SkJ4S0xv?=
 =?utf-8?B?ZjNObENoTUVlSmc2ak52bnFBcm5RbVRKNWZSRmNJdXFLRVlOMzdreHgxa1Nl?=
 =?utf-8?B?cXk4TFFZSFptM1JzWnh3TXdleDNlSWZhSk12bG42YzZmYW5hazhvVDN2dFN1?=
 =?utf-8?B?eWw4N1J4QzNVQTZ5WkxNdUUwdUlnVjlFSkFYU1VrS1ZGWVRqZjBYbm5tc1Fq?=
 =?utf-8?B?RnJmU3Q2eGtYcUh4M2d6K0NCQ3RmUTFrU1ZqUkhzV2lFVTg1SzBlZGFud0Fy?=
 =?utf-8?B?UzQ3Zm54R0FIR2RxczdpRWZLVVRtRE4vemxJQ2diVGZDazUxRmZhSi9MM0ZN?=
 =?utf-8?B?Q3ZxTnY4Q0V3a2J0bUNnS3M1djB2bC9nTzA4bUhZdE5VTjBGNzZneUJDblhq?=
 =?utf-8?B?YjhHc1ZXNXNNOEJWWERyTVNPNHBHbWpFZ2tHNVlwcHI5TTF3N3duT0F5QTNm?=
 =?utf-8?B?ZTdwcG9nLzA4RnNHRGxHVUpqRWYveGliYytnOTBmUzVhVVdzeGxZRDZFNmx5?=
 =?utf-8?B?MWYzdzliOENobkUzQ2t6Wk9wdFMrekVDTGdxc1BPemZlcWlLQjg4dFI3RFgv?=
 =?utf-8?B?bDI0eVRWZHJIZW1hNXVpSHBEQS9RZWtSTjE2aTdNcThUZEkwZGxkNUtPRlE4?=
 =?utf-8?B?VUc2N3RYRWs1UUJCUzJ6emhmbFFNdjRxbDVSdTkwa2NoVjlCR2RkZWx6SWhX?=
 =?utf-8?B?ZTc4MVk5QWVwVmsvckVvMUp5UmVXQzNlUEozdUpTWUVMOTRhOXc5T0hsZThH?=
 =?utf-8?B?T3F3RmhOaFpnMTBDSzE2YUIzL0daTGJCM1I5c3dtVUxnc2trMm1Cc3A1VFZO?=
 =?utf-8?B?QmZvWk9FNWRYQ0ZwVmdabXJEVy9JTU5rQnl5T1UvaVpmMUVHWUh0UjNrYXdl?=
 =?utf-8?B?SHFUVThzZW5MZlZHZFY3RkQrNkZ1TnZ5QnQ5TnFYZkdRT0QzTFZkWTdzdXQy?=
 =?utf-8?B?ZndvcmRmeGcvNHhSM0RhRHhTZUk3VGxoRnZnVjgrdlVJcjY4UFdqQURtYkQ3?=
 =?utf-8?B?TVl5OEhWdjc5ZVZ0ZS83Y1hVR0FUUi9HMUcxd0VWdCtVSVVFc2NaTExna1cy?=
 =?utf-8?B?K3VwVlF2ektSVSthMGlKTG1kZXIzY3BydUZYSWowVkMxT1g1UUFhY203K1hC?=
 =?utf-8?B?UWdvcDQrYTJVcTJKaEhoK1QxbzVHU0xoVURqZXJsSlJSNlk5OFJteG9oQ2Iw?=
 =?utf-8?B?eWhPUi9FTFBRakJXVjRWdTJMUEVvMUhPVUNGYm9tUTlFSHhBcG9lYkg5eHpT?=
 =?utf-8?B?eC9wOThWdHFIbWlUdk5WczFQM2NhcHZKS2w1d2xiUmtsTzdUT3drU1pFMkRX?=
 =?utf-8?B?ZEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c7c8399e-9a9b-4efc-df6c-08de2e5836b3
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8308.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2025 08:29:14.5531 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lDqpYTZJGMGDODB+HE3+1Ap45Lrh8OvCH8h/zFDgkjSi7oaKCaga+/mNOkB2Z/udZf3l3QEVtAm+d9+GJLN9k53ONp3eYy9k6mIhP2yDQOY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9376
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764318986; x=1795854986;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=p5piayLJFhlBPuMqyz7VRsZ3yyuV99iIbIkz00RqBB4=;
 b=aCYxOlShSzmyTVAv8mLs3VB7f61+ElnZHplZdHq1I+F0mKcyNQc4XGlm
 q22nBb5HeAbQy362iVlwmlY3V6oVHZywZsfZlbrFXsDL0qxjBgcDhKxHN
 qFtZHYmWH2UgjqW2B9dYm6zciuZk0KbgCckrcFi+3iUKoflWWc6BpeZ35
 NvgOm68XOXIAQIC645Ne3X2J0aWC2592Atuq0/XNbwZR4yjasDjoQhpKe
 b61iQ2bs/Vd8BV7X80U58JESOgD9foqmtJ2M1/VRpdaflTdViX4w47qM/
 VTpXln2dxxWyb63yTgtWKgBoatS6hj4nsCGYpeJhS4FVZ1nLJ03y+iaDS
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aCYxOlSh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 5/8] ice: update mac,
 vlan rules when toggling between VEB and VEPA
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

On 2025-11-25 9:52, Loktionov, Aleksandr wrote:
> Better to provide exact bash commands.

All right, I'll review the commands in the 0/8 and see if I can expand
them for this context.  I'll refer it here.  I suppose I could add the
bridge(8) example for hwmode?  Something like:

     Testing hints:
         MAC,VLAN rules are created only if entire series is applied.
         The easiest way to test that rules were adjusted is to run traffic
         and observe what packets are sent to LAN.  VEPA is expected to behave
         same as before the series.  VEB is expected to (a) behave like VEPA
         if loopback traffic would cross VLANs, or (b) behave as before.
         Traffic from/to external hosts is expected to remain unchanged.

         Refer to 0/8 for full network configuration.  To change hwmode use:

         bridge link set dev $pf hwmode {veb,vepa}

> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

I'll drop it since you did not explicitly say it's fine to keep it.

Thanks!
