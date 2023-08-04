Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DA1770B1D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 23:38:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3213C41EB9;
	Fri,  4 Aug 2023 21:38:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3213C41EB9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691185130;
	bh=DNkS2ZwcpcAGin976LzkUiO10sz4CFEHHCyypr5TR04=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lWLWw16FWD80DsdYso1FMe02uQ0LEyE9zNI+iFaLAUFXfATtqEVk/98dp/WMqFVra
	 rrKMjTiL91hpjHwimp8ooO8Ntp5rbPKW0Idp2lBYWRik5ISGa39AeMsIdbslaFN1Vc
	 8xyA9Y397owifq7iXCpOcruL+w/3I8cmpUYbCT4fuPZJz6vkFZIaofSbidFSInrmgt
	 TctRR/lyVbLLW8mngO2UqCOJS9TqILTeichgKr0xhXSTOjj1WtdPIBr4VCSyxPyORC
	 XF+35UlzIMya0XbSbIqaq3walXA73ZB031kr+5maQMPB6tWO2lbvInRztjrEu7DLoB
	 St/sOEu9enEwA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CGgRPuP_NxAP; Fri,  4 Aug 2023 21:38:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 67A2441EA0;
	Fri,  4 Aug 2023 21:38:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 67A2441EA0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CDB6B1BF97F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 21:38:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 38E6440899
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 21:38:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 38E6440899
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CGo8TX85f0kh for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 21:38:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2725141C2C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 21:38:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2725141C2C
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="372997799"
X-IronPort-AV: E=Sophos;i="6.01,256,1684825200"; d="scan'208";a="372997799"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 14:38:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="853945423"
X-IronPort-AV: E=Sophos;i="6.01,256,1684825200"; d="scan'208";a="853945423"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 04 Aug 2023 14:38:36 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 4 Aug 2023 14:38:36 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 4 Aug 2023 14:38:35 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 4 Aug 2023 14:38:35 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 4 Aug 2023 14:38:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jvuq1XquyBbCufj73eePoyheU6hvQzqHOvi+x84Z6clFtV11XfIOFjcFHw70tMT5EU6DxRcwMy5p5gWY6h7Kia1xzdTGyLALnKXmip7upHXTGJhd1Bs74UuOXAfUssJmWdZmt5KxOTQePJyFtQpZyhoZjcuK8QltdBmHC56nIrqDJvK6vGYn+KOvYRJ+k/XBUsmGbG+xL7S+b5jFDeqOO4YZ+fb6ka0L+p9xytfpE4h4pqZKVtVtKG87hCe06Rd6biRsn/qv1vgFfVxVX52jrhmNEvpqn3ptJ4Qw3g8w0qfy5cvuLiYgs4ftQDRb4EvJ0KTb7oFzaII6xJzxp+a9EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5kXHnZ1Wpgc2EEbaUNy36KJVqedoNVo+sXo863vVHsc=;
 b=nj6S8xafZMaDQY4NxsxnAKc3b8uyKGvUTilN0hEwuZwXAVi/38LYYUqf/bb3d4dw3nU6/3SG4ZGynCfms5epg+/pg8/BsK4fIuOgRbMd00u81jmna9rXs2ErMItIXWrgE596kmkSeX0GaFbxyRw2K1JQLP7e0heLGrgHR6jFJ114m7N+gcVBU3LKzEuvViUoPcIE6hQpSq6yd/1KJnRNbAzBJi+uGhdnDXD9FnO8d+y6NV2lhWvo7qNO5Iz5srIRlerXznN9EOoUUynNLkqwzzaqB9nevCDHmtsYSVhkYjUi8sDwRwYF/a5GeL/+o943dmib7neorsvgixuPc4OVtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MN2PR11MB4758.namprd11.prod.outlook.com (2603:10b6:208:260::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.21; Fri, 4 Aug
 2023 21:38:33 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6631.046; Fri, 4 Aug 2023
 21:38:33 +0000
Message-ID: <1274219f-bd97-19d4-8603-3b891ec0a8de@intel.com>
Date: Fri, 4 Aug 2023 14:38:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230802153414.391846-1-aleksandr.loktionov@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230802153414.391846-1-aleksandr.loktionov@intel.com>
X-ClientProxiedBy: MW4PR04CA0151.namprd04.prod.outlook.com
 (2603:10b6:303:85::6) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|MN2PR11MB4758:EE_
X-MS-Office365-Filtering-Correlation-Id: 964533ad-bec6-4f7a-273a-08db953326fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EzWV3tncVhSBDPlOfEh2v9Q7tveQMrytDsyOJN06Exwh0RrQ/x+UCBcFsPQZFyTuR3+ke+3HHWOMeRfdOxUpzdDSyOt7ek690AjqBIXeF2M1HGbBzBEE15+ew3Olm0ClQhtA2vqxFMxP2ZekrSsKJBmjfMdSWm0q9RL+j6NuwcNRjp/5kquiwGa3bw/HXGMiJ7S62r9pW+uRjydqFeW+hPu9Ty+v1JGAjuZIpzHIVcAelYFgooNXQ2U6zqoD10SKtUNcLuDcAhsS9AUMh+iv6R0Jp7JfvefAEWnLLLnMTMofL0DoBDALJMRzdHcXEiGQUemyro0Z17AJjUPOPwzIUpFCxs7qFMhL1z7wy9CMgg3ebjD/pxWatdBCBdQVjnTPgaMez7873fRokCGI+V5aCoPha5KkvdHP96+yXU8Szz26PmeUiQH5KE7eUU7udzF9MR4X9SkMBwlN57HWnyJ18KzCdA8oB7tJ0wxcdoK2Z/54W6hdPiYyzKCQZLDNjFlS9YHm11D1DOANmBueoz6bwt26waEQLfUFQmfIGF5Tp7GlsD31bfooVCFUDDLjtIqT3WGVGU48mTD13FtSuyu5z+uxDWLS2Fuol8oIuXt+o/0JIt0JVooh7NRRh98WGGIOJjazA8b3adxqzF3n83RUhA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(366004)(136003)(39860400002)(376002)(1800799003)(186006)(451199021)(8936002)(8676002)(26005)(478600001)(36756003)(31696002)(86362001)(6512007)(6486002)(316002)(31686004)(41300700001)(5660300002)(66946007)(66476007)(66556008)(83380400001)(2906002)(2616005)(38100700002)(82960400001)(53546011)(6506007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eDZwNmFTWnBpc0xZMlkzaUR5Vko2dHF5alBKOStSUmtvR29mcGI0QzJIdzB3?=
 =?utf-8?B?NjhLQVRYakVPcXlOSUo1UzkzMXVTU2hFTTdlTHN4b1NrRDlmTnl5UzlROGNX?=
 =?utf-8?B?MnNwUE4rZDFKZy9MdDUyTDY3YlorUDVSRUVKaTR5cnFIUm0wQkUzcFF2T3VF?=
 =?utf-8?B?VmRWc3N3aStHTVBTd2E3NVc5cWJMaE80eWZScFBCWkdEbUdrT0JhckExZFNN?=
 =?utf-8?B?QUdJVGJ4ZlA3UWorUHZleHdrSXAvSU90TmxMaitBMGxRV2k1MnU2SzQ2WFlO?=
 =?utf-8?B?eDhhSXgva0lweFNlRlpoSXRQRGVybVJjN2g5NmRuMzh1b095RGREeFFlc3pP?=
 =?utf-8?B?bmxybDZJakZYVDlocEtRUnpWa3dnc01oVFRlWHptTzJiMmxGWkV5NWV1NUVp?=
 =?utf-8?B?WndQNWVGbG9BTjFRR3kyalF1bWl4UkJlZ085UXpUSnRUQ0E3U2RwUngwOUFF?=
 =?utf-8?B?Q0xaQ3BmUUtJcXN6NEk0S2NQS3htNGxSMjlKYnlXUm02QS9rSGM3bXNaMlRX?=
 =?utf-8?B?VElveXZUc1RBeTNhZkRIYTNJZkw1SFJjeWZJNXdpdVRxMnIycHkzcHlQVU01?=
 =?utf-8?B?aFR1OUNRTDFjUThPT3MzYU5Jb1l2NFNEWXl4dGhaczY3TkhiTlRidCs1Uzgr?=
 =?utf-8?B?NzZlMSswSGNocEtIMXVwTTNxKzl2dnhyU3BKRHBIMmJsOEFlQUd3aDc5aWVH?=
 =?utf-8?B?dFV1WU9tZzNxMklMcngvSUR3V1l6RVV1SEg0dUpYbVF3cVRFR3BQYmxuZ3JF?=
 =?utf-8?B?dUpLdUQzYWxvcm1LYjFZQ3dJVFpuWWdNa09oLzhkNUpEMDlIYlV5czdQL2xF?=
 =?utf-8?B?VXp2U3I0VUt0bDM3ZDRwV1hKViswb1hXdEc0bEwrUW9kb3E3ZnlFVlhLUlJF?=
 =?utf-8?B?S29PMFpQQ3FMa1FZTk94cnlOd0JpZ0NuUXJZREkwVklEd2JWODlLSklGY09i?=
 =?utf-8?B?dGY5YndZK1hpM1JHamRlOGd1Z3pjZ1BvWDNid0EzL2ZmTkNTbXVBTklMbXZS?=
 =?utf-8?B?bjJxWUNTV1JHRHQwN0Vldi81M0NZc091cjN0bG5HRU9VcEE3VkprYURvQit5?=
 =?utf-8?B?ZHlOR3I3dDI4MVExLzA1SVFlZTJEZmVXSnYrYVozUm9adWdXZnAvWVZrUHkw?=
 =?utf-8?B?WnB5djJ2QnN4YXh3d1kwVTlxeERubGNBREhseVRLOHpGdzYrb29GZWRSVnZa?=
 =?utf-8?B?NVBkRXNpK3M0TTBaQzdyMTkyazRzcHZPc3YyTkdjL3BFcVVpRWszRFQ5M1E1?=
 =?utf-8?B?UjQvZjVOTktzNU5zdzg3Wk16cTJDUU41QWk0RXJvNlJVdkR0U3BlcWdzbzJY?=
 =?utf-8?B?N1FVWFdaUDF0c0huWWFvMmxrUDk1UlBNeGpHWHJTRUlJZUVzNU9BclFWandZ?=
 =?utf-8?B?TkRDdmc1UWowbExqRGhsMXZ4MWxnS0hCZ0xIcmloNTdjSFZYcW8xb3VRR25o?=
 =?utf-8?B?VzZKTzlOYVJoaFcrQjRsKzBmVDFodFZialdwRUtkdGJ0SzhMdG1IVERzM0ZH?=
 =?utf-8?B?MWVPL0kyU1dMYmxuTmlTVFdjNmE1dkJwcG1EMFRYdTVpalMyOS9Ga210a1Qx?=
 =?utf-8?B?bGxpNi9IUzE4MGMwbmdzUGxNUUZwTjRoTnYxbmF3dUdQaEhPSzBIV1o4L2lP?=
 =?utf-8?B?R1Z0NGRBejVySENpQmxGV2VuV3ZvWTduVDBTVmZBaFh6cUw3MHo0R1FaaTF4?=
 =?utf-8?B?ejF4NkdXcFhuRzhrSHE1L3VML29WK2JWWnNxU1kwM1lEeVFTMkhscnhKS3RJ?=
 =?utf-8?B?MGo1ZXZTUlF1Q1NkZGZzV1IwVDZLd1JKaUgrZmc5MURsV3R4RHZURTB0VlRO?=
 =?utf-8?B?b1FLNUpiYTB6UU5oRTZLQU1YMklIYyttcTJRcGJEWVBMTldNZzNaZy9HVkRD?=
 =?utf-8?B?S3RvQ1VOZEdnV3ZRK1NQUmpsTXR4dXNNemFIamNKT25jOXZoVFBGV3VoTFY2?=
 =?utf-8?B?VjB5M0pGRkhXYWpYbVFjMVcrQXlWSEQ1OGxYdjZJZ1N4UWg1SUNSdHRhbXp5?=
 =?utf-8?B?U3pkOUlSSVVPVmlYQ1ZMNVJzZjZkOERaUlM3bHdNM2dGMVJkRWdxOHBRT3Nj?=
 =?utf-8?B?M29zLytMWHJLUXRnSm1vY0tZN1FCZEZmdksxWS9YT3o2UWV5MXh6WmZnUHpV?=
 =?utf-8?B?Tlk1VHoza3ZEaTNvWDlHQ2ZoYXlBclVQN2JibVRDMWkyTUYrZjVrWFJLSWVw?=
 =?utf-8?B?RWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 964533ad-bec6-4f7a-273a-08db953326fa
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2023 21:38:33.4764 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +sy5NHTfsDJWra3+ZulhfW7W9F7EphiJROl2GA818rIU6RGiPtFHQPjAdTVGXZcarJuRU6T4OfVPwZARUwvG9wbshSLyVa6WoVWodWrEG94=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4758
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691185117; x=1722721117;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=zH7MbftHWVq76HxUF20R8EFVoblHITTtXdGD81Sus58=;
 b=aNKhGBbjVBGBX9bdeNMo+kvsZJt+1PO5CdaS7VRC/CIA9QK1bjsAl21u
 GLIcUEbz8TDb69V7WW7U6TcxBVRVjBtbI2ZDs4kwX1z12etTPZ9YDkbut
 nsfLViDO8epD3g6AnsLR9SlA3jPgTtm0BnTQFYLpZ/Vo0TlcMvgwTVipW
 p+nA9EgNbqp2e07i5JeDYy0jvmtwHme6fkn5FJLh+vB19SYO1VFG0WMaV
 lx2KhHupRfTyCXqvRqs399mIstDJ0UMUsGkkcuXWtk0VCxyK66+zt2448
 BZKrrOvyVY6briFoRF/JRCVybV2qrsW2t/krAhRlUgxVG3thMlqVMLqhs
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aNKhGBbj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] i40e: add tracepoints for
 nvmupdate troubleshooting
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/2/2023 8:34 AM, Aleksandr Loktionov wrote:
> Improve nvmupdate troubleshooting with bpftrace utility.
> Add 'stable' static tracepoints to decode nvmupdate commands compatible
> even for future driver versions.
> Remove 'static' from eeprom functions declarations, make them public
> to enable dynamic kernel tracing and profiling.
> 
> Example:
> 	echo "i40e_*" >/sys/kernel/tracing/set_ftrace_filter
> 	echo "i40e_*" >/sys/kernel/tracing/events/i40e/filter
> 	echo 1	>/sys/kernel/tracing/tracing_on
> 	echo 1	>/sys/kernel/tracing/events/i40e/enable
> 	...
> 	cat	/sys/kernel/tracing/trace
> 
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

This doesn't apply.

> ---
>   drivers/net/ethernet/intel/i40e/i40e.h        |   5 +
>   .../net/ethernet/intel/i40e/i40e_ethtool.c    |  30 ++-
>   drivers/net/ethernet/intel/i40e/i40e_main.c   |  20 +-
>   drivers/net/ethernet/intel/i40e/i40e_trace.h  | 212 ++++++++++++++++++
>   4 files changed, 256 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
> index 6e310a5..d48f9fd 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e.h
> @@ -1170,6 +1170,11 @@ u32 i40e_get_current_atr_cnt(struct i40e_pf *pf);
>   u32 i40e_get_global_fd_count(struct i40e_pf *pf);
>   bool i40e_set_ntuple(struct i40e_pf *pf, netdev_features_t features);
>   void i40e_set_ethtool_ops(struct net_device *netdev);
> +int i40e_get_eeprom(struct net_device *netdev,
> +		    struct ethtool_eeprom *eeprom, u8 *bytes);
> +int i40e_get_eeprom_len(struct net_device *netdev);
> +int i40e_set_eeprom(struct net_device *netdev,
> +		    struct ethtool_eeprom *eeprom, u8 *bytes);
>   struct i40e_mac_filter *i40e_add_filter(struct i40e_vsi *vsi,
>   					const u8 *macaddr, s16 vlan);
>   void __i40e_del_filter(struct i40e_vsi *vsi, struct i40e_mac_filter *f);
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index afc4fa8..cfefb86 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -4,6 +4,7 @@
>   /* ethtool support for i40e */
>   
>   #include "i40e.h"
> +#include "i40e_trace.h"
>   #include "i40e_diag.h"
>   #include "i40e_txrx_common.h"

Please place this alphabetically
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
