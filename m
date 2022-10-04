Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 850715F4AB2
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Oct 2022 23:08:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F207402DC;
	Tue,  4 Oct 2022 21:08:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F207402DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664917728;
	bh=By3IoNu7yZvcB0reQoLCm/XDB9qo1jEcCCihUW2FHog=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KuXyqOEJORNYvce+3jruJ2ULXkNcPDuBh97qRbMs0rgk26Sp1m7JVkSKci6j5/NjE
	 ILLG0w0MuMmCuv2gk9D2snPDITWFtR9B6sH2goxU+C6Or0gozitoJkbgDulo/NOdaM
	 TpLx+EohNzcnb0Cd67+txF86YQvoFIgZIJol6pWCT94c9iaDVDYPdp4nnY5TWWrjCP
	 bXn3uUkfuO1COzrbIltxs73rUdzWVNj3+gBEpBZamhmvDbkXFRxenOTMVpIZWE+Wug
	 V8pZ+L3DgGx7ep1HFlWkp0SfJM5k2WqHatc2JkPNFVlJ2POH8nSJx+/tmUfaFvUovl
	 oLW2JV0SYk9Fg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YvyjE2zXeAhO; Tue,  4 Oct 2022 21:08:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA4634003D;
	Tue,  4 Oct 2022 21:08:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA4634003D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 947EE1BF388
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Oct 2022 21:08:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6E02281301
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Oct 2022 21:08:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E02281301
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ewCq5SDW42lR for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Oct 2022 21:08:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6CC2081300
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6CC2081300
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Oct 2022 21:08:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="300626919"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="300626919"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 14:08:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="692654727"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="692654727"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 04 Oct 2022 14:08:38 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 4 Oct 2022 14:08:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 4 Oct 2022 14:08:38 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 4 Oct 2022 14:08:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FHTed5itXWVBNOsrzYV8GlUrYzJWemUlnlu1WAtEFMrfysFxdALYwLj48uCUYugcvHYMuPJ8pgADtv5uXyU2bEH9lgEswITaNbcZ9Gn15Bhl3fR11XtmlZU9sRE39832u6/oNaTxasmKlT1vlViENVXqYIjkO2E6RTGeJz6SwOsuHEUEP6WNSvQ/XcJ7ksRxZ/9nC1kv8mbdtQOXQODhwqVvGCDncKhn/PWuVVs5g71SjlubBI77mmIt9GmG16MVcVK4Frgmxk5Q3nMfe1jkVsYze62WjPOs2SD2GYmnNJuA81p+NyHy0r7mi8DEXhrgEGOFqED8sHcWRBtyQvC3ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S51duIFhOfwedhb+NVibJwWkkxBBns9ApaXUcD4sGik=;
 b=MMAnbrmxKxhUwz1CdwC0u0o0hyyMFxFxTXHjpA49D4Ft37uSjVwYwkVWTZ1qCmhmJhVkRKa3SHgJz5HjvyAr2N0Ju8+pASMIIK/SBjpmLd7fvzlmBtBZmJt6z78cwBn5ro8VhnkI50CC3rgyoKCAoqElx7nm2lhb7oMUP7eBRG9gWGJHyjZrUQnW2NZQ/izaZbIXMH12s7d4m5yUd0YvoIsDU+F/ZaCgAEMq39Hw6DVj8PaTq+FtV9ok6pmL4K/syYdFse40ApMRdNRMpPkM2XpKO5AqPGV1v7tonJfYmT+lFertV7tOUJk34Mkz93IYH4SAmByeuNArM0jTOCxOmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CY8PR11MB6842.namprd11.prod.outlook.com (2603:10b6:930:61::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.20; Tue, 4 Oct
 2022 21:08:36 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::47f1:9875:725a:9150]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::47f1:9875:725a:9150%8]) with mapi id 15.20.5676.032; Tue, 4 Oct 2022
 21:08:36 +0000
Message-ID: <e4139591-0773-0e82-efc8-2afd2a0813d8@intel.com>
Date: Tue, 4 Oct 2022 14:08:22 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.13.1
Content-Language: en-US
To: Alison Chaiken <achaiken@aurora.tech>, <anthony.l.nguyen@intel.com>
References: <20220801133750.7312-1-achaiken@aurora.tech>
 <CO1PR11MB508966EB7A3CF01A58553536D69A9@CO1PR11MB5089.namprd11.prod.outlook.com>
 <CAFzL-7tX845o2kJmE4o8EhbeD-=vkR6rmaiz_ZEWfSD4W+iWEA@mail.gmail.com>
 <CAJmffrqxwFyRGpMRYRYLPi3yrLQgzqnW5UKgbgACGNqoN_hsVQ@mail.gmail.com>
 <CAJmffrr=J_s9cFw5Q58rvZRWLpsrDnx3RkRXS3oLZDYY3BrNcw@mail.gmail.com>
 <bd24eeb0-318c-71a4-527f-02832b74250c@intel.com>
 <0048e66d-6115-4b71-0804-3a0180105431@intel.com>
 <CAFzL-7v-wLuaunUwKfEy0W+OMkKSXJ8ohecb8_Gok+=eQHdeAA@mail.gmail.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <CAFzL-7v-wLuaunUwKfEy0W+OMkKSXJ8ohecb8_Gok+=eQHdeAA@mail.gmail.com>
X-ClientProxiedBy: SJ0PR13CA0117.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::32) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CY8PR11MB6842:EE_
X-MS-Office365-Filtering-Correlation-Id: b2c8195d-ffde-4643-a8a0-08daa64c9a3e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: an9/FpsN4DuXrWrfpL/pN+TCvhdQW5Pc2I+WUWzxM1ZfDRhBkGloV72EXgeVv66pBJdF8nu6BjFTIPvy0xD6tBKr3D1mpCBiO3ZUAI6ALQmFooDTFR76RpNrMfvdzuscVnnQuP1brdWxvcWtyH4o/W9NbKSXqQE11oAbUHaCJz12SIb23RTRxWH/6PA+3sWkX5vUSHDPUwpBHapl7aCD9g+fOo9/lZzjMX5ZRprXeqamG4LguIJAaGBGpNSmHHy39TkCTGYsoWwUTzXHjOt8fk8TSso+QXVX0zizzrBa+AqR6JjcH+zZLoRaVFJ6uybviyzWy6dBmDVN4h46aiaNXnXQtpu3Mlnb7PQTqrpK2VXEo6hKkz4EFov+cRG81HkWqU20Hvy1H/fOSzbR8v3+iZAWiYJxM64K86YPcN0xQfStvs/i65/v/67AyrSnyqh0ntxftseEV2jBW/gg0Yf+7U43n8VSapFFdDu9U24Ix5Die9HTOYSNwVB23NkO+CiDTjz96Mzy0KHuzQOrC4ebnVUTQRLScdmZQcUCN8UD2LDcBfFkAmgrGghKsaUtN4QPqzDfgYIE5zNJ3oMy7qFex5NsphkODdyufXOGvM+7W5t111Jn0MqyewWf++b4K3uZjKtVgNfdKJraAji/xsBJ83j6iyYIx4TRn5HF5gcLrLl52wZuERqa0AkOTf7f3UtuIY9MBlAORTye12rbDz60uXi+0uFNt8wyAQLdYB6/pVSWAWZJax3GETy5+KPrZNYTscReQ9NQOSao4lz5UGknKguC994N8/mdbHVJrE1laMe4gT6A2BZyFEPeImOCX0Nx5tkEoNTge9m5d4/W0wvscaHin9HQYl64XutG/XNTUiM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(346002)(39860400002)(136003)(366004)(451199015)(478600001)(38100700002)(966005)(6486002)(82960400001)(31686004)(8676002)(6636002)(26005)(53546011)(6512007)(36756003)(66556008)(186003)(66476007)(6666004)(6506007)(4744005)(83380400001)(2906002)(4326008)(66946007)(41300700001)(8936002)(31696002)(316002)(2616005)(5660300002)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OHNhUWFXUTNWa3JPbXJ2TEpEL0Q0d3NjU0JqV2tQUm1pNGwxOHJjL0Q5Vkh2?=
 =?utf-8?B?blltb2g4Y2F2TTJxWVl3M2ZjUzh6eXBIMlQ0Z0VXM0o3WHVCd2t0SFlFYVcx?=
 =?utf-8?B?NjY2V3FFWGttb2dUbEdVRElrT0dKZ3p2MEhIUitQdHUyYTI2TEpQdkYvMGg0?=
 =?utf-8?B?c3hsNWJsM212dUo5YVRnWmVHcTdJUjJ5OVJxMC9iSUs1MyszZHBTU2tqRERk?=
 =?utf-8?B?dS9LTmZSZnJRemN0WWRGSFN3MmRZOGN1ckd2N0FETGdESmVDRVJNL2FENWhV?=
 =?utf-8?B?SHpmRWFGdTNXVzQyaE1Zc1BmSkxobVRDaE4rdzhSRVRyckFQT0hMaTVRRU96?=
 =?utf-8?B?UjZyU01wOHFtUTVDeU0yMHV5dFVFWTNwb25DcWExMVZOVHEraDloTjREMFht?=
 =?utf-8?B?UGhUS3FTdFVSR3B6NFMvcDhYYlJVUlU3OWZOdlZVNTZpT09GanZ6QmlLQVBB?=
 =?utf-8?B?eEJCaFcvUEU5MjgzejhpOStUN2tVWXJuOVVHQ29yZ3ZuWHFPQVlCQ0t0SFRV?=
 =?utf-8?B?Y0pKUmNNRzhMRUFlQVJTYTdxbitxcDkxV3NpMWs2aG1YK2VhL1l2NkhsdkRC?=
 =?utf-8?B?UTUyTzNZalBCZ2tNS0xFVE5CNTlJY1REcGxSMExlL3g2RVpnSVhwZGFSdG9H?=
 =?utf-8?B?Y1puS091YUNTTUo2YjB3V09uV1Z3cUVVTjBrK3Y3d0hjUUVWanVXSDBjTVZH?=
 =?utf-8?B?Nkx5YmN6Ukd5QXAvVFlrWklBSG5QaFFUOG9zSHFzRUlTa1Yyeno3Yi94ak5a?=
 =?utf-8?B?TFRwMHRCTWRrcUZyTnBhYWg2Q1pqMURrbU9ENFl2bnhBdEdhSVA4bk9VK1JN?=
 =?utf-8?B?Q2Z2a01pSE80L210NnAzVEY2Y2EzbjdtUTA1SlBscm9vQkEySlFmWDZwd2Nj?=
 =?utf-8?B?MmJ5NGUzaXJLck1xSUJDRzJnSmozSWJ2Q3dpcVdhQ0g0Q2hrTW9OZ0NZVTJY?=
 =?utf-8?B?Y3dXTW45V2lkc2p5cU9aUDFlZ2VXa3NjVGRsdTd5aDhrSGswY0NXeWZDVEE1?=
 =?utf-8?B?czVRY25rMi9SYWNHQmNUdERtejVpcGdaaFR5eWw0ellsUTJrWUQ3dHQ0eVh2?=
 =?utf-8?B?UnpzNjNpTjg5bHhTRWdFUnNWUlFscUswaFdPOGJSR29oOXAycVZQenVPemJj?=
 =?utf-8?B?VTIwWUVZSFRrZTNrSzJKdlN0enNRaFQ0Z2ZRejZ4ZUViTy8rQ05pR05ya1ZZ?=
 =?utf-8?B?TFN6c0xZWkM5YXJQZEhIeVlWei9jRTQ5R0wrdVRmTHFpdytVbGxFd2pLZnVk?=
 =?utf-8?B?clFqSzZqVXB2U2Voc1NOU1hWVnNkWHhoUDA3dURlQTlQWUx3ZUY5TVp5aDBO?=
 =?utf-8?B?NisvcXlVOEhhQmx5RnNMNCtNN3FFNmx5WmF2eHppcEpJa0t2SjdzVStIZ3po?=
 =?utf-8?B?YUt0RllYbnhzWEtMVUEwcWxJK3JqMzZQNVVYalVabi9pb3V4bW5RM0UxeVJY?=
 =?utf-8?B?bElPR1hQa2lKQXJZL1REQWRXcU1HUFZjOFBPMWJCRHIwWmFGT3BFQkZtR1BX?=
 =?utf-8?B?NmVHS2xuYklnYnM2S05tbXEwSjhiSDMzZFl1bTlmWG9aVG9xc05QSHowSU9k?=
 =?utf-8?B?QnFvT0JzMTRWWEtEajhxYUhUQnYvU2xCcG9WVCtZbUx6dXJLY3BsN28zcGJV?=
 =?utf-8?B?cFQzcGFPc1pwVWUyaEg3NHlZdFhXdUtSQjhVV2k2Ni9nVUtiUHNXaHVyNTZS?=
 =?utf-8?B?SElGTE1ZZUNRaERaY1NxdCtxNS9LeFMzbW0yZ0RwbmsyY1JMcnprNExkeHk3?=
 =?utf-8?B?UDdPckFnVG1XTjV2L2lhUHU0cVlPc0lCendYUUErNy9CMUYwWUJZSlo5MCtz?=
 =?utf-8?B?eDRiMmJ6aVlqYk1TVGsyRTV3djU5dXJpZFljc3FoUUtreW5HOHZsYWc3S0FQ?=
 =?utf-8?B?OU5QUExDelAwMlc4emFTUDdnNWtrWHl3L3pteTkzNWZ0TFpyNTlUQVJqVUMv?=
 =?utf-8?B?SkZXSzZoOHpYTUloTEhVaWFHZ0I1bmRoMVRxZ1lyWXVHSkhFbVJTWlBjSS9a?=
 =?utf-8?B?V1FhSzFHL2thVy9SNndhZEFUQUxPMkRTb3htN2c1T2tQaElPUzZ4VjlZQ0Vl?=
 =?utf-8?B?ME9NOU9CYTYvYmMyQndpMndwbU1VZW81M2toblpPTXlROTVORUFFOGh0Wm8y?=
 =?utf-8?B?eXBoOFEyREo2QVhxUHcyblVqaVlreFFVSnRrK1JOSXdwem5Mc3dhbHUxU1Bw?=
 =?utf-8?B?ZWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b2c8195d-ffde-4643-a8a0-08daa64c9a3e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2022 21:08:36.3600 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NJbWiX4iFFYbQaBjvllu8k1d3HC4AuzkE1doo9vQNlOsM7QFBtdL/Xpia1HTSnMP6vBTUTGbdj961qoL4FjXnSelh3oDO0PhL0OvyNxjQd8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6842
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664917719; x=1696453719;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TYKk7D5pp5h27+9Warj/Layln96uZYXFJpX5Yut1L8k=;
 b=LpFIOqQsndgLYRjY8anVic17+WPXyPX6S2wwkroA8Us9zWwT11JhEWh5
 MXGNo6jMkbh4XZrkmxt7xuRWswl2i7W7wXeaNNdeEcfnb+L9Xxl6afJ4K
 gS5Tx5WhCTZCLh2ZgQwnFsUAcjK9uIOYwTSHNNQIRv8b7xMQr/LxcjAXy
 Jbj+JTJ4NyPSfE7upKhq0bgTYEEMO/tf5w6wMQh/Wlhs/H80wJibnvY4t
 FNFzJQfJX73YQ4OcWj/lKxnRaaxjOHk8vztXllu9nSxld+IJ1iRNi9Tkq
 CtCGLkOMryAD/txhziDSLnmftOoouyHD8Iifh+zwi9UG08/OrN6hGq7wi
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LpFIOqQs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Fwd: [PATCH] Use ixgbe_ptp_reset on
 linkup/linkdown for X550
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
Cc: Steve Payne <spayne@aurora.tech>, netdev@vger.kernel.org,
 richardcochran@gmail.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/4/2022 11:14 AM, Alison Chaiken wrote:
> How about this Intel X550 PTP fix for 6.1?
> 
> https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20220801/029590.html
> 
> Thanks,
> Alison Chaiken
> Aurora Innovation
> 


This was already submitted to net as [1], and it looks like it's already
applied to the stable Linux 5.19, 5.15, and 5.10 stable trees.

I've confirmed that it's in the v6.0 tag as commit 25d7a5f5a6bb ("ixgbe:
stop resetting SYSTIME in ixgbe_ptp_start_cyclecounter")

[1]
https://lore.kernel.org/netdev/20220824193748.874343-2-anthony.l.nguyen@intel.com/

Hope that helps!

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
