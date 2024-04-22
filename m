Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B5D8AC8F0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Apr 2024 11:33:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D0B281F53;
	Mon, 22 Apr 2024 09:33:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nAuYQ5Il346p; Mon, 22 Apr 2024 09:33:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E4BD81F1B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713778408;
	bh=aURUmY9+anvbdEQkQwjyHfFYmHB8LYYL3GXjSlcU9DA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nxmhXJSWUniSt1YeGW8CnnyY58X+QjLoeWKlAfkSPLBKW250xyspQdwmgi7WX3a7k
	 sSYhiHBw5qrWEjzsWy/stV0Oc/tmfuavdonZOthfo3c+CoapKu+hAa2l0TKiMkBXKK
	 tax2oEJHizYxNLq2VkOnyYrlBEbpseFyJJ4lvq6cfcDaBxBeA9dXMhjeoUJeJ7TA0C
	 wAkZN9pxy/3kc2nbmX6yX96oODLbyMfv1qqBminM6CGRD7ryjObzzxyS0ukO+ywoGU
	 BFVGSF4I8lWGIdNdhOCCpMXAM2EC2ef8Gv8e6JMwQtIH0X3cts5wo6Bn0L6tYo4ysQ
	 bQXx15SgaqDXQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4E4BD81F1B;
	Mon, 22 Apr 2024 09:33:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2C9471BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 09:33:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1773840175
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 09:33:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZOeaiwLeI5GI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Apr 2024 09:33:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E9FA640133
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E9FA640133
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E9FA640133
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 09:33:24 +0000 (UTC)
X-CSE-ConnectionGUID: co2H0w52T+a9wna5bsRxeg==
X-CSE-MsgGUID: aq/q6UUUScqs/+n6T9B2mQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="31797500"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="31797500"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 02:33:25 -0700
X-CSE-ConnectionGUID: Y371laEZTKabTxNauTUuSw==
X-CSE-MsgGUID: RnWSTsNDRX24Q/PgwMr1Yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="28627916"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Apr 2024 02:33:24 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 02:33:23 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 02:33:23 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 22 Apr 2024 02:33:23 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 22 Apr 2024 02:33:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E7nx0gT5GIwzTtzC+YCZjk4bfVnisafp6745FXbeVdUDoHON9sPmwiJ3pWCqW402XSGhgI0qYGXpfMDRrDi7gjuI+rsOuU3qSxedFyvuWjvws0BfRYZozFH4xYWPVW7tMEzHHSSad4DiE6dj/YbwJQzaf846CJJLx/WpVVL6ra2CSa7ekXMwvCETqKX7urqRPEFv3YPR1tzgrrzsRe6DiKSxHjTlUsVRwk9sAO01NWw382IRK4VvU4g1wJPgR2Q2YxX5FSSxpuX47u8IkLDwGR8vYWuk/SE4v0T0Cj1bc2yHV5z8L6prZ7uAP8UVE9fvgVrqgm8LcA8F5LVnxj8LdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aURUmY9+anvbdEQkQwjyHfFYmHB8LYYL3GXjSlcU9DA=;
 b=AaGBPepdUx26bzjz1C1mwsHZ3DDi2gvZ4+73Mffr3dGFmd7V4i+htZftNoNwafc8OqUAeE8PWcOo12942nXioaV9PBWMLXhiJPhXlB2tcohgaCv+8JgjQ4XqCJWyAdJuTbH/ZiYwAJZyUx0k7AqGS+i5TrsGGKJ0IHVt67DDIfOjiIBSkNWVxg9m6Y8yuRNcSWqwYuEPVd8bAn+YbRMZwxFCGwu8Itgp0LAfNnXQcKpm6Iwi9YXucFuASO7APCw1U3YKCt6EAzZjE3Qu/8cxB0GahALyhQmq5oy3nbqGPWcVCNpJKaSkVW3kduyEHNKReKlUV9eCzN+0p6VDTi/QxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by MW3PR11MB4729.namprd11.prod.outlook.com (2603:10b6:303:5d::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.21; Mon, 22 Apr
 2024 09:33:21 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b3ae:22db:87f1:2b57]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b3ae:22db:87f1:2b57%6]) with mapi id 15.20.7519.018; Mon, 22 Apr 2024
 09:33:21 +0000
Message-ID: <56859450-f8ae-4a46-b57a-103c7b3210b2@intel.com>
Date: Mon, 22 Apr 2024 11:33:16 +0200
User-Agent: Mozilla Thunderbird
To: Rahul Rameshbabu <rrameshbabu@nvidia.com>
References: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
 <20240418052500.50678-6-mateusz.polchlopek@intel.com>
 <87wmoueakp.fsf@nvidia.com>
Content-Language: pl
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <87wmoueakp.fsf@nvidia.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI1P293CA0002.ITAP293.PROD.OUTLOOK.COM (2603:10a6:290:2::9)
 To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|MW3PR11MB4729:EE_
X-MS-Office365-Filtering-Correlation-Id: 78f67982-d6a3-4dae-dca8-08dc62af4006
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aXNxTlU5c0xpZWEvZ1lYaUpYWGhuZkN2MVVmMHRwR2tPVXd2WWZTQ0lHcnRE?=
 =?utf-8?B?c2RQVG1NK2Y4V1E0cVpNbkV1UFhWRVE5V05UQ1NqTVAxTEFvRE1XU05nZWdO?=
 =?utf-8?B?dHZyM2RYN3RlWE5XdmxrdE1RL2ZTelJUNUlFYitZaDRRYlRBb0xqQ0ljZ3hw?=
 =?utf-8?B?NzdBeFBhT3lOL2Z0ejJ1QmF5VzcxT3NPWnFITkJTRHNNakVBZVUxR1VCSEFY?=
 =?utf-8?B?STdyaWhPZDJuTVRRbUR1ZkFzdGliTzB0RWhqUi93TjcvRmZ5K0Jxd2xLaHZh?=
 =?utf-8?B?NDVXSXhoVXZBTURFak9CcCs3T0trVjRVTEdxL3lxVk41em5Od3BNeHZqdjJu?=
 =?utf-8?B?dFlBTDdSajRKK00xY2VYYWVoTjQ2U3RoNlQwbXlSelorZDRIQWpTK3EvUU1W?=
 =?utf-8?B?ekhncFpSS2g0Z3JYWTI5Y2owbXpBSEE3UjZXR0tab2Vsc292bUNjeGgwSDdh?=
 =?utf-8?B?OU9ZMjdSQ2htR09Jb2pIUWRGZzJURzBHNEJtSTZPL3lWdDJDR01QR2JGWTZi?=
 =?utf-8?B?b0NSV3pHRk92Znlua05ZN0Q5TUI3NlplT3RnZTVweG9kajU4SEJZa1RjSFpq?=
 =?utf-8?B?eXcwaGk1YWFqZFJYSnBtMlFJdU9HdzBSSjVnRG5CalFwcnlmL0Jram5TQXNH?=
 =?utf-8?B?MFN5QjVYUDg5ZjRVbFE0OWtuNTc4QndyWjI2R1E0VVZvT0FTRENPY28xQ2RP?=
 =?utf-8?B?ZWJJb2hhK0ZWNHZQNWF2bXRhVEVtK1pqaFNTNHlqZXhvWnlnZVBCYml2UElo?=
 =?utf-8?B?VUlncm90OTkxeFB6QmNKRjdodWZ1RGJHbmtuMUJ4aERPUjNSY2wvdjJxUnpz?=
 =?utf-8?B?UnZaZjNaRE5tSG9sVnB4QmZXNk9FQjdvb2p4aVpHRXArR3J0eW9mQXlMZitj?=
 =?utf-8?B?VVdLVjNKQ3E2SVdQbnc1VTZvRGRzWm5KU3ZWMDQ3YzJQcVZVTUVsdEFCWEdB?=
 =?utf-8?B?Um9hc0J4MHNuNmFZSlBYV3htQzRqay95bDdwS3IwUnczclFHS1UvUjBZN21O?=
 =?utf-8?B?cFFKTlBKT21yUDZUcFVLOHNOdDRnZDVNWW9ILzcveXZuWk1RK2txVjlaZk5Y?=
 =?utf-8?B?eWpWRkZuT0N6WnZWRWpWbmcwaVhWakJIU0NUNFBpNlpseVAwcndSdUZhU2F5?=
 =?utf-8?B?MlFHTVhabVY4a1lCcEhtNkxlRU13V1ArMko0UXJ2YnRiRjRxU1FtSFFONEpp?=
 =?utf-8?B?Ly9qTGt5VktjTmVoanBlVy94TjR6Y0ROMUl2V0dLbExFeWNGL0FHenpMNkNR?=
 =?utf-8?B?U1NQU2MwazA3Z00wNWsvQnhHbU9jS2NEcUlQK1FYZERKYkVHN0lZck0xNklH?=
 =?utf-8?B?d2luSldmeFptZnZQSVQ3QVlvZlRaaTRmZVdldVd4RGcwem8wYm1nOTh6VmR6?=
 =?utf-8?B?a2NvQ1o4OTFuY3dKN2EvSDNaWDY1TFVRRHlUdHQwN2dWNGNTdmJVOVE5dmpn?=
 =?utf-8?B?cGs0SFFaOHdOWFdQMWJsWElpNUsvWnpxd1FxdC9wVDNYSDQwd2NrbXdLM2FK?=
 =?utf-8?B?ZHlGUC9taHFlcEZiVTU1NkY5N2NsV2xwR09WTFRVNC9PbG5OdVNnUUE5Sjdp?=
 =?utf-8?B?SUxwVEQ3TDJZbmhLOXE1N3B2b0NoblQ3Ky9odkw3TlY1T2p6dEJmb1NOUWcr?=
 =?utf-8?B?NkZ4Z1RhNXdmVFErcllQNExmdVBOY3NDTG9wa0dYK1VWZTY3Q003RXRnMlhU?=
 =?utf-8?B?Q3FocUNkSXJFWWtUdVlIbkRocHRGZlNrYzhKZHNDL0hqL0UzbFdMbHNnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UDBZREkxMGIzY1NYMXR3a0JNdHRJdkpxUkVEUThHMmQ3OVQrNWVCOWpnTUho?=
 =?utf-8?B?Yis4TC9rcDZFMGNRSGhSRUcvR0xGcDlVTC8zQWhRR2l5RVdUL1grc1BhckU5?=
 =?utf-8?B?V3NxVXdIdkFRRWRGUXE3MHRnRlJlWmxiYjBzTFB4VFloYnZTb3ZvOUVnWkZp?=
 =?utf-8?B?WFJQRC83Q1ZvREU2R3hieFFPYnVUYzN0cDZXOSszNDJaVzRSVm1mcUpVNjN0?=
 =?utf-8?B?SHViL2VDTWhkaUREL1U0aEd2d29UVTBrMWRFQWNMd3Q2ZFpmWFlkdnFHVHFq?=
 =?utf-8?B?MGhveURCNW5VaWprNkQrcXFsUExFTlFaSmZNMlFHRmo0U3FGSWlpRWdxR1Vj?=
 =?utf-8?B?b0R6YVYxckZ3eFhHbmErMll1WkQvQk1sejNWS0x1a0EvUnFNNG1PeGxuLzFo?=
 =?utf-8?B?VE5hVXJESHUwT1NYbWdJQlJwcXRiNjgxbFZhTG16eGhKQnFtV0JMSVh1Qklx?=
 =?utf-8?B?OVFZYWxJTGlndS9tMzB0UHBnS1FzQ3p3QnJyNnZxaTBLVG0rdXBPYmZVZm5t?=
 =?utf-8?B?RTRRRTZpMVF3ZjJaQmlaRzhLTTNGRHlXSGxUemhpTVMxdngwU2FBRmlOVitR?=
 =?utf-8?B?Y0V5dVRCdHlERGIwKzNGNVVrUFZGazA4eTdKWXJZcHlSTE03MWRzTzVOY2px?=
 =?utf-8?B?S0JoWkVPVjluZk53elpQc3dZZWd5ajN2N2V6eGViVVVsZkQ0c2tERy8vL2JO?=
 =?utf-8?B?SEpuZEZIM1BVVElmVkRFaG81ZUREd09ldDcreTdjSndKZ1d4UWNVdXlGSjhP?=
 =?utf-8?B?T2hZcUhYbnF3Qk8zOVc0aXk4Y0lsQUNJeU85ZkJjRFk1QVM1cEo0NTJCUWJD?=
 =?utf-8?B?SHhQT09UTUVXQjZ3VlFhUE94R3FkWW5zSEYwN3o2L1ViRE9Oam1rbkdLczYx?=
 =?utf-8?B?akkyOVRRcENvM0VOaUE4UGpYWUVCSm15Tzh1TC8xNWFGK25jUlZZMUxTMFB1?=
 =?utf-8?B?Wk5jL1BGWDFTd2Nodm1OUDFpYjRJQzJDUlhUcXFtb3Zkai9LbzRsWWpPbjV5?=
 =?utf-8?B?c0gzaTBMdFM1eE1JK0EyVFZ1TjZERTV4S1RjMk9UMGFuOExjTVBKS0RVNkZq?=
 =?utf-8?B?Zjc3bTVPcmtRRHdWSTF1YTc4c2hFU2pma09MYVNqN0c1NHNzUkZHK002T2lV?=
 =?utf-8?B?YWk1TlUrVGdoSGZaT3RPTnJ4VHhmNFpaN2lxR1dodkRpSFNuUTR4RXBuQ0xh?=
 =?utf-8?B?YnVFVVdmbmFLK0xkOWdEd2I4cXNPMjByTG1HVDZuTmJldjNqb1NhSHNYN1B3?=
 =?utf-8?B?VE1hcnh2dWRNelJtQnZtSG0xeWJZMVg0bFpmUHlqeUNxTGtRK2lWK1dFUmI2?=
 =?utf-8?B?bWNxeE9ZVWlheU03WHpQYnZ3TWhTSTBYTC9xTzZxWHRXYlpraWFsRlFaTFdm?=
 =?utf-8?B?ejluMlNPZ2hhYk9FeEZlNlY0cFlDd2xFVnNSaGFhc2xGY0dhWmljWGl5WS9Q?=
 =?utf-8?B?TEFGd1hYeUsxNElWR21ZY0Nnbm5nRklnSk5JMFNuVGdXQTZJR3djUm5pZk9T?=
 =?utf-8?B?RVhJRHdzNWZ5c3RhYnpUNXB0cjQxcnZZOVRhbDI0UFlFQlgySDlpaEN2RFpy?=
 =?utf-8?B?T0lxd2xXY2xiVGYvM3pMSUowbUFOM2pBNWNjRW5kT0x2WktEME1tNTZCVjY5?=
 =?utf-8?B?UDhQYWF6b3BxMlBlOGk0MXNPN3hsS1ZaL1gzMU1LQXVlclFjbi9KR1UrR1VW?=
 =?utf-8?B?SlUyWnhUMXRsa3dhVWdMcVVPQ3JqRlI4cTd4ZnpsdnMvbzA5cUN1dnZSalJD?=
 =?utf-8?B?b1AvYnRrZi92a1NtdGpBa3djUUsvc1YvcmIzdUY1QVgrTGNxNVZtUGUybDR1?=
 =?utf-8?B?WGx4Qm5sQ2ErNGcxbFZqbWVrb1hkelJ1UkYxaTNwTXVRT3Vmbzh4NThFS2tq?=
 =?utf-8?B?L2czYTRqSkdvZCs2NUg2K1JWc0JEK1J5dFQ3OTQ4d2dJUUVJWlQ0UmQ0SUtr?=
 =?utf-8?B?MzNjazVGUEhGQnhVV1dTV2hlZ2xYV3BZZUZCU1A3dnlWYlFSU2RrUzNyOW9p?=
 =?utf-8?B?cE1PWDlsZGxIdm45WmM0Mzd4L29zcC9vWk1MY3lySkJaaVhUMGNBSjRkamRH?=
 =?utf-8?B?T2N6bWU5Q28zMmZUcGtDcVJoY3lPekJNQnFyN0VvTzhzaWZVYlh2UjEwWU53?=
 =?utf-8?B?U01sZXNxWVY0c09wOWdmRXNkUjBTNG5wd1dDUjZzbUtwVnFDSld2Qjhhd1Vn?=
 =?utf-8?B?T1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 78f67982-d6a3-4dae-dca8-08dc62af4006
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2024 09:33:21.4852 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wCke8VBX7OgCy84DZN30HFRBLJHahnHOpcNvUceO2/QHRPYYU1k+96uB8lg6i0x8XKylT+12KEuiHDtgtnPOYQA4zc4V2OgXrPrZ+8lbG78=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4729
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713778406; x=1745314406;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=G47/2NgEH9WsEjrho1Z+JSxk328R6jMLwMe6Ftn4w+Y=;
 b=bcUJW1NWJK3fBoGXzmQUzrZeALswSKY08LRAqUeUEH7LnusfwuY/kMIF
 e6jdmK54Z/aTQQ/tccEK4y8XNLDU2ruMLZRbYuVptBdFv3zfqL4W5Veyf
 wsFgun+CSfAUNuXDLeBhTcRqpNjV7BoAXmS0o0wZHfBI/Mi0ISY5UIU5l
 uxnXs7u+h11eS/Wghr0PWQ96dSfec+mV/hBhK8Pdcf7LGg66tIHaWdwWs
 Q3grouqrp5jvDEEV3SxhLn8foSU4WMH/PGkKrqAGBFr77DYKlHADnMP76
 klCnau48OLWjN6ReoKegIBhpC6CkylNAbDdEdTpGejIi+cKW65oZzrmsV
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bcUJW1NW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 05/12] iavf: negotiate PTP
 capabilities
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, horms@kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/18/2024 9:16 PM, Rahul Rameshbabu wrote:
> On Thu, 18 Apr, 2024 01:24:53 -0400 Mateusz Polchlopek <mateusz.polchlopek@intel.com> wrote:
>> From: Jacob Keller <jacob.e.keller@intel.com>
>>
>> Add a new extended capabilities negotiation to exchange information from
>> the PF about what PTP capabilities are supported by this VF. This
>> requires sending a VIRTCHNL_OP_1588_PTP_GET_CAPS message, and waiting
>> for the response from the PF. Handle this early on during the VF
>> initialization.
>>
>> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> ---
> <snip>
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> <snip>
>> @@ -2684,6 +2686,64 @@ static void iavf_init_recv_supported_rxdids(struct iavf_adapter *adapter)
>>   	iavf_change_state(adapter, __IAVF_INIT_FAILED);
>>   }
>>   
>> +/**
>> + * iavf_init_send_ptp_caps - part of querying for extended PTP capabilities
>> + * @adapter: board private structure
>> + *
>> + * Function processes send of the request for 1588 PTP capabilities to the PF.
>> + * Must clear IAVF_EXTENDED_CAP_SEND_PTP if the message is not sent, e.g.
>> + * due to the PF not negotiating VIRTCHNL_VF_PTP_CAP
>> + */
>> +static void iavf_init_send_ptp_caps(struct iavf_adapter *adapter)
>> +{
>> +	int ret;
>> +
>> +	WARN_ON(!(adapter->extended_caps & IAVF_EXTENDED_CAP_SEND_PTP));
>> +
>> +	ret = iavf_send_vf_ptp_caps_msg(adapter);
>> +	if (ret && ret == -EOPNOTSUPP) {
> 
> Similar simplification to previous patch might be possible. Simply "ret
> == -EOPNOTSUPP"?
> 

Thanks for pointing that.

>> +		/* PF does not support VIRTCHNL_VF_PTP_CAP. In this case, we
>> +		 * did not send the capability exchange message and do not
>> +		 * expect a response.
>> +		 */
>> +		adapter->extended_caps &= ~IAVF_EXTENDED_CAP_RECV_PTP;
>> +	}
>> +
>> +	/* We sent the message, so move on to the next step */
>> +	adapter->extended_caps &= ~IAVF_EXTENDED_CAP_SEND_PTP;
>> +}
>> +
>> +/**
>> + * iavf_init_recv_ptp_caps - part of querying for supported PTP capabilities
>> + * @adapter: board private structure
>> + *
>> + * Function processes receipt of the PTP capabilities supported on this VF.
>> + **/
>> +static void iavf_init_recv_ptp_caps(struct iavf_adapter *adapter)
>> +{
>> +	int ret;
>> +
>> +	WARN_ON(!(adapter->extended_caps & IAVF_EXTENDED_CAP_RECV_PTP));
>> +
>> +	memset(&adapter->ptp.hw_caps, 0, sizeof(adapter->ptp.hw_caps));
>> +
>> +	ret = iavf_get_vf_ptp_caps(adapter);
>> +	if (ret)
>> +		goto err;
>> +
>> +	/* We've processed the PF response to the VIRTCHNL_OP_1588_PTP_GET_CAPS
>> +	 * message we sent previously.
>> +	 */
>> +	adapter->extended_caps &= ~IAVF_EXTENDED_CAP_RECV_PTP;
>> +	return;
>> +err:
>> +	/* We didn't receive a reply. Make sure we try sending again when
>> +	 * __IAVF_INIT_FAILED attempts to recover.
>> +	 */
>> +	adapter->extended_caps |= IAVF_EXTENDED_CAP_SEND_PTP;
>> +	iavf_change_state(adapter, __IAVF_INIT_FAILED);
>> +}
>> +
>>   /**
>>    * iavf_init_process_extended_caps - Part of driver startup
>>    * @adapter: board private structure
> <snip>
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
>> index 52b8f1721147..5d99adb69d75 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
>> @@ -145,6 +145,7 @@ int iavf_send_vf_config_msg(struct iavf_adapter *adapter)
>>   	       VIRTCHNL_VF_OFFLOAD_CRC |
>>   	       VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM |
>>   	       VIRTCHNL_VF_OFFLOAD_REQ_QUEUES |
>> +	       VIRTCHNL_VF_CAP_PTP |
>>   	       VIRTCHNL_VF_OFFLOAD_ADQ |
>>   	       VIRTCHNL_VF_OFFLOAD_USO |
>>   	       VIRTCHNL_VF_OFFLOAD_FDIR_PF |
>> @@ -187,6 +188,41 @@ int iavf_send_vf_supported_rxdids_msg(struct iavf_adapter *adapter)
>>   				NULL, 0);
>>   }
>>   
>> +/**
>> + * iavf_send_vf_ptp_caps_msg - Send request for PTP capabilities
>> + * @adapter: private adapter structure
>> + *
>> + * Send the VIRTCHNL_OP_1588_PTP_GET_CAPS command to the PF to request the PTP
>> + * capabilities available to this device. This includes the following
>> + * potential access:
>> + *
>> + * * READ_PHC - access to read the PTP hardware clock time
>> + * * RX_TSTAMP - access to request Rx timestamps on all received packets
>> + *
>> + * The PF will reply with the same opcode a filled out copy of the
>> + * virtchnl_ptp_caps structure which defines the specifics of which features
>> + * are accessible to this device.
>> + *
>> + * Return: 0 if success, error code otherwise
>> + */
>> +int iavf_send_vf_ptp_caps_msg(struct iavf_adapter *adapter)
>> +{
>> +	struct virtchnl_ptp_caps hw_caps = {};
> 
> To properly zero-init a struct, shouldn't this be the following?
> 
>    struct virtchnl_ptp_caps hw_caps = {0};
> 
> ISO C forbids empty initializer braces.
> 

I see Your point but I think solution I used in commonly used in
netdev, in just drivers/net directory it is used about ~1500 times.

>> +
>> +	adapter->aq_required &= ~IAVF_FLAG_AQ_GET_PTP_CAPS;
>> +
>> +	if (!PTP_ALLOWED(adapter))
>> +		return -EOPNOTSUPP;
>> +
>> +	hw_caps.caps = (VIRTCHNL_1588_PTP_CAP_READ_PHC |
>> +			VIRTCHNL_1588_PTP_CAP_RX_TSTAMP);
>> +
>> +	adapter->current_op = VIRTCHNL_OP_1588_PTP_GET_CAPS;
>> +
>> +	return iavf_send_pf_msg(adapter, VIRTCHNL_OP_1588_PTP_GET_CAPS,
>> +				(u8 *)&hw_caps, sizeof(hw_caps));
>> +}
>> +
>>   /**
>>    * iavf_validate_num_queues
>>    * @adapter: adapter structure
> 
> --
> Thanks,
> 
> Rahul Rameshbabu
> 
