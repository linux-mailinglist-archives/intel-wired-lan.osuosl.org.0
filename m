Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C52509F9A16
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Dec 2024 20:16:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E122E607CC;
	Fri, 20 Dec 2024 19:16:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EGchDEOglPKg; Fri, 20 Dec 2024 19:16:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1292B607B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734722186;
	bh=1cZMpROiS9c6ciZPPUNHkcm4vof/dmZpmEOkyJp1LbI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=caLvQxowEmcuSoEYwp6IX0HLnNJt9a7RcecB8rYH6jpHdeJ3Kbdv1Z+3lrjrVydxK
	 xThPa3rM+eOmmz5DBtaAbvID5dWJGzKNOV2QFG7gV/MZETKaCoVug4PP9A0MJDjBOd
	 uzzhR8hnNDwjaev2/jIpi1k2LGzP7Nrh+dPVjVwQxmjF6Khmp9zh2dL34XkNNikLlk
	 8E0Dhdnn1tfNlBFbUeqeEmbrXfE9wL3zw8hFyvaq7SpkQuQzBJWn96ZbsBj2ho6YRI
	 uKpWDBVHZj+wfr9lSQyZE5Q3dfpKuulEZX+u5WJAVzqpBCopJGNSjB9isoruAytIe0
	 8mjR+vi6jwThw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1292B607B6;
	Fri, 20 Dec 2024 19:16:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id AA7A46C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 19:16:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 911A6607AA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 19:16:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gQPUxX1N7IQF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Dec 2024 19:16:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BAD936076B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAD936076B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BAD936076B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Dec 2024 19:16:22 +0000 (UTC)
X-CSE-ConnectionGUID: DJMrvwPIRUSv1t88OaH6WA==
X-CSE-MsgGUID: xCnYo879TMOPgAUOwJlamg==
X-IronPort-AV: E=McAfee;i="6700,10204,11292"; a="45971076"
X-IronPort-AV: E=Sophos;i="6.12,251,1728975600"; d="scan'208";a="45971076"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 11:16:21 -0800
X-CSE-ConnectionGUID: 8Mun6CUAQ2eDaKM5TxbrfQ==
X-CSE-MsgGUID: FSE58WWISnmX2yzFN+iTww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="135941585"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2024 11:16:21 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 20 Dec 2024 11:16:20 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 20 Dec 2024 11:16:20 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 20 Dec 2024 11:16:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C3t4VooQ+YofarjtXmbKHVOh1vEBK4Z9p15MiJ1ItlQ6YvR9JDApEdD7GoRGjzbeYfqa8yKjK4elNV0ZpGoc7GK/VXM5ht+lK42WGNmwdpC2o+jVUIHvB7BkssVkzQNynns56cqm2ohQB0JJbtlFoMmKRBuUBWlZ6wTlelkwcvoc+MWfot8fiLGEw+H355EtiXyA1SUfYek621kqldPdUQ5qg/6DBt8PxVRmlHJFvztlzOPWZmHtP6/nJFJ+IPAyUDkrkmWnEhVZmhip+KftZJz8FCw7Ty1leHHFg00ZTTXgJxTkiKk6/9eXAL+vreRF4TulpB/wZW+t2wBn5p2lZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1cZMpROiS9c6ciZPPUNHkcm4vof/dmZpmEOkyJp1LbI=;
 b=ocIeU6WlGrl6tMKhH0wjiq5yLUljUhTva6NWI18z9yHrRep96klagSNJcyrvRjLjVDYA8/ZOqDuDappaNt57pCfdDWJztgFAv1L0W0E3zkRuWL0giQNy/LZeBB4WY4jir/4SaU6LrVPkqjqXiQSCbtx0LF3dr8DsvbjEMK89m4tMcogMhG59AsqyUGY8/D+Eu5L/V1MoYc8TGH5fNskff6AYPE/Cm9SWLjWPzYqRuOFu9VF5+P0H27UxtuXxaCCQURMF3Q1Q+Y6oeFVT70BIRvyNz7ZX8Vis+viLzlYaIFHz+wCYKtD0P71hnpjI0+fNWDxJuTwxDeCklQRa8a2vqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by DS0PR11MB8183.namprd11.prod.outlook.com (2603:10b6:8:161::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.16; Fri, 20 Dec
 2024 19:15:43 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%7]) with mapi id 15.20.8272.013; Fri, 20 Dec 2024
 19:15:43 +0000
Message-ID: <35441a41-d543-4e7b-b0dc-537062d32c9c@intel.com>
Date: Fri, 20 Dec 2024 12:15:33 -0700
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
CC: <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <andrew+netdev@lunn.ch>, <edumazet@google.com>, <pabeni@redhat.com>,
 <davem@davemloft.net>, <michael.chan@broadcom.com>, <tariqt@nvidia.com>,
 <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <jdamato@fastly.com>, <shayd@nvidia.com>, <akpm@linux-foundation.org>
References: <20241218165843.744647-1-ahmed.zaki@intel.com>
 <20241218165843.744647-5-ahmed.zaki@intel.com>
 <20241219194237.31822cba@kernel.org>
 <cf836232-ef2b-40c8-b9e5-4f0dffdcc839@intel.com>
 <20241220092356.69c9aa1e@kernel.org>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20241220092356.69c9aa1e@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0250.namprd03.prod.outlook.com
 (2603:10b6:303:b4::15) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|DS0PR11MB8183:EE_
X-MS-Office365-Filtering-Correlation-Id: dacf4915-2db0-4625-7578-08dd212ab349
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bDFlRW80dFpyYnhBU1crRHROWThheTRLUlFhaXU3ZVptMytjZTJ6RUpHOUJ5?=
 =?utf-8?B?U2tFNjdQdEFDV1ZsUHcvRHlUZEUydmZpVG52Zk5vbVo5T1BEWlRKNkVsenk5?=
 =?utf-8?B?R1VKeHJDZDZPa3RYRXVFcHVLeCtEZ0o2VUJ4ZDR1VCtzVXFtNW8vakZGWUdI?=
 =?utf-8?B?M2s3YXJteGI3NG5nL1MwQ1lYM1Y0MDhjZ1ptazlrSWRpaFdNL1ltRFRYc3J1?=
 =?utf-8?B?RENXUUZaU1RQamo5RXBPSHpXT1ZIaG8vVTRnUU9Ec0VrZWpxQ3F2MEg1RWNB?=
 =?utf-8?B?N0pJbTRMb2cyN1pxWUMzWUNWNzVQdGRUT2ZEaHlUL0VLd0srSXhNbzkraE1E?=
 =?utf-8?B?TWVvek1vY1lUUGZLN2lYRHdrUnZiN3c0bEtpQXFEb2dnekgzM3hUK2pZdlhr?=
 =?utf-8?B?QnBhODBldk9pQzV3a1dYT2VDcFFCcm0vZHpEdE9jOGVES0o2Q0hEcDJrZEd6?=
 =?utf-8?B?Mnl5eDJmaXUvNTdBSmJLbm9zMlU2eXpEZk0vQ1pGUW9iL1lCaVV4WjdtN3lj?=
 =?utf-8?B?ZHh2WEFRSitleG9YUUVaNWZCYzJTd3ZoUXo0SGl3Z21VU1ZmMmI1c0NaRCsx?=
 =?utf-8?B?R1hqS0NZRDg5ZTFsRjRqTENnVFdlaVVyZHJxa0l1djQ3V0hTcGFpTUo5VkNN?=
 =?utf-8?B?MzdrdHBUZ3RSZmdpcjFxRWdBQUM1eFoyZzR5cGJQejlCaElIQ1NOZTExMzFv?=
 =?utf-8?B?TlhXUnZYM3lCK3ZHOVl6cWVMWWR5OEVYNEpza0RaZXhncFR0RXM0TGViZ3Zt?=
 =?utf-8?B?YXlDNWJhVG5rbmhMcWQ5UmZVZzRUTEZ5Q1VobnczL0hqdndHOXNzTTduaDlw?=
 =?utf-8?B?YXY0YnZseGhnTldIYmwyaHNWUWtKbkJCUmViai9QTVBmZndhM3ZrWDlncTF1?=
 =?utf-8?B?djBKRFc2UDhxRjQxY3dTL1prTlhVQ2FWdXZGUnpZVjFjakJYU1h5VFRldE9P?=
 =?utf-8?B?T2MyOFE3NmUvK0ZTdjRuU1k0NDlyOHptR0hPOTFQQWh6eEtDT3h1RlZqLy9k?=
 =?utf-8?B?aHk2SEswOGxDUWVGOU5aeVE3QVBhODYyY3hUZmVvTHN4eEFYOFlLUHNoakZB?=
 =?utf-8?B?NVFYTnpib2JPSyt6OTZJNkd3RURnUTU2RVVLN2w2cXVKZlp3NG9xU3BnOVBx?=
 =?utf-8?B?NmdaVjZvMG0wcFhHdU5nS1BYT3JNbkpRVTVUM2RqS051ZTJleGRKK2xQMjM3?=
 =?utf-8?B?OWpjV2YxRGZ4YnlKeTlLR3k2cDg0N21rWExCYUdqY0dZYklXWHJtaXR1T0N0?=
 =?utf-8?B?K05pS21ycTJ4QU1zWFE3Uk54SWErdEYraHFoa2xGVDdkK1l5SUpBNjRvOHdN?=
 =?utf-8?B?MkN0b0t1Qjdwbms3TURVWGR4S0hmMS8zRW5VbzlPV0tFZzF2QmMrRG96QlRU?=
 =?utf-8?B?TjZob3IzN05wc21INEEwaUV2MU5YTFdjS3plTklvcURoY2laR29lcExGV0p6?=
 =?utf-8?B?ZFpzMmhsZTJoMXJPWDdxWUp6aGlIVmZabTkvdkE1TWFTLzlMTTNGdDhVZUl4?=
 =?utf-8?B?NVJpNjM1M1pmVjF3a1FaQWlvOWsxSERoWEZvSVdRL0ZZUWZvVTFFR2lZUEp4?=
 =?utf-8?B?SjlHbkVJclBqUFZOVHVHVmU1QkhvWnRpdEZNTzRDSHV0c1owS0tielhLU2wr?=
 =?utf-8?B?NExJM2xDRUR2Ym5rRE9FUnc1ME5IVkpHSGx1ZUcyZEhiSk01cyswaEZIaFpv?=
 =?utf-8?B?M0M1UG0zb0pTNG1JYTl6L1RRelVKZkljRHZYeTlqMlRWeEtSTklQc3FNTU5O?=
 =?utf-8?B?T2tKRjFpVmljRTR5enZXM29RUDV3aW9mWFBJQnF4YXRUV2xSZ01TcUdhaTA5?=
 =?utf-8?B?aklienRjb203MzJ1TlY3dzg1YmtObWF4MVNTQmhZb1dneGZPV0Z3WnZnZGRP?=
 =?utf-8?Q?Rq/TqaoiErLOw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YUdGL1JNRjk0d0JOQ3o3QU10OUFCNy8xcnZNc21ML1JQdVVDYWx1YUZjSWF6?=
 =?utf-8?B?blBFMTBmZXoxNnZQWXp1R1VQYlBTWXdRMHFySzloWWNuaVJCbDN2MzNMUmFr?=
 =?utf-8?B?UUtZQTNjelloVmhJYi9Wc052c0hlaTFGL0lkb2VZUDJsdXJlZHMwRitmdENQ?=
 =?utf-8?B?bGEwdlJ1Y3pkeCtXQVNodVJPMUVseGtLaGs2aXhCZ1BCRjBucWpmZ1RRemtT?=
 =?utf-8?B?M05NSmMvS3JWOFJQUTVxZVhLRm9oZkJBcTZkN0pqWjBWb0ZEZ0Vxdi9KYnl5?=
 =?utf-8?B?RU9GWFM4T2VOWER5L3hoZ25CS1Z4YWlkc1FNQUlnL2xFaUtiWEVnWXJBejMx?=
 =?utf-8?B?cVduMzdHYXFTWDNhWE8yL2JSNVAzeEFqZjVDNmVnWm1oMmI3Q1crd3ovOW90?=
 =?utf-8?B?WG80aXQrYkh3aXBmdXpMbmVsQVRGczhPajROamQ2REthZktrUnh5QWlISFJQ?=
 =?utf-8?B?WmZDZC9sTW4xMzZEWmozZWZvc1UxaGxzUVJlU0M0NEtYQmloNDIyLzByOGVF?=
 =?utf-8?B?ZEN0ZURyQ0h5MUNvaGVlbm0vd0JBdTFINklTMjlDbGdVWU9YN1MxS3M1Zm9x?=
 =?utf-8?B?V1B6akZZOFJzSjJYVXBMd05XY3h5blJoM3BramMrR3JQU3U3UXl2V3Boc3k2?=
 =?utf-8?B?dm8yQm1DL0VySjlERzdnT2tiR1NDdXRUK3FsZXdsajdxakNCTWdPMDRkV1Bs?=
 =?utf-8?B?T3BwZnUzdzFHd2lDdnlsUGphb2k1cnZLQnRwbzZuMDBUUjJPQWtkSUZIT2c2?=
 =?utf-8?B?UkZrS1lYNFJ1RXU3b0pWKzMwMGYzU3hRNzBiaFVJMzdTMGRobndJQTFmcTZp?=
 =?utf-8?B?WnlVMGhQcmJYelRrT0N3NzdXUVR6RjhhekJYSjFMVVhZS0czOFN6T3RtZlli?=
 =?utf-8?B?c3k3SjZ5WU5NdjY2ZXJOby9LSmR1Mm5sTjhCTUk4UVQrZ0VxaXlHYmY3bEJF?=
 =?utf-8?B?Y3dvL3FYVWRsd2wyci9qM2lwejI0RjA4d0xMN244bDYvTFdIeW40SzY3QnZU?=
 =?utf-8?B?T3RIUlhpci9qTFdyWENlZGFYSmdLWnhEZEFsQlNNV2tSaHVzZWV4YkU0U3pM?=
 =?utf-8?B?dE42SHQ3bkg4aTBKRXNLVzdvcit6ZDZTV0MxSEd0QmlGRlNsUmxFdnFaK2JW?=
 =?utf-8?B?emdkblJoQXFac1htMXhrUCtibE42RUNvUCtjRWc0V01sT0FZUlgzTXlnSFN5?=
 =?utf-8?B?RHhodThCcjNDaEpGU25lMW5wNDRONDN1NzVhMERERFMyWVV1dHl4ZzdTdmpE?=
 =?utf-8?B?MkhyVVhPb1RkamU4b3hLSGFjUWNNQmloNEdhRUMvcVR2TTJCcmEzVkhjT2ZV?=
 =?utf-8?B?KzVyeVZqOFluekZnTlVzYWFDMTlGS0lBVDFoSDBXNVRnUmMxaWFkaGphVGpY?=
 =?utf-8?B?SjdzTHUrTC9CeFZBMCtVNnNUTVZSdm14ZXVqVGxIQy9VNS9odm9lRmxlb0F0?=
 =?utf-8?B?djc4OVVkVHBKZ3VXcXR1dHBQMGJYU21jWWlwLzhTZERqSFN1dUVXRjRIcFpH?=
 =?utf-8?B?YWpaUUhHZGlZbnRHaEtlZjVETm5Scmo5Zk5pSFowZlA0WEFCbXdMN0I1c05m?=
 =?utf-8?B?VWVJRDkyY2RzUzdoTExqV1Rnd2JqTDdtT0dwVzV5Q0Z0cExQZzV5aVUyVGp4?=
 =?utf-8?B?U29nNk4rK2lXaVhhSm1za1ZpeXFOYTMxL2ZsSHQ0bUtUK2UvMDFGWnVBdnNt?=
 =?utf-8?B?c1NubjFOc2VNemRIWFFSTGd3c3RBVmhqZ3VqcEx4NDF0THdOZ2kyelpSRjBq?=
 =?utf-8?B?VjRGd0ZXNEFTeWVONDJHb0V6K1NQZDlncEt4NVM4djZVRXV3WURYeU5LTmZ6?=
 =?utf-8?B?SSswUEpCWklHYWk3cnhBSU9nWWVGcE1Oa09kK29rY0cxWVp3aUxrdkNqcWtQ?=
 =?utf-8?B?MUZZTU5IelJDUjJ1bVl2NGJqQTBzVVZQQ21MZjBjMFkySVRxczRPYmo1T1JQ?=
 =?utf-8?B?Z2tLUzdYcmc5NEFBTHFBY1lTTFhOV3FHUTBpYk5hQXFLVXgwOHdyL1ljWHpk?=
 =?utf-8?B?M2ZUUjl4RERZNVg4TzJzaEVnTkVVTkFleDFlQU9abWhzTXl2REFoU2tydWFB?=
 =?utf-8?B?bzIvRk9BVG9rTlkzVG5yOGZOVkgxOFBPNnIzdzQyeE14ZUdEQ05DS2M3Y09W?=
 =?utf-8?Q?00UIGPtzgqrWnB8eGvqHEis46?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dacf4915-2db0-4625-7578-08dd212ab349
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2024 19:15:43.8267 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BsQT94nS9q9zf3L0EwuTZSelSUgA6xM4+zN/ZELUpWMidepZe0EfVrgqZXc66goRw8k++S3SEmE/HBFJARjbNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8183
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734722183; x=1766258183;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=68sLG6XOYn9CrsuenTsuaXC9tKtOqos7bFLTRozOim4=;
 b=cV/yC3x3mUgRbqoaCDDbL0NLDIVxMs0ivFpwHXo0KOUgHyiIGl30npiH
 mro+czV04NDOEsDU9F77YvPunG8aQc+f2LQ54vLGFlW2++H82lfcu3+BY
 pggYP5JQ5iEYpld9i1L0cmcblx3IUVk/c8QMxjGokIYkbjvY5PX2Ww8jL
 ytUcoHuzqTfwTLQ77kU1veFmboS3n9Jt5tncU9JcZXWxv1la82YeRLXRI
 0mCQzH2wP3dmwKQ7VxvIPdr94Nw5DfXMvl5eUOu76svpQ7hJS/BsZdZey
 fYmaX66E9qOIPsojgrrVZ1e1RHm0vu3zETvrx6MmbCpt1h+WZqu+ogpRI
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cV/yC3x3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 4/8] net: napi: add CPU
 affinity to napi->config
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



On 2024-12-20 10:23 a.m., Jakub Kicinski wrote:
> On Fri, 20 Dec 2024 07:51:09 -0700 Ahmed Zaki wrote:
>> On 2024-12-19 8:42 p.m., Jakub Kicinski wrote:
>>> On Wed, 18 Dec 2024 09:58:39 -0700 Ahmed Zaki wrote:
>>>> +	if (!glue_created && flags & NAPIF_IRQ_AFFINITY) {
>>>> +		glue = kzalloc(sizeof(*glue), GFP_KERNEL);
>>>> +		if (!glue)
>>>> +			return;
>>>> +		glue->notify.notify = netif_irq_cpu_rmap_notify;
>>>> +		glue->notify.release = netif_napi_affinity_release;
>>>> +		glue->data = napi;
>>>> +		glue->rmap = NULL;
>>>> +		napi->irq_flags |= NAPIF_IRQ_NORMAP;
>>>
>>> Why allocate the glue? is it not possible to add the fields:
>>>
>>> 	struct irq_affinity_notify notify;
>>> 	u16 index;
>>>
>>> to struct napi_struct ?
>>
>> In the first branch of "if", the cb function netif_irq_cpu_rmap_notify()
>> is also passed to irq_cpu_rmap_add() where the irq notifier is embedded
>> in "struct irq_glue".
> 
> I don't understand what you're trying to say, could you rephrase?

Sure. After this patch, we have (simplified):

void netif_napi_set_irq(struct napi_struct *napi, int irq, unsigned long 
flags)
  {
	struct irq_glue *glue = NULL;
  	int  rc;

  	napi->irq = irq;

  #ifdef CONFIG_RFS_ACCEL
  	if (napi->dev->rx_cpu_rmap && flags & NAPIF_IRQ_ARFS_RMAP) {
		rc = irq_cpu_rmap_add(napi->dev->rx_cpu_rmap, irq, napi,
				      netif_irq_cpu_rmap_notify);
		.
		.
		.
  	}
  #endif

	if (flags & NAPIF_IRQ_AFFINITY) {
		glue = kzalloc(sizeof(*glue), GFP_KERNEL);
		if (!glue)
			return;
		glue->notify.notify = netif_irq_cpu_rmap_notify;
		glue->notify.release = netif_napi_affinity_release;
		.
		.
	}
  }


Both branches assign the new cb function "netif_irq_cpu_rmap_notify()" 
as the new IRQ notifier, but the first branch calls irq_cpu_rmap_add() 
where the notifier is embedded in "struct irq_glue". So the cb function 
needs to assume the notifier is inside irq_glue, so the second "if" 
branch needs to do the same.


> 
>> I think this cannot be changed as long as some drivers are directly
>> calling irq_cpu_rmap_add() instead of the proposed API.
> 
> Drivers which are not converted shouldn't matter if we have our own
> notifier and call cpu_rmap_update() directly, no?
> 

Only dependency is that irq_cpu_rmap_add() puts notifier inside irq_glue.

> Drivers which are converted should not call irq_cpu_rmap_add().

Correct, they don't.

