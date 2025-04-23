Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8CCA9981A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Apr 2025 20:43:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 860BE412A0;
	Wed, 23 Apr 2025 18:43:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5m8y55ugjqC3; Wed, 23 Apr 2025 18:43:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36C91412A1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745433804;
	bh=IOqsAs9+bV1fzl3I8clgIggoxV+My9egA9zqJC0Qd0A=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zH4/lPpWV/SGhoPOE0g8VRyrpjvQ4PighAZ/BTp1iyTOERcmvfTVF48PkrsrOUvLi
	 odlBmAGrRBd1QWxXQs9RCDSaCTy9eBvXrhJRbE12yuBjDw9mA7xzoIL5cvvRjpusZW
	 AJqHNIi9MnKVO/nne6baatFczSIFaIaF19UAsP/ffnORMg2rJiuKnWaNsoa0pGqr80
	 CnbcFOuyXDMna4h7t4AE5hIwFEKX/RICx0sa5ns4bgU/ImcFufL5UDhwUePWgSK5oD
	 HfB3f61np+izC3oO6LxuUncGtq2N6vyNqtKtx4GOflLt/FfF/5Nv3kYqGjOsxG1fZ9
	 peai5pG6EY6qg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 36C91412A1;
	Wed, 23 Apr 2025 18:43:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 339811BC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Apr 2025 18:43:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 18EF3412A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Apr 2025 18:43:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zaf1KQ27JHL2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Apr 2025 18:43:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EFA7741296
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EFA7741296
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EFA7741296
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Apr 2025 18:43:20 +0000 (UTC)
X-CSE-ConnectionGUID: xlCE9WPlRI68ooNuXvBCnw==
X-CSE-MsgGUID: 60o6+mhWThOSa434Z5VHyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11412"; a="46924876"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="46924876"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 11:43:20 -0700
X-CSE-ConnectionGUID: IGLN+JOYQ0KIpwa/M6fNww==
X-CSE-MsgGUID: ziO1VxYsRcKfhOCqQE2eow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="137251222"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 11:43:20 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 23 Apr 2025 11:43:19 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 23 Apr 2025 11:43:19 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 23 Apr 2025 11:43:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P4sDQNaVXkXYxPNidm5tBmT9nS1NFpTIeNYfzxKLliO2SPRYlExu9MqiOQjZUaybDL/P38hNzb7lP676Tc++yKd4ZkNeO2SOy5T4rDX53QNpthwrcnw5YQP2FgcS5pWXJEsMQmj/WjlXvOaNJ2FDukveXtd00MKtrLJGM0psuMb9bf4GBolZ0m1Cv7+aHS0gw+RSBrpXAWil8N+9/2mIhjWpLGg/eNsP9Tn0YzENJATsNQoQ36/Ca4FC0zS7XL1oEyDqCe2u9Ed5EY5UW/Kv+YTG2QA4BQVmyb2EUPYEmv6ueAtyvftEj2ZtaQ0EiNbHnAPu2q/04aCDQM0486fu+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IOqsAs9+bV1fzl3I8clgIggoxV+My9egA9zqJC0Qd0A=;
 b=J25bKD3UH/bCj8ROtZ+I+zVu+29QbdYSCVBHtdz7o4CWEZoMnB44XElymVdG1lJ0u9m9pCNm/U55fVMt28tmp4cnXTeQpIrmaX9I9tzLzhh7ZkrbmBizTBqCLxLrwCmJL/tS6bGM9jeZLFWivgSNarH/HT3jHYJXQZmV6DsfLdwfrUHHwGy2Wgt+IaDfWitf2MUiT3EndGnNX6XT6zEKAbWUK/27PuZMXhqwGAZvasDj1gPcQqPOc1kEI8TgAzvzI4SDVXD4xIKDLpsBoExoKRj1OQB+O0E74Al+/87RWvveNlNxTiIOSRPrYShPNb/qeMuCSVgAtgqI8hNEFPlFRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by CO1PR11MB4788.namprd11.prod.outlook.com (2603:10b6:303:97::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.23; Wed, 23 Apr
 2025 18:43:14 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%4]) with mapi id 15.20.8678.021; Wed, 23 Apr 2025
 18:43:14 +0000
Message-ID: <f682770e-0159-452d-9e7c-ad44a354ef67@intel.com>
Date: Wed, 23 Apr 2025 12:43:03 -0600
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <sridhar.samudrala@intel.com>, <aleksandr.loktionov@intel.com>,
 <aleksander.lobakin@intel.com>, <dinesh.kumar@intel.com>,
 <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>, <almasrymina@google.com>,
 <willemb@google.com>
References: <20250417221239.1390721-1-ahmed.zaki@intel.com>
 <20250417221239.1390721-4-ahmed.zaki@intel.com>
 <4626bc69-9215-4e31-bdb2-7324d9c22a97@molgen.mpg.de>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <4626bc69-9215-4e31-bdb2-7324d9c22a97@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0346.namprd03.prod.outlook.com
 (2603:10b6:303:dc::21) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|CO1PR11MB4788:EE_
X-MS-Office365-Filtering-Correlation-Id: 23c554d5-a856-4372-37dd-08dd8296b482
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZXNZQ3BOWnJ0OEM5RlQwZW1zYnpya2s0dDRqRzRnNG9Ha3p0K1JNc0FjbjhW?=
 =?utf-8?B?ajBkVVpFNjNXMXV2L0ZyMDFuVkI3Q0lZaXdrdGg2MzJ1ek41Z0dxT0VTd1ll?=
 =?utf-8?B?OHdFeEJoS0JuWDNTV01JaXBFaXFmcTNxdFY0di9DeWQrUmN6cWk0VDFIaGZC?=
 =?utf-8?B?N0M4VU9KekFseFVwZy8zcE1iZ3p4eUJlb3VPNmx2RmhMWE5kTnN1K0FVYXFQ?=
 =?utf-8?B?em1qQjhZcWZQQ25sM05vMzlFQTNLeW1idXp2aTl4bVJFNFc1MWs0RXZHM3N0?=
 =?utf-8?B?QnBvdi9tcjZCZHZjNGltdmVLNFlCTnY5YldnOTJ6VUlKNmt6a1o3SklJVkdl?=
 =?utf-8?B?WEd6RXVYRlREYjJQdnVWejJlUFZFa1d0Zm9YQTNEa0J5dzVIbU5lcTA0WWFo?=
 =?utf-8?B?M2RHZkQ4OEROc0kxMFRTQTBHUUpoRzJGZ0pDR29ORmdhTnJJUDh4Qk9tUXRN?=
 =?utf-8?B?QmpmQ2pIblluK1JHZmZ0UUw2ekpyV3ZXZ25aRURwdkNYZ3llTmMzaVE3ak90?=
 =?utf-8?B?SGJ2Kyt2YUxvcy9iQ2FUdFdTZ1ovNXl0ZlU1WVpYSzY5MHJndkpCUkMyRmQr?=
 =?utf-8?B?WlZPOTZsMjZIYllWaHR4T25UY3lMS2VWTFF6OHlmY3R2Y0FCZnZ0Mnlkd3lS?=
 =?utf-8?B?bEJSdis5ejRvaFQ3VFlQN1lxZitNc2oyTks2WHd3TVphcHJGTE90amZqWVBQ?=
 =?utf-8?B?cVU3d2xnYzdwdHB6KzM1ZUNsUUN2THN4VkxITEhycktOSW5TbWdMSGZCOWd6?=
 =?utf-8?B?ODVnYUtvVzF5QTQwZ0ljRm5EaDlqRXFpYjhRRjlBanFGRVB0eU9rWkc5dFVx?=
 =?utf-8?B?OFR6Ynh6amZ4VUlzZGF5cVI5YzNPL1hWaFhySXMwTzllZ3d5RWpDZXpWMEVy?=
 =?utf-8?B?L20wVUh5VzVxeE1EU0x2UXBtTGNpQjZMS3ROSnhyY0NXZVY3ZGx5TXBycEM3?=
 =?utf-8?B?Tm5GUko0NWxPZHU3UWFGL2tIN0Vjd3YwZ3haY01jYmQyL2Nqb2VTY0I5QXZa?=
 =?utf-8?B?WHhHc1RrZUpuMmM1bTAwT3o0ZTlzNUh3cUtBdGxETlE2MXdBS0s4dUFPKzhm?=
 =?utf-8?B?cENubUxUSkc5YTBPNDNvZG9ucUEvN2psZXppWXpNWW15RkRReXFQemt0YXQy?=
 =?utf-8?B?MVZVUTRpQWxqOVBYNHVQV3E2MzVabitjVUpwR2VKSG5IdldvV3JwUXhkQXVp?=
 =?utf-8?B?a0IxMkVMNUFad1VjMWVUVi8za2w4MjFkOVgwOXliUjRuZ3ZIKzNDYy9pSjkw?=
 =?utf-8?B?bEs3WjFxMHZrbVMrOXhKNS9NTHRQNExnMXliNVREa3NrbmZKcXczVU0xdkNs?=
 =?utf-8?B?cFZHLzN2VDFtT0ZxT0p1R3FockJ0dEh5SmpQTTlBS1JLSHhVME1MQW1leDNS?=
 =?utf-8?B?K2F6cGxwVkdNeHhVTmN5NS84WHB0OXNvQlh1a3l3a2NvaEpDdjA4eHJmMTY3?=
 =?utf-8?B?dXh1ak5BTnVHdG1wb3hPdEpOcUVOS0d4U3c2K3dYWHJZYTlqVzVrVnN5L2w4?=
 =?utf-8?B?VnJDeWcxV3FVeHhRemZXWHhTamRUVVNZeDhZV2dvTS9HVHhoeEV1ZTNmbkJ6?=
 =?utf-8?B?dGJQNWVqT3Vhb0JYZDZ2WkpxK2laWnZVNmVEdENwR2RnK1p6N1lJNWNsYjVa?=
 =?utf-8?B?dU9QOGZ5eUdHSS9oamU4K3VQSkIydy9IRU4rQ1VLcVFSVkVmSHF4WE9kc2gr?=
 =?utf-8?B?anpPL1V3VEV2ZlVPRERJaUd5MFRTVHMxRklWbW9vN1dCekR0MzN5c3FXOGRK?=
 =?utf-8?B?L3diKzVvRG5WSEZjTTdTYXIyTnAxT0pZTnFaTTdKNTNPQ3R3TzEyZlg0QVB3?=
 =?utf-8?B?dk1IdFRLb3NsdmRXdHdIWTdFYzZkTlpsRVIzRGI3SVZyTStweDh3aEthMUF4?=
 =?utf-8?B?TERhZ3NiYnkyV25GcDZJWXhMeVVWRHRKL09xQlhlcWlsdDF1Mkl3Q3JMNU9S?=
 =?utf-8?Q?LsVZWsp/Y1s=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eDgxMW9UcENFa1B2ZHkrd1hKOVd3T0R6WjhCa0dBZGNiQ0s4MGpyeFBtVzhs?=
 =?utf-8?B?Smtlci82YXdDRlViNXlKV0xndTVsUm0zYXdpamd2bEVmVm0yRllPSmNLeGwy?=
 =?utf-8?B?TmdCbmVWOUV1QzJPb25yZ2crbTMreWNuRVBPckxkRk96UHVhdXppWks0MW9B?=
 =?utf-8?B?UzA3dXN6OVVnL2xWaVdsWWljbzhmejhPbElMYjZ1ZWhOZm9kRnVhTXF0S0t6?=
 =?utf-8?B?VHZyK3ozOE9LL21tTFhpcFNJZ3Qyb1lJV0dqclhqMklLQkdsZmkwOTRvdFBY?=
 =?utf-8?B?QmtYQ2NSYVlNV3hYTTlMWmVrZHdoYzYrVkU2K1hESlV6WFhmNEhnYUVnaHh1?=
 =?utf-8?B?bi9kV1ZWZnZjY2Q0V0VnTFBEaDI5SUxHZVp2VDh1eHVLZ3ZQTGM1ZmtvOWRW?=
 =?utf-8?B?Y1Q0TE8zYXNVdSthMW1MMFlLUGlsYUJrNk92cGlkWEJiTHJGWkMxNVRxd1I2?=
 =?utf-8?B?SEN0YmhxVHV2eC96dDJXU3BXNHBVN1RyeHV2U3haVUpDa1VVREg4c213dGcx?=
 =?utf-8?B?U3ZFd3ZHMTVKa2FsbXN4U3NDVkxFWHR5b1VBQVpMZDJISjFEcFZxSnJQK0NG?=
 =?utf-8?B?Q3hCKzlzOUdsYTR6a21qWWRtUUxjbVdBQXE3bzBLcFdVZC9rL1NSdktLR0FP?=
 =?utf-8?B?K01jdENLK2V3UWlwRFpTd0o1NkdYR0xYcXg4S2xIWC8ybEtXcG5Qa2VGRFpx?=
 =?utf-8?B?YjA4Mzd5TGFUc3RrMTdBNlM2WFVYcjNXM3dxdFNkQWZyenlEeGJPY2dUMmNs?=
 =?utf-8?B?TFZYTWViMUc4WC9nQ0tHS2RkcVFOLzMzRlZQdDMxV2RTZ0Zyb1dzZFRHMytp?=
 =?utf-8?B?Uk5CMDU2L2ozNjdqSTZtZ2hZc2NoQ3NiYS8ycE5Mc0FHMUtFM2Z1NkFQZGZM?=
 =?utf-8?B?YVBaVVk5bk1vaG9LaXF0T01sa21QMmJEeEMyNzh6bnI1dFVQVTNtS0VvOTBE?=
 =?utf-8?B?NHVlZzdlbUZkaWpOZHVUc2x4RWZpVnk1d1IvdXZiczdZWVVmbUkrWTlhYWV6?=
 =?utf-8?B?RXRRTnNwR28yV3NGWUJmakNGTXgrV1poQ3l2MXFQeFplQUVMNDg5ZlpLZVla?=
 =?utf-8?B?N3lrTzN0YzNvMk1iWUlxK0trTXVCMElRNDFnZUV4SlAvMFJ5elFweVJ4aVh6?=
 =?utf-8?B?eXllOTF5azU4UUFXRERVTkhTZUM5YkpMSFd2Yk45T25wZDJNd3pDejl4ZVVm?=
 =?utf-8?B?UVlHbnVTZ1I0K2xLT2gvZjV6TmdsLzhmTk5ZRUdXdndzSU92S3IyU0ltSktk?=
 =?utf-8?B?YS9qdkxORU1sOXB2dGYwZ2NCVGxTVU5qSTVpZXFsaHBjeTVaUExwM0dMMXdu?=
 =?utf-8?B?ektlSWtvR3JzQ3JReE1XajBaWFJkNVFNdjlnU3JsM1N4WklycUhuY09lUkRK?=
 =?utf-8?B?NTNSdWlmYlJLRU1aa0VOUC9lRHphUXhXVjNUNnI1ak1XWlluZUVGTnFKN0la?=
 =?utf-8?B?MFJEMDlBMGM5NlpOVjBQWjQ1eDdyNWszZDlJcWFIUlErWUJJRDBXazNsbjV4?=
 =?utf-8?B?aSsrbVZIRmhYQVdPL1dtb3dVMTJwenhHK2Q1SWpwNC82UXBMbE5lVlZLdG9p?=
 =?utf-8?B?RVV3c2d6MkdqSDhSVWdIVzJDWGxXdnRxVEhGWk01cDlnWnpCUUhNOE00NkVZ?=
 =?utf-8?B?c0NNUHRaQ0pGMnQzY0w4NGJUdWdrRGVUK0p2ckh1eUxTUzNGNk1TQnlWamZ0?=
 =?utf-8?B?Q1hlZFhBemM1ZVZXUnEvMFo0a2xDTkUvNElVOFZWZy9hZmczczBIRDVvd0ht?=
 =?utf-8?B?eTZlSzBEM0lwNTJKZE42WHV1eThTclF0SlByZVc5c096a2ZTR3pPRElYd0gz?=
 =?utf-8?B?QVpFaWhFSDRQb2hFc3ByNGVYTyt2ZmFsUkFzWUs5QnVGV2FuY1FsL2hYS2g2?=
 =?utf-8?B?dW44cnIvL1Zid1NvaG1IVTBSRTNob3J3MkZubkRjUHZ5K1NFbHQ0WU5zU2Mv?=
 =?utf-8?B?d3NwQXRPMzU1SGZ1RUxJMGh1Sk5ZV0RDZXdOdUlqdVc3amNMWWtDdlkvUFhS?=
 =?utf-8?B?bStXOTVXaVJJUXlFT3hmQ0xZeTB3K3dYbGRBZG45K0Z1OERLQytaRzBWK2tQ?=
 =?utf-8?B?bHBmNzYzZFVySmRIVnhlVHFPL1ZaUDE3TFRrcldGRk9JUC9tMEpDTmpZOEpt?=
 =?utf-8?Q?z68ZqNk2pg5a2qhURwXFuPxhk?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 23c554d5-a856-4372-37dd-08dd8296b482
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2025 18:43:14.3745 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ymB6f4ugNG54XMj8RUaFiEHTEu/6sdjhnHSDsgRCDv1VP3xX8fN8LEdwVxRKbRFvdxN820UhlVRW+Bc0zpz/iQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4788
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745433801; x=1776969801;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+TPntxRKLIigo9yjTixUP6BhhMSibvldaL9Q6NbwK6o=;
 b=Fn+dvv8slD0x7oZCOfMITj27cLXqlgojsSjF20rmZHU4E42EZHDeAb0p
 MyFiML6OudLqsjVLEhxwIsuodIKyjrnXwZEpr1Aq7CSSXSgNaSD+Qi/K+
 UX73i+CzvD45Qr7z6Vnde1zac4ZEFTtDvBFrazebC9RPr95Fxh8ybyL0T
 6xVqvl6r3kRZBrc5WDBBvUjbTmc4U3BWiP8qwZYkq/TdWSwOa1AJqhj3q
 bwB2/ztA65R61xqype7kJwbFEMMXEpTa5t/KFzQnJPvJGrpok9afK+9BR
 h1cF0lWxI4XTJEmTm9rGtsL/KPGkqsv0RF0+ubUrYS/1hS+/hZ52tG5JP
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Fn+dvv8s
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 3/3] idpf: add flow
 steering support
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



On 2025-04-18 3:24 a.m., Paul Menzel wrote:
> Dear Ahmed,
> 
> 
> Thank you for your patch.
> 
> 
> Am 18.04.25 um 00:12 schrieb Ahmed Zaki:
>> Use the new virtchnl2 OP codes to communicate with the Control Plane to
>> add flow steering filters. We add the basic functionality for ADD/Delete
> 
> Minor thing: ADD/Delete are spelled differently.
> 
>> with TCP/UDP IPv4 only. Support for other OP codes and protocols will be
>> added later.

Sure, will fix it.

> 
> Although it seems quite a lot of boilerplate, still for a diffstat of 
> more than 400 lines, a paragraph about the implementation would be nice 
> to have.
> 
>> Standard 'ethtool -N|--config-ntuple' should be used, for example:
>>
>>      # ethtool -N ens801f0d1 flow-type tcp4 src-ip 10.0.0.1 action 6
>>
>> to route all IPv4/TCP traffic from IP 10.0.0.1 to queue 6.
> 
> Is there a way to verify, that the traffic really goes to queue 6?
> 

I usually use "ethtool -S <dev> " and grep on the rx queue number while 
sending a lot of traffic that matches the filter info.


>> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
>> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
>> ---
>>   drivers/net/ethernet/intel/idpf/idpf.h        |  13 +
>>   .../net/ethernet/intel/idpf/idpf_ethtool.c    | 298 +++++++++++++++++-
>>   drivers/net/ethernet/intel/idpf/idpf_lib.c    |   5 +
>>   .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 104 ++++++
>>   .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   6 +
>>   5 files changed, 421 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ 
>> ethernet/intel/idpf/idpf.h
>> index c21903310354..1c791f5ca601 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf.h
>> +++ b/drivers/net/ethernet/intel/idpf/idpf.h
>> @@ -252,6 +252,12 @@ struct idpf_port_stats {
>>       struct virtchnl2_vport_stats vport_stats;
>>   };
>> +struct idpf_fsteer_fltr {
>> +    struct list_head list;
>> +    u32 loc;
>> +    unsigned int q_index;
>> +};
>> +
>>   /**
>>    * struct idpf_tx_tstamp_stats - Tx timestamp statistics
>>    * @tx_hwtstamp_lock: Lock to protect Tx tstamp stats
>> @@ -406,6 +412,8 @@ struct idpf_rss_data {
>>    *              ethtool
>>    * @user_flags: User toggled config flags
>>    * @mac_filter_list: List of MAC filters
>> + * @num_fsteer_fltrs: number of flow steering filters
>> + * @flow_steer_list: list of flow steering filters
>>    *
>>    * Used to restore configuration after a reset as the vport will get 
>> wiped.
>>    */
>> @@ -417,6 +425,8 @@ struct idpf_vport_user_config_data {
>>       u32 num_req_rxq_desc;
>>       DECLARE_BITMAP(user_flags, __IDPF_USER_FLAGS_NBITS);
>>       struct list_head mac_filter_list;
>> +    u16 num_fsteer_fltrs;
> 
> Is there a reason to limit it to u16? `unsigned int` would use the 
> default “system size”, that is probably also 16.

Looking again at this, I think u16 might be too small. However, I will 
change it to u32 and not unsigned int:
1 -  it might be used to check the hardware limits, so I like constant 
size more than "system size".
2 - this matches ethtool_rxnfc.rule_cnt.

> 
>> +    struct list_head flow_steer_list;
>>   };
>>   /**
>> @@ -878,4 +888,7 @@ int idpf_sriov_configure(struct pci_dev *pdev, int 
>> num_vfs);
>>   u8 idpf_vport_get_hsplit(const struct idpf_vport *vport);
>>   bool idpf_vport_set_hsplit(const struct idpf_vport *vport, u8 val);
>> +int idpf_add_del_fsteer_filters(struct idpf_adapter *adapter,
>> +                struct virtchnl2_flow_rule_add_del *rule,
>> +                bool add);
> 
> Is it possible to pass the op, so it’s clear what calling the function 
> does, and one does not have to look up the signature definition?

Sure, I can pass the op codes.

> 
>      idpf_modify_fsteer_filters(… , virtchnl2_op op);
> 
>>   #endif /* !_IDPF_H_ */
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/ 
>> net/ethernet/intel/idpf/idpf_ethtool.c
>> index 7a4793749bc5..35e1d5694212 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
>> @@ -3,6 +3,7 @@
>>   #include "idpf.h"
>>   #include "idpf_ptp.h"
>> +#include "idpf_virtchnl.h"
>>   /**
>>    * idpf_get_rxnfc - command to get RX flow classification rules
>>

<...>

>> +/**
>> + * idpf_add_flow_steer - add a Flow Steering filter
>> + * @netdev: network interface device structure
>> + * @cmd: command to add Flow Steering filter
>> + *
>> + * Return: 0 on success and negative values for failure
>> + */
>> +static int idpf_add_flow_steer(struct net_device *netdev,
>> +                   struct ethtool_rxnfc *cmd)
>> +{
>> +    struct idpf_fsteer_fltr *fltr, *parent = NULL, *f;
>> +    struct idpf_netdev_priv *np = netdev_priv(netdev);
>> +    struct idpf_vport_user_config_data *user_config;
>> +    struct ethtool_rx_flow_spec *fsp = &cmd->fs;
>> +    struct virtchnl2_flow_rule_add_del *rule;
>> +    struct idpf_vport_config *vport_config;
>> +    struct virtchnl2_rule_action_set *acts;
>> +    struct virtchnl2_flow_rule_info *info;
>> +    struct virtchnl2_proto_hdrs *hdrs;
>> +    struct idpf_vport *vport;
>> +    u32 flow_type, q_index;
>> +    u16 num_rxq;
>> +    int err;
>> +
>> +    vport = idpf_netdev_to_vport(netdev);
>> +    vport_config = vport->adapter->vport_config[np->vport_idx];
>> +    user_config = &vport_config->user_config;
>> +    num_rxq = user_config->num_req_rx_qs;
>> +
>> +    flow_type = fsp->flow_type & ~(FLOW_EXT | FLOW_MAC_EXT | FLOW_RSS);
>> +    if (flow_type != fsp->flow_type)
>> +        return -EINVAL;
>> +
>> +    if (!idpf_sideband_action_ena(vport, fsp) ||
>> +        !idpf_sideband_flow_type_ena(vport, flow_type))
>> +        return -EOPNOTSUPP;
>> +
>> +    if (user_config->num_fsteer_fltrs > idpf_fsteer_max_rules(vport))
>> +        return -ENOSPC;
>> +
>> +    q_index = fsp->ring_cookie;
>> +    if (q_index >= num_rxq)
>> +        return -EINVAL;
>> +
>> +    rule = kzalloc(struct_size(rule, rule_info, 1), GFP_KERNEL);
>> +    if (!rule)
>> +        return -ENOMEM;
>> +
>> +    rule->vport_id = cpu_to_le32(vport->vport_id);
>> +    rule->count = cpu_to_le32(1);
>> +    info = &rule->rule_info[0];
>> +    info->rule_id = cpu_to_le32(fsp->location);
>> +
>> +    hdrs = &info->rule_cfg.proto_hdrs;
>> +    hdrs->tunnel_level = 0;
>> +    hdrs->count = cpu_to_le32(2);
>> +
>> +    acts = &info->rule_cfg.action_set;
>> +    acts->count = cpu_to_le32(1);
>> +    acts->actions[0].action_type = cpu_to_le32(VIRTCHNL2_ACTION_QUEUE);
>> +    acts->actions[0].act_conf.q_id = cpu_to_le32(q_index);
>> +
>> +    switch (flow_type) {
>> +    case UDP_V4_FLOW:
>> +        idpf_fsteer_fill_ipv4(hdrs, fsp);
>> +        idpf_fsteer_fill_udp(hdrs, fsp, true);
>> +        break;
>> +    case TCP_V4_FLOW:
>> +        idpf_fsteer_fill_ipv4(hdrs, fsp);
>> +        idpf_fsteer_fill_tcp(hdrs, fsp, true);
>> +        break;
>> +    default:
>> +        err = -EINVAL;
>> +        goto out;
>> +    }
>> +
>> +    err = idpf_add_del_fsteer_filters(vport->adapter, rule, true);
>> +    if (err)
>> +        goto out;
>> +
>> +    if (info->status != cpu_to_le32(VIRTCHNL2_FLOW_RULE_SUCCESS)) {
>> +        err = -EIO;
>> +        goto out;
>> +    }
>> +
>> +    fltr = kzalloc(sizeof(*fltr), GFP_KERNEL);
>> +    if (!fltr) {
>> +        err = -ENOMEM;
>> +        goto out;
>> +    }
>> +
>> +    fltr->loc = fsp->location;
>> +    fltr->q_index = q_index;
> 
> fltr->q_index in the struct is unsigned int, and here it is u32, isn’t it?

Good catch, I changed fltr->q_index to be u32, this matches 
fsp->ring_cookie.

> 
>> +    list_for_each_entry(f, &user_config->flow_steer_list, list) {
>> +        if (f->loc >= fltr->loc)
>> +            break;
>> +        parent = f;
>> +    }
>> +
>> +    if (parent)
>> +        list_add(&fltr->list, &parent->list);
>> +    else
>> +        list_add(&fltr->list, &user_config->flow_steer_list);
> 
> You could use the ternary operator.
> 

Sure, will do.

>> +
>> +    user_config->num_fsteer_fltrs++;
>> +
>> +out:
>> +    kfree(rule);
>> +    return err;
>> +}
>> +

<...>

>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/ 
>> drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>> index 06c33b638e60..0f827a184176 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>> @@ -890,6 +890,37 @@ static int idpf_send_get_caps_msg(struct 
>> idpf_adapter *adapter)
>>       return 0;
>>   }
>> +/**
>> + * idpf_add_del_fsteer_filters - Send virtchnl add/del Flow Steering 
>> message
>> + * @adapter: adapter info struct
>> + * @rule: Flow steering rule to add/delete
>> + * @add: True to add filter, FALSE to delete
>> + *
>> + * Send ADD/DELETE flow steering virtchnl message and receive the 
>> result.
>> + *
>> + * Return: 0 on success, negative on failure.
>> + */
>> +int idpf_add_del_fsteer_filters(struct idpf_adapter *adapter,
>> +                struct virtchnl2_flow_rule_add_del *rule,
>> +                bool add)
>> +{
>> +    int rule_count = le32_to_cpu(rule->count);
>> +    struct idpf_vc_xn_params xn_params = {};
>> +    ssize_t reply_sz;
>> +
>> +    xn_params.vc_op = add ? VIRTCHNL2_OP_ADD_FLOW_RULE :
>> +                VIRTCHNL2_OP_DEL_FLOW_RULE;
>> +    xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
>> +    xn_params.async = false;
>> +    xn_params.send_buf.iov_base = rule;
>> +    xn_params.send_buf.iov_len = struct_size(rule, rule_info, 
>> rule_count);
>> +    xn_params.recv_buf.iov_base = rule;
>> +    xn_params.recv_buf.iov_len = struct_size(rule, rule_info, 
>> rule_count);
>> +
>> +    reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
>> +    return reply_sz < 0 ? reply_sz : 0;
>> +}
>> +
>>   /**
>>    * idpf_vport_alloc_max_qs - Allocate max queues for a vport
>>    * @adapter: Driver specific private structure
>> @@ -3491,6 +3522,79 @@ bool idpf_is_capability_ena(struct idpf_adapter 
>> *adapter, bool all,
>>           return !!(*cap_field & flag);
>>   }
>> +/**
>> + * idpf_vport_is_cap_ena - Check if vport capability is enabled
>> + * @vport: Private data struct
>> + * @flag: flag(s) to check
>> + *
>> + * Return: true if the capability is supported, false otherwise
>> + */
>> +bool idpf_vport_is_cap_ena(struct idpf_vport *vport, u16 flag)
> 
> Spell it out to enabled?
> 

Some existing functions already use "ena", like idpf_is_cap_ena_all(), 
idpf_is_cap_ena(). I'd rather follow that for now.

I will send v5 with the changes shortly.

Thanks for the review.
Ahmed

