Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB1896A97B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Sep 2024 23:03:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C007840290;
	Tue,  3 Sep 2024 21:03:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qQ-AyDAizYtf; Tue,  3 Sep 2024 21:03:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A4C3C401FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725397424;
	bh=K7VQ+ZF68ecGqPfflVxCS91le+VfmF134YQFMb1R6qw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Lf0DhQcA4BvcHHeUg9E3jl8VuCp9SiV84oe1alhRIA4nT/H4XfbYmhHgDojPPQ5kS
	 ieTNitAgPNR8JM0m/5frRiWEzSS8znapR4a1JsPd1u96LKuwB3oDZqwUbRLpWptao3
	 FjyWLqyKa2bVkso6Iem2w0FytTV3m6mF6tkXZZnvk05ET9VJGGBSnmF/CTFKEk1Ax2
	 dl6cJFZkfkDf0pruifOnvOWf30XSAqeqIbS94ZpHcWFHBrpYbiXDqaDVcMV/w3ioVG
	 QhPBe6kMdnfUFFYaPNR/k+TCUDp4OKEnTtegw1mmro+8nv8IlWeLzp9j3p6dhEJteB
	 NfSv6Lv1i9ZYw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A4C3C401FE;
	Tue,  3 Sep 2024 21:03:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A102B1BF57B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 21:03:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8BB7B80F3B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 21:03:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zLdcJSc0wDzu for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Sep 2024 21:03:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9A2E480DA1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A2E480DA1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9A2E480DA1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 21:03:41 +0000 (UTC)
X-CSE-ConnectionGUID: cKPFC33oTj+1dWuLzQ5b7Q==
X-CSE-MsgGUID: kCjEcph7SkqlIHmxNfZ+uw==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="34593914"
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; d="scan'208";a="34593914"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 14:03:40 -0700
X-CSE-ConnectionGUID: KgDD0EOfTbWuO0mryguouA==
X-CSE-MsgGUID: uNXMAGPSTxSDMrHalMF/Gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; d="scan'208";a="64723907"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Sep 2024 14:03:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Sep 2024 14:03:39 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 3 Sep 2024 14:03:39 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 3 Sep 2024 14:03:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hRvNo6rOwodMd6t6BvhNsbVxz5r0MYDwKUc5y5dJxGAv+Vyft3lR1241ja32eYN/Zxk2YZM3chjhFVIWjbP4ipMR7IKYIi3ECAgDNLRfXnyME9w4Zl4dX8ay/5ZDKX6CyZGP94vupAYNGwjpv1mW2i5veLRELVLT5cgAAbfYAHK6zmkBtPl9tn20S32fsOdkgloL0hL23OShauJvvl2JKs2Gw6L7rUdH170NMuaPtEJbXiRU1jG653r1IFBremH0mvLkXJaVELnttyuO5G9LGYe7e2b+71MB9MoTR9UYFo0b/vpL+AwrMeQ94HqMLN1drB5KzJTv+YPU5zAz8Akbvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K7VQ+ZF68ecGqPfflVxCS91le+VfmF134YQFMb1R6qw=;
 b=rWdHR6dsitlvujhsixF4DCr0epTacXtC2tpHM/EBBhclAo/1yts4YmBZ6seaWwG1uTNSnFPL2vVCGMe+PJkAReBJMpA2K72pu8VN3XkD/bS9SONUW1ywtHxKHiwh5glzeREsYIkjEfTzAy8zvbbKJ8C9vxmEjZBvNnmdzsV+i2TgP4Y+lcm9v6CLZHi3CcbVKXOU5l/O/0IQyKXsTJ+5FxXtUpEjvdrssEKC00qLjFVpEI9Dz3yQrGgb/QPa/hGNSvytWAeXB8tUonvjZSK/+T0i9YMektk0lwYo4+h3XHOYmcyB7/2atjro7uSPsTs4V/MYWm76N7CKAYNUtBn88w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MW3PR11MB4731.namprd11.prod.outlook.com (2603:10b6:303:2f::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Tue, 3 Sep
 2024 21:03:37 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 21:03:37 +0000
Message-ID: <a150453e-6a98-4d57-938c-d499edf0d759@intel.com>
Date: Tue, 3 Sep 2024 14:03:35 -0700
User-Agent: Mozilla Thunderbird
To: Vladimir Oltean <olteanv@gmail.com>
References: <20240828-e810-live-migration-jk-prep-ctx-functions-v2-0-558ab9e240f5@intel.com>
 <20240828-e810-live-migration-jk-prep-ctx-functions-v2-8-558ab9e240f5@intel.com>
 <20240902232524.cz77daj2tsajhrpb@skbuf>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240902232524.cz77daj2tsajhrpb@skbuf>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR06CA0007.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::20) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MW3PR11MB4731:EE_
X-MS-Office365-Filtering-Correlation-Id: 516f0fc4-4a6c-4975-27c3-08dccc5be157
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RjRMSWhYTmhKUGlyQ1hZOHd6eVRWalgwMEFZNlIyYktGUHFFcnRIZDJDSnRD?=
 =?utf-8?B?TW1LbmNpaDNPKzRtYTJlSnlmZHQrakE0VTc0clFmOFVCOElQV1ZXaE43MWww?=
 =?utf-8?B?YnkwMUZFZEVZVFBxUkFkdDFTNUNIckNITldFSEFJMytnY0ZsRmZ1UWdzeWR0?=
 =?utf-8?B?U0J6UElvc09oM2VyVTBlSUNJT2JsNEdRUGNPY0JJTkNVcUFkU0E3cHg5cVBF?=
 =?utf-8?B?WmlHbmdrMkhHM2NyT3lOL0MwL1VydktIUS8xRm1peVBZdndDR1RkdnBHZ0dL?=
 =?utf-8?B?OFd0MmdaeHU1ZmFLaTZOOTJ0eERRSGpDb1RpUnJvV2gzSndSQzZkTzNzMU1x?=
 =?utf-8?B?WVBmVEVLaVk2bnJFc2Z3K3M4YUYxS2h0K3N2ZGltNFJPZ3QwSlk4SWdPbGIw?=
 =?utf-8?B?UExWcFhsTW9QMlBucW5MV21IWVk3M3YwekxsY1k0NE5wRG9xVHMzN2w4QmVV?=
 =?utf-8?B?UXNXTk1oWmQxMmIrTjdQeVlORE93RFV0Q2x1eEJhUVRZREtvd0VjRUFzbXgz?=
 =?utf-8?B?SGNCbHZORGFjc0ZLS3hVQzg2NGFsSlFDNEM3OXFmSWtFbkE5T1NmbWhlVXlZ?=
 =?utf-8?B?eFB5bFo2WllIT1A3ZUwrVTBBbDlQMHlYd25HVlhpSm1WRjA0c05UemcxOXpR?=
 =?utf-8?B?VkQ2b0puS3o2b0Q0bkd0NnEyblZsSm9wVVhuTGl4bWF6cnljTUtjaWZoTDl5?=
 =?utf-8?B?SkJ6bFBEQ0xNRWxuRmxDM3ZyaXhGWmpCTS8waG1PV2I1cGJCU2VpTlNzMHM3?=
 =?utf-8?B?RmxWdTJSMXo3Und4WHhNelEwRlc1dUtLOHdYQ2JTQm5RVVhFakJjQTJjTHhS?=
 =?utf-8?B?dExBTVgrSm5pRno5TGlUMnB2T3dXYkVoM3pqK05DckEwR2dSRjZjSWNjUEpa?=
 =?utf-8?B?Nnptb3pqRW1xOG1JNk9zbkZBaTZoL1hzakkvZ2xXYUhEUURKc1dGVzFrYW8z?=
 =?utf-8?B?dlBpMjhLUGhjRUNNYW5VRjRCeFpIWHN1NVMyVUN4WDRTL05OeXpVR05XWkNs?=
 =?utf-8?B?cFdiN1hjYTZyb29MMWZwQXA4L0YyaU8rS0VJVVVEb01WMWZIRm0xdE5FNGJa?=
 =?utf-8?B?bzdoSERVUk81bEYwaEJ4dmNqTXN6SnBZY1RlZjZEVFFwMUlqdHE1c01xOGJL?=
 =?utf-8?B?MGs3MGhkTlpRWUpGU2ora3FDeXdsdWN3OWZvSWVuSHNNbmwzdGI4YmJGamFI?=
 =?utf-8?B?am13NXBwWGtlTUNsZ1B5a3NwQjdpelg5R21sK1hUNTlnSDdsN2ZHR0ExUjNx?=
 =?utf-8?B?MFYrRzZvbGZZWTkxVHdjVDZoRFJrV3JXK3RodUVoMHh2MWUrRUdkY3Q1MFpM?=
 =?utf-8?B?ZzZ6elRJdlZEODN2MUwyU3dSZDhHQ05BNHlsanV1SHZ5cks4QnkyZk5Jclds?=
 =?utf-8?B?ZDJ5UEVBLzhqSllSd3hqMlJaQ2c2MmVGbDJYWkdObFRLMjZwaEU2RkxyazYw?=
 =?utf-8?B?TEdqV0k2SmR3R3JzbDBFYjllUFNPMDg2VG9ITE53a01BRFNKaVp0WXZCMG9w?=
 =?utf-8?B?RHpCRmVzK0F2ekpDUWkwdk1EUHVVMk1KbXIyUm9aUDFvWk56cEFiRHA4ZE9H?=
 =?utf-8?B?d2FTcHpxM3NXRno3TEgzMG9DeFR3Nzg4dThHV05oNDFYWVJmai9Ob2kxZ0t5?=
 =?utf-8?B?V0xmeTZwbXpPTzBSbC94K2o0NjI2U0FaZzJZclBnWUJNTzh5bGc2WnBNa2lz?=
 =?utf-8?B?WkxNenpsK1VTVXBVcVNCZEFqWElZRnIyVGFIaTlvVWFBb2FOZ1c1Z1Q1eDhS?=
 =?utf-8?B?NXlqQ1ppZ3BIUFJNcldNRi9LU2RYKzRETE1iR1RSNXRVRUQzbHVOdEtGc3RC?=
 =?utf-8?B?SFZHbkI2OXQ1elRsTXlZdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bGRvSGxEUUp4NldVNldtanUyZDlFckoxd1R4NWdGT2xkZS91N3BXSllYQTdO?=
 =?utf-8?B?ZUlpZFAwS1hDdzRBN1FBQUFMK24ra05ZNzdlM1lmMGZCVVA2bC9oaVBGb1ZN?=
 =?utf-8?B?ekdvd2w2THJuWFYwU2xGUjVXekxGL0lnTE4zajY5T3RtMDhoSzJnd1VYRXFr?=
 =?utf-8?B?OUJHcnlYWldSR3RadlNQYnUySEZXYWRGWGFGZ0lGakg2ck1GMnhKMUtZQVMy?=
 =?utf-8?B?MHVkUTBIL0RBMkZGLzBSWmN5dytuTkJTREJKcjFpVit5amxWZ2V6OHZRbFh5?=
 =?utf-8?B?ZHRXUlQzRW93aEVLZFFKTzl1djJGaXdUWlVmMnhKQldLVjVXdkx1OGVnbXVN?=
 =?utf-8?B?MkpOQjBOWE96ay92SU8rRDQ3OW5mSlJYenZyMHJjbjFMYXBHQkFPRVluY3Jq?=
 =?utf-8?B?MVVYc1BLTWNIU1loUCtybjE3TldQTC9CTXhEV09aQ3p3dk1WUUsreXNDdnNJ?=
 =?utf-8?B?REY0QkJqZVpIQ3JvUERKdnlQQXBHYWxjNTBPeVpKTENaVkQxdE1JUnp3cGNN?=
 =?utf-8?B?RHJ4L1JrNEFQVllDRlQ2Sm9tY3h1bFFPU1RYN0M5eVFueHVNdXNaQ251V0FL?=
 =?utf-8?B?UmJxd0ZNeXlLUXhlWlc3WFNRVTJVUzJCM0k5REd4NUd5Zmh1eGJpWWs4Nmlq?=
 =?utf-8?B?WXVYNVRKbmdTclBaSS9ueXlMUng3YmZkVkFKWjhrcElyWHVrUXBMdnNJdzFG?=
 =?utf-8?B?ZkRSRWNvKzRxVWlZWnRJbml4bW1nTkxpcnJrMHVPeU0zNll6RC9tdG1hTzZx?=
 =?utf-8?B?R1IzNHdqSStVc3RHQlpoTGdrVGdRZmN3MDVVVlFPbnBmVTl3cFBiZWRKSytT?=
 =?utf-8?B?MkNyK3ZEeE9aRVA1ZG9nbk5vK2YyeGxxblo0QXMxb1ExL09TNGp2M21YTzVP?=
 =?utf-8?B?azZBa3JIUm91eURPdVR6ajVkdUE0K251SURmeEtxZHVGQk9YekR6RERGU2pj?=
 =?utf-8?B?WVpBZVlJR09tZmRNdzdVaW5FckVYeExNZGFwSWNkRlM2QU9pL3NPblNwam50?=
 =?utf-8?B?ZjdEOGNoWkZQd2ZqalQvYVJROElXNUNXT0RqbC93b2NBZk1FSG5qWHYzLzJ5?=
 =?utf-8?B?NFhmcTE4Z2FWQzVGcFJDbkpRQTZQcWhXRmpBZGxVTHY4TUorSnJ2T2sxaXZv?=
 =?utf-8?B?R2Q5NG02Yy9uVGl6OThTc0d0SFNDQmVhUWdXZ09YUzhaSDZ0bDFOZlVUd1Bt?=
 =?utf-8?B?aUFJdVVpWUNnNVEwbGpGZTI4RXhweHltR2IwQ2RHK2pXZTJKTlNYcWhERWFn?=
 =?utf-8?B?K0g1RmpEbng2OWo2dFlucmptdW10UEhHYzBzWVYva0tta3NVT28vcGxSaVd4?=
 =?utf-8?B?UGg1dU5LMWFWYzJJQTJoWTNuUzk2bTBNTmxhSWx5c0txK0lnNjFubjJJVkUy?=
 =?utf-8?B?M0RSN3BlbkFuMWN2SlQ4aXJkd0ZDN3p5N2RzSDRGRmw1OWtLaDlqTUZKNkhO?=
 =?utf-8?B?cVNEaDdLQTlzSUc3R0phYys0STNtSldham9Bbyt3VlAyY2dRdWh0bkJlZ1pm?=
 =?utf-8?B?NWpmYUhEbUp3ZGFNZWtIdnlMZFBXMEtNZ1Y0UFBLRWo4ajlUSkF3ZHc3NDVw?=
 =?utf-8?B?QlZ1U1k5L3V3d2E1M1oyVS9TZmFzUzFndEJEN1E4RHpmNHNhMVZlOHdDYzlE?=
 =?utf-8?B?VlJjNXV1Y0JsMDY3QlcrOGRmcEFBb2dCM2cvclloVHJCUWQ3OCs3RnM0WWNI?=
 =?utf-8?B?dTVvT09KbHY5ajRQVHlkT3ZjKzF1NUwwWkV3a21FREN6Qlg2WlVBdU1yeXBH?=
 =?utf-8?B?SVE2TmhGVEJzTTMyd2t1MUhmb0wrS2ZnVC8ra3VlSkFIbVRWZm0xTHBMZ0ZM?=
 =?utf-8?B?YWNYdlEzMDJzSHlqM0xmRC9TRzB4Zit1QWEvSSsrL0psQ2tSb1JaOWcwMi9D?=
 =?utf-8?B?cW9acHlRWmxlTXpoL2REZjNtZVJhMDUrVVFQcE5mQ3JHb0ZzUDMvMnJiclNG?=
 =?utf-8?B?eldRczRieWgySFFJQVVQUVZZbFcyNU5ZR3l4QXc0WlB2ZTEwcHRLZFRiK1px?=
 =?utf-8?B?SzMwcEd1TndaSG16VHpxVE5FemM3NUVHbERNcElVTWx1SnlHUk40c1ZTRkpE?=
 =?utf-8?B?YVQ1MEZIeXVkNVIwbDZwVW1KT244Nmt6bDN2ZS9FU2Yzdkx1VUNMaS9VNnZV?=
 =?utf-8?B?M0E5bFIzZ2p6ZEhIbWpNL3YxdDVtWXk4SnVqblRTMEZpTDRXVWZEL1d0R0lz?=
 =?utf-8?B?bEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 516f0fc4-4a6c-4975-27c3-08dccc5be157
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2024 21:03:37.5789 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5khPa1qA3EYPycUfxlbInn3lMXEGkB6a9jUi+gJ8Z1gTlbpVeYRTCUSt38ewc4aGbiQMr2zHdghXRUcBxFPkLDKa59sS7GNZlMWHBNOa75E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4731
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725397422; x=1756933422;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QpnyznoFtZ3bI0oD9ENcezSkJpVRQGvsvbhJeS0wdMQ=;
 b=SIQahZisjjsBKRhMMcYS8Ioln1UmTckQaRMT6cJfvGEiX8o0gWSb/P8d
 z0ENwwhnGSUISymKlkyIx+eGEa672GXjdytziFjfn8TBIvYAW1g73+rrK
 GSx+IXdS1YmSnyIhACbOeSnPJDJlbD4tX2/Z5B0Nc3v3+ug4wV8Xf9t6f
 hmOvGqixR9r+odzXdwe/gGNlh5Q7joDy8nsyiJdP30Bf93KhG5T/sBrXk
 jKXXNplVb5n0EESfn790cm0eMgF9ArNZ7KhdENTr5RoVaW5SX9DzDcgRT
 JIOgULUFvDdGDhq2B09dU6VBuVZkh6rupTgjh+4AXp64rWJjzK6rkKsJt
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SIQahZis
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 08/13] lib: packing: fix
 QUIRK_MSB_ON_THE_RIGHT behavior
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
Cc: netdev <netdev@vger.kernel.org>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/2/2024 4:25 PM, Vladimir Oltean wrote:
> Hi Jacob,
> 
> It's very cool that you and Przemek (and possibly others) spent the time
> to untangle this. Thanks! Just a microscopic nitpick below.
> 
> On Wed, Aug 28, 2024 at 01:57:24PM -0700, Jacob Keller wrote:
>>   That is, QUIRK_MSB_ON_THE_RIGHT does not affect byte positioning, but
>>   inverts bit offsets inside a byte.
>>
>> Essentially, the mapping for physical bit offsets should be reserved for a
> 							      ~~~~~~~~
> 							      reversed
> 

Yep.

>>   Logical: 55 54 53 52 51 50 49 48 47 45 44 43 42 41 40 39
>>                   ^  ^  ^  ^  ^  ^  ^  ^  ^
> 
> These 16 bits should have been 55-40. Bit 46 is missing, and bit 39 is
> extraneous.
> 
> Also, I honestly think that another "Byte boundary:" line would help the
> reader see the transformation proposed as an example better. Like this:
> 
>  Byte boundary: |                       |                       |
>        Logical:   55 54 53 52 51 50 49 48 47 46 45 44 43 42 41 40
>                          ^  ^  ^  ^  ^  ^  ^  ^  ^
> 

Good catch, and yea a byte boundary helps readability.

>> Fixes: 554aae35007e ("lib: Add support for generic packing operations")
> 
> When there is no user-observable issue in mainline, I believe there is
> no reason for a Fixes: tag, even if the bug is very real. My understanding
> is that the role of the tag is to help the backporting process to stable.
> Using it here could possibly confuse the maintainers that it needs to be
> backported, even though it is spelled out that it needs not be.
> 

Fair. I view the fixes tags as also helpful because it helps quickly
locate the code when I'm reviewing a past commit when trying to
understand why something was changed. I could move this to a mention in
the commit message text without an explicit fixes tag though.
