Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A9B606A67
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Oct 2022 23:38:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE1786F9FD;
	Thu, 20 Oct 2022 21:38:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE1786F9FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1666301930;
	bh=Vt/1RgbSm5eMWfhmXJCh/O8j6XQlQN9X6mnp04PZLGw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ss3UlYwnLkiod87KJGWAqUohuhum9ws0qAoL+j48/LHJGhjd48Ul+/2fs9bqnnlIR
	 bAfgMJ2utN9YAvJLNrEOekho+nZRuFrLusmI62p3rU+Q3DppB1CBDPrg8HpKVzOGkE
	 M69blk6LtQv83+2nSBXXIjkvUnkEjbA09C/7tBdm8vUMlpMHwAY87WC3szGDiijerv
	 mTWX3xJdr0jq9bJ6dcdmkFT+4M2je5gYIaYNgkKaA+eM5bo8R/nn2Y4WkrKszqoaRa
	 gYLYVKZi/Ilu5dUf1ssHJMU5GEGAcM3A/3mJx0llSv17WMGtEoobn4+Ii08rczkCID
	 A/6ExRsUbKtUQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id obSQ_Ab5zMlI; Thu, 20 Oct 2022 21:38:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A43526068D;
	Thu, 20 Oct 2022 21:38:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A43526068D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1D93D1BF2BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Oct 2022 21:38:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 03324408A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Oct 2022 21:38:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 03324408A5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nzp2lDOCuJTq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Oct 2022 21:38:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2576C400A6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2576C400A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Oct 2022 21:38:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="307939467"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; d="scan'208";a="307939467"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 14:38:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="663318836"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; d="scan'208";a="663318836"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 20 Oct 2022 14:38:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 14:38:38 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 14:38:37 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 20 Oct 2022 14:38:37 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 20 Oct 2022 14:38:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EPST+JDYWxAR3v1Cm57uBLJvUB2SMzsSk9Dq1GF5zljfEqLSz7V6V9wyZWmpOxBskY3rA7q9Iz1kB4XL6AuoRqb5xveVgIXpDpfBxkozxtiMjZNyw+vLYuOskMS9rJ9tE/+LLxbVzf6Ukq7cc9YEr510fyXXQLbGfZCZeWoFv4eBQ4E1P2FEk+o7wfWyogu5UtRNyzhYVuUZ6YxRg2wfyiPX5SlpdHWsu8qLVylnDe5w0UnnRWy/oNIt+7K4106jjDYEqVfsILCutQufD5mZSiTluWvLB62zCjb6ckwCqBPHaUmQlP0c/7T2brWnNt2jSqP+LTuLGRARD/bjNCGnWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8aCgGJPtiH5BnH0KaiZT+F+lxzN+15N1p4rf86meZcQ=;
 b=iUMSFkgWraHL+HI7pkc+ozfnp7h0jrRyvPPIrvx21YZYGs0ObIkr7U0oDbdYrbNdrMMlyW7OvkkI/sWo3t+m/SdbQ63U1LylcMSFAmWSWFNz73CDE6kZZ/PGL4P8uzDabFksouMBHRsIQghjqQwCFlXKRpyIzYFLDctH5GyY6WsIi6Z9+sw+MYinncbkyv5wJYyqeV78ccjUtF6AFuJghLpuWMEDiIVoFXb8RBM4JA/9JkC7MyhBxDDYrj6J26XZ34wB6Beo7WnZJUu7Gg/asyx/YoZh7NsXvmgyXQCk19ACuhO5HvOoiJ1ejYifhd0uwvCGXP1MkNsl74jzFk4jow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA0PR11MB4656.namprd11.prod.outlook.com (2603:10b6:806:96::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.34; Thu, 20 Oct
 2022 21:38:29 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::e314:2938:1e97:8cbf]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::e314:2938:1e97:8cbf%7]) with mapi id 15.20.5723.033; Thu, 20 Oct 2022
 21:38:29 +0000
Message-ID: <53101dd4-c136-dc1d-0416-f3683e234315@intel.com>
Date: Thu, 20 Oct 2022 14:38:17 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.13.1
Content-Language: en-US
To: xiaolinkui <xiaolinkui@126.com>, <jesse.brandeburg@intel.com>,
 <anthony.l.nguyen@intel.com>, <davem@davemloft.net>, <edumazet@google.com>,
 <kuba@kernel.org>, <pabeni@redhat.com>
References: <20221020033425.11471-1-xiaolinkui@126.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20221020033425.11471-1-xiaolinkui@126.com>
X-ClientProxiedBy: BY3PR10CA0025.namprd10.prod.outlook.com
 (2603:10b6:a03:255::30) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA0PR11MB4656:EE_
X-MS-Office365-Filtering-Correlation-Id: 70602274-920a-43ab-fb6b-08dab2e36d8e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ntwtP+4ERvnllFMTHNqxj6+OIyaf69uGmgfLeFpvPatLsEMZ/3a1uCce+J+NG9UJtKYwreAlYFIQ+ZBSOw1f9sqU5G6pLtdscDJefNPU1wDm+5ASwfN/ASr9+xJnw58Q4aM/X2BVTRUDMYzCUN71UxtBI7VIR8zCRNNS26WCUi6FC39QYDsGYBL1GUP3PC+BfaXq6ulcHDHMmpGeXwicN5tGeDtu4nEra2CK1Gb5Nei1hxW2gMIUiQcqt2vZ6LWnvbFVm1Vi10REo1jntsHwfSPSX96LNZPAzD6sA+eLRlqY9nsXtWeIz8SmFOnJp/cBTYWCzMhscCMeipZ8UodzDRLnmyJVPg7bZ15SYvP9M5R+jxkLUDDvUhfPEYqchILdIJBVPxHhCKgnXdVIRItKBeqvNn2nklpMhCFvZzAvtZkGjUnR0NR4mOa7j5HMyuTXocZUQYLfLx7sd2O69hGbBHWFUzqXv/B61v0vpSNNb6XA8BK4HdQky4aVdgOOLNVQZbrri//YMDgDr31DTnuU7+8qeoW1al1hsWlf29IWUl6nSQos2OeSndqosM1qGcfhmUbm3zJLTEai5bMGARpe3lSAKIsE9NQakoSD90W3GtSzB1vZGUEnwoyjTTBaUz9aW4ufYOSyXxls/4b1/ImvTVF4ABn3gcAopxOmwq20YND0RCf3k0VHFrsiWwDZMziq3erA3Q5s7g3yvbm2qi1XeCFyfHkitGFjVjFnfkmp6O/Aw9S2mxRUvqkID/rGIaXfsU0P9dsx3srEjUITdTHGh20Tn+lsWcZZ8F9tjT6SriQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(376002)(346002)(136003)(366004)(451199015)(86362001)(31696002)(38100700002)(36756003)(31686004)(82960400001)(2906002)(26005)(5660300002)(83380400001)(186003)(6506007)(2616005)(6512007)(53546011)(6666004)(66556008)(6486002)(41300700001)(316002)(478600001)(66476007)(4326008)(8676002)(8936002)(66946007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c29aSTdyVkRVNVBEY1JGSllydTl0QU5Fell4SklYbkd5bzU3L2FxZkpQZEdm?=
 =?utf-8?B?aGRVZVdSS0hUVmlSbFQ1amhHK3pVamt2SElCalFPTmJKdjA1b3cvQ1BoaFM1?=
 =?utf-8?B?Ujc5S1dHU01rbnJwMEZSS2dyQ09YR1J1ZUJ5VEV1K3FSbWlYUjA1TTYyc1JT?=
 =?utf-8?B?QmtmNFFneVNiR1V4M0Q2RTlRb0lsZUo0bFo1b2J6Q0VxZjRBNW92czNBcU01?=
 =?utf-8?B?R0lJQ25lU291QUNieHBqeHBHM2VkVi9xdjlyRzhzRG5udk9HUGUyVzFHc21m?=
 =?utf-8?B?ZzNrVUUzeWQ4VTNJU0ZzS1lXMExzdzdNQkRETEsyK1FxRzk4YXpRaStKK2JW?=
 =?utf-8?B?V2MrRU5HR3RkNS9KcDFkZ3pBb21zcWZvMk1ESDFQWlU4QzlpbGpRSnp5V291?=
 =?utf-8?B?cG5Tb2RvbFR6TG1HOEZHZDVVdzRaQk01TFlnQ2dOcHRVTWJCTlRXSGJSYVQw?=
 =?utf-8?B?NjVhbDZnam0wNkJnaDBvaGhYSHBGL3MrRkJFaVpGMk5HSXN6NGxXdDE5QW9U?=
 =?utf-8?B?UFJvbDNmeldBUlYvYkRYUk02RXFQOWJ6RXF5NnhaakJrTFk3YXcxeFloVDFO?=
 =?utf-8?B?dUlObE8zcktKdHpNdnExU3R5N1ZiWTBuL2ZZUU9aeTEyeDdrbDJQVlVGNWJF?=
 =?utf-8?B?aHFhRWV1ZWNxSSt1V3BCSXFmTUIyMXFWekwydUFjY3NFaWJzYjdpcHBlZjNY?=
 =?utf-8?B?SXV5ZWlmaHZsQ0k4dHJyUXlzM1ZQSUM5UnNzTXVKMm83Y1hDckM3OTBoWmE3?=
 =?utf-8?B?bHN6ekJtQWI4SFFtNXRPTXFDYUxOZmdhZWVPakd5ejVRNUJVRFRkY3BrK2Jv?=
 =?utf-8?B?bFVLM05EWmFOVGxOWUdYU2xzbk45QTMrdEpvQ3gybE8wVFcySjEyT010a3cr?=
 =?utf-8?B?bjlhNTJacTBCa2NDUXpzdGlTdWduODFpWUlsZzUvRnA5NWdPOFo1TlR1MGl6?=
 =?utf-8?B?dmRzZVkyTnVQQm0yWVNrVk5iWlZqZTRkWEdhVUl5ajJvYUdMWU5tRThBTDN4?=
 =?utf-8?B?eXp6SWhId1BlRnc5bDFBTms1dURpbkI0STFqVVZQeXRCMklQY3JycGlpWlYv?=
 =?utf-8?B?Qkh2SEU4Z2dUaVl1VVlZUDBGc1FmZlgwUFRYL01LRTdmMEJ2V0djajdSRXlX?=
 =?utf-8?B?NUVMQXJDWm1BbEU2aVJBYnhHYUNGVHB3TjJvRm95Q2JKVHh3YnhYdlJOSVA4?=
 =?utf-8?B?bmI4c0gzMmk5VlhxU2JzUmdoQzJmQmx6NHJLTFdoY1BSd0JjeVFubWVzVVlj?=
 =?utf-8?B?VThjMU1LM0FveTRsSUNiNEgyS1JFdXhrN0d5dkVENGpKaDYwWnFXSHF1Z3BY?=
 =?utf-8?B?NnVCeVlwNE5XVjZ0eXBXbXQ2aGFUR3Y2OE4wT0V1Nm1kdmZRV0w0WFl3V3ZD?=
 =?utf-8?B?MHZ4ek9VVEY1czJCUCt2MDN0aUJQMkxtTG03VkYwVk9WYXFjK3R1alJKY1hI?=
 =?utf-8?B?d0ZyUHZoeXBIRHN0b1hBbHA3UzhMamQzS3dJeG5KbVY3RXR1SEdjOTJjVGEz?=
 =?utf-8?B?b1hMVlgwU0hWbFRjdFVFVjVid0VoaE1ZdWYvSzA4d0o1OStZYW5PVkVVZlNj?=
 =?utf-8?B?NGc3R3dvWGdScDZlTzU4RSt6RjdWQ2Y4R214NzZwV0VSYnBPam5PYUxVK3lC?=
 =?utf-8?B?bkFiU2JZRFg1Vy9sSmdkeDRxK3VVQUtoYmVXVUNpVXRjTENtK3BzMVlpbHFZ?=
 =?utf-8?B?WkpPSEEvSUVkZTJpRHl2Z1RPd0dYN3dXeFhBaU9DbmkxZ2t2UW1sT3hKbDlw?=
 =?utf-8?B?UzZDMmNvYmcrdmJxSEc1NklxUUkzUE9PS3IzZmtUdU5TaWw4WFJaUkpQQjRG?=
 =?utf-8?B?N0g1TGJGK3N5SEpjcFpERUZIN1pSM3BaQkJrV2hJeTNrN1BKQ3J4SldZV1Nz?=
 =?utf-8?B?cDJYZVg4Y1pxa0ZtSnNtSE01WU1Rd2ROZXpwaGN2QTJncDVuNFl3VHh2RUcx?=
 =?utf-8?B?VnpDNkgrc2lhNHZZZXFwU0R5RXFURmVYQkxEWEtvbE1Wd3AwbGhuNHAvYTRP?=
 =?utf-8?B?Yk80SCtlbHhyekZ5SmpJQmwybWtPNnhsalVCa2FUZS9Ic0dqMCtKQWMvWklt?=
 =?utf-8?B?Yy96ekI4bHZ6cGtGVjJFd25ub2l2dUVHWm5VYU1DRDNKMDBDVHhIT2hWaXUz?=
 =?utf-8?B?U1c4R1hldTRLb0UrdVRaVllrajIzNjlpY0dDUW5McDRubFR2WWtpcFJReVU1?=
 =?utf-8?B?Znc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 70602274-920a-43ab-fb6b-08dab2e36d8e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2022 21:38:29.3160 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MN5MN3hX2GWP+iLod4mZBe7cdagMzHIdhvd0AsOuLEm08mWwqo1Q+gScVIqygcvuy6SXg488ll1c57PoVuq1kT7xTXj6xKGhJtLKKQ4nni4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4656
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666301924; x=1697837924;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Z+lCYKs7GRVys/ecFGKcPpNHT4Zwbw/6FkBXH1NoRlU=;
 b=I+q7UwpD7m1vQGWwsIRnDBU/5hUPSziyaC4dXSdULQnrMtz9GXksb5fQ
 J3YuHdsNjrTdv0B0c72U2YE4Oq93v93fDEaiZ5lp9Zg67zH7mLPE3v3SU
 AMqK+rbOm0hBTN0lRM7tcHCR9UXWw2l/RClkIC8wkIygxsU5bnoM+H6mC
 VtIvj02XYP56V7Ws+N+xRBWwWyDeIQ2WXQ+l/40LuRGpINRFmZ4Gn++IA
 bl1W8o4PaTSr3hsbWuJx1Y6SmuxFEWT9Tm97ebJoN1k+gh1jb2G9qSy9K
 Z5sAD/J4Ut+y8sMkKLy3bty/dBYw8EVpZsMBue9x5PrvW2e+kPhEGCjIC
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I+q7UwpD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] i40e: add a fault tolerance judgment
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
Cc: netdev@vger.kernel.org, Linkui Xiao <xiaolinkui@kylinos.cn>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/19/2022 8:34 PM, xiaolinkui wrote:
> From: Linkui Xiao <xiaolinkui@kylinos.cn>
> 
> Avoid requesting memory when system memory resources are insufficient.
> Reference function i40e_setup_tx_descriptors, adding fault tolerance
> handling.
> 
> Signed-off-by: Linkui Xiao <xiaolinkui@kylinos.cn>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> index d4226161a3ef..673f2f0d078f 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> @@ -1565,6 +1565,9 @@ int i40e_setup_rx_descriptors(struct i40e_ring *rx_ring)
>  	struct device *dev = rx_ring->dev;
>  	int err;
>  
> +	if (!dev)
> +		return -ENOMEM;
> +

What is this trying to protect against? When does a ring not have a dev
pointer? This seems more like patching over a buggy setup where we
failed to assign a device pointer.

How does this protect against use of system memory resources? It also
doesn't seem like it would significantly improve fault tolerance since
its possible to have a non-NULL but invalid dev pointer...

Thanks,
Jake

>  	u64_stats_init(&rx_ring->syncp);
>  
>  	/* Round up to nearest 4K */
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
