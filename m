Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 097768B3774
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Apr 2024 14:50:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 77B5841BDE;
	Fri, 26 Apr 2024 12:50:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tW3YbRGq7Trt; Fri, 26 Apr 2024 12:50:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1449E40010
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714135802;
	bh=mnfZftssvr+x69I+FtcHGYPeG3MqV8H34kxJhnA5GAY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fW+ZsfxDUIyNw9+4HPCAFSt205Lws4blb0jMeRBWjLnDWCOWXFNlOZ8wxB5fE31pv
	 xX591pv5NU5tHLi8xHPaN83+hzKI8Icw8yGl7MjXzI/ICih+UfH5sDY9XlDielCxno
	 vBjKYJRaeSW8/Wi4fUu2kaFk+deIh0OZ4zRbYoo3sjcCD/Vos70dNB7qOAt9GIPNUo
	 hwjxh2rObcoUz8+1+FqeZhXDtCuhLVTQ3I47/XExnY6m9mCOY8YPG7sE5xarczkqh9
	 QbdE7dKQyqi8lSjql1r27CsJqbYuoUwrXvHhZ96QW9a5iZP1ThQ9yjXrE65c+lLk5T
	 H5MO9h4hyq8oQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1449E40010;
	Fri, 26 Apr 2024 12:50:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 13DD21BF2EB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 12:49:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F06D1613B8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 12:49:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bf4H3Ke-JOef for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Apr 2024 12:49:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 80529613C6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 80529613C6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 80529613C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Apr 2024 12:49:55 +0000 (UTC)
X-CSE-ConnectionGUID: 4xsXPmg7RVa4+Jxku8YTIA==
X-CSE-MsgGUID: TJKsWYM+QOCWYK+kXzaIKg==
X-IronPort-AV: E=McAfee;i="6600,9927,11056"; a="10027300"
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="10027300"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 05:49:55 -0700
X-CSE-ConnectionGUID: MbRHxWHDS0q9wv/nBrZFfQ==
X-CSE-MsgGUID: LCGEOX8LTkiG3K2UmY95uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="62885292"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Apr 2024 05:49:55 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 26 Apr 2024 05:49:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 26 Apr 2024 05:49:54 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 26 Apr 2024 05:49:54 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 26 Apr 2024 05:49:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dkD0GHMJriGenzBKFaJcxGdYCKHNsv0kUSyuFk950Rnhu+zNKhXw0Q0BXCFzINaYhm6sgEmdqpz4mhPSneRkcOD80a/waQVAX06CE+mbAU9FEM0xbR9HJx/9Hf+bEVD0HhsTonvMlE6NiA0AtjspL9dYi/aqy+8wBiXN2RX350uTL0yYTzWoAbJULl7Ku/eK3Axq63ygHuXUd4wci0qjrpFIRLhF0l1hLYtp/ZgPGi5qNauTxgby7vQVaTna+kUeorVobl8j0vLmS5RQLnHKNnjtZheMW7ds086VU5JDDcoi8twLZzqGKlG+zfFPZ1lxz/ZaZkYseawl3W0bmMrmmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mnfZftssvr+x69I+FtcHGYPeG3MqV8H34kxJhnA5GAY=;
 b=HjIl8ubb08wo+UHyNSKGSnbrHV/ngDk89NNBNrqM0BGij3aFRGWIfXXONLq16STtYKCqUrgJ82EmvXdZHP3vKQqKDxYYeW/HcfvD8xf6ZV6NJZSszI5FdG6f/1CcPdxPPzBnVOLvL4GfRfAuaPCRnNWgghdh4O2hzy5MC45wswrtvn32frUdn5USqgUcxTmuWsuGHO+y65ZVPRVf2E5cnwV0nnne0M7kNRERjUK0Shp0neBovu3uENDhi1lEl6t2U3IiBB3Fpb7aAVBxognMhGALZN7ySlajMn8B7rYL0Hysi/OqqNqDG3Xut7CDsHQ+s91xou2iDSjljPG+vrCc3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8086.namprd11.prod.outlook.com (2603:10b6:610:190::8)
 by CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.23; Fri, 26 Apr
 2024 12:49:47 +0000
Received: from CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3]) by CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3%5]) with mapi id 15.20.7519.020; Fri, 26 Apr 2024
 12:49:47 +0000
Message-ID: <39daba1e-5fbe-495e-8398-200434f89230@intel.com>
Date: Fri, 26 Apr 2024 14:49:40 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jiri Pirko <jiri@resnulli.us>, Jacob Keller <jacob.e.keller@intel.com>
References: <20240423091459.72216-1-sergey.temerkhanov@intel.com>
 <ZiedKc5wE2-3LlaM@nanopsycho>
 <MW3PR11MB468117FD76AC6D15970A6E1080112@MW3PR11MB4681.namprd11.prod.outlook.com>
 <Zie0NIztebf5Qq1J@nanopsycho>
 <3a634778-9b72-4663-b305-3be18bd8f618@intel.com>
 <ZikgQhVpphnaAOpG@nanopsycho>
 <3877b086-142d-4897-866e-e667ca7091d7@intel.com>
 <ZiuNxivU-haEQ5fC@nanopsycho>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <ZiuNxivU-haEQ5fC@nanopsycho>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0158.namprd04.prod.outlook.com
 (2603:10b6:303:85::13) To CH0PR11MB8086.namprd11.prod.outlook.com
 (2603:10b6:610:190::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8086:EE_|CO1PR11MB5028:EE_
X-MS-Office365-Filtering-Correlation-Id: 5f45d9fe-3c21-4f9a-9f9d-08dc65ef5a64
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dG44T1JkdHdqd1UybDRCWHVDK1BNVmN6UGN2c1R5UllKS3BhM01CemllYy92?=
 =?utf-8?B?anc0cjQvdGtVSDlES21vL1FNNWNjZ2tUNkluSERaaGhqU0QzM1UzWUxHUkJj?=
 =?utf-8?B?MFNYSEJmam14N05jZnd0REtRVjVHVW52bm9wcWRyNDNsL1c3dXRuQkdGNDgy?=
 =?utf-8?B?Mkl3MEROZTRsbWd5RE1FZ0M2ZGtHZ2ZoNzlVd1pSdEZ1ajRUblBCTzVlZnRN?=
 =?utf-8?B?MGIvSEpCaTJkejgxRGppK2NtR3BCa1JqWEdwY1pIaFI4M1RibURvWWx1VEU2?=
 =?utf-8?B?Wmh4WUs0VkkwQlZ6cDRxYmlSNW1ld3FaUGhPcUNKZG9uMlg0UUsvbkN6bHRq?=
 =?utf-8?B?RzhCRFMrY2pxT2pjUWxlcElNc1NoUjcvMXpyN21qQ3J2WGNCRGtRMDh0NWM1?=
 =?utf-8?B?T3lRYjhCaHVMWWNPTDExdmUwdTRUQ0cvc0xaYUQvaGsrUTZ2QXV2VW1QL1Bs?=
 =?utf-8?B?eWFPMXdwSnpUZjBxaWx4dEF0RWttTVp1K2VrRGlTdUF0Z3pySHdOVjd1b1hI?=
 =?utf-8?B?MXdsaW9WTFZLWUFsTXNqYmFxWTQ5MmNvSmloYkFHdk9vL3ZRcVFQaCtlNGdJ?=
 =?utf-8?B?cGZ5UTZ3N0JzUG0xNlVYZDMrQVNRVnIyOUxTWkxwYUNjM0Y4ckhOdEQ2SFdP?=
 =?utf-8?B?L01FSUJseFB6ZUQ5NFNWTHpQS25kRmhhazRhKzlNc1FYVm5UU2xNWEFqSGpr?=
 =?utf-8?B?SmgzZ3ZzTDF1QVBmSHRHc1BYRjVZVzQwVjltbFNKbWFFQjdENW1heFdpeFoy?=
 =?utf-8?B?WUNhQlBKVTFpZWZvWWJWRC9vRGFDeXlIeGxzMTFCNlFUVGp4VDkzUHRvMWVa?=
 =?utf-8?B?eGcyUFlPRHJrTUQxUGdMR3drN29vbGdkcVYzd0V4cTJYRW1KVjE1cnA5Zml2?=
 =?utf-8?B?bUVkSHNDYit4NUFhUFM3UE1KdWhYYzZJamxzMyt1eTdTcGxDR2VFQWZFQjBi?=
 =?utf-8?B?R3pKbDdha3M4V3Fvci9tSUJjak8rcUZTNnlGVERpbmk1Z0V0d2VIWnJYMldM?=
 =?utf-8?B?dHBCR01VQjRoU0ZHNE81QlE3S0ZYWlRCdkY4MmtaOXlhQTVkVzNqaitFdUxI?=
 =?utf-8?B?dUFNdEZmSXNJZXdPeGdsajM4ejRSK1lJTXdjMjdzK2xSMllXT1ZxOXRZdC9G?=
 =?utf-8?B?YlczdnI4VEFNWHpTelRLRXpSakNSL2NlRkY3TG5uMjZyL2VvODdGTmR1dnA5?=
 =?utf-8?B?UXFOY2FIYjlpaXh3M1ZtNE9neTF2Z2I4L1V1bW1KVk9EemxuUjgrYUZPaFlI?=
 =?utf-8?B?WGZBNWZWTFoyMUtQK25tV1c5ZDFwNnFZRDdIc3QzNUpzVmR4a21Kb3JieUZ5?=
 =?utf-8?B?d01CalBzZUFCalVJNUt4ckhIelpieDR2MjYwYmZydVBaOVVjaHc1bUxCK0VG?=
 =?utf-8?B?d01jZDYzMC9iZnFGZm5CclI2U0ZzSmFjaEZTcmp5bnhwMnkyN0VXNG81UExo?=
 =?utf-8?B?MWpVV2NwSXdXdDFrRjg1UGxSYnJhMUhmNmVUWjlhVDFwdTBpd0pRMERQMWg2?=
 =?utf-8?B?Y0huVWUyZ0RDWW9yTHNBVVZ1STBFaXBISnltN3MrYks5blpiQkt1WWVIamlP?=
 =?utf-8?B?UThBbmhqWkhXUDAxcGVXb21PYnRnKzdxdWczVkU4bUZNR29GU29NSWFQdTRD?=
 =?utf-8?B?bTRLWWdGbTgxWklFWXIvRDBuR0phU054ZlRZZ0hoOGF5eG93emtoZVhUUUJU?=
 =?utf-8?B?dm1CUzFEZExnTlFrV1dJczhUd0FJdGRHRVVMRGJmejR4dmdtSHRUTHNRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8086.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NUtpS1dMNDJGTmY5QlJEOWkvMERlNWJWVE9pNlFGcGRmeWVMK09PUVlOTTJM?=
 =?utf-8?B?ZzlDSmxJRFdkVmtQaXU2R0VqNE9rTTVmQTY0OWxMY0dLQVd4TU44andvYmtS?=
 =?utf-8?B?YmIyVE5qNjFJc29KSEJVWHYzcTBablFGT3MvOTVaRDJPcytmZ0puWk1NbEYy?=
 =?utf-8?B?VERmLzhPVGZOUDAwWVEwZDJ3Y2hTSDJFN09Hd05vM1lsK1NNU2ZFWVlvczVH?=
 =?utf-8?B?UXRpREppSUtWYVBqTElnRWNaekFEaUl0dENLNXFOSTBYc1AvOTRqdlR1ZFR0?=
 =?utf-8?B?REpuUStQMkxscWJsakpGRThEVTU1aTBBQllxNmRJbTJPZ1RPeTNSeVRxWFcr?=
 =?utf-8?B?czNYQVB4U1EyODF4V2NFZi81d2UwMHhyVzFzejZzSFRPeklaWk9OZ2dxOExE?=
 =?utf-8?B?ZERuUHJZSE8zSTNORVVsWGMvZDRlZ20zNVMxWTUrTHJraFllMXNPeHhjbVRr?=
 =?utf-8?B?TUV0MHgrTU9jQTZIcnl1WWFheEFwSk1oNXVVT2FObE9mMFd0MlIyTzUwMTVo?=
 =?utf-8?B?ZkRqOVNIdG82WnJRVWNGaGNmVTRJUWlraWR5SWlEbTc3di9udmNrcWJpbSs4?=
 =?utf-8?B?b3VjTEVEVWlsamw0YmtxMXF2WlNkc3IwS0lSWmQ4aHJOUlBiYVA3c3Z3VjBR?=
 =?utf-8?B?NmQwVkdId0Z3SkdqM3hVVmVaQTdWeG9HS1dXWmNPZ3I5amZ2TTBzckhZNXBx?=
 =?utf-8?B?UUFWSTJlN1kvcDNRYVFwdDB4MElKMGltSkZPUkFVOVRmU01vS1NnMFY4SU9h?=
 =?utf-8?B?Ymw0cFN6Rm1BanNNN3RjamhaRU5wTzJGRlZuWDlrc1E2NnFKejJBdlZZQ1py?=
 =?utf-8?B?VEtORlZudk92UVdQc0Y5dUhoMFRXYXl6N1Q5Zk5meTZEeWtTcWZ1R0FGdHhO?=
 =?utf-8?B?YkRIcWNJVnpQWWhrRHdUYmhEQWZvMXI1YTZIR2NHd3c0V1ZDRGVoYWlibDJO?=
 =?utf-8?B?VEpGUDJIWmVLbHZXa2EwVDJDamM1ZmZ4SGVFMWQyOVJieVhDanVSQzdLTWFE?=
 =?utf-8?B?M1lEYlowdENXckQ0blZwT05CcXROQjNRL3BsZEZhb3VVQURnODdyV0tXYURO?=
 =?utf-8?B?TEVIVE14Qm1JQld2VUh4WEU5OUlwNHhaZDNMajVCTEQzZ1NSVDF4em5zSmJ6?=
 =?utf-8?B?SjRwV2RHMjk4NytVMCt5T05VeTBkanQ0UUpEeTRXajc0SG1QaEJ0M2IvMHZV?=
 =?utf-8?B?RVVOWG9PK01lZ3NmUFdhQlZ5aDFvUjZBcjlmNWRBSVFIay9yVmxqMjlkN2Qv?=
 =?utf-8?B?cTE4VE9GN2p6SEJXOFhkMU85cTBFT3dOOVY5QjZLUjV0dEhDejFsT3ZKLzZx?=
 =?utf-8?B?RjdaM3laQzRWZERkQzBaSWQvaWxOOUV3aVI1TFhnZTdITTdqMm1JR1lURUxn?=
 =?utf-8?B?aDlOQWE0VzVIL2V0aWVBaHowdkVwOHVyOEIrM0NiUlJ2K2ZlNVYyUUNpZzZB?=
 =?utf-8?B?dnhqYVRaRTNvWDVXSU93VFZZeGdPbWw2Tng4Ykh3bzJSUXZRbC84c0ZjYW5G?=
 =?utf-8?B?d1JDL1Nyanl6aWtEOHFGVFUrbW1YakFSOHFSRS82dGI0UzhkODc5R09NbE5O?=
 =?utf-8?B?UWJmaklzZU14bmpUTU5RZ3lkeUJuZmNYZGNUajQyUGtXZUJGdFVxTEtoVnVy?=
 =?utf-8?B?YUdYUzJPWXQvOTc3Y0J5TlBtS0JyRVlhTGwwUks1Tkd3akYvbHp6SFNTd3RO?=
 =?utf-8?B?bkFLZXJ6NUJsV2ZEQmdoSFRhWUxTWVgwbm1OTkU2aG95aFQrdnlMbEFJWHZI?=
 =?utf-8?B?WUJlOWplMTlCWUZ6dVhjd01MMStGSWlQRXR6TGlVclNqbXVlZnZmMU1wU3JX?=
 =?utf-8?B?azFuczVlMXFhT0gvRU5TbW1ORnRDQm52L2EvNU03dkt1ZU1LWUx6K3lERjRw?=
 =?utf-8?B?SmNXaGxnOG1qSGdoM0xnSTFReFhxelJvZ1l1WTViSWN1OHdMeEFUa0Erdng4?=
 =?utf-8?B?MzlmV1hyOXBGbWdEdEl4OGg0UzZFWHYyTEtaYjdnZTg3ak1zbUZvTWN6YUU3?=
 =?utf-8?B?Q1l5YW5TRy9rODNPa296SWVjRXhvYkpRYlFRVG1sTlFCVFl2Y3lHazlnQm4w?=
 =?utf-8?B?ZzhQd1E3RzRlQ3hJMjg3R2kyaktrZ0t3RGVDbVd0WXc5T0paL1krbDAvOWtB?=
 =?utf-8?B?NDNodVFjTWQrQzZGVTJiRHRDSEp1UHpOeC9IYTkyaE1pNzFueFpydzhFY3Np?=
 =?utf-8?Q?hoyUwganGs/vZt2yhKCueGM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f45d9fe-3c21-4f9a-9f9d-08dc65ef5a64
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8086.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2024 12:49:46.9525 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VS/cqOYdW/fmRB3zsCwHpeaH0RMdijCZCj2uXXskHfC5pQAnYMkWe4QHJbqFL7oDpOe2wFKraBy+YiCm5Yk8VLPsMvX9DfVC1fj7hRVOHzs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5028
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714135798; x=1745671798;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=urkPQcLGraSVv/bFIyf0NwnJSB5V3bmvRdfX5vpOS3w=;
 b=MxIWvZrGRw+s6dDDmvKNulMs7/2EwvXkn4FW3nZY2gJjfDTUn0kJdUR4
 gNyc2E8hjdmzNhldij/MCWpTPqupckOTZ998S4MBxGLRqPcFANUaz/3aP
 jyOFvHqNyq4YaEVHN2qKTDKrWfwItxvFBeLcO+nJRoLUbYhjZ3Cf2thUz
 SK+Fb1ltrMpOMOkG6gvkkMhDg3Ivgt/lpAVtiMN+oh1sHmz1mJtXl1fio
 mnV4IJu7GiXQUFb66nRX3TNCi85THcvhHea3kMcEu9lec4NMFe+kus+rs
 U5bv56wcjj8acuPIhbrCVR/SVO0jb5R5UXNphux5sF4KZp0TY3/HzqRdj
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MxIWvZrG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Extend auxbus device
 naming
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
Cc: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Knitter, Konrad" <konrad.knitter@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 4/26/24 13:19, Jiri Pirko wrote:
> Wed, Apr 24, 2024 at 06:56:37PM CEST, jacob.e.keller@intel.com wrote:
>>
>>
>> On 4/24/2024 8:07 AM, Jiri Pirko wrote:
>>> Wed, Apr 24, 2024 at 12:03:25AM CEST, jacob.e.keller@intel.com wrote:
>>>>
>>>>
>>>> On 4/23/2024 6:14 AM, Jiri Pirko wrote:
>>>>> Tue, Apr 23, 2024 at 01:56:55PM CEST, sergey.temerkhanov@intel.com wrote:
>>>>>>
>>>>>>
>>>>>>> -----Original Message-----
>>>>>>> From: Jiri Pirko <jiri@resnulli.us>
>>>>>>> Sent: Tuesday, April 23, 2024 1:36 PM
>>>>>>> To: Temerkhanov, Sergey <sergey.temerkhanov@intel.com>
>>>>>>> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Kitszel,
>>>>>>> Przemyslaw <przemyslaw.kitszel@intel.com>
>>>>>>> Subject: Re: [PATCH iwl-next v2] ice: Extend auxbus device naming
>>>>>>>
>>>>>>> Tue, Apr 23, 2024 at 11:14:59AM CEST, sergey.temerkhanov@intel.com
>>>>>>> wrote:
>>>>>>>> Include segment/domain number in the device name to distinguish
>>>>>>> between
>>>>>>>> PCI devices located on different root complexes in multi-segment
>>>>>>>> configurations. Naming is changed from ptp_<bus>_<slot>_clk<clock>  to
>>>>>>>> ptp_<domain>_<bus>_<slot>_clk<clock>
>>>>>>>
>>>>>>> I don't understand why you need to encode pci properties of a parent device
>>>>>>> into the auxiliary bus name. Could you please explain the motivation? Why
>>>>>>> you need a bus instance per PF?
>>>>>>>
>>>>>>> The rest of the auxbus registrators don't do this. Could you please align? Just
>>>>>>> have one bus for ice driver and that's it.
>>>>>>
>>>>>> This patch adds support for multi-segment PCIe configurations.
>>>>>> An auxdev is created for each adapter, which has a clock, in the system. There can be
>>>>>
>>>>> You are trying to change auxiliary bus name.
>>>>>
>>>>>
>>>>>> more than one adapter present, so there exists a possibility of device naming conflict.
>>>>>> To avoid it, auxdevs are named according to the PCI geographical addresses of the adapters.
>>>>>
>>>>> Why? It's the auxdev, the name should not contain anything related to
>>>>> PCI, no reason for it. I asked for motivation, you didn't provide any.
>>>>>
>>>>
>>>> We aren't creating one auxbus per PF. We're creating one auxbus per
>>>> *clock*. The device has multiple clocks in some configurations.
>>>
>>> Does not matter. Why you need separate bus for whatever-instance? Why
>>> can't you just have one ice-ptp bus and put devices on it?
>>>
>>>
>>
>> Because we only want ports on card A to be connected to the card owner
>> on card A. We were using auxiliary bus to manage this. If we use a
> 
> You do that by naming auxiliary bus according to the PCI device
> created it, which feels obviously wrong.
> 
> 
>> single bus for ice-ptp, then we still have to implement separation
>> between each set of devices on a single card, which doesn't solve the
>> problems we had, and at least with the current code using auxiliary bus
>> doesn't buy us much if it doesn't solve that problem.
> 
> I don't think that auxiliary bus is the answer for your problem. Please
> don't abuse it.
> 
>>
>>>>
>>>> We need to connect each PF to the same clock controller, because there
>>>> is only one clock owner for the device in a multi-port card.
>>>
>>> Connect how? But putting a PF-device on a per-clock bus? That sounds
>>> quite odd. How did you figure out this usage of auxiliary bus?
>>>
>>>
>>
>> Yea, its a multi-function board but the functions aren't fully
>> independent. Each port has its own PF, but multiple ports can be tied to
>> the same clock. We have similar problems with a variety of HW aspects.
>> I've been told that the design is simpler for other operating systems,
>> (something about the way the subsystems work so that they expect ports
>> to be tied to functions). But its definitely frustrating from Linux
>> perspective where a single driver instance for the device would be a lot
>> easier to manage.
> 
> You can always do it by internal accounting in ice, merge multiple PF
> pci devices into one internal instance. Or checkout
> drivers/base/component.c, perhaps it could be extended for your usecase.
> 
> 
>>
>>>>
>>>>> Again, could you please avoid creating auxiliary bus per-PF and just
>>>>> have one auxiliary but per-ice-driver?
>>>>>
>>>>
>>>> We can't have one per-ice driver, because we don't want to connect ports
>>> >from a different device to the same clock. If you have two ice devices
>>>> plugged in, the ports on each device are separate from each other.
>>>>
>>>> The goal here is to connect the clock ports to the clock owner.
>>>>
>>>> Worse, as described here, we do have some devices which combine multiple
>>>> adapters together and tie their clocks together via HW signaling. In
>>>> those cases the clocks *do* need to communicate across the device, but
>>>> only to other ports on the same physical device, not to ports on a
>>>> different device.
>>>>
>>>> Perhaps auxbus is the wrong approach here? but how else can we connect
>>>
>>> Yeah, feels quite wrong.
>>>
>>>
>>>> these ports without over-connecting to other ports? We could write
>>>> bespoke code which finds these devices, but that felt like it was risky
>>>> and convoluted.
>>>
>>> Sounds you need something you have for DPLL subsystem. Feels to me that
>>> your hw design is quite disconnected from the Linux device model :/
>>>
>>
>> I'm not 100% sure how DPLL handles this. I'll have to investigate.
> 
> DPLL leaves the merging on DPLL level. The ice driver just register
> entities multiple times. It is specifically designed to fit ice needs.
> 
> 
>>
>> One thing I've considered a lot in the past (such as back when I was
>> working on devlink flash update) was to somehow have a sort of extra
>> layer where we could register with PCI subsystem some sort of "whole
>> device" driver, that would get registered first and could connect to the
>> rest of the function driver instances as they load. But this seems like
>> it would need a lot of work in the PCI layer, and apparently hasn't been
>> an issue for other devices? though ice is far from unique at least for
>> Intel NICs. Its just that the devices got significantly more complex and
>> functions more interdependent with this generation, and the issues with
>> global bits were solved in other ways: often via hiding them with
>> firmware >:(
> 
> I think that others could benefit from such "merged device" as well. I
> think it is about the time to introduce it.

so far I see that we want to merge based on different bits, but let's
see what will come from exploratory work that Sergey is doing right now.

and anything that is not a device/driver feels much more lightweight to
operate with (think &ice_adapter, but extended with more fields).
Could you elaborate more on what you have in mind? (Or what you could
imagine reusing).

offtop:
It will be a good hook to put resources that are shared across ports
under it in devlink resources, so making this "merged device" an entity
would enable higher layer over what we have with devlink xxx $pf.

> 
> 
>>
>>
>> I've tried explaining the issues with this to HW designers here, but so
>> far haven't gotten a lot of traction.
>>
>>>> We could make use of ice_adapter, though we'd need some logic to manage
>>>> devices which have multiple clocks, as well as devices like the one
>>>> Sergey is working on which tie multiple adapters together.
>>>
>>> Perhaps that is an answer. Maybe we can make DPLL much more simple after
>>> that :)
>>
>> The only major issue with ice_adapter is the case where we have one
>> clock connected to multiple adapters, but hopefully Sergey has some
>> ideas for how to solve that.
>>
>> I think we can mostly make the rest of the logic for the usual case work
>> via ice_adapter:
>>
>> 1) we already get an ice_adapter reference during early probe
>> 2) each PF knows whether its an owner or not from the NVM/firmware interface
>> 3) we can move the list of ports from the auxbus thing into ice_adapter,
>> possibly keeping one list per clock number, so that NVMs with multiple
>> clocks enabled don't have conflicts or put all ports onto the same clock.
>>
>> I'm not sure how best to solve the weird case when we have multiple
>> adapters tied together, but perhaps something with extending how the
>> ice_adapter lookup is done could work? Sergey, I think we can continue
>> this design discussion off list and come up with a proposal.
>>
>> We also have to be careful that whatever new solution also handles
>> things which we got with auxiliary bus:
>>
>> 1) prevent issues with ordering if a clock port loads before the clock
>> owner PF. If the clock owner loads first, then we need to ensure the
>> port still gets initialized. If the clock owner loads second, we need to
>> avoid issues with things not being setup yet, i.e. ensure all the
>> structures were already initialized (for example by initializing lists
>> and such when we create the ice_adapter, not when the clock owner loads).
>>
>> 2) prevent issues with teardown ordering that were previously serialized
>> by the auxiliary bus unregister bits, where the driver unregister
>> function would wait for all ports to shutdown.
>>
>> I think this can be done correctly with ice_adapter, but I wanted to
>> point them out because we get them implicitly with the current design
>> with auxiliary bus.

