Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B9536C91ECC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Nov 2025 13:03:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6BDD9612F2;
	Fri, 28 Nov 2025 12:03:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dpX2Zgc8zbDI; Fri, 28 Nov 2025 12:03:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CAC996177C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764331397;
	bh=4ig7IWV53Hk71np0+AAnVCvqbRfO+ftFtv+0AyWL5Q4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZP+V9V+340QVkyA0QijlChOFQVDC4w2Mpb4JVUCQYO98lg4eyQIrIZ1CNqjO+Sn1Q
	 Gpd2j+exn9JFgut6KYmd7OF9wFOWqHKLHHGU1UHk7NAGppjIb3rCPh5YA2Z1vtHfP8
	 OQJRyMq4rvYWXczL2PzKqCB0182YbBpSOl+E0jYfWfQPEMlkcUZ0l9ZUDHIZdvNP+k
	 aiM7pSxEht/KgJbsEmt9wAgX0vTb2STkEI8B77YQZqFa//aYqWYXT2oZBrRoRiDT0H
	 qIkoepVGpIeCgRNgCvKPZo2jM7TwT2O5/peuRHB1fG+Et+NHN54egn1Pk6OdpDZFfN
	 QXgGJXBU1iGgg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CAC996177C;
	Fri, 28 Nov 2025 12:03:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D1B00967
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Nov 2025 12:03:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BC21184429
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Nov 2025 12:03:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QiKEh4FJVI9o for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Nov 2025 12:03:15 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 28 Nov 2025 12:03:14 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C2C8A84672
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2C8A84672
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C2C8A84672
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Nov 2025 12:03:14 +0000 (UTC)
X-CSE-ConnectionGUID: dVbTZtewSGugG+UfDqYwDQ==
X-CSE-MsgGUID: OCezdsFvS62u5/NxiuOnWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="66437546"
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="66437546"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 03:56:07 -0800
X-CSE-ConnectionGUID: vvYPpQViSLq3ImJACm7/Hg==
X-CSE-MsgGUID: VDKU8e7mRX6Hlbo/0jkHAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="197786718"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 03:56:07 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 03:56:06 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 28 Nov 2025 03:56:06 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.38) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 03:56:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r0zs+W4rSVc/UUrqworfWwEkDAzVYrL073aXrjFve3vdyo4BMKD4RyKi85zjrUSx0rx++7uLI98/1CETJfn9Ih+vwtDgwQa8VLcfXy08nYrzDJ6Y+mctOGrF0UotOTKoy2h1oEhdKc/fW+DYlfOi8M9IwHacjrxIeHOaxt9rXhn4qSy+Smoe6Nu1PSn/c9SvnIcQfKNqZ+o5i6ZCWF/EClDez9MC+JWSy/p7V8W0LS0RTD4R2ZjhkL4aAe1PnomwAIOCF+EBNiAQ/b0ZGXksO2DSeHf74oGInyhnyg6engFVjkggqG+/u+oOj0dKLxvXs4WY4DsRYymNnmbQA0bylw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4ig7IWV53Hk71np0+AAnVCvqbRfO+ftFtv+0AyWL5Q4=;
 b=s8BdwPEf4R1VLqtQFFyCCjPLDZ749XE/MZb1Vq1NsevmmWusEBhwMsuk5wOEdd60cO+j5pwnxgoyNtZ4wANK6ljpqczTeQ31cH2sOYhRjPV6mJeW+8zF1dSjWZ5BbmzjSaBv7SZKNTLjWw0twND/zxbtGbpShLiAnJRinMI03s7nUC5sA0sMtMNSRzyQBKHh2prm5/wC65wEaegnhUhAl2eGOtPfjX9QHgZLbVivMUmM9pzrCrimckJlH2j1PhiVxCnNbVYYBQKOOwssxPhSHLAPclcLBp7NyhPMPnR/v8S8o+EpglJ+l+INqudBVEK3Ne1/sBf5oe5u2J2suQQGug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8308.namprd11.prod.outlook.com (2603:10b6:930:b9::19)
 by DS0PR11MB7482.namprd11.prod.outlook.com (2603:10b6:8:14a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Fri, 28 Nov
 2025 11:56:04 +0000
Received: from CYYPR11MB8308.namprd11.prod.outlook.com
 ([fe80::68e1:d6c5:d11d:4858]) by CYYPR11MB8308.namprd11.prod.outlook.com
 ([fe80::68e1:d6c5:d11d:4858%7]) with mapi id 15.20.9366.012; Fri, 28 Nov 2025
 11:56:04 +0000
Message-ID: <32fd9c75-e133-4f53-b839-101a579fd79f@intel.com>
Date: Fri, 28 Nov 2025 12:55:58 +0100
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "michal.swiatkowski@linux.intel.com"
 <michal.swiatkowski@linux.intel.com>
References: <20251125083456.28822-1-jakub.slepecki@intel.com>
 <20251125083456.28822-5-jakub.slepecki@intel.com>
 <IA3PR11MB8986E6C10E42C5DD6DC717B9E5D1A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: Jakub Slepecki <jakub.slepecki@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <IA3PR11MB8986E6C10E42C5DD6DC717B9E5D1A@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0102CA0034.eurprd01.prod.exchangelabs.com
 (2603:10a6:802::47) To CYYPR11MB8308.namprd11.prod.outlook.com
 (2603:10b6:930:b9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8308:EE_|DS0PR11MB7482:EE_
X-MS-Office365-Filtering-Correlation-Id: e6d69e35-5473-4fe9-e16e-08de2e751b87
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T3dncmc3bE1yRnlhVkFOcG5zM3R6MzgvUXBkelNUZG9icUM5ZlpJN09mV2tN?=
 =?utf-8?B?akNhMTE1d3ZxZk04QkF2dUFNTzFnaDRCZmJGSlZWa2hDWjFob21lWWJiY0tZ?=
 =?utf-8?B?TGMxbUdQblhRbGtnNzM4b1ZiRUZuN1pZUXZ2LzhBdFZLV2UxOU1aWnlRTkNt?=
 =?utf-8?B?RW5TNGZXNHJVcjA3TXVod2s3ZTc3OEZRZVZaaU5SVXVRYWtieW5HRkZHRWtK?=
 =?utf-8?B?NzFTcC9WYWVMb3FncFlEOXkrNGtCdWcwR0UrMWRpODVLMjhudEE5R0pEelZM?=
 =?utf-8?B?U1AyOVBpdm5mZ1hEKzBoTGtnWDRZTVE3T0tCZnd6cEZiY3RsbzcraGExR1pS?=
 =?utf-8?B?SzR2Q1Z5SGF5TkNVNWh4N2lCMTZ2Rjk5Vms5Ty9pNFJ5c2xEWmViN3grTTZv?=
 =?utf-8?B?V05BT015ZGEyVXBVRUxIWWY2MmlSejhoUWhyUkIzR3AwY2h5dkhjenhQc0dv?=
 =?utf-8?B?MzRBdjAwdTIxTHVYNjB5RzJVMGE0OFJQSWFoTloyMXViVjhTOUF1WVl1c3VB?=
 =?utf-8?B?bXlXeXRFNERUQzVCcmxnSWtYQ3MyZDhCWU83aUNhTmhMYkNPbGZrcnp4MmRV?=
 =?utf-8?B?NHo3WDdWYWFlWjVKR3lyU1JQRll2bjd1c2lRRmF3SHU0VVhuaGhBQ1p0M1l2?=
 =?utf-8?B?aWZiSFFVMFZPeUR5NzRJU2NjN0Q2STcxR0NaN2xGMkNublNaZ25PUUFCVUJk?=
 =?utf-8?B?UEN4UE11ZUpMN3I0K0ZhNmM1Rmc1eGlVSHhxYWx0anBrRFRodnA1NFdZZVJ0?=
 =?utf-8?B?Q0VBaGZ3Q0wyQjJRZmpCMmd1UDVzWk5UWUo1U0xJNG1QanhDYTNVZTQ4WDIy?=
 =?utf-8?B?dW94a2tGeGtQaDRnRm0vUlJDaiszZUtJdE1YMGdqTEUrZEZpc01hWnk3U2F2?=
 =?utf-8?B?OGJrc2xjcVNrOFJsanZZRjkzdWZpa1JaRDU0YUc1a0xDaHFWcWtLRFJLQ3pN?=
 =?utf-8?B?ekdtQU1pZDNlV2xHQmtuTkU1NW4vdU1lNngrTzNsLzFqbjVFQlowNlBwMVhp?=
 =?utf-8?B?WXl4VE9GenZPeHdEOXE1a0V0Smpqc3N5L3BHWTlnUEJVdklCbENlNkxEeFla?=
 =?utf-8?B?bGtOMit5OGRDUjVrZXhXNE0wcHQ0aVlzb080cCtMT0ptUWZsUHJrV25VU2VK?=
 =?utf-8?B?NDBCMTV0ZHpRTk1ITU9LU2tNa2dGRTBUdTZ5WW9yeEJwcnRoaW4vcDVRL2JV?=
 =?utf-8?B?RlhPMjZYdDdCT1F0SkJoVTg2cGRsQTN2eE9PTmlheWdhNytZT24rb0EzM1Ri?=
 =?utf-8?B?TncrVFlwcEhBS0FzVkN4UnpPU0ZmdDhKaE9iZjRjR1ZZSmZyTlMrVUVQRDhR?=
 =?utf-8?B?QzF0em9oWTYzTDg2ZGNzZkZUVVU2Q2dFdjRKZHo3bTVFU0w2dUhwZ3dBbkt1?=
 =?utf-8?B?TkRLdjdNUnU2VzFjL0dod0xubUN3RkVXNWNHRHpZa0NhNXcxV0ZmS2gzTXhw?=
 =?utf-8?B?Z0YyUXRXR0ZRMzEwSnRHOXlMbTB6WXV0eG9yODB2bS9Ca09PVU83M0haajJ3?=
 =?utf-8?B?WlVpclFtc3ZDVEpoVkNyS1FkeE96NmRiVkFpN2w3cjNGVXVFWitjTWdoczZw?=
 =?utf-8?B?YTEyazU3bWl4YTA4eWVXTlBWdHVZeGYwMGdzVjZSNC9kK0JiN21CSE5SS2M1?=
 =?utf-8?B?RFZ5SXRTZHlxd0lYcmhOVEVnNkFhRGlIWlVRUEFqUUxFY0VXQ2tjb0Fxd0Vj?=
 =?utf-8?B?UDBjV0hXVTlueWRvbFVnVWdJNkJGK3RpTWFsME5RSmVHS3A3RVNLUFN1dndi?=
 =?utf-8?B?ZlpVdmdwS2I0azZOQmJaQU5zVjRaZjNGZk9janhKSU00Wk5OdVZ5dm8xVFQz?=
 =?utf-8?B?TDdESktNcmNPTjNxT3FhZWtCaWdYYml6cVA4YnQ3ekN4bkllMnF0MTZwOGdV?=
 =?utf-8?B?WGRhVVB5aktSY25xVkFZa1ZtVktjdmRCclJsUk5wSlRBempYTnV3enVmeVZp?=
 =?utf-8?Q?km1WB+zxZ5J2jM70UCy+v7XLfgDpUztA?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8308.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RUVNTUhjejNzOGRqMGEzYmY3MW54NFR3Z3VTdDY0SEVaYmFjeDhBYXl6bVRK?=
 =?utf-8?B?VzhHc0hoNnZwalAzckJaYkFXZS83Qlp3ZW9jRzRCMlprcEZHdHkrK3lQVzIr?=
 =?utf-8?B?bE5jKzZZL1krVWQ4U2h2bzhpRGd0d3BsSVowaU9wWmNsaUY0K1NGY2QyS3Zh?=
 =?utf-8?B?b2YzV216azcvRHpxUnd4MkN2NC81YXEzZXVyT3hwZEVTMXVrL3hrSVIrV2po?=
 =?utf-8?B?b2RnUDdTc1RqbmNqYkhyVDYwZ0V0V3MzOTZnVzlScndQNXJGZGxSY0U1d1N1?=
 =?utf-8?B?YWRUUnAzZGw0T0VHTUVoVDN1NkNIeVByZUJCRjZpSlozcG5jVnowOTJMcU05?=
 =?utf-8?B?QVRzakVEVkE1bzc4QnZYSytSQzhmUWZweTQ1NjYyRmpXOENadVNGenVHU2pE?=
 =?utf-8?B?Z3VoUzFOdGR2alpJbElCQVZTWXlPbm9VTFdNZ0xiRWRJRk9FZVZVeGZubzc4?=
 =?utf-8?B?U2taenYzcXhqdnVLTWZWdjRHMHJiQXB2RTBmYkVtbk9lUmtmbUpQMnpMQnB5?=
 =?utf-8?B?WnZZTWE2aGhoSStBYmJPYlp3UTVLd0FaSlljWW1Sem9KQTVHeC9mK3ZZdDQ5?=
 =?utf-8?B?VnAwdkIwaWZIS3FDdUJCT3FEWGZFTGlkazNHYS9BMS9ENG4rcWJhMWg1S1Fl?=
 =?utf-8?B?cHpjZzZMSVRtR0JzK3RqbXRQcFczUGxMVlY1TXhtcmxHWks4WW0zd0Y5dVRW?=
 =?utf-8?B?K2hUQVdnVWZpam9ZRUx4MTlVYmxJMXNWZ2hTSG9IeVF3S21GNUJaSnlQWlUr?=
 =?utf-8?B?MFhFYXVWTGJqRUNyc2t1VUM5emtJUlp6emgxRFlKcWNGRlEzendXdnJSYUM4?=
 =?utf-8?B?OGtNTzVHL0JORFFvWE9ZbjJDTzVzekhnY2NKOFdFaEx5Z2x4U2pRZzlNclgw?=
 =?utf-8?B?WG95NnpoZDg3MDJFVzA0M3UxaWhTeFFRcEpjTVlsSnd6M0JyQ0ZzL29zVU5X?=
 =?utf-8?B?aTYwRUlyWVRwY1VLSSszVU9KMytaWTRxaHViTldLQVIvWTdkSk50NTg3bUJO?=
 =?utf-8?B?YmFQVW01Q1BGUGV6WTNBcnpZMWN5VzBVZ0tQc0h4a0IvaHlWY3d5NmNUUU1L?=
 =?utf-8?B?ZWJ0cmFYY210ZHFzQXh0c3ZkanVXZTMwWVVjNG82aDF1RG81bHY4R3BIeXBV?=
 =?utf-8?B?K3pWTUIzRjQxTjlQSzJFb2tTOHFZd3NqYXBueDY5L00rVGdEYjdyVi84a3lp?=
 =?utf-8?B?ek5WZnF1SFQzamdEd0xsKzNsSFU4YnNsbkpLVW1BRzg2dWhqckVjV0lMZzFz?=
 =?utf-8?B?OHN1VlVDY3JRck54VTFUbmVrNFpuZ1hialBZS3V3dmNKTm9ob3cxSlBTMFdJ?=
 =?utf-8?B?bFRHQURINjBTa0c5RVRXZG41SnRraSsvTW91NE1UOGJPbmFGVnVZVVhITE81?=
 =?utf-8?B?YVRiVlBoTW5VbG41NExCeU5aLzBjK0ZCVW1oYUdXaVIxN1MwU1hFZkJhNGMr?=
 =?utf-8?B?UFN6OTVoQ0VHbENKT3RYRHRDWG90OFFQblhnSk04M1NFN2xwejAvZmFocUVx?=
 =?utf-8?B?RkxyQlBVQkorYm9paWkxenJWblJOakMxZEF6QmpXclFZdVVTS2haQWtwVDhK?=
 =?utf-8?B?SWJ1WmJWQnVyWjZhNGxhV1k1eW9FVlk3ajhJTTJYQ0U1NWY2YktScHQ1Ky9S?=
 =?utf-8?B?ODlFRVJMUll5ZzZxWnNiMmtGanlSMitlbUtjbU0rdlM3MnBsWHVCSmJ1dEN0?=
 =?utf-8?B?eUdDb0NXUk9GbW9WM1ZBQ1czenpDRGtTc1dybGpWVVNVbjFQSDlFbjBIMENX?=
 =?utf-8?B?bnZ0Z1VoSkZoQVlFalhGUEdFUkQ0eENVNWdId2lxYWxKSHZuckNMY0IzQkJs?=
 =?utf-8?B?dWZKNzVjMm0wM2dzUFlEcnVLZU54Y1NTck1jSXltTVJRL1RmdUJmRDZVTjlV?=
 =?utf-8?B?RG1ZTHd6ZHg3REkrS1d0bytDeWJ5cFlNa1kvSFY3dFg3NFdIMkd1cXVGVUha?=
 =?utf-8?B?QStkM2FoWmpsUDRGWUs3TldLcnhjTG00YitvY3RjdGc3Q2tSY1BmbnI0akw1?=
 =?utf-8?B?R3ErdmZGWTNCZlc3SHNaQk5uZnFnTk5LZ0R6ZmtrTHpsWklQYjBGblFIMG9T?=
 =?utf-8?B?cEgrNllwM3QyelRHN1JDNS96UWlBTUFNUUROUG0vZmtJcEJtS1Y0YkJ5SjVa?=
 =?utf-8?B?dE42QTZOZndWWEVHdDZNZkRhYUV6UUdWWUFjTVJCVDFQS0JOSHJaYlJuRTZy?=
 =?utf-8?B?M0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e6d69e35-5473-4fe9-e16e-08de2e751b87
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8308.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2025 11:56:04.3427 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vhx+dwPDelEqEtDcREnuLLr3t+hkg5bKo/EKh6YHKiiyMruBr6M1zIXW9EBXBPjmFzS1dJA2XZ1cKgn1idNKweQLn/GtHyuSuse1Xh6rzIM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7482
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764331394; x=1795867394;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GR004Lt7rpyObnQPwxFUJZ5ldHZ09e3vXFPO/zlXokI=;
 b=iWkfy8RjwnEnPY7NvPDv+lzLDmVBt9rhl/807upUiAD81Mxa20anq6Xf
 xC5yyAMdhRU9v1dF2qHjBebHBzlT2B/2BIB0CDggrxnjTIOQRrbs/emND
 U3MoRT1wtwNXs5N9s3mX9kIOt0p1w/tqEt1RwnVPCs480qxlMDZRbhTnL
 J1yPyMzpCs5Gp895SWEb3FMPghXo8kj1tCsKUvlL5+IqNnPUO2moZCqfM
 zJFDdxU53CreoPn5ub+NlHBZwWGmiKXUA9fOELQpC3jiihGSa4I8Jn3qt
 6zUdb3qgHO8sdjL07EKb3nYpTqCUpIl/iOuvIgHTcUIrhbUhZS1hnHh7s
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iWkfy8Rj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 4/8] ice: allow overriding
 lan_en, lb_en in switch
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

On 2025-11-25 9:59, Loktionov, Aleksandr wrote:
>>   	if (fi->flag & ICE_FLTR_TX_ONLY)
>> -		fi->lan_en = false;
>> +		lan_en = false;
>> +	if (!FIELD_GET(ICE_FLTR_INFO_LB_LAN_FORCE_M, fi->lb_en))
>> +		FIELD_MODIFY(ICE_FLTR_INFO_LB_LAN_VALUE_M, &fi->lb_en, lb_en);
>> +	if (!FIELD_GET(ICE_FLTR_INFO_LB_LAN_FORCE_M, fi->lan_en))
>> +		FIELD_MODIFY(ICE_FLTR_INFO_LB_LAN_VALUE_M, &fi->lan_en, lan_en);
> fi->lb_en and fi->lan_en are declared as bool in struct ice_fltr_info,
> but you are now treating them as bitfields using FIELD_GET and
> FIELD_MODIFY.

I don't see what you mean here.  Both members are u8 without a bit-field
declaration.  Or do you mean they are used as bool or maybe the _en
suffix?

> I realize it could be something like:
> struct ice_fltr_info {
>      ...
>      u8 lb_lan_flags; /* bitfield: value + force */
>      ...
> };

What I see from this sample is that you want me to: pack them, change
their name, and change their description.  Is this correct?

I fully agree about the description.  It's my mistake I left it as-is.
I'll update it according to the overall changes.

I don't think packing them is worth it.  The memory gain is negligible
and the cost is primarily in readability and consistency: we've always
had two fields for these with clear responsibility for each, names
match with datasheet (both "lan en" and "lb en" will hit Table 7-12.),
and packing them would require twice as many constants.

Would the clarification in the description be enough to address your
concerns?  Something like (please ignore bad line breaks):

struct ice_fltr_info {
	...
	/* Rule creation will populate VALUE bit of these members based on switch
	 * type if their FORCE bit is not set.
	 */
	u8 lb_en;	/* VALUE bit: packet can be looped back */
	u8 lan_en;	/* VALUE bit: packet can be forwarded to uplink */
};

> #define ICE_FLTR_INFO_LB_LAN_VALUE_M    BIT(0)
> #define ICE_FLTR_INFO_LB_LAN_FORCE_M    BIT(1)
> #define ICE_FLTR_INFO_LB_LAN_FORCE_ENABLED \
>      (FIELD_PREP_CONST(ICE_FLTR_INFO_LB_LAN_VALUE_M, 1) | \
>       FIELD_PREP_CONST(ICE_FLTR_INFO_LB_LAN_FORCE_M, 1))
> #define ICE_FLTR_INFO_LB_LAN_FORCE_DISABLED \
>      (FIELD_PREP_CONST(ICE_FLTR_INFO_LB_LAN_FORCE_M, 1))

Does this mean you want me to use {1,0} instead of {true,false}?

In ice_fill_sw_info() I'd prefer to keep them as boolean because they are
semantically correct: we're calculating defaults and then we apply them if
specific values are not forced elsewhere.  Maybe a comment or docs change
would be more in place?  In ICE_FLTR_INFO_LB_LAN_FORCE_{ENABLED,DISABLED},
I used boolean to stay consistent with the ice_fill_sw_info().

But it's not a strong preference.  If it's preferable, I'll change it
to {1,0} across the patch.

Thanks!
