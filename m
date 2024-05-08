Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7FC8C003A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 May 2024 16:39:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6176640186;
	Wed,  8 May 2024 14:39:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EHC6-86uyHyq; Wed,  8 May 2024 14:39:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 407E9404B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715179195;
	bh=2V/9IK5GgLteBC47L6JFSG0XwCnStgIyfTF00RoKNBM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Rsq3zyGklZm8Jx2LONPKz7daFWzXuXAdEQHfKFfIoll2YWO1fl1aQ5YUEbFE1zLFk
	 7ETtNrZSoG4pWHBIv2isBNnQ/Kt8bmQ8hyNZ3KiloKs63Q1XI68hHH40zAVa2O7deS
	 GxOyPHELiQXZrKco1xgKvQlax0qmWGSFI7Bbu59v7WuNywpX8pwyjJL87voAsOdSPm
	 z/HfMAoxzF4KVnBN4tKnjcIyHErmSv0FVMHd1+z0573ZmzPWmm6XZ4JLWSdU5NMOZ0
	 Z9X5lLbpuapEdnQzmejsOV7a73mRmUAxykg8d//xbbwLcQeDV+us1YHy8IR5qQgR6Q
	 7S/d8kY3a5jdA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 407E9404B4;
	Wed,  8 May 2024 14:39:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E44331BF316
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 14:39:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CEBE340352
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 14:39:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lwXzmn-8GCkX for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 May 2024 14:39:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BDC3C4030F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BDC3C4030F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BDC3C4030F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 May 2024 14:39:51 +0000 (UTC)
X-CSE-ConnectionGUID: 23A+9XuQQEeGwlVY8ZCslA==
X-CSE-MsgGUID: 8sVlbzG5QpWSpPw2zUbo/w==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="36423233"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="36423233"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 07:39:50 -0700
X-CSE-ConnectionGUID: M47Pbhm+SXK6a2H9waqmTQ==
X-CSE-MsgGUID: SqiIU76mTV2LsqPGwNdecA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="33741244"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 May 2024 07:39:49 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 8 May 2024 07:39:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 8 May 2024 07:39:49 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 8 May 2024 07:39:49 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 8 May 2024 07:39:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K8BAhdGpQll+HaeC+Zy9gkGtqUe/GXwdbSKSt6CqPenMcyQWacQPYIfmR24mtGOw5gaTcEs3swWWqawxnm7p/fsHyLDcvQpjNt+Q3b+KQkNlU91r6+/IvhPaZpbL0wimSpftfYYISdJoobbCtG4RmSjOkW2nb8Ru8gQPMAdbsk9qlWAzwkDBSzxGINI90FejNMjtJK7OANn6gZj1JkrWG4jnNgkqeZagq590Nmt8oXCp8qcmQlRfbkf5Y/xI8XXBRxevVY5fRj4cX5hyJmHCAUX1VichumHOh3gyP5yK485qszm4nLVeHDQPHtNsqg2kuPPewS1/3j6UoijKgxf6lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2V/9IK5GgLteBC47L6JFSG0XwCnStgIyfTF00RoKNBM=;
 b=gKF3qXGdtRrO+LKIQDmpuvlxIJPWiHji9g7Hx4lHFNtAk8VbikJ76gx/prXpAXn+7BtNrdqFl9t+LJtkkqy7T8ivspddw6bdMrtrd/hitYskJVLODQ1up35DbIT2MMk5tksbAP6Iwg/A159AHObBUStlEsJyt6iiKkQZdR0WESVBsHs/kaptnZPIdUcc985DkMH2206hECadaUBAqdEKyDOcMWsOvdzRJzIUS2iOwrJpfKG3gCLWGhzZapWq5isnm5FD+fvNHO/jyTro8zYRgkGEjbyzlI2YPk5MMO051qVpdHABsxdQfI9ddGEvsA17FVw2qU17ebnY2ueWg41P4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by LV8PR11MB8485.namprd11.prod.outlook.com (2603:10b6:408:1e6::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.46; Wed, 8 May
 2024 14:39:47 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.7544.041; Wed, 8 May 2024
 14:39:46 +0000
Message-ID: <5ab7ae5c-79d2-494e-8986-d18d4a8e74bb@intel.com>
Date: Wed, 8 May 2024 16:39:21 +0200
User-Agent: Mozilla Thunderbird
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <20240508132315.1121086-1-andriy.shevchenko@linux.intel.com>
 <6ac025de-9264-4510-ba7f-f9a56c564a80@intel.com>
 <ZjuLW8jA3MuT0oih@smile.fi.intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <ZjuLW8jA3MuT0oih@smile.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA1P291CA0010.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::10) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|LV8PR11MB8485:EE_
X-MS-Office365-Filtering-Correlation-Id: 45cfc678-3f0d-4bac-c668-08dc6f6cb513
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|7416005|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R28zMUtrdlBPcVZjdTkrTjhKS05KNzZMN0lkTm9tNmt1eFNQbnZSVHpSNXNM?=
 =?utf-8?B?UWlYaFFQZG8xSzB1OVFGdEpsZWhnbXRPWld0SGdYWXRoRkJONklUSmMxazAv?=
 =?utf-8?B?Y2s1YUtCRCt0b1VrZk44UWVBMWNiZTEwTU5KdTdSeDVrYTZLT3VZTDNPQVAw?=
 =?utf-8?B?SSs1dHlKT21hMFBVYURncTY4RUR2aDJFbnhZdVk0YWNSL3VEbWdhRVdVVWJi?=
 =?utf-8?B?RWFDQTZSZWF6Ujl4ckljOVNEQmdQVlNrK2RSTXgyZVc5dWZybE1QVXhMYVVo?=
 =?utf-8?B?UG5pWmthZFhwTmdZTXhPRVB5eDdKc2RHYkllRjlOUldiUStNWVBwcHRsd0Fz?=
 =?utf-8?B?bEFBYVA4V2Zickc2UGh0aVllVytDazRyR2xpRGZ6cWtzenRHaHVUNDlzdnlo?=
 =?utf-8?B?YndiNG53Zmk3Ri80SDJYWHFhNW9xMHFvdnoxNmJGTGxIOEk2VnphdlM3K3kx?=
 =?utf-8?B?MHh6eFdlTGpQdnR4NXdEUWJ0b05vSVJLYVpVV0JDNnJKUGNHZEtqU1lWdzVM?=
 =?utf-8?B?bTR1WFJNTFA5eVF5RXVRblE3ZGxjRndZbFQ4MXA1WStia2MvTWt3RnRuTmZI?=
 =?utf-8?B?OVpUVzhHeFRHc01Lc1pReEtHK1JMQkQ3ZXVaZEE3bEk1S1N3VFVCZVBaUWdJ?=
 =?utf-8?B?ZkhVd0FIUE9TeTdKZEo1a3kwRzdjdUYwYlcwNmtTOEhRNThyWnhSZE5UR3Ez?=
 =?utf-8?B?OExlSXU2dkZWYWoyM01uVTFqb2NGVytrR2RnRzJjMEhkRS96eWFsdzhld1Bn?=
 =?utf-8?B?TGQ3NERSVk5KMkc3WHBHaGF3QmtjQS9oNW1HaDNaM2xjaFZGY1ZpRTN5YlpO?=
 =?utf-8?B?NFpCMnVmRTFWMnBrSG9vNUNUUXF4bVRZcnRTYXNpUngwUWFRL3JsSlFaZm94?=
 =?utf-8?B?YW10bDdKZlIyRTNNQXZlRndIK1o0aGV2ZVBWQTdkKzRVVW5jdnJTbUI1WE9a?=
 =?utf-8?B?Y1k2VytTM2hlR2J2Vk9vWVJxUDdJcHhsdzdKV2pHdWs2UWM0Ukg2RXh0bzI4?=
 =?utf-8?B?UXFmeUlteEdPcm9UbUZMRE1HeEpjbXd4Q1lvR3VuZTFOblpObno3UTBHQzBl?=
 =?utf-8?B?Z1AvZU9lUDgyck1nR1hQZXBGQmRrME1nZXJaK3ZkWWZoZThhVjFFMm9ZYkZH?=
 =?utf-8?B?Q1hkZjhwc0QyWW5ZSEF5L04ycGZPZ0Zmd2F2UFAyT3dnemhSZStYUXZOTEVJ?=
 =?utf-8?B?c3BRbVQ3ZDlzemxmNzdPbkN6WFY4TTVaWFNFOE90aUN5ZlJQNGI5QWNCVG92?=
 =?utf-8?B?NzMwd2E5UU95N1J2RGM3eE9uUThDTjRubmZiamhVbExUTlBjdlExR1U2WXhl?=
 =?utf-8?B?aFBOT2k0MmpscHFQU0RNS0IxNXFkelN2TU5HZmVSakg1S3BVWXJ0aGExaWZY?=
 =?utf-8?B?M2doSWJqZ1dwL20yYnZsRFNTVHdzdExlM3hybVREVlJDMGV1L290UUdmN1hi?=
 =?utf-8?B?NVJnQkV0UWwyN1c1dHF3b0tqTlFWVFFDcXd0ZHhGME9KZEEyQXhqNStKcERP?=
 =?utf-8?B?TUFPbVVHYVZZVEQ5VzdJMzh4c2RTcTRkOHpTbU9yY2VlOWtTaVhhVmY4RzYv?=
 =?utf-8?B?Y1c1WGdZajBtRnhtZGVnT3VERllTSU9jTDhBOTdHTFJ5S0pxaEVQcy9vdTIw?=
 =?utf-8?B?N0lVd3o4S0dIanZXbURaUlpWd1RhQWM5MmRLU2xZbGIwakJqR09xUmJRYmcw?=
 =?utf-8?B?ZnJoV3ZRellHYlhmY3JqeHg4MThVZkdrNHJZM0JSdlpIcWZSSUlQUVNRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(7416005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZEZsQ2xPRGlwM2lTbGM1SVZ2REJTdHBFMDZPRk5wbVB3VGMwbzlTV0tZU1dL?=
 =?utf-8?B?QUk0Mi9Nemd1SHpCb0JtVGJxR2cyZjNFdytFRmVmTmtncnlhTUZZQnA1dDVD?=
 =?utf-8?B?SHE5L0tDN0llTHE1NXJIZW5ocEdod2lMZE9IS1BlL0xwS1Bmc29KTXc4eUJW?=
 =?utf-8?B?cGhQV0w1NjA3VkRkRHBQTFA3Y282ZnR3L1lrYURWMjBZTElDcmRnUXpUNVBS?=
 =?utf-8?B?R0x4T0tzUm1CdmsxNlNScndRNDJTVGZkNFY3b0dhRUNOS2dqV1FLNXZhWk1E?=
 =?utf-8?B?YWZ3M3Nsd2Z5aUpnK1NUNU9URjZmTXYrelM2eG1YMWdnKytOWklBSmVaSUJK?=
 =?utf-8?B?cktFZDIzU3U4b3cxVXZwTHNqekEwRVlOSG1LMU9mMVNqVkFib0FrODNEZXow?=
 =?utf-8?B?aE1WY0ZZRURvcnNyMXorYUdEbVdhZUFtOFc2TjF4UThUenRZVVdWWnluRkJl?=
 =?utf-8?B?TU9DWVYrVzU5UC9oU3JsVktwMG1DU0luM2xjaW1QNWl0dWFnWWQxYmZqVXFs?=
 =?utf-8?B?WEIrSHg5dHgxK1p5R1g2V1dZOFVSL0Q0Q1k4ODdUZGN0bWpaS3BrOVhrSnNG?=
 =?utf-8?B?SEt0dXFTbTFIK1o5NW9qdW90dlN2NFJHQWlUSG5TRElLZm1ZOVhaYUl1Z25F?=
 =?utf-8?B?SXVGU05PRjJxc1oyZS9GVkRhU0Nzc3hkaEE3am90bVVCeXpzY0JYR1FVd3ha?=
 =?utf-8?B?b1VVcmRwRVZGQithT3NwKzJTV2Q0VDJBanRwVEk1K0lMQlpaSm5pc05VaVJ3?=
 =?utf-8?B?bThkbExXVFFrc3loRzBScUVQSE9IYlF2T01ncHA4VGo3L0dZTzJoZmJUUEky?=
 =?utf-8?B?YVJyT3V1U0hqNkJkR0lTVnlFa3J5L3Rob2ZYakorRkxJWjUrVkJINmNWQSto?=
 =?utf-8?B?WFFLd1ZNUFF6RU41emVIdUdSZFEwcVMzR1Y4RDNvMWRMSCtjR3hERkJCOTBp?=
 =?utf-8?B?MWNPOHhLK1gzdmk2MXBCaFE1NTh0Y2NrblljNE9RamdhWEFOakprSmVCbk1t?=
 =?utf-8?B?NlBkcUg0UE1DeUZEWE9zdkRUd3lEaDNnWTJ6RUdadlRQQ0F2dDUxN20vdXdn?=
 =?utf-8?B?ZWFOL0pwQUZxdWZoWmFqSlVaOGVlK1l4SWtjbnl3VURHZmFPZWdFb0RHR0tM?=
 =?utf-8?B?Z2xScDlkNVd0aFRzRklDZmprUkNqUEg2cjRKSTlzMWVKalFZZjl2WFp6QURE?=
 =?utf-8?B?ZXlIM2hnQ0VkQWk1emRGajV1S0tZSjJpL1p4a0cvQ3k3Wmw3eFB6d29iWXhX?=
 =?utf-8?B?Y3Q1bmNpR3BKY0lTWnRkeUNrRERjWHkxTmc1N0ZyRStybFNOZzk2TWpQU3Jl?=
 =?utf-8?B?VGJocThwYVFYTlQzMVhPR0kxZVlyZHljQVJSOCtSK3BnSWtwR1RyeUFwcXVE?=
 =?utf-8?B?UU9XQTVHZmFhbERESVpzeUlRbE11SHFuUVdqWHJHaW5GSmZrb0UyUVpmRlB1?=
 =?utf-8?B?Rmx1YmcwYlhwK0VJSlRBMSsxMXBCalEzbnJPUmsyVDBMd1BSSWg4TlJYUWRi?=
 =?utf-8?B?amlFZzNGNFJ4b2hGTVRtWDVFRTcyc0lkayt4MFZQbTJ2UTcyOFo3VXhlN2Vi?=
 =?utf-8?B?OThIYTl3MmV1NjVZQzlQL1phTUxFR1FmMWV4RitmRU5DL2pGMExULzBTeGVP?=
 =?utf-8?B?RHBTWExSVEtOOUxISkdZWmR4NTFLQnQ4S0U4ZjlGTFNIVWk1aUhaWDQ1eEUz?=
 =?utf-8?B?SWhHdzRncDgvdzJGQjUrNW1mZGlkeGFxcXNock13czk0NG1TTUZNZmV2cVY5?=
 =?utf-8?B?bFZFK2t5ckZINTNOeHhwblVVbnhIZHdGV0dQODJOaXJ5Yzk3NG1TdlZ0bDJX?=
 =?utf-8?B?NUNhM2xjQzM3RzByNlNMR3ZIMnR1UkljemJ6SWxFT3c5TDVtQWxqTFpEckdK?=
 =?utf-8?B?VElyQjNWdHU5Nng3NURnL1htMzRpcXIwVkhxNTZ4bmNWdzMyRTlwTmM5bXRZ?=
 =?utf-8?B?V2ZaRk9oSDhwOC9EVDdjRzl3bkpjYld1ZVAwTjdvVklXV3lQQlNEbE1kb011?=
 =?utf-8?B?TzhrR1FFUG1HTTZsRlMrUVhQV2l3YlZpOU51Z2JGcnhkRkhxTnZsTWdGNkJu?=
 =?utf-8?B?UTFudEsvK2xHRG14SjhhTGdrY3kvN3h2Tll3K0FlTWxMQnQzQTJMSWZtTGFV?=
 =?utf-8?B?S2FBNFBnTXdwM0I4dDdtTXU3ZHVMMUNUekpqWFRDRjA0MU55MUpOOEhqT0xD?=
 =?utf-8?B?WUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 45cfc678-3f0d-4bac-c668-08dc6f6cb513
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2024 14:39:46.8017 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nMSAp2aqQnDqRMtb6Y85+dUIJCwUjLa0MsVMUtOWyouzSSpmsMbEwmxQL4jy22rH5fSTLr53qCWu3uOXc/IqZaR2PVbjhAVrhTrPlngLPsw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8485
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715179192; x=1746715192;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MwOqXxMJqPcVTfjdg5wjbvT5KNENXzBH9F1z33cp5BY=;
 b=WPQPqt1WrChi98QYbtxh1ra8RE+u9T4HAukKFxrrIM7QXigIP0g3FoED
 /xxUCl0e5OwqlPPK2Hy3Tq6Fv/TU2F78kSZwdX5Qx4uex+A3HCljamViy
 +wAaBvDXhhhpv8qQljULn6fAsKduaqaNMxn0x9Tcld5D3YzdvyYC/89ey
 IyEoJXhH2xTIS8ErGfDvshZOgr9gx4qzW2fp3SAx38/omIV6lGjqtLiaD
 4eH83eUMdj6atfw7xMpQ447CYkkAqXISbPDSwVv/9AEDmBobaJoxE8XTm
 tyIK29ZHEhbpx5pc4xoGmGqPmn6FO63dNv2168hHzaS06xOlwy2JFAwJh
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WPQPqt1W
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/1] net: intel: Use *-y
 instead of *-objs in Makefile
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
Cc: Alexei Starovoitov <ast@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org, Richard
 Cochran <richardcochran@gmail.com>, John Fastabend <john.fastabend@gmail.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Date: Wed, 8 May 2024 17:25:31 +0300

> On Wed, May 08, 2024 at 03:35:26PM +0200, Alexander Lobakin wrote:
>>> *-objs suffix is reserved rather for (user-space) host programs while
>>> usually *-y suffix is used for kernel drivers (although *-objs works
>>> for that purpose for now).
>>>
>>> Let's correct the old usages of *-objs in Makefiles.
>>
>> Wait, I was sure I've seen somewhere that -objs is more new and
>> preferred over -y. 
> 
> Then you are mistaken.
> 
>> See recent dimlib comment where Florian changed -y to
>> -objs for example.
> 
> So does he :-)
> 
>> Any documentation reference that -objs is for userspace and we should
>> clearly use -y?
> 
> Sure. Luckily it's documented in Documentation/kbuild/makefiles.rst
> "Composite Host Programs" (mind the meaning of the word "host"!).

Oh okay, I see. `-objs` is indeed only mentioned in the host chapter.

Thanks! Good to know.

Thanks,
Olek
