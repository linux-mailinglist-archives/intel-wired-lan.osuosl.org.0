Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE4AA02FCE
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jan 2025 19:37:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0579260B02;
	Mon,  6 Jan 2025 18:37:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZYmBDeEDEEkg; Mon,  6 Jan 2025 18:37:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5884660AE7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736188621;
	bh=ofct6UuAWNd5PFFt+flfcenxTSoUYhf2n5shCO+SYu8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Hm6dCxx3yyWNFnEY63NFYssPkHUw16bgTU1kCMD6SjHFBm+ZKHylddUT8eKFG4OTo
	 SkpW4wXMZ8aSjHDDeiTSSVDF1tcp+pLDrGB6DyCWAU+4fY3KNv2jG8dVbI4a16PaWV
	 4uqSxkv41QHtrTYpHN4M9tAtFRqkp48icbzM9xXEV2RPvDrB3CsznnEQoX2rBNcril
	 LxdRlXCMXHd/TxQzVF5N+DR1EJpMaeLbmZLcsf7c4HwoZoIyKgMm99OvZNrCUQwxb1
	 aRSCP2Z0JfzWDoClBbspiG2MKVWR3cgrcvBpEEM3jOrpavHEr/1QuTFU+UWqDNbxHf
	 xE/T6+tqR00TA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5884660AE7;
	Mon,  6 Jan 2025 18:37:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 76B07DB4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 18:36:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5C77F81416
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 18:36:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fOrB-KgIEEZl for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jan 2025 18:36:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 552A581407
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 552A581407
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 552A581407
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 18:36:57 +0000 (UTC)
X-CSE-ConnectionGUID: p/PjZ8/sRkWTjgbKhwhjMA==
X-CSE-MsgGUID: klXjyVgkT+OHvhQmt7tWPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="36572850"
X-IronPort-AV: E=Sophos;i="6.12,293,1728975600"; d="scan'208";a="36572850"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2025 10:36:57 -0800
X-CSE-ConnectionGUID: RK1Nmlo8QUGRh45uwx5A2A==
X-CSE-MsgGUID: n9tRTGkoT7GtQHYhFUwbBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="103378608"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jan 2025 10:36:58 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 6 Jan 2025 10:36:56 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 6 Jan 2025 10:36:56 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 6 Jan 2025 10:36:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xCnAda6Q6fXGAUKfOsyL8mqGKpEzkrVJ/b+2wSQX3SDK3tnGB8kv7NHGmaNU9lElzCaMH4p2dBafvOkNM7fQ8aldVOsCLp6JE0/wLDNfMErV4xQ3rF0F0WCgTLwUINboVlVCy/a/OfeAAQ2CMwkc88AhOto/PSun36YhnBJMANfzPcJn9OWSID1LBXQqkVXz+Jv0BesO52klEtl1hQyi9ETYve+4DP+oAqEw17bKrwulKWF15fIF0rPWw06GLQk/4dVSSCLZy04QlXZyU2HKBclBDcVqA0qX+dZzO/TPeS3XHqPBcFjMDlW0lxSs+S/WKxtx29TmXUn98cES/RJtTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ofct6UuAWNd5PFFt+flfcenxTSoUYhf2n5shCO+SYu8=;
 b=X/3QQvwq84MYPq4G/+4nsPV3bSXZVOk7Qx1dCel0gjjQkZrUiFysuyPyLihA8dkW4OsNDNU+YSY73dXNXUzGZ7/Za0hhNnJPoozEvCSGkAdz77kkyDZhftH75gxlZOCg70cKTGRTgEUGbQ7yXO0rMwl6Z0iP/No7eVGCV6MGMeDZtPTqRO4iklYjw9/38/Qp0Blz0WMIshPlS3hl4SIovvTB0cy4H0qpkNCoPv43PadYiyrRluryLNypzouC+GAFaV7fNgQYAb0vooSVi6OCWCkrG5mdKJNRf5BKuaWWGt1K1giifLrNedLc5GhXqw4aNO/whZOPTD2/IDMTSTK1TQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SA2PR11MB4986.namprd11.prod.outlook.com (2603:10b6:806:114::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.12; Mon, 6 Jan
 2025 18:36:38 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%7]) with mapi id 15.20.8314.015; Mon, 6 Jan 2025
 18:36:37 +0000
Message-ID: <7a1575b2-f790-4376-985d-2a68f81037b4@intel.com>
Date: Mon, 6 Jan 2025 10:36:34 -0800
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>, <przemyslaw.kitszel@intel.com>
CC: <linux@treblig.org>, <andrew+netdev@lunn.ch>, <davem@davemloft.net>,
 <edumazet@google.com>, <pabeni@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20250102173717.200359-1-linux@treblig.org>
 <20250104081636.67a10134@kernel.org>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20250104081636.67a10134@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0055.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::30) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SA2PR11MB4986:EE_
X-MS-Office365-Filtering-Correlation-Id: 12c522a4-3633-401c-d0ce-08dd2e810dd1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Mm9iRHZDODAycTk2UXlpR1NiQnR4b01xV1VXQnlnWTFZZGI2SEYxSkFwYTlP?=
 =?utf-8?B?bEgwbkRmZ3c1QUZ3RXNxb3pWdzBibStFZE1xV1NMZTZuZlArQlFzYmFEb2Y5?=
 =?utf-8?B?cGQvOUNuVXJ3cWhQdTYyNUFaS2VHb0p2OVV4ZGQyY1gvL1R5M2Jtczg5b0tM?=
 =?utf-8?B?TkJBSnhxOUM1STJucG8xM2t6aVEyeDFmNEgwOHFHM1dLOFMwTTlnYnZzOGNo?=
 =?utf-8?B?SEdqSGZISEljZTZHN3pDZHNZZU56RXZteG04Q2tmUWs0djlZLy9ycGd1TTlG?=
 =?utf-8?B?YjBMdm5rNkdrNjR3Kyt0azhMMURKSXpnaXE0LzcrTmhCVFkrT0VzLzh2TkdQ?=
 =?utf-8?B?YmZnY3B1VU1VOGhvVS9iL3U0WGpMTC9FUDI1RkxHUU4wZDE4SW1tdW9tbWVJ?=
 =?utf-8?B?TzRuNzdCZ0FaTGIzUVV2aDErQ0ZNSy9ObWo5anl5bHJSbUNjNDlYYm9pOGdY?=
 =?utf-8?B?d0NxK3hDa0lqNVVURUYyR01iSkQyKzhncGoveDRhSzFGWkoxMitYc3JRamZR?=
 =?utf-8?B?T1hZNmVRTDAzUzMzK1c4ZUl1TFFrQVJ4VUJWR1hXNHk2aldQRWFZWkVTcmZp?=
 =?utf-8?B?SGoyQVZzNThJUGRTN2x0TU11QUp2TE1OZXhTN09qeXhLN3RzTkJkSCtjVmxZ?=
 =?utf-8?B?Rnpxd0tPTHg1bWZlZTlGSWlOWXFMblJ6ZWdUbEh2ek1UZy96eXdHbG1EeHZP?=
 =?utf-8?B?bjlQM0h3cThySlJsRzBnaVliMFA4RE9STW5RWTR0RGdpdllFYjRMSEVOaXhU?=
 =?utf-8?B?b1ZPYVRtMDhjb0dod3pIMlYzakh0VExSakhuV0hqdGo2dlh4Q2RMMUVCRkN2?=
 =?utf-8?B?bjdKd2sxa2VrelBZZk94dU51TXRSNmhlWWlvdjkrMGJkbFJzZTJBb3BzckJG?=
 =?utf-8?B?NmJqMy84MitnL0FWVzVvVjZNMU44SVY4elAzSjNHRWUxRXk3RmdxUEM4UHVr?=
 =?utf-8?B?Y0tCdTJseUIwc3IrSFFUc1dJcjBSSG9UV3dNUkx6RE5TaWZmaTI0bnN1QVla?=
 =?utf-8?B?cVhJcFJIOURpYzNNRVVZcnNaSVZOczdLVzRGcGJSazJEVWlNR3FzamU5WDQ2?=
 =?utf-8?B?VEZhT2VPTzUwQTVzVURjSERnRUtabk8xdmZlK0dhKzZNRHg1SnZrZS9VMTQz?=
 =?utf-8?B?SkNrM2hDUEsxQmZwTTNUUFd5SHQ4aGllNHVOSmNDVVl4aWhreXlWbnRsT2Vi?=
 =?utf-8?B?Zk4rREN5SHNxOXUyTGRIUU40SXFLbGFIRXR2SFhSRVYyK0VsWGpHZVZzRGxB?=
 =?utf-8?B?WFpvT3dzYkNPcFFuZkVOYW0renJPcUszaXBhL05NVEkvS2N6MzJNVGRhUERk?=
 =?utf-8?B?UG9kUE1YZzJUV0pVTS9CL1hIZXlxU3ViRzRkMUhmaTZpWjk4aTVHcEV5Y0Js?=
 =?utf-8?B?M1l6MWpxbzIwS1JnekE0T1k5MzV4ZXoxaTREQmFEZFBCRldRU24wZzJlL2hX?=
 =?utf-8?B?UWpwNUhveEQzUGJLeHBVMzAzN2Y0dDgzd3hVMjRCT1lSNms5Y3dLUEpqa1g5?=
 =?utf-8?B?QXZNcTNYand1RUhlSW1xWFExdXdQMzUrQy9IWVFsb0p0dndNRFRnTXpqYWMz?=
 =?utf-8?B?L2J5MU9aRm4xd01kd0I0SmduU0Fod0NRdlZ6TDhkbXk4Rm9IZUV4S0pxejYz?=
 =?utf-8?B?VlVlY2JCYk1CZml4NGNGbks2Nzl5K0N3Mlo4M0QxaVVMbTFWUFN3SFVYMUlD?=
 =?utf-8?B?cDYwSi9ocVBIejQ4Z1JvenVCQ01paTRSSm9rZGdBNzZUZEVKU0NUaFN4dGl4?=
 =?utf-8?B?SmhDemQxS0pKemx0MjQrVElleTBXQ0NSZHVVcWFESktabERqTlVRWlZOVXpJ?=
 =?utf-8?B?K0preVBkbUYydGxmM0s1NVVYVERzVjZUQ3ZTQlAwL2U2dEIzWkZNK3JhNnR4?=
 =?utf-8?Q?QI58Q8y6OE9mI?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aDAyUXo3U2VJQXgxUVg3amd4eXk0NFdRdmcxUWZCRUlSYVV1R2UwdzNYZ3ND?=
 =?utf-8?B?NDZReXovZHkrTXBtTlFucjBRMnhyRlBOSVVlTjNDbk8xdmtOZy9zU3NqK3NF?=
 =?utf-8?B?a1JVOGFleEtuTE82azlaNlNOaEdsM3ROOStUVm54L2tiZ2Q1NTBBSzVobGFW?=
 =?utf-8?B?QXZkTlJLZ094akJrK01oZWdWZzRmWUtWRkM5V002NGZGc2x0RGUrREtaMExI?=
 =?utf-8?B?aFRydHBzbTFlR3FXU0IvMzRvZTczbzFUWWVJeUh0RzVlc1MvYkVldkR3a3lm?=
 =?utf-8?B?emZCLzQzQisvSDJIWDNRQXYwWHJzUVZjV0NaRlhRdGFkOExUWVNvU3ZLbXJk?=
 =?utf-8?B?SDBVZ2ZCS1k2VGlkNnpMNnI0VFVCKysrdExncUdEbDM0L242OXdQRnpmMkFX?=
 =?utf-8?B?WlVTMWtPaHJXNlZ4TFBuYldyYWJGN29MVlRDUDNEeWUxSGM5RHNBTTBqZ1cy?=
 =?utf-8?B?b0ZaNXBZcE93dXljK0tjM2MvaTJ4U2ZUMjRHRUxWbzhLblhuVEc3amNLNy95?=
 =?utf-8?B?SkpieW9HSWFSbHJtUUVVUnJTM3lscFlEdTBOSHU1UTFRTVRScUtvVWJPU3pN?=
 =?utf-8?B?Qzl0YmFBNWxXSDZCMTB2ZnZ0dEdmVmJaMWU3TFArYjQ2VFJuNWJ5cG4rRXdM?=
 =?utf-8?B?RytkeWY2Mm5mRWRsc2QxcXQ4bm5hcitRTTdlSjZaSWNzbWxLV3AybVkzT3Fx?=
 =?utf-8?B?UDNkNkhCRjI0SEFzMTJINlRjT00wRElkT2hMNTlFblNyQ3RxbnFLMUNEWG51?=
 =?utf-8?B?L3FvMVRjcDVRVEZoakxRTmJWR3AyZUJldWpWeHFkVFVodDBhbVdzSTJta1U5?=
 =?utf-8?B?WDRpV0xMdnlLQ1Q0dlVsc0xNclB4MVZjb05XWVd2OE9zRHFZTVFwQXpWMmxZ?=
 =?utf-8?B?Q29ZVSt3TnE0MDdCdUliRXJKVkJGblVGaDNaS3lOc1FmTmRRdVVGeGVhVXpJ?=
 =?utf-8?B?bTdUTTM5aHhadnFYL2NqU3BGRm1wclMzQTlTcDhPdTIxN3B2Y3VvK09OTzNH?=
 =?utf-8?B?Qko0c3V6NVZtYTFMU1dBazZYVXY1elB6a2kvYWRSdmdla1hMZVRzK3hyQVUz?=
 =?utf-8?B?cHJVZlJpUklLUWJFTCtPODVQTVdzS3FvSzVxTWtJblM5Z1Q2TzMwWHBDRzNz?=
 =?utf-8?B?Q1cvWHNuam1kd0ZFTHJ5OVlwSVV6UTc3cnhlYXQ0MG1FTUtFemJuNmdTYVlN?=
 =?utf-8?B?VHdPYVc5enRhNFlEamFLKzJjYjZYS0lwVGRUZkMzbUJDbFZLZWtNbGgwSXU1?=
 =?utf-8?B?UXJiM1p1VDNScWtTOU81WnZYRlp0eTV2eEY3WlNxTzByZW90MVg3OUQ5SUI1?=
 =?utf-8?B?ckIvOTlYS1M5UGp6TkdFZjd0dkZnbm9mTFVRKzRDWW9Cc1kwY3FWZFppKzFq?=
 =?utf-8?B?Ylhwa2I3OHNzMjBSNUpveDFBb2QyMXJxLzhvZEQ1clB3R3k5a3ZwVHRIOWJk?=
 =?utf-8?B?WkxyLzJkT1FGUE41S293YVNsaFpISXdwMW1CZHBleGNmYUFuM2p5b3RyMUdG?=
 =?utf-8?B?QlcrTGg0eWJ4cHZ5aXBCSHgweUdxdHFYWTM2eUdNVnZrVVRLYUlCK3FNZ2Ux?=
 =?utf-8?B?NTgzdXZnQzhEN3RqUEsxVkJiT0FnbUZSQk1seS9FazdIek5vREJlNXZSUGhT?=
 =?utf-8?B?RTlCV0VCbDIyMmRscnUrb1F1cTRFTWZDWmx0d3BaOFBtWDVoRUJ3ZHB1anNL?=
 =?utf-8?B?dkdTOWQyTDhEUXJOTDFDY1dNYzNtb3MxS0lwWWp4b2FqYmRPdHZwaERzTjV0?=
 =?utf-8?B?UW9yLzVmY2s4VFdkU0Vxc1NFK3ppcENxSmx3bUk5eXduUjQ1eVZ3eklrZlRH?=
 =?utf-8?B?WUFRR3dtRjdoalZZaDB3T3hYZ2p3ZlNKenZlK1Fpbmc4dzY5S0QyTjBkMGxr?=
 =?utf-8?B?NEJld2gvRzhxZEhjbFdSMHR1R3JGK3c0TS9maTRzNU5ZdEN1RHpDM3o5SXIw?=
 =?utf-8?B?dHU1MDRoaXh4ZHNsVGNYa2dtZlpIUTc2K3AwMlRVckloY2hhejVDOVNBVUpK?=
 =?utf-8?B?QXdoR1pWc29kaWxLS2F1K1grMVRvZkZTSnNRZ1pNK0xJTjd6UTJVLytGSzFn?=
 =?utf-8?B?bTFvVURsMlljejFjblhXMVhKQ2lIbzJpL0NTSWZ0MFdna2pqL1EybUt6d0RL?=
 =?utf-8?B?NVljRHpuVS9kMStkeEZvSUtMRStFeTJzWXltbnlRd3V1U0J2Um5ZVy9Qd2dM?=
 =?utf-8?B?RFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 12c522a4-3633-401c-d0ce-08dd2e810dd1
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2025 18:36:37.6265 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UNjim13Cj0FbMd4+++MMvA9g5O4pxGzw1TTLZYQCuHUFRAaHBvHmJY3vummFK5ipeSPCMDGWsTO+61nnQ+R/tn9x9bimj7x1wbpynfcdULg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4986
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736188618; x=1767724618;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=f+w967SsiSwhE5FGp0i3gXZtO7dIQwF1YhdEl02hUKg=;
 b=b1+Lu+TbWCavXDtIX+lIGQnjAFKI/NLco0/PMLwgNdy+/eOC+1BbWGSC
 AL5I5fYZk4pI85VWmaTdtPkFXMqoZEOHhesZvh8Jp1+czfPJ3QCh7HpYL
 xeb/w6sIi+GZHm46a2/O6Ro56z5U5WM6TbYdagLrp4YzKO1oSpN1hSphc
 noSNBBzdiIRNv89ff/JoeHZ9KSDiCBJLoFyf3hu4rZnITQZg1U2hbWF20
 cZo4obMVs5IFhbP+yp0Bk1mrCds1B6eQH9jvtHI8wGaGEJniIIrEcdN8Q
 1ii/daEF7dx9uzMk7S3H7DVSpNpMU1HmZQb7oso+zAtGBm0jV3TQK7Y/o
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=b1+Lu+Tb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/9] i40e deadcoding
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



On 1/4/2025 8:16 AM, Jakub Kicinski wrote:
> On Thu,  2 Jan 2025 17:37:08 +0000 linux@treblig.org wrote:
>>    This is a bunch of deadcoding of functions that
>> are entirely uncalled in the i40e driver.
>>
>>    Build tested only.
> 
> Intel folks, is it okay if we take this (and the igc series)
> in directly? Seems very unlikely to require testing...

It's fine to take directly. I don't think this needs testing either.

I believe this will get picked up from here:
Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>

Thanks,
Tony

