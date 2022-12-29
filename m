Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD80659271
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Dec 2022 23:27:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 61866403AC;
	Thu, 29 Dec 2022 22:27:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 61866403AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672352875;
	bh=Z7ynHUTSaal5EYATPRhnRWNIsSXDb9w8NcWk8c3d0ns=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rRN3TviNSJKJOQTSQYMe2/R8SjVV4ZOEFFMTWUJ4BBQvHKCkKFrLXC0U/hQzZM8Kp
	 oDfnZG0+ObBYdHNZvkow9orw0Kg9w3xw9oxn57m1joGsedH/j1HnEWN0jQI4sYyLjO
	 yTOU4hCAgIRcgM14NjVf+7iI5awA5aLNIvDwVyFEmxx+zkEIKVXjFZT/GTr/lsW7lQ
	 sj6YcW13mtJ70fb2N+FT+dOW2u4X0oyegCmaZriMOZ8uRK1Y22FHiFR3nprItnW22h
	 iR4SDWIT5Gg7K7UF4kQw03FK7ufK6r+1rGQYwwurVWpN9AUVBQqT2WmNZ6KRb0WJi+
	 UWkqoIfOE9a2Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gb7F1zcpYDvI; Thu, 29 Dec 2022 22:27:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 66CB1402E8;
	Thu, 29 Dec 2022 22:27:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 66CB1402E8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B48281BF287
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Dec 2022 22:27:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8D51C81A8E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Dec 2022 22:27:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D51C81A8E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K0qTlCx8Nk04 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Dec 2022 22:27:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6BAF681428
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6BAF681428
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Dec 2022 22:27:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10575"; a="308879893"
X-IronPort-AV: E=Sophos;i="5.96,285,1665471600"; d="scan'208";a="308879893"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2022 14:27:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10575"; a="717012685"
X-IronPort-AV: E=Sophos;i="5.96,285,1665471600"; d="scan'208";a="717012685"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 29 Dec 2022 14:27:47 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 29 Dec 2022 14:27:47 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 29 Dec 2022 14:27:47 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 29 Dec 2022 14:27:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VPKedUf7nmH36nOdjlxUCY99z8HcJejUjo/nnZxXzkDdb7mlKt67pgYXV3qwO20/5YJ+v+3dmgyfKc4IkX1scmWyYr0KuPMOCjWYqJfOPlJnqI2sq+jOXxo/Co8DOdRiyGlbN1k5vlTZaOAj4nE5gHv7RdDVh8tjOV8ARHQyoxmPH5I64xKDuxpDg1y42HJA31LhpO5nT+zPA9nw6NXC8Vd/pCjKXV5r4AAYpI1tHxCe8j7b7y5TW23olRyTxOx5JzNYi8GDWZ5MYwRo8v69RoF20Cau9TIvXhGclKs315r6g1bAu1Pc1HL24qwWG/WM2ZU27K0SZLHxQQf66Ji79A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p+6Xe+YRfuMsrYZliCc5PH/3gCQ6+Hx3pRo12K+mXs8=;
 b=m7Zre46d3OvkJaYUJ7Q1+eVhsqYuUtwiVm8voE7/h2ZlwiorWD2yNfqa+xZ9jkZqdX1NbTKhKdYBF1Aa3RmHje2Tj4ST/0v9BUuTTXJTAVD7yfm16k/6wEbR437IoC+Lnx8wVjwp3lWWjHW/TNNcA4yLQf2S/158kMmTu/uKg0Sz5BIi2ZJqthm6DwOzw0QULMm3lmblHEvYQP4eSShwPr1SAvZF2xbMusKqu+2ry0r5MADaW6Fzt50ofliQPQ3jiZZA+9V6z6dCTHhV9gJ6vHyUFKbfT1ez9vQDDnJiBBs8p24nc2fvJnBgA/c0UYyheGnWHPng72wc8GpC5kWMeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BL3PR11MB6484.namprd11.prod.outlook.com (2603:10b6:208:3bf::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.12; Thu, 29 Dec
 2022 22:27:44 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5%5]) with mapi id 15.20.5944.016; Thu, 29 Dec 2022
 22:27:43 +0000
Message-ID: <67374aba-998f-b14c-d785-82ed8fa9bca5@intel.com>
Date: Thu, 29 Dec 2022 14:27:41 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Dan Carpenter <error27@gmail.com>, <oe-kbuild@lists.linux.dev>, "Paul M
 Stillwell Jr" <paul.m.stillwell.jr@intel.com>
References: <202212291532.mOisbpke-lkp@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <202212291532.mOisbpke-lkp@intel.com>
X-ClientProxiedBy: BY3PR10CA0011.namprd10.prod.outlook.com
 (2603:10b6:a03:255::16) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|BL3PR11MB6484:EE_
X-MS-Office365-Filtering-Correlation-Id: d37cd7b1-966b-4102-7ea8-08dae9ebe776
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Vl/70/UfaTgy0ZYmf5+RGUqPbonABedBSCf/R8uiskvadnEf0OTYIdZzvEAI06x+q+OnKfHd0DNuQTjBOzRTz37dDgWO7AFAdobRBMLQFJwujBk4woGNQ1E867jFinLGLoR4xzKXt+tfPfpzkQfBSc87enYsrJqWqOqlC0HcwBzbHJ+t3/JtIVCZ3XpQ5y6hDgHIKXZelknpyLQfR55vJPvWmml59E1IFfyvi4Gfu6GklbE7OsVtvsjb7sjcXQVLo0HK3nITjqKbRm0afWTrFBmsIzSfm/k+yJ0Y8RCGwPWLuLOuCVc8G2HjmZSAziOYoLjOAKrRHbpEFqYnoeqM2ZDAotCC+iva79Pb54SJ5fbbVdcyIzq6FX/LrqpbWyHIdlZgS2+5eI6dtqAT8AaowIzAaHa34S4VlhQQQmBJ7QyO+nqbF8uJjHsvD8k0cI2HvN/umrXDaWmyrnsIqc9J2tPV2WXBT4lkI4cxqSHtJiE2yAaXQHtdOaxhSqpBTIHK+jWSGS4NWQhnHR6cbF2f04Sd+FJf02b/cS11pOpC8Vv3upU7XpQAgWQr1j1RjwcbfF/qzD+6Sn1ZrKdMMYKRP58VEBlAwpkE+9ah8OVsLT6okQyBHP9Bp258+TNOpRRZiGmQxyMnNl7YvaQrok3UOBaM9lFdBT19D6URG9Lap2zOYQN9klqEMGrFBmyLvEz0nk3v0llyAP338q4VZwtfMUvJORBXRqMqAoKE4gYPV3iTTX+6f3CWekuQeiCzIEbQ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(376002)(346002)(136003)(396003)(451199015)(2906002)(8936002)(478600001)(66556008)(4326008)(4001150100001)(66476007)(66946007)(5660300002)(110136005)(8676002)(316002)(6636002)(966005)(6486002)(6506007)(53546011)(38100700002)(6512007)(83380400001)(186003)(2616005)(26005)(31686004)(31696002)(41300700001)(86362001)(82960400001)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aDI3TGJwWEZFcDNhUm4xQXd3RnJpcU9pZXpmRXYzcEN3NUszNDk4Q1NsTkhl?=
 =?utf-8?B?Z09tdEUzd3JMQy9iVTA2VHFrdThlcWRmWEdiMllkd1Zrelk3R2JGbDNkMEE1?=
 =?utf-8?B?VWtuRUN4amgvN3IyeVBOaHNPY0tNM21XaWxLQSs2Q000QXRwUElVZXdweE12?=
 =?utf-8?B?NUkvTVN3cXNOZ2ExcXF6ZGxsSXdPck1nc3B4R1dIR2pqTUo5YzRwWS9zUmps?=
 =?utf-8?B?eDk1SEhTODBJcUczZ2w2WTR1c1Z0aklDS3BlbXdOcVhBWktLWStVbmlvYmRn?=
 =?utf-8?B?MWZVZVVuVmZ6Zmk0WVN1SktPQngydDM4cVFTOXVWZW1Kd0hQWTJmSXdyQUtJ?=
 =?utf-8?B?WnNaeTAwdjFXcnlsZHpLbEdQcit6U0l1V3ZtbXI3NWg0U3RtdFVjSEtTZWN4?=
 =?utf-8?B?S0MwRXIzOU9qNVc2RWNER0FzVnBDMEdYRW1RVlFQMDQ0SWsrcmxDVnJXejRN?=
 =?utf-8?B?UEl0MHhuOVhZWkgwTnpKQ1N4bEZ1TE1PdGFwQkd5VUdsVW11bEpnRGg2Y1NT?=
 =?utf-8?B?OVVIT20yVG1rY1pYZ1k3RXVXWXdrMDJJdTd3cFIzTTVuNnZxeW5Jei9vSUNS?=
 =?utf-8?B?NVZnOGNGUVYxcTVZY0dXWmFLb1dKTklZcjNkOHhZd2p3VHpFd3BLSVJtVnJV?=
 =?utf-8?B?MVBySlBuNGo5R1BTWDRwc1FhTGpDRC9TanR2dVN4Tklyelo0SWhvdFgxRGFR?=
 =?utf-8?B?TE1hejlFWDZwWmszNWY4M29RYXJJU0NwdVRwMk9lT05HVlYvU1dkVnlqSU1a?=
 =?utf-8?B?TFkwSzRkSUJ2TGRuS09Ed2RncXlQR25DN0FxMDg3YWJ5Uk1WcnhzMEU1a0gv?=
 =?utf-8?B?ejhqKzczRlFuazZBMjNHNldQYkU3clFpdHZlZUoyVmI2WklHb2dhdm4rbUVD?=
 =?utf-8?B?T1NjNkR4L3V2VzRVNlZwWlZXcHcrY2dzQjVyRk54NzB3Y0k5MWxFK2FidTJX?=
 =?utf-8?B?TlFDT3NqYlNpRGtXWGU3MWcxQVFRemRVK0QvZHpzeEphZE43UHl6SnBFeWtZ?=
 =?utf-8?B?TytSa05HeTBqWXc4YmloMmxXTzJGUHZnQjVsU3pKM0tZVmdjR2tqYTI1aDNF?=
 =?utf-8?B?aEdCTVNPUmVxb2lubHJEeks5MHlsSEhIL3diZHZqUldmTEozYzVqbUpOTHpp?=
 =?utf-8?B?Q2JwWDhjNXVJaTl5eGFrTEQyd0M3aDJKWW0zUjNRcXllTHlPT2ZVb2pDcG5k?=
 =?utf-8?B?MmgwTVFZTXp1aVdtb3VteGFxbUkwMEpxNlJyMWhDc2tUc1ZFOUpTRllxamlH?=
 =?utf-8?B?QmhOU25PYTQ2MkNpWUNFOGlOWS8rTzdLRE9uZ0VpazRmSHhIVG1KNGpWTE1i?=
 =?utf-8?B?Yk5ybEwySlgySjRGZTRSeHlSSGdWOWtxTHZEQ3JqVDR1TUwvUlFZZ1dMeDVI?=
 =?utf-8?B?anAzNVRDZnlyMkZ2TmRyRmQ2M2IyeHVjeUViQnQ1dWtHUGd5M1kxN0l6c2Z1?=
 =?utf-8?B?MHdoOUladnloUTB4S2dLRWNCdTlOdzcxMUNHZ3FBU0RoT1dqWTNVOGNIcjRj?=
 =?utf-8?B?TCtZVStBdnQ2RDAwZmxWVHluejNLNWkwc3RLck5idE90OURNWkNRdTRIb21l?=
 =?utf-8?B?QmpHWmJJbE5tK0daRGI4WTVuVWJzekZ4QzdqWEVpRGpwQWhPMHRNTWZFQVFl?=
 =?utf-8?B?aGdRcXRHQXgzV3kzR3VOUlRCZmxMTVNPdzExQVdYM3pnYTdqUmRrTlBkdVBh?=
 =?utf-8?B?TGlVOFVGdnlyRHVrRG1IbTQ2MHQ1WU9QZjE4bUFEZGFoc2Rxa3FoWCtEakFF?=
 =?utf-8?B?VnBuYUJ4TUpXdFk4TG5PUlliOHVyWHBLemVLeE04eVRpam9MbmozOUpTaTlT?=
 =?utf-8?B?Yks2YmFGZm0weDN5WGdyUnpZSldRTWtIZzBueHRNT1VMbjM1QWdBZTZzWmRs?=
 =?utf-8?B?RlVObDhLWTVGaExQcjgza0gvbjIxZkxIRXpNSUdzcnQ3dDZwb0k4YVB6OEc3?=
 =?utf-8?B?RS85N2FGUVFvOWxGblpGL29xUkJCeUYvYTN2andtQWx6R2Zad3dUZWJmU3FZ?=
 =?utf-8?B?elZkNGo4Zlh0M1BCSVh1Z3pEbHI2ZUczSVRIT1hrMlUzd2luUHE0b0RmMUNS?=
 =?utf-8?B?N0d1cjJqS29HeVpxU1RmYmRDVDFVVWFLOW1sSEJ6UDdFWGlqYnVEcVZhbFpx?=
 =?utf-8?B?UjFndHBINXRuanZTUVoyblJTVEIrRmFYVmFUU0dwOXgvM01vOXJjdUl4SnRC?=
 =?utf-8?B?V3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d37cd7b1-966b-4102-7ea8-08dae9ebe776
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Dec 2022 22:27:43.8266 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dg07WfL4ppVOx43kp4UD42QvGgCLxdeLSuVDJvd0+4HGhFRP7d6KorWtKT075QXmSnB7OrJlLJ+nGiu7xhLye00HygSmmCpeqksQQ/1et+w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6484
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672352868; x=1703888868;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SStv1tFbggjdHtb7jXO0qtVslcKuX+qryvQ7cK5fJwM=;
 b=htuVSf8UOHhIDm2xMvO8FqIZO74xWae/pgP31bMPYndXDZ8qsg5/Uhdl
 zh+QH69Tymrqb7hdfnuA32Iwup+Q5ErPYARzyklc6YTECXsRv60lSbK5k
 E+/KUMdpqExTgmCY03vOAmu/m+8wOBvoF8R/MhLIhbPpqcWunDcnDVuYq
 U5On2LshsLZSePmwZUDR8P6cTV9potinJ9yygZOCPkcwpVLsYqpM5MvkW
 U8BJudlUdcZtSBFImzjdr4lmtvU9ctvoSoAssi0gNyvOJVwsuvBS/jESF
 h2rh7Pq2R6GKu1Ym/cc69hkWuVcqnNXpmgHcIXRX1q+Vw3GI6hJqYaJ7r
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=htuVSf8U
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [tnguy-net-queue:dev-queue 2/17]
 drivers/net/ethernet/intel/ice/ice_main.c:4921 ice_probe() warn: missing
 error code 'err'
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 oe-kbuild-all@lists.linux.dev
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 12/29/2022 12:58 AM, Dan Carpenter wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git dev-queue
> head:   c342bc11f5a438cf39e2280bafda39ec2c6953f1
> commit: e51d0e34580892d22107a85390d1752fa7a7d56a [2/17] ice: move devlink port creation/deletion
> config: powerpc-randconfig-m031-20221226
> compiler: powerpc-linux-gcc (GCC) 12.1.0
> 
> If you fix the issue, kindly add following tag where applicable
> | Reported-by: kernel test robot <lkp@intel.com>
> | Reported-by: Dan Carpenter <error27@gmail.com>
> 
> smatch warnings:
> drivers/net/ethernet/intel/ice/ice_main.c:4921 ice_probe() warn: missing error code 'err'
> 
> vim +/err +4921 drivers/net/ethernet/intel/ice/ice_main.c
> 
> df006dd4b1dca8 Dave Ertman            2020-11-20  4908  	if (ice_init_lag(pf))
> df006dd4b1dca8 Dave Ertman            2020-11-20  4909  		dev_warn(dev, "Failed to init link aggregation support\n");
> df006dd4b1dca8 Dave Ertman            2020-11-20  4910
> e18ff118181bca Paul Greenwalt         2019-10-09  4911  	/* print PCI link speed and width */
> e18ff118181bca Paul Greenwalt         2019-10-09  4912  	pcie_print_link_status(pf->pdev);
> e18ff118181bca Paul Greenwalt         2019-10-09  4913
> de75135b5c04c9 Anirudh Venkataramanan 2020-05-07  4914  probe_done:
> e51d0e34580892 Paul M Stillwell Jr    2022-11-18  4915  	err = ice_devlink_create_pf_port(pf);
> e51d0e34580892 Paul M Stillwell Jr    2022-11-18  4916  	if (err)
> e51d0e34580892 Paul M Stillwell Jr    2022-11-18  4917  		goto err_create_pf_port;
> e51d0e34580892 Paul M Stillwell Jr    2022-11-18  4918
> e51d0e34580892 Paul M Stillwell Jr    2022-11-18  4919  	vsi = ice_get_main_vsi(pf);
> e51d0e34580892 Paul M Stillwell Jr    2022-11-18  4920  	if (!vsi || !vsi->netdev)
> e51d0e34580892 Paul M Stillwell Jr    2022-11-18 @4921  		goto err_netdev_reg;
> 
> This seems like an error path so "err = -EINVAL;"

Thanks for the report Dan. We'll get this fixed.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
