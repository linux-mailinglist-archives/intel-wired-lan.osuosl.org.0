Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF5E9F6985
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 16:09:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 591A08494C;
	Wed, 18 Dec 2024 15:09:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8LVRJK6Jss2d; Wed, 18 Dec 2024 15:09:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 21D90848EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734534578;
	bh=RvykNPN4wfuaGgTCap6zMmalMiw1VsKjExFKNLOhAc4=;
	h=To:CC:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wMb2nWAPSAXRP7zQyChl9mYb/a5xjM73o9/u8uCQOwARh8NjDRkDSQHCgEGepQxNW
	 qB5CEHbA9Gi9I9xbzundQ3Fw9bwj63jxui6E36LX7n0D5jQj48jrrx7u/9ZxSGv6D/
	 7ebyuhLK+Gp6iF4bortlyHurL182Fw+q3Spu+Ld31OyNz0eCbfoewpb+5EsRTeiqyC
	 sPRgK+epBRIItffNvdJzhSNFGY2TJ2asLZ6WLDKZyJ8RHOuqcAihu/iUqvyPQAf9BV
	 TN7AWfn80LmA0M0HVZQe3tOEG55/Gz9OegelkhMJsFsgLlg9StQe/qPTVSMmU87Zsw
	 Ss1U3kEalM8pg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 21D90848EB;
	Wed, 18 Dec 2024 15:09:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0AC9BC0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 15:09:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DEDA4846DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 15:09:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RRQjO0HywRe5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 15:09:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AE8A3845D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE8A3845D1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AE8A3845D1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 15:09:35 +0000 (UTC)
X-CSE-ConnectionGUID: KaU6cBCKSz+33lCQvY7mCQ==
X-CSE-MsgGUID: UunlkK0cRIWcMcEcRB5hUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="46404000"
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="46404000"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 07:09:35 -0800
X-CSE-ConnectionGUID: wxmEhQf5Smems7nlVkRfCA==
X-CSE-MsgGUID: xmBZW36XQ1ud3F/xVoPFMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="97958550"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2024 07:09:33 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 18 Dec 2024 07:09:32 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 18 Dec 2024 07:09:32 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 18 Dec 2024 07:09:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JrIy4jpbpzhszUYC5B/mPPLVRKMhDSetAPSuhS2Pwb/+cXdk49rdIPBEhe3cqHvjUNPcbyZ20TXDsTvmYDu7cNzftY5A+H2zzOtki6f2j0/38aN5VoxZH2/0aKh913thuR6L9BS/bAmyJVTfj6baugs4eXQdPDzc7b0NxbGR2Io52Hn79z82ywreZuFtcN8YHZzqxiXMhFA6vc+HbWzHHmRfPu1soMOomcjCHDOVG1dp28q44Sn21KIRZd7FmNV96kStanqDj8UB9H9Ic1CqcEldby2oQo7/1I24C4ENF8esBQVXWpsj+FMkb95L/IwK0uxnUbFMDBrbjs66nH6m3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RvykNPN4wfuaGgTCap6zMmalMiw1VsKjExFKNLOhAc4=;
 b=CXGea51BSrIJR3XJPnwlNV6CvqWhSlPVIa14TW2voBCrdu0mYDSJKFo9K+VaWaCi+hmgpetDrviyGccogBNRHFX7/whsAbcWKndWHm6eYAX5ENpBn87OvL3gX1FIOiisJIrvbG6PhlyVGO9CoNV1viBvIdECfk6LLLX7IKiw/UUu4nIz0+hXuxOPIFzeemmdWvR5czz4d02APJaiQpbH32t0wF9YyGItJL7rkto+t3CwfxCsAQjYh/UZ5nRWt2hmK0DtMjkc80hC3bj+uWJj9PFaoAFQDuXLQMNDRJIfCpfiM+9lmWr1umHJ6/PL0BG48TLQQnZV4aHvJ+NfCdWFvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BY5PR11MB4194.namprd11.prod.outlook.com (2603:10b6:a03:1c0::13)
 by CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.24; Wed, 18 Dec
 2024 15:08:17 +0000
Received: from BY5PR11MB4194.namprd11.prod.outlook.com
 ([fe80::9d17:67a6:4f83:ef61]) by BY5PR11MB4194.namprd11.prod.outlook.com
 ([fe80::9d17:67a6:4f83:ef61%6]) with mapi id 15.20.8272.005; Wed, 18 Dec 2024
 15:08:16 +0000
To: Gerhard Engleder <gerhard@engleder-embedded.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-pci@vger.kernel.org>
CC: <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <kuba@kernel.org>,
 <edumazet@google.com>, <pabeni@redhat.com>, <bhelgaas@google.com>,
 <pmenzel@molgen.mpg.de>, Gerhard Engleder <eg@keba.com>, Vitaly Lifshits
 <vitaly.lifshits@intel.com>
References: <20241214191623.7256-1-gerhard@engleder-embedded.com>
From: Avigail Dahan <Avigailx.dahan@intel.com>
Message-ID: <cd7d3122-5231-bb7c-cb2c-7b8b94a46968@intel.com>
Date: Wed, 18 Dec 2024 17:08:09 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <20241214191623.7256-1-gerhard@engleder-embedded.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0015.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:5::7)
 To BY5PR11MB4194.namprd11.prod.outlook.com
 (2603:10b6:a03:1c0::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4194:EE_|CY5PR11MB6139:EE_
X-MS-Office365-Filtering-Correlation-Id: ea60d329-e22e-4e3f-fdb4-08dd1f75ccf2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R3JqYmZEUU1SYWFqZFJnSTg5dUR2VHJIV1E4V0xxdFBTQncvL2ExOW1SZWxH?=
 =?utf-8?B?ZjB2QWY2WjJtbWxkVElrUk5EQlQyTXUzQnJDMjZucjJTZnRvSFRMTklubDdV?=
 =?utf-8?B?aUdrUjBiNVhSdmJmcXEyUERTNXFGcW9XWkZFRkk1eUJxOEszUzNpYTRibjl4?=
 =?utf-8?B?RnNuakdlLzNGTlpxNVFsYVlEb3pWTGFiWTBlNXRBR0d2cmVEbHV4Z2pBeFE5?=
 =?utf-8?B?bEQ1R3h3WTVGWm8vR3QrbXFYWVhyRmlCSkd0cnZQK2ozdEN3aE1uRW9LRUg2?=
 =?utf-8?B?czNkeTdtRlZoWEpTVWcxaC9yS3hMaytnK245eXAzM0RVRjV3d3paYWNWOXVL?=
 =?utf-8?B?RjlKRlpuejY3Y2cyaEZtMDFQcDAwV1UvR2xyYnJCYmpReldGak5GYUZyc0Z6?=
 =?utf-8?B?eW44TE80Z0h3ZlJBNGdiOEFHYkI4eExBYUZaQzNOdWFBR1VhNjl1R1VuUDFM?=
 =?utf-8?B?M3cvSzZEVFlQcDNValRMdmIwa3BlbG1lUFRFOVJhdjNiY2MyYWlzV2NFVGE0?=
 =?utf-8?B?WHByM0xJTnBuWHZnbmt5M0xPVTJZTEJ5QnJJMnN4a1VaUTVaaUpicHkrQXRI?=
 =?utf-8?B?TEs1dmJreUt6SUtiMlUyM0xOY2FGTFdGTmk1a0lKcDN6c283dDltQ2dzYTdz?=
 =?utf-8?B?Q0x3U1pzeG42VjNsU0lteTdvWUM4VEhQNkNSQkNNZDBvcm1hWS9Zb2ZHaklm?=
 =?utf-8?B?ZEloVXZCU2lXNkFmUnRRSktocHZVVFpWSC9rUHZ2R3MvSmptWnFKSzBkMFlU?=
 =?utf-8?B?NEttTGhXbkh4d2R2TXZLeHdkMnp4MEtjdEhLYWtIWU1aWXl0TEhXb0k3bk56?=
 =?utf-8?B?K1JNdjc1d24xSlREckV4TnRuTC9uZk9ROW9UMTg0NjV2cG8rTjBpek5QeVZR?=
 =?utf-8?B?T1ZuVkxFWklNd2tBZlJQQVEvWHJLeUhGYkJlZ05hbWt6ZzRCQmFGclFXOUhQ?=
 =?utf-8?B?d3JmWDI2RGM3UDdrZUtrcGwvd0RoTGNHVFRTN2grOVNiRE12NWRWaTNmZHFz?=
 =?utf-8?B?RmRXN0xpYlB0U1MwMGNiWXVGdWx3Yi9GU0hoOE1LWFZZRUhWUU1lMHRoeHJV?=
 =?utf-8?B?UVcwa2t5aFdkM1MrL0hIUnYzVTdZRDJ5UnlnbDA3T29vVlBOZTRaQVBueDFV?=
 =?utf-8?B?azZmODBSN3N6WkwzUTZaYVh5M1M5SGVBTEZ6M3loYXMxUEd0dGZZR0xXckJp?=
 =?utf-8?B?dWxxUER2SkpIS0dIRjZYeHdrejN6Wm5RVkQ5WFB6aTh0SElsSXAwVnFPSS9I?=
 =?utf-8?B?MndxL01xNU5pL0RaWjVoMTIxbGFVVjhJelp6SC9lWjh1aWlvOXR5TDVuMHRD?=
 =?utf-8?B?bjgzQ01hcTQ2UUpaM0o1cDh2ZWE1UFYrMnhlNk9aVzhxd2NjcEY4OEFpbGdn?=
 =?utf-8?B?TlFlZDF6R2pYN21QbElLckd1WWhsdHRPZDN1bTZJWExyNXN3OGZ2azJMVXh5?=
 =?utf-8?B?VndCWXN3d3BoRzJadXY5Ymg3V1d0WVdxeTdpUVdDd2lFQ2c1b056akIrRjVS?=
 =?utf-8?B?ZFFjQWVHM3NORmJVd3FEWFNiWFRoZGRZMjFjS2xDRnFobmFNRHdIZ1Z3VWlN?=
 =?utf-8?B?SDFwVnB3bjNGWFhodVd3cGVLRGN0S1RBazB5QVpiQkRiZDlaRE1uVEd3clJt?=
 =?utf-8?B?eHV3bVFuck0rQzFEOXRnQURHUW1tYUhoeWV1bUViT0pRUGRBaWFBY2RLaWhC?=
 =?utf-8?B?dDZOMFJwT1ZzaElpTkhQRzlRYUo2SzlmNzhCT0xObG11ekdrczJhRXF4V2h3?=
 =?utf-8?B?UlZQTjJ2VkwrWjNPZnhKdDNYUmxialJTelprQi8yWm90OVloNlllQmlDbmg5?=
 =?utf-8?B?VCtqNE5EV0JrL0ZyZjZHdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4194.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b0pKOFk2d0h1V1lQRkE0Zkw3UjFMM3Q3Yk5wZk84VG9lSlRpb1V3TjRuK0Fl?=
 =?utf-8?B?V2hSeUZtOWM1Z3h1dlFYSitBYzQwT0hKS0J5bXBtbWw0NGY2UWRqM0xvcFJ0?=
 =?utf-8?B?ckQwOGtrWXkvRlduNnM0TW5tMFIwYlFoazNDNEJNbzV1Rkk0V0N2dVJRYkla?=
 =?utf-8?B?TS9ScFQ0RE43VnNvcm5Fblc4U2FaSGI0RWxPUzI5Y1czTktTRDFtL1l5YlpF?=
 =?utf-8?B?WW5Ceml6RWZNU2RDZ0lFVloxWHQyOVYySENYWUlnVm9jcnVoMGZEOHpqUjYv?=
 =?utf-8?B?cG5MdlhVNnpWSzZqQjVDVWFqRkpHMFRXOXNUYU9lRGxkSGlIL1l6b2twUjB4?=
 =?utf-8?B?cUc0bE9GSnF0UkxndzdRVFNxYnVKUy9OVjBVM1dnSDl3WWQrNXJWRjZYWVZ0?=
 =?utf-8?B?R0tKNVVlY1NqcnJ2a1dDM092eEd4Q3UrQ3VMNFdoOUJRQjZFSXJvNHIyZ3N5?=
 =?utf-8?B?M2RTZmpHdzdTVk95ZDllRDdGVGZPTXlRV3VaOXlZMW0zUjBMMHY4TnlVZ3hk?=
 =?utf-8?B?VEFzS0poZXZvWFBIYTlXbkVYYmwwb2RDOGxPNmV6Umo5TU95a0R4L1pnd2hU?=
 =?utf-8?B?Smo3V3VmYmt2b0s0ZGduempiMXZDYTVuSFdvaHZVNmYzVG9ObmpybVkxQ2hD?=
 =?utf-8?B?Qm9oOWZkUFNIV3IrcE9XbWFnV3VNQWFFczkyZll2SkIzMFQxZXhHdWZoMDRj?=
 =?utf-8?B?VjF5bHRsWHNUV3poeTE4aFUvYlJUU09rakFuTXhhaWV3VjNjRE9KYlhva2hD?=
 =?utf-8?B?SGhNRUlQd0loeE13M3hldE96SE9QdnBpNFJiMElkejQ2U1M1RHhwb2E3cXFM?=
 =?utf-8?B?WkVqSXJGTjY0UnFHOUQyZ0h3RTN0WjQrczM0SjEySldUWlZPZ3YyYU5KRmdZ?=
 =?utf-8?B?elhpWjR4TGVkRTdyUEtZY1lTbC9rUE9qZWptdSt3SE56ZHpKOXpodFAwUzFH?=
 =?utf-8?B?SGd1UUJUT0o4dUY5VUNYbUNTVm5CREFxZ1ZxMUJvYWVzRFNhZk5YTzRReU1O?=
 =?utf-8?B?bCtPdGY5dmxWdG9oOWMxRm5JUmI3ZVdjWk8wTnZ5ZmVLaTM2QU92bGlvTUFI?=
 =?utf-8?B?UzdrMG92R1JhT2lQN0theS9xVkF4RTZsTmVUK014NmhYS3c1a2w5dHpzQ2VJ?=
 =?utf-8?B?UWlXcG9yb1BwemprNmFBbWhEYzZPdnJBWHdSSDNVQnlIa09LQ2MrZHM4RHhK?=
 =?utf-8?B?NjVOTERZWHJ4dGRPcGdHaitSM1dCbXUrbzB4NXV3ZEcvbHVFU0ZTU1h6TmNa?=
 =?utf-8?B?NGZPUmtEL2lzYnVLMVRNMklYUlVrc1RybmNWRW5mSUdLOEVQSER6US91RjBM?=
 =?utf-8?B?S2V1S1FuTFAvMTVMMi9vOUpnQ1VXZldYR3BDa3BSVjZLM2pVM1lkZlVCVUdv?=
 =?utf-8?B?VG03RUxIUDl5bS9SWGhVam12U1FiSGNkVEJ0UVRjYVYvK21LcFV1MUV3N2g3?=
 =?utf-8?B?Zm5jQmNnQUVCVU1Ec1FrOVFPOVlUc05zUXJaU3RBT2pIeGdQYjhQb1gvdk85?=
 =?utf-8?B?VWptNGxtcEx5NUVwTzFyNUVQWUlWVm1rQzh4MlNNb0pBMnIxUHo1MFNyT3Fl?=
 =?utf-8?B?ZDdZK2d2L2hqelhaRmwxUVYrQyszK3QwRVcrSFdtanUxQXlDZklOWkNjNzlj?=
 =?utf-8?B?RTd1Rzhaa3BKWjBMdFpXdFArREthMnhBT05wVi92bVVWUEpmMEkxWmJodWhI?=
 =?utf-8?B?WkFMMmU2UW1nSVRQZGoxaGtjNWQ4L3JHTVNNY25aV0JDa09yTFV2QWxHT0V1?=
 =?utf-8?B?QVRENGVJSlE5RHBUejNQYUlPQkZVbEE3YXI4aFI5L1ZkQUxxTFd0RXZSKys4?=
 =?utf-8?B?YTdTVkovKzFPdC9OYmp1Z2pxYVRXQjRYam9YMFdyQkd6aTdPOGN3UzRTc3hr?=
 =?utf-8?B?bkhUMkFjczJEWGlJNjlZdDZ1NUVvTjdQVUlYNkN2ck5jcVA3MEJKMzZicU9P?=
 =?utf-8?B?c1M3R2tFa3JtQkc2aWlqVWthVGVBZlE2STNGZnd3QlVZTDdFM040eE5LSXlj?=
 =?utf-8?B?Sm1yZlFiemJTOVUycWtCUEtvOG92Vy9vZnVRN09rYklnTTN1cWpBTW1hbFB3?=
 =?utf-8?B?OWNLdS9raEUyY3Q3Nlg2NzlGdms4UGxGNFVvL3hsR1RiUkMyeHhaM0lidXVO?=
 =?utf-8?B?dlRmTHhUdkVqdHg0b0NjU0t0TDhBSi9ZNWIzSHBuVklZRjlwam1jd3d2UFpR?=
 =?utf-8?B?SGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ea60d329-e22e-4e3f-fdb4-08dd1f75ccf2
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4194.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2024 15:08:16.8327 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PLFtBk7kIwyvAa36Lo+oVVUEIc6/8GCtFABTjWTleIJ6XQD38IK8a1I44RslhgH250JPtL5N+7eYFtuq4xSU3+Z2b+z6l9Qa32TLgthNbNI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6139
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734534576; x=1766070576;
 h=subject:to:cc:references:from:message-id:date:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=N0+akU2c4TNeXVuX7JxA1NkRysbxvjguAuYzZb/2/94=;
 b=QXnsMn32hpoD3oxMwPIcY2b3BQk8zB6g6zrqawNWHwbtGVJLVjxw2q/i
 ZFOUc6eKOVoeAPoKYxKik75w1SgDVOD5ApJyOWhRqFeM1fNZFmAF3yfIM
 34eSRHmv+sJzOBc9mHdmEOs72ocGWZPgHGFFDLImluJiqrrZVbX17RnpG
 p4CVy+hnAPR5gQ2jTcJeNqv/GBR9577TkiHCHNpSOFBFiRxNiaecVYzAb
 0rIJnNROAvdsrgZmoJHwNTYlW6Udyd4HKzhRWEPBnzXJ3vHlSIYxxOqKY
 h/SMW5sqSC1cYziveV5wpkCNjm5gchxcOnTA4JSO2fMX3/Dh5rTTAaoxw
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QXnsMn32
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] e1000e: Fix real-time
 violations on link up
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



On 14/12/2024 21:16, Gerhard Engleder wrote:
> From: Gerhard Engleder <eg@keba.com>
> 
> Link down and up triggers update of MTA table. This update executes many
> PCIe writes and a final flush. Thus, PCIe will be blocked until all
> writes are flushed. As a result, DMA transfers of other targets suffer
> from delay in the range of 50us. This results in timing violations on
> real-time systems during link down and up of e1000e in combination with
> an Intel i3-2310E Sandy Bridge CPU.
> 
> The i3-2310E is quite old. Launched 2011 by Intel but still in use as
> robot controller. The exact root cause of the problem is unclear and
> this situation won't change as Intel support for this CPU has ended
> years ago. Our experience is that the number of posted PCIe writes needs
> to be limited at least for real-time systems. With posted PCIe writes a
> much higher throughput can be generated than with PCIe reads which
> cannot be posted. Thus, the load on the interconnect is much higher.
> Additionally, a PCIe read waits until all posted PCIe writes are done.
> Therefore, the PCIe read can block the CPU for much more than 10us if a
> lot of PCIe writes were posted before. Both issues are the reason why we
> are limiting the number of posted PCIe writes in row in general for our
> real-time systems, not only for this driver.
> 
> A flush after a low enough number of posted PCIe writes eliminates the
> delay but also increases the time needed for MTA table update. The
> following measurements were done on i3-2310E with e1000e for 128 MTA
> table entries:
> 
> Single flush after all writes: 106us
> Flush after every write:       429us
> Flush after every 2nd write:   266us
> Flush after every 4th write:   180us
> Flush after every 8th write:   141us
> Flush after every 16th write:  121us
> 
> A flush after every 8th write delays the link up by 35us and the
> negative impact to DMA transfers of other targets is still tolerable.
> 
> Execute a flush after every 8th write. This prevents overloading the
> interconnect with posted writes.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> CC: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Link: https://lore.kernel.org/netdev/f8fe665a-5e6c-4f95-b47a-2f3281aa0e6c@lunn.ch/T/
> Signed-off-by: Gerhard Engleder <eg@keba.com>
> ---
> v3:
> - mention problematic platform explicitly (Bjorn Helgaas)
> - improve comment (Paul Menzel)
> 
> v2:
> - remove PREEMPT_RT dependency (Andrew Lunn, Przemek Kitszel)
> ---
>   drivers/net/ethernet/intel/e1000e/mac.c | 9 ++++++++-
>   1 file changed, 8 insertions(+), 1 deletion(-)
> 
Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
