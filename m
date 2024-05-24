Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8CA8CEC91
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 May 2024 01:03:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F0E381236;
	Fri, 24 May 2024 23:03:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LEu8ggksZYzd; Fri, 24 May 2024 23:03:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0BE5B812F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716591835;
	bh=o/DTniqazigMcj3B0HtjbYRzvzCMp0kHDfBH+j6+Ki8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ib3u5LI+KynBPH3LU+rr9Cw7TC2aaWxIXjvkfbaJ6MwA88LUysCIYruiFhbwMX+8g
	 KakZoTFWACFah9yU4HDoYmeJ1v0fUAKX4dVu+ZZioUAoUfv2zLAe2DbvHk/Il1k09v
	 ZUUv0y7+AWGOtJFch+Sf+42EmXZhnEjBg+9BE+sG1sObuiUFKwyQxXluhVLf3sDEu0
	 f/8noIBQbpVhjqw1/IAL6sNr5COVbKJVgacxKV9NRW6cNksqIKvlBASEO9mixPb3xw
	 4RxzBca0ZeMJ3eonqjwf9VB2jDnQjpHOdLp4/DRXNEznmYxJJEOwJq+kM6Dek9FqbI
	 DhNjTlh9kJJ2g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0BE5B812F1;
	Fri, 24 May 2024 23:03:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AB2F31CFA80
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 23:03:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9420480E92
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 23:03:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GCuT7NewALay for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 May 2024 23:03:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 997A280E66
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 997A280E66
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 997A280E66
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 May 2024 23:03:51 +0000 (UTC)
X-CSE-ConnectionGUID: DwLqtfqAQSW5nwouH5rKCg==
X-CSE-MsgGUID: JwtpVhslSCGpF+QnTGOkeA==
X-IronPort-AV: E=McAfee;i="6600,9927,11082"; a="12922666"
X-IronPort-AV: E=Sophos;i="6.08,186,1712646000"; d="scan'208";a="12922666"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 16:03:51 -0700
X-CSE-ConnectionGUID: yGhc4WTHQ+uqhzQr4Ed/xg==
X-CSE-MsgGUID: nrCiHxsZQVywFtMTw4JTXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,186,1712646000"; d="scan'208";a="64969038"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 May 2024 16:03:51 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 24 May 2024 16:03:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 24 May 2024 16:03:49 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 24 May 2024 16:03:49 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 24 May 2024 16:03:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XUrfLFsF8x3PSXS7afNwsINH5qR5vyc1bhdB0C76IQTrlAD86jt8SHxL9aXTAZBK3LZgX8gwzQ21bBX+xeMgCWzVk+tUhWbUZTanvA4hxbCc35HgCNQI9do2kFzo+YbgHoJc7LRX9OfIVUgBOGrx2gjqnWS6BcnrJK+dsB47v63IEgNxdvlkaAZKRe8YSej8CPRl7AdM9fjgmhfxoZKpxzTy0R71kWJoenEk39cnwRxNMZWsobCLfkhFCJ4Ra5qQpTSRKnTiBjx/C7bgFRFgTfT/6jpfuAb+RMEhwbQs0VU62Yw9M5PQ154i7uQsq3eS/ZVKfPrQWTNW4WRwgKyUXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o/DTniqazigMcj3B0HtjbYRzvzCMp0kHDfBH+j6+Ki8=;
 b=Lu+qVzRdovFwJRCMoC2/DT7LifG/3XYKv9NMvYG/YCNa2y9cOv5T0xI27qrTLCyFSWrWHbqQR8x1XPsyTIB/jqtEXCIVFgcJWPWrxfnXBB7j+lZ38KcSe81jdhu/sH/NLZapF/Pk2FzhkeglYKEgAlJYCyylpTc8R8jLaUt4rYvYcMeD3xaT0zyB4Zsty2TgNjAx144odasK/kXocvzupv15Ezqf2HDNfUQA/ALVd2dRfXUgZkfsYwxS/b3vC2Uff8G8C9LSkfsGOvqgrzY7pHvS8vsRFerbTg61sFc8X0mUpwNIRlJPJZwETouqK/9APYWiSLKMaKTzeAcjFdhxzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by BY1PR11MB8125.namprd11.prod.outlook.com (2603:10b6:a03:528::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.22; Fri, 24 May
 2024 23:03:47 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7611.016; Fri, 24 May 2024
 23:03:47 +0000
Message-ID: <2566823f-34b0-4c37-bf2f-fa5f1f31a7d6@intel.com>
Date: Fri, 24 May 2024 16:03:45 -0700
User-Agent: Mozilla Thunderbird
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240524151311.78939-1-piotr.kwapulinski@intel.com>
 <20240524151311.78939-2-piotr.kwapulinski@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240524151311.78939-2-piotr.kwapulinski@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0245.namprd04.prod.outlook.com
 (2603:10b6:303:88::10) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|BY1PR11MB8125:EE_
X-MS-Office365-Filtering-Correlation-Id: 2c0b12fd-ad52-42c8-e961-08dc7c45c417
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d2hTRis0YWRPT2tiREd4Q2prdVRIME81NlN2WHZNcmhKRUFtWDBPSjJ3cUsx?=
 =?utf-8?B?Q2E3bERrdCtpNDN1RkowS0ZQejkzclNiejdSVVFWYjNJZHBNNHVtR0Rtd0lL?=
 =?utf-8?B?eGxtQWgvaklDV0pFNkVVcVB6S3A5WE5lRkpxSWVrYUNYaFZzRkp3YWE2T3R5?=
 =?utf-8?B?OXNCOU1SdCtVQ3ZWbXQzNDZQRW1QOGxaODNVNXN0eXBXQjRHQVZXcGpLbVVZ?=
 =?utf-8?B?Si9hVit6NC9Lb0dQaDhIbElJZTFXRDdmOFdMcno4T1IyaEZ4Mm11aWpqMy9t?=
 =?utf-8?B?aUtvYm9hdDBIalhmQVJ5eDhUZ2IyWXhqejBacFJPTlMwTmV6UnFUNStQMmZp?=
 =?utf-8?B?bkdLK25IbnE4ekRYSDQ1Z21JREh6T2pLKzQzNXVJajhZb2ZQMG1DeWpEVjRt?=
 =?utf-8?B?OEg2aFFtWmRWaS8yRUpPSGhTeFFrd2NKUE44eTNEamMrK2IrRXRvTlVIbW83?=
 =?utf-8?B?R0RyazRkdzVXRms2NXVkMmxSUU1oMWR6NFVTUmZNanRXeDdHZStCcEJHK3hy?=
 =?utf-8?B?N0xqSUo0OCsvMGIyVUo3KzBCZGNacmNFYSsxc2NGNlBmNThMeEY1dU5zbHl3?=
 =?utf-8?B?UlAyZ1JOYUxRN2U2UXo3bVlrWlg3cmc4bVJUcWRUNDRIanRON0xPRk1ER29l?=
 =?utf-8?B?VVVESmFCQVFva2xDcU9WL1ZZVjF0YkhWZGtVYmpRZWx6QXFrRDBmWlJ3OGdu?=
 =?utf-8?B?d2JOcjZTMlBJbzNsT2FxTHZNdzNTVUhsYW5nL1ZNWmRlSFZMM2E0WXkyS3hz?=
 =?utf-8?B?bEVWODZUQWhoblAxOG1NRG9UY2lPRUlkcG8yUVl0QWhDdDcweFJ6UkUvc2JH?=
 =?utf-8?B?RWNQWFQ0MHErZUdmUmZMQXZRaUpRUVRVOFVqVXhxaDlwNHV1TVBlZnYrMUlI?=
 =?utf-8?B?NUlDajhTSVhYYUZTNFNSTENNWnRLNGlJOXdNUHRwdHBEOTk1UHJmS0drV3dL?=
 =?utf-8?B?ZWwwSWMxcDFBMENUN0NERjU3cnF3MGVqZHYycnZXeDRkVkdBbTUwajU4eHVZ?=
 =?utf-8?B?MlVCbjk1eitaR1drVTFPK1UraHRZcnJNbmdwc2k0Mjl0U2JIQWx0czl1MHZ5?=
 =?utf-8?B?aXVVSVdaSTV0TzlnbVIvbkNFUEZxUUs4MFBrT3JKV2lKUHBpQlZWdG5vN0Zt?=
 =?utf-8?B?MDBGNlB1SldDd214NHNhRy9ndjVEelNWNEhkaDk4TW5SRTcvb251aWRGVVo2?=
 =?utf-8?B?YkwrNUw5ME9aak1ObzNnT2tBR3FoV21Gd1UyT2Y4bWowYTJBZmYydjlrNVh3?=
 =?utf-8?B?MG51aGxXdHhWM2ZyUjkwSnZTcGJzWnNRajdWdW1PSGI0UUNuc0IwLzg2UlZQ?=
 =?utf-8?B?elNQNCszT3NqNWJTdUozY0hFRlZtZEN5eEE4WkpmMUhrdzNwYzdIYURaZGE3?=
 =?utf-8?B?MmsvWXhqNUxzTWlmUXUwODRiOXhmaFJoajd5MWJkaFVFK0VhaWxZZzh6WUFP?=
 =?utf-8?B?WDFVNGIwODlVSWNxTnAzYVVLRnRWSHVPemNYckJONWFMMW1QclM3YjVLblVH?=
 =?utf-8?B?ZjhtRmtWRk0rUlg0bFV1dCtDRTllSmVsbHpwMzBqb2EyVVVmQ1Jmc3Frc1Yz?=
 =?utf-8?B?MEhjQzVoMEdUb3RrenFiS296NEttZmt5REU4WG12T3d0bVdFdHlJOXluZjdQ?=
 =?utf-8?B?dmZLSGdnZ3ZRSEx3ZTZCeEhEcnlFR0Q1eE9nSStzdFNwajFLZENxSTBDM2E0?=
 =?utf-8?B?Y2ExWUJFckZwZ25GdnErbkMxKzAzUXJhVGcycXg0SG5RSk56amFQYmV3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?elNKdGxINVBPK2U1dUZkVjRNZVIwR2hjMzFaZnlmQWtsWmsvQ0dkMEtlenVu?=
 =?utf-8?B?dDFrRGNZOCtieklJY0ZxR0p1YnpaY3hTWDhzQjFUWm1HZUU4dFRaRExUUkpy?=
 =?utf-8?B?OVl0MXV1cmczQm9INE1aNjRrY3NXK281QkZJZkJoZGpHZ2VNMWliMm95K3V4?=
 =?utf-8?B?Vmw2NWJhUnVLOUZ1ZHhGcFZaamt4am94YXN3cG81R3Vnb3REc2t3SERWbFNy?=
 =?utf-8?B?eDE4OU9hUUl1S2NzYTEydnpFT3o4N2tZYWt0bFc4b1dyay9tcTJ0czROZ3lk?=
 =?utf-8?B?TmJmMmYzakRLMEtCSGtYMTVoYTlta08xdnd4eXlra0p0SlR6VER0UjZjVzln?=
 =?utf-8?B?cXEzWXpPRXNkT1l1eGhURDJnTFdZRzVISGt5a1ZKQmlzL0s3NjBEWUEzekVk?=
 =?utf-8?B?VHFZM21nK1hLVDZrQm1kMzNNdDU2eDV0SWVtdTFaTFF6YXh1dHdCdVNsK09N?=
 =?utf-8?B?VTF4cnhOSUJmY25sV2dIQkwrcjdRMVRhNG1TZjRRaGF6YlBpVXpkQXJhM3h4?=
 =?utf-8?B?dzhxRlZMd2VuTTVXYyt1WUEzQVpKanVoYVdmOGFZVEQxUVZBRjdHMlNVTk1x?=
 =?utf-8?B?bHplemIza3ppblNWdTFsQmRoRk5LV1RiK1FpeXF0ZkNHeGsyOGxDaWZVNE9M?=
 =?utf-8?B?ODIrNHRzQkdscFRvQkhuN2VnQ0FZWHdyQ0VIdkZPU1ZIL3ZwMmxSTm9jNTQy?=
 =?utf-8?B?SjlBY2l5ZXNaVnloQkRVYUlNRkJSOWVSQVo5YlZETTFqb2p0VThKa1pBaTF6?=
 =?utf-8?B?bDVNRnNON29RNjV4bW1oSk1CRWRwYXVuWHVGZG9zazFONFoyc1lqT051TjJj?=
 =?utf-8?B?TUV6RE1WS1NsTDdiMTlZbjBKUllHTHdrRlhidWl2dEJRU3Bzb1NYME9wajhm?=
 =?utf-8?B?NTVhMDRpRURiZ0Facm1qVm1qZFJkem1tV1BVWURPK3JhRTNJR2o3SnBNb3Q3?=
 =?utf-8?B?SmEvUkV2Z1lkZCtrUklpVmE5SU1QQUZkNGMxR3V5MDdOblhEUkpQS0ppcit2?=
 =?utf-8?B?ZDNUQk9EdjlBMVNNV3FLZnEzV2dCaVpBWnJMWW13b3dpZFh6TWZuNmNvSWU5?=
 =?utf-8?B?VE5lTWVzNDdyK3hZWVFQZDQ4SjBtbHR0Um5LNDZFYWtUdXMyZFdSSE95YWRR?=
 =?utf-8?B?bnhvTnV0ODlSYXNHRTNHQmVGYU12SkZSYkRlQ3FTMWNRb01qQS9WQjducjhL?=
 =?utf-8?B?NmF4ZjBkS00xSDF4Q0JWNE1pS25DajM0d0hPY1FCUUZNb2FjT0JWYlBvdEcz?=
 =?utf-8?B?eGpCTmxoTnpxemJoZElBMkhwQlpyT0pRaVJoMlpaQm5ZU2lhT283ZCtDV2Vj?=
 =?utf-8?B?SE9rUml2TWhOT3k1bzVsTzhsNWxMS28xUVRXbnhSSkJNeHlmTjFoZ25EN0Nk?=
 =?utf-8?B?cDFPa2ZhZWVMSEhUSXdaVzcwR29tQjVvbElsM3NmQnljcmRuUTlzazhXeDRX?=
 =?utf-8?B?ZGxNLzVZL3pNZERsNXdoUjQvY0JxeDhhQkNOS1I5LzM0RWFWRWhrV0tETmtS?=
 =?utf-8?B?SzBEL0JsdHpIQVQzcXRnK3lJc2s1eWdCd0pUc1ArajRyR054dk10UXFUcHBW?=
 =?utf-8?B?eG9xRFlrUTJOR0ZWc1JuM0hUd0hxMDkrR0g0TGxmYzZmeGZOUHQyb2lZUEw2?=
 =?utf-8?B?b1c4UkxPSEhOQ3psaE1BNEQyRlFUTjJyN3V0c2tHL0daWnpMdHZld2VtRHZl?=
 =?utf-8?B?YlFpUUxxNU1SWllITTI1NHhCWDgxQVN0RzBGSC82NTk4SDBWRG1Mb2xVMVdw?=
 =?utf-8?B?SkRGN1JKWWY4WVhhVnIveHNjUzcrYnhqaXk5Ni8wRUJPU1J5YzBGSnBvZVhw?=
 =?utf-8?B?RDZjdVpWS1laM0w4VnYxVnAzbDFFUXVNN0xQcEE3OWZFUzdSUHltWnBnamQv?=
 =?utf-8?B?Tm96Y0lLVEFWaWhiVFN6MnpMNG0rUWM2YldqMEtaSXhUR1VOZ0hzc0RjNVpY?=
 =?utf-8?B?QUxWVWVGY2YwS2xkK3BLa1NBVUVtMmYwRVVSMFFrR1FXQ3RkSFh4TjMxNDY2?=
 =?utf-8?B?NHFxS3h6dUVhK3dOYWN3ZWczck9yNEtRbnJ0TUJCck52WXQwbWtrWmtXQ1Zp?=
 =?utf-8?B?TTMxYXZDNGpqODluNWZtYVh6ZS9EZFlPN21HZjE0VDJYMnpWblp0dlBwTGxx?=
 =?utf-8?B?bno4Vm9yU2FyRElQNGFQcGQ5WHNZYTEvaU1jNmhhdmthRGdUZEpCN2FSODZ1?=
 =?utf-8?B?WlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c0b12fd-ad52-42c8-e961-08dc7c45c417
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2024 23:03:47.2814 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0NmTZ+deFQ0DqNHqMMpnoi2ja+1ZvyVIio0DSPPBEzFYwXTuUCJYKDz3oDDE1qTxdQHdosURyEQXo3SLgNLfMTi0iaKURMC5TtH9V3rqPwc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8125
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716591832; x=1748127832;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bFpGq3vymOm1Eo52UeU7EJd3WKqZzQNFk1WJDodw8GM=;
 b=eV9mprKb4T+cqgksKLsPtRI2GC7VrH+ZhWb1l66tzaG7X9U2HB6g8NXM
 XFPYPw0K6Ah0PD45lQmbFqel1QwM4oPiB6kF4vn+saoT33FEPvG2WDp8t
 r65JWcUfqB3yqWzbW2nrpe36ADnu51jv/yvADjfdxvN9DuvnfMIv96lwG
 wV6uP8ALz+80fQoZb9u9rEilXpDdbKa1pAn6d710z1CNSlDXQJ7L2X5IG
 nhTg4NBJzfxUbjREySSz1AhHkOShcuGdDDL6WDGLq786KdtQjK6LH7z84
 /GPDr4FBO9536GHJussFVDQVV8QFER0c+9LozkcwqLiC6em/hCddkn5cf
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eV9mprKb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 1/7] ixgbe: Add support
 for E610 FW Admin Command Interface
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
Cc: Stefan Wegrzyn <stefan.wegrzyn@intel.com>, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, pmenzel@molgen.mpg.de
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/24/2024 8:13 AM, Piotr Kwapulinski wrote:
> Add low level support for Admin Command Interface (ACI). ACI is the
> Firmware interface used by a driver to communicate with E610 adapter. Add
> the following ACI features:
> - data structures, macros, register definitions
> - commands handling
> - events handling
> 
> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/Makefile     |    4 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c |  492 ++++++++
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   19 +
>  drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |   71 +-
>  .../ethernet/intel/ixgbe/ixgbe_type_e610.h    | 1061 +++++++++++++++++
>  5 files changed, 1641 insertions(+), 6 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>  create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
>  create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/Makefile b/drivers/net/ethernet/intel/ixgbe/Makefile
> index 4fb0d9e..e0444ae 100644
> --- a/drivers/net/ethernet/intel/ixgbe/Makefile
> +++ b/drivers/net/ethernet/intel/ixgbe/Makefile
> @@ -1,5 +1,5 @@
>  # SPDX-License-Identifier: GPL-2.0
> -# Copyright(c) 1999 - 2018 Intel Corporation.
> +# Copyright(c) 1999 - 2024 Intel Corporation.
>  #
>  # Makefile for the Intel(R) 10GbE PCI Express ethernet driver
>  #
> @@ -9,7 +9,7 @@ obj-$(CONFIG_IXGBE) += ixgbe.o
>  ixgbe-objs := ixgbe_main.o ixgbe_common.o ixgbe_ethtool.o \
>                ixgbe_82599.o ixgbe_82598.o ixgbe_phy.o ixgbe_sriov.o \
>                ixgbe_mbx.o ixgbe_x540.o ixgbe_x550.o ixgbe_lib.o ixgbe_ptp.o \
> -              ixgbe_xsk.o
> +              ixgbe_xsk.o ixgbe_e610.o
>  

This has conflicts with the work to change the Makefiles to use -y
instead of -objs, which results in being unable to have the NIPA
automation validate the patch before I apply it.

Could you rebase this on top of the current next-queue dev-queue branch?

Thanks,
Jake
