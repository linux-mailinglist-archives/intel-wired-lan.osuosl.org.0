Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 115256189F1
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 21:53:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F8E240520;
	Thu,  3 Nov 2022 20:53:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F8E240520
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667508792;
	bh=j3IrMZ6yihmVl4Url1VllHrhZ4bYt/eULyiV3gIGWm0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mF8NUlVcnCa/FedArcsb/G5g4teABusVCjliQkMQqUiSk4ZmbYgcmPn3famc6X0q5
	 fSBNucBfzK9ZxWdBdtAxoYfQJX5Oy8CTrv85HZ+uHDVEuiNrrrbpIpXnL98k+8XdIx
	 /hS+tN39jsMBteRnM63MpAKrKSpfJesVOjFmEGPSB89jJ0zeFq/wP1vXFwVnfjzN18
	 BQyg1kt8/rukAquSXKTH6fXyxVa/Et4WZheTXiUoKgkS+PxUdn8+6+gadnk4g5d7HX
	 IUfO3LLs9/eDvaow5AZf8dwkuziYtikOI12ygZ+X1y8VTLLu9iQo+KEV/CjmYZ2EIO
	 8omkPoMAbAMiw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tNBFzDF2Mdvh; Thu,  3 Nov 2022 20:53:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5FC3C40BC0;
	Thu,  3 Nov 2022 20:53:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5FC3C40BC0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5E0371BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:53:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3774A4185C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:53:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3774A4185C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4rBdlZII7F9N for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 20:53:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA33341858
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EA33341858
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:53:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="396104205"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="396104205"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 13:53:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="760084671"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="760084671"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 03 Nov 2022 13:53:04 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 13:53:03 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 13:53:03 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 13:53:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=asI/1UgIuBZX7hZ6UPzPlyPG+6aM4Jzmob5yepKIqrv74AgGIj8+JPEswsYhqs4/H1fO1TsaBT7MeXI88pZ4Ly0MJ/XNj0c5Vi5/yXOLKhxmrsFuoJZPc3SKbyTirJ2h6onu5yRXUKu9D1TsfMAkfIhi27+TBddSLox/gnTxWD8Hp7IvpDfPTVVTib7mUUn5X2a3WkMmRTwFaLeEE8uUHnhJGSnGsr9cEAj77GRXsFlrvkShE1DTlSm9XNKRMOnBh6ETdUREfEhw+IY0d735KCwebALEGqwDNwoOKrBrlekeXzxj4CxodA+39771h+x4uhNckRmc9ZQHZF0+abb3/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jv9uOCEyK0FjMZ9GjlhsGN7VFQk9nk7Q2V/Gsb7XT4A=;
 b=XWAAR1ZOQ/tpkwxglhVoOp1aVH5ANtv0SP7LlsL6UXXumuAU9Fr64rddfTK2KuXrWlSFMrZosnXQ5DzZtGC7Y/Kgzzz3qL89JukIC1CdY6Zm+frKdpD7PuEpwtTp77BF/v+hbYhci/QDveanZ6JHcqGGf9NLJl2YtmhaO6aktv6DsgzN4uCROuXAlMfCM1nrhds1Pn5EYcyNsJBwhvFBdCnqL4TpMaGHsmI7EvNfWHfF9OlbdCBwu5alU2UaVH6vXzTqSqfYTQtAgaH7zrSnCxeVQ2IY05Wr2nv4HWgTGla8FQ0F21bXjJTreOIS+KemKiqne98AtKuNfx1pXvFRvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CY5PR11MB6257.namprd11.prod.outlook.com (2603:10b6:930:26::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Thu, 3 Nov
 2022 20:53:01 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::d408:e9e3:d620:1f94]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::d408:e9e3:d620:1f94%6]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 20:53:01 +0000
Message-ID: <ac1be463-11d5-fc36-c8f7-f699b588e170@intel.com>
Date: Thu, 3 Nov 2022 13:52:59 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
References: <20221101225240.421525-1-jacob.e.keller@intel.com>
 <20221101225240.421525-15-jacob.e.keller@intel.com>
 <adc1c428-0b70-eb89-b6f9-d5db987f6ba0@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <adc1c428-0b70-eb89-b6f9-d5db987f6ba0@intel.com>
X-ClientProxiedBy: BYAPR06CA0056.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::33) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CY5PR11MB6257:EE_
X-MS-Office365-Filtering-Correlation-Id: 2169c9e1-2cce-40cb-2522-08dabddd656b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qXvN9GBLSBmdVennSRPqbbvutT28l+F4lNMKc4CJUekatY1qSdWTQKNBFsNTFwIw05zd/7DHiccxqFtGZ8xlLHeOcU47KG6KHl2zQEdpV677tGyeOZePiIqb+G/GI92dILW9bfIq7h7qdOaxwiI1hsDSFKCbs6ApH1NoY1ePypSVlGmyjcvlNLT9Yi4Ru6sxe1QRjy/ZZ6sVsquTaqvzQ1mmQlDLYGy79UGA/Qd6SIaWx3t+xMB0+q6e8hgmIAoYTaszZ7ryjBsOwaXoJXxBFs5hOnZyw9vax5E4yup2B4gIt+NaD/8sbb8gUcTY0fLPBvAu/O7GWbjnH2ocuirC/JPuS89f/LGnvzMGXVs9Hv5ORCayvBYIvUniEsGijJAMAT7UWof6E4l49szGnZ80RmiPjcr30/RGbG5SP7NxRx+OsY/Z7JfDYO9TLj//jqhjB/GjrvBsn+p2T0hpPcHpikiIhpLyXVchy6k0mgAu02v1CabczhR1HWNCFOclRWB+0m3Rmp81hr4UsslyTzcxQXAxOkHm6nmYLnqj3i8VM7+3g1JrPcEJDwRqEEY3pP5Y43d1uktXMu/RxjdUiw8F1R5aSRHc3kXv4JZE+dj8MDnMCOer0cc4kLWe+S4/VrdSfOd86Eg8kAa8FlJuAePMPqJ+QL1AnKlGhtL3jYxt2NLiIvQLqAKrCQ/kW8Z6VPCFp62lX9r7HWGaAs23OxkbSrKZe5UNzCbs6W7+HhaN4vtYsoGhdGN4LB/FEORg3osU9mqDuNRk+TMAcifYsmshrQiezb2ZPIwRfhFXz7MC4KA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(346002)(39860400002)(366004)(376002)(451199015)(110136005)(316002)(82960400001)(41300700001)(5660300002)(6512007)(8936002)(38100700002)(4326008)(66946007)(8676002)(66476007)(66556008)(83380400001)(86362001)(26005)(107886003)(31696002)(6506007)(6486002)(2616005)(31686004)(478600001)(53546011)(186003)(2906002)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a2hvQmpud2dwREN4dVoySGZXNnpyTyt5K25jWE1YUHp5R0RRdWNuZGs5WjJh?=
 =?utf-8?B?T3hKbWJJNXZZWkwrWXVGdE56Q084K1ZQUTFpRlBYK0UybGlKRHhKMkswZUhP?=
 =?utf-8?B?Yi9ldHhRV1V3REFCRGVGOExscEk2VjU1cXd3emlPVjAzQUNZTmdNcTMwTmo4?=
 =?utf-8?B?NGZacGtrQk81dHNHQmFlUHZOMHF6VEhQc3ppY3JvcDN5U0svQjVXdk5tUDN4?=
 =?utf-8?B?NXZhZHNTSG96a0svRmJCaWV6ZnBzZ3RuRFl4Zk5hVFo2eGlsUTBScWtCNk04?=
 =?utf-8?B?cG1FM3l6UHhQdVQ4ZWFJdzNQTUFwTlQzeVhoNUp2UXhPM3p5RkZIbXI3YytR?=
 =?utf-8?B?SWo4dlp1VllOWEhpNzY3OVIvek5wSUFzd1ZZU2tZN2hxY2JoRlJFVHZhd2VT?=
 =?utf-8?B?VjVPVUJoSGZ5V2RQYjEraEVUZ3Myd1BVK1VLR3lyeis4bm9USHF0ZXhNTGVW?=
 =?utf-8?B?OTB0cENQakkrVXZQeW1jUVcwSXpWVTlYUnhrMzBoREFUTkUrSktxRkdsTUNn?=
 =?utf-8?B?dHhJUzlBS013dTJ2ME9jRUJ0UlY5MGd2RG15dWgxRUJOakdyNGtYS2F4blFC?=
 =?utf-8?B?aEhQVVY3ZUUydmRJWVFhVGxwZFdlTi9ZLzBPNm40TWgweVVGNC9MVzlxbkUx?=
 =?utf-8?B?ak41YlpzMDdtOEN4SG1sbEYvSlZkaCtnVzBKcUp3dFdUcFhJb0pWd0R1RDZP?=
 =?utf-8?B?VzZ0ZzVVUEdGTUh4bGxhVFkxQVN2RS9PaUp5TmgrcWxhblZyZWp1STEwRUFV?=
 =?utf-8?B?MHV6aDIycjViMEN0VnNOMWZLc3hHRGUzdUNKZU4wWWlVS21INzlUdUR1d2Qz?=
 =?utf-8?B?TUtvUlVzM1p5Rk9rMTQ5WHJGUDdRVnlFMzhhQXRFWlN3ZXhDcWcwZXdXcHgv?=
 =?utf-8?B?cDhDZ09YcjdBQ1RKSXk2SjJqMTAveENYeDRVRzU0ekJrRE9GRFNPUThJRlky?=
 =?utf-8?B?ci94OUR6bHY0WDVIQlFKVEljbzJ4T0JKVGNodE5LcG1FTUVTTjVtcVZ1ektR?=
 =?utf-8?B?Mmk0UmpWc1dQSHY3T1BTYWJBVnZWVi9KNkcrRWZLTTRNNUwvYXc3K01yaDVU?=
 =?utf-8?B?YWxiSEZQTUlZRUhQWmNRelc2L1VlRHBTZHpzb1hEdUVwbEMxQWtLcDZrSG9z?=
 =?utf-8?B?eUd1L2R1UDhDbGFxTnUrNzdxeVFwZ0s4b0d4VjljTTN5RVplM29rcFY4YkVz?=
 =?utf-8?B?MDFoSnMwazhNVFBJcm5Eb044OTlHZTJSZFd2SGsvL1lOZ3dzMk9pU3JpcDRW?=
 =?utf-8?B?RERaNktzdk8zVzBuZXRmTHdGTkp1YmJ1Qk9rRXJwZzB3ckQyVkxiek5vUXNq?=
 =?utf-8?B?VGVRNkRTdUxBTHJVKzJLcDA5MkVUREthNHc5ZHZkRmlYVDN6cEc5dHBaRUw2?=
 =?utf-8?B?Qk1kSEJ3dFFjeSt2bU1NRU0wL20xSEpqbmRBR0luTnM3Z1g2SzFEeXJESlQ5?=
 =?utf-8?B?YlpNYnNxU3U1U3NTbzNLR0tYK2ZOcmdqbzBDcjFZSlAycExTOTg0b21LdG44?=
 =?utf-8?B?WllBakZ0ZEswL0tkYTFxVHNTa1F1RGdBQ2hIdmJVcy9TZ0ZBSzZwdkEzYXFp?=
 =?utf-8?B?SVQwcE1TZjNiTGtTUTZwMnR2bTJRWG1NZXZHb1RPUmM4bHptcXJCWHV4czls?=
 =?utf-8?B?K2Q1S3BOSjVvRE5jaDByK2pFT0VqSWZLNW9qNjUzY1gyRUQ4UXJiRFJqWTU5?=
 =?utf-8?B?V2lzL05vSTdyNXV0TkNnSlhEZFZST093QzgwdTVFSVFzU1ptVjVrdWVJSWdi?=
 =?utf-8?B?ekcwQUUwUTZOcHNYdXcrL0ZPVTNMOXRlSmFNT0pHWlJhTWEvbFpZcVF1aHRr?=
 =?utf-8?B?Y2w5MDE2UFljNkd1eHlhS29xZGFwellRWGwwMFoxbm4xL3dkRll5WDVERE1P?=
 =?utf-8?B?V3RmV2cyVi9uQ0tIdy9JMHNTMDVkM2ZVTVJrMDEyU2ZRcVVpeDNhY3VicVR6?=
 =?utf-8?B?NTczV2FRS2xHZEQvVlFpMTJ3Z2RyckdlMHN4bWdzK0xNSlFuU3J5dSs1Smh1?=
 =?utf-8?B?aCt1SGJKQkdVcTI3Ry9yL016KzhzQWoxeG1CWXlPbzVIZm1iT28xVkZXU0pt?=
 =?utf-8?B?aHVRVmRhVnp6Nm5zc0htZXZPUzhjY3FXTFFwR0VUMUVsRExSc3h2YW16YmJ6?=
 =?utf-8?B?dXJOS24wTWJvZUtjMnRxWTZEbTFydWVCZk5Xc2tGYVJ4TG0xd0RnOEpmQXN3?=
 =?utf-8?B?UFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2169c9e1-2cce-40cb-2522-08dabddd656b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 20:53:01.5007 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2FQc0pyJS27cSai6ZjtuOQP8n/aZxSpW8AqcttTxm94MmH0TSngNpq1QLRFtWUgOiGTH7KzQjqjCPvWDVdPERWZz2DJuwZ/Zo6Eif0aP51g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6257
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667508784; x=1699044784;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u0OZqplUsJZYjIKggbGkerZF+c2Q6xrJBtP29Ye7Yp0=;
 b=HQG3BCgspZHx+eQSmk3sIPN7Dg++yi0MIKGkNYYn+9khtBfSgNG/IS9J
 phfjIWjAoGGMBRkV2Ce2RyqBQrBKjP5FLkAS6WuhzVPpZLjVI/T09XRx8
 i+eM7RqbtAk6h55QVk72O+5n5DOJ/YqAszXDOPwUYVs+d7smrcfQYN3bg
 cgWr2li9wy3Vnkryx+05vsUNIGuDrP8DLXuwAaJ0H/512rWl6znKizBrF
 2H9yEODjXBJb2RrTecP2ASIporulxrnZdNTM3z4fpTbYclIIy9yrpv5GA
 6IlkI9Fu1Wt5T1a4LUwI053E+ymt4ScEeqdtZCAsYpPsThUj6/MvPSasx
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HQG3BCgs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 14/15] ice: make Tx and Rx
 vernier offset calibration independent
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
Cc: Siddaraju DH <siddaraju.dh@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxMS8zLzIwMjIgMTo0NSBQTSwgVG9ueSBOZ3V5ZW4gd3JvdGU6Cj4gT24gMTEvMS8yMDIy
IDM6NTIgUE0sIEphY29iIEtlbGxlciB3cm90ZToKPiAKPiA8c25pcD4KPiAKPj4gQEAgLTE4MDks
NiArMTgzNiw5IEBAIHN0YXRpYyBpbnQgaWNlX3BoeV9jZmdfdHhfb2Zmc2V0X2U4MjIoc3RydWN0
IAo+PiBpY2VfaHcgKmh3LCB1OCBwb3J0KQo+PiDCoMKgwqDCoMKgIGlmIChlcnIpCj4+IMKgwqDC
oMKgwqDCoMKgwqDCoCByZXR1cm4gZXJyOwo+PiArwqDCoMKgIGRldl9pbmZvKGljZV9od190b19k
ZXYoaHcpLAo+PiArwqDCoMKgwqDCoMKgwqDCoCAiUG9ydD0lZCBUeCB2ZXJuaWVyIG9mZnNldCBj
YWxpYnJhdGlvbiBjb21wbGV0ZVxuIiwgcG9ydCk7Cj4gCj4gbml0OiBUaGlzIGNhbiBiZSBvbmUg
bGluZQo+IAo+PiArCj4+IMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+IMKgIH0KPj4gQEAgLTIwMTEs
NiArMjA0MSwxMSBAQCBpY2VfY2FsY19maXhlZF9yeF9vZmZzZXRfZTgyMihzdHJ1Y3QgaWNlX2h3
IAo+PiAqaHcsIGVudW0gaWNlX3B0cF9saW5rX3NwZCBsaW5rX3NwZCkKPj4gwqDCoCAqIG1lYXN1
cmVtZW50cyB0YWtlbiBpbiBoYXJkd2FyZSB3aXRoIHNvbWUgZGF0YSBhYm91dCBrbm93biBmaXhl
ZCAKPj4gZGVsYXkgYXMKPj4gwqDCoCAqIHdlbGwgYXMgYWRqdXN0aW5nIGZvciBtdWx0aS1sYW5l
IGFsaWdubWVudCBkZWxheS4KPj4gwqDCoCAqCj4+ICsgKiBUaGlzIGZ1bmN0aW9uIHdpbGwgbm90
IHJldHVybiBzdWNjZXNzZnVsbHkgdW50aWwgdGhlIFJ4IG9mZnNldCAKPj4gY2FsY3VsYXRpb25z
Cj4+ICsgKiBoYXZlIGJlZW4gY29tcGxldGVkLCB3aGljaCByZXF1aXJlcyB3YWl0aW5nIHVudGls
IGF0IGxlYXN0IG9uZSAKPj4gcGFja2V0IGhhcwo+PiArICogYmVlbiByZWNlaXZlZCBieSB0aGUg
ZGV2aWNlLiBJdCBpcyBzYWZlIHRvIGNhbGwgdGhpcyBmdW5jdGlvbiAKPj4gcGVyaW9kaWNhbGx5
Cj4+ICsgKiB1bnRpbCBjYWxpYnJhdGlvbiBzdWNjZWVkcywgYXMgaXQgd2lsbCBvbmx5IHByb2dy
YW0gdGhlIG9mZnNldCBvbmNlLgo+PiArICoKPj4gwqDCoCAqIFRoaXMgZnVuY3Rpb24gbXVzdCBi
ZSBjYWxsZWQgb25seSBhZnRlciB0aGUgb2Zmc2V0IHJlZ2lzdGVycyBhcmUgCj4+IHZhbGlkLAo+
PiDCoMKgICogaS5lLiBhZnRlciB0aGUgVmVybmllciBjYWxpYnJhdGlvbiB3YWl0IGhhcyBwYXNz
ZWQsIHRvIGVuc3VyZSAKPj4gdGhhdCB0aGUgUEhZCj4+IMKgwqAgKiBoYXMgbWVhc3VyZWQgdGhl
IG9mZnNldC4KPj4gQEAgLTIwMTksMTMgKzIwNTQsMzggQEAgaWNlX2NhbGNfZml4ZWRfcnhfb2Zm
c2V0X2U4MjIoc3RydWN0IGljZV9odyAKPj4gKmh3LCBlbnVtIGljZV9wdHBfbGlua19zcGQgbGlu
a19zcGQpCj4+IMKgwqAgKiBsYXRlbmN5IHZhbHVlcywgd2UgdXNlIG1lYXN1cmVtZW50cyBpbiAx
LzEwMHRoIG9mIGEgbmFub3NlY29uZCwgCj4+IGFuZCBkaXZpZGUKPj4gwqDCoCAqIHRoZSBUVXMg
cGVyIHNlY29uZCB1cCBmcm9udC4gVGhpcyBhdm9pZHMgb3ZlcmZsb3cgd2hpbGUgYWxsb3dpbmcK
Pj4gwqDCoCAqIGNhbGN1bGF0aW9uIG9mIHRoZSBhZGp1c3RtZW50IHVzaW5nIGludGVnZXIgYXJp
dGhtZXRpYy4KPj4gKyAqCj4+ICsgKiBSZXR1cm5zIHplcm8gb24gc3VjY2VzcywgLUVCVVNZIGlm
IHRoZSBoYXJkd2FyZSB2ZXJuaWVyIG9mZnNldAo+PiArICogY2FsaWJyYXRpb24gaGFzIG5vdCBj
b21wbGV0ZWQsIG9yIGFub3RoZXIgZXJyb3IgY29kZSBvbiBmYWlsdXJlLgo+PiDCoMKgICovCj4+
IC1zdGF0aWMgaW50IGljZV9waHlfY2ZnX3J4X29mZnNldF9lODIyKHN0cnVjdCBpY2VfaHcgKmh3
LCB1OCBwb3J0KQo+PiAraW50IGljZV9waHlfY2ZnX3J4X29mZnNldF9lODIyKHN0cnVjdCBpY2Vf
aHcgKmh3LCB1OCBwb3J0KQo+PiDCoCB7Cj4+IMKgwqDCoMKgwqAgZW51bSBpY2VfcHRwX2xpbmtf
c3BkIGxpbmtfc3BkOwo+PiDCoMKgwqDCoMKgIGVudW0gaWNlX3B0cF9mZWNfbW9kZSBmZWNfbW9k
ZTsKPj4gwqDCoMKgwqDCoCB1NjQgdG90YWxfb2Zmc2V0LCBwbWQsIHZhbDsKPj4gwqDCoMKgwqDC
oCBpbnQgZXJyOwo+PiArwqDCoMKgIHUzMiByZWc7Cj4+ICsKPj4gK8KgwqDCoCAvKiBOb3RoaW5n
IHRvIGRvIGlmIHdlJ3ZlIGFscmVhZHkgcHJvZ3JhbW1lZCB0aGUgb2Zmc2V0ICovCj4+ICvCoMKg
wqAgZXJyID0gaWNlX3JlYWRfcGh5X3JlZ19lODIyKGh3LCBwb3J0LCBQX1JFR19SWF9PUiwgJnJl
Zyk7Cj4+ICvCoMKgwqAgaWYgKGVycikgewo+PiArwqDCoMKgwqDCoMKgwqAgaWNlX2RlYnVnKGh3
LCBJQ0VfREJHX1BUUCwgIkZhaWxlZCB0byByZWFkIFJYX09SIGZvciBwb3J0ICV1LCAKPj4gZXJy
ICVkXG4iLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcG9ydCwgZXJyKTsKPj4gK8Kg
wqDCoMKgwqDCoMKgIHJldHVybiBlcnI7Cj4+ICvCoMKgwqAgfQo+PiArCj4+ICvCoMKgwqAgaWYg
KHJlZykKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAwOwo+PiArCj4+ICvCoMKgwqAgZXJyID0g
aWNlX3JlYWRfcGh5X3JlZ19lODIyKGh3LCBwb3J0LCBQX1JFR19SWF9PVl9TVEFUVVMsICZyZWcp
Owo+PiArwqDCoMKgIGlmIChlcnIpIHsKPj4gK8KgwqDCoMKgwqDCoMKgIGljZV9kZWJ1Zyhodywg
SUNFX0RCR19QVFAsICJGYWlsZWQgdG8gcmVhZCBSWF9PVl9TVEFUVVMgZm9yIAo+PiBwb3J0ICV1
LCBlcnIgJWRcbiIsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwb3J0LCBlcnIpOwo+
PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGVycjsKPj4gK8KgwqDCoCB9Cj4+ICsKPj4gK8KgwqDC
oCBpZiAoIShyZWcgJiBQX1JFR19SWF9PVl9TVEFUVVNfT1ZfTSkpCj4+ICvCoMKgwqDCoMKgwqDC
oCByZXR1cm4gLUVCVVNZOwo+PiDCoMKgwqDCoMKgIGVyciA9IGljZV9waHlfZ2V0X3NwZWVkX2Fu
ZF9mZWNfZTgyMihodywgcG9ydCwgJmxpbmtfc3BkLCAKPj4gJmZlY19tb2RlKTsKPj4gwqDCoMKg
wqDCoCBpZiAoZXJyKQo+PiBAQCAtMjA4Niw2ICsyMTQ2LDkgQEAgc3RhdGljIGludCBpY2VfcGh5
X2NmZ19yeF9vZmZzZXRfZTgyMihzdHJ1Y3QgCj4+IGljZV9odyAqaHcsIHU4IHBvcnQpCj4+IMKg
wqDCoMKgwqAgaWYgKGVycikKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBlcnI7Cj4+ICvC
oMKgwqAgZGV2X2luZm8oaWNlX2h3X3RvX2RldihodyksCj4+ICvCoMKgwqDCoMKgwqDCoMKgICJQ
b3J0PSVkIFJ4IHZlcm5pZXIgb2Zmc2V0IGNhbGlicmF0aW9uIGNvbXBsZXRlXG4iLCBwb3J0KTsK
PiAKPiBUaGlzIG9uZSB0b28uCj4gCgpUaGFua3MsIHdpbGwgZml4IHRoZXNlLgoKPj4gKwo+PiDC
oMKgwqDCoMKgIHJldHVybiAwOwo+PiDCoCB9Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
