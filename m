Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C7C8424F9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jan 2024 13:33:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 910BD403C0;
	Tue, 30 Jan 2024 12:33:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 910BD403C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706617997;
	bh=+cKbKGeYjVGR+pE/g35VYu+603zxXNKRbtdcHu0yls8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HJyPfHLOlqmPEfl4tbmtl6XZ4N58FJCeYmvXhZpLxvOVQc71Shk7sTgZgtTi1evpC
	 hBKivkdvhs9Yi32G/zWoJG3ZF+q89FFOojDXAIvSXmskmNnAN/NeagwP/cOrXxuVyM
	 HxzRaL11Wu3j8XLjSHgHBOZX2ZIZzRouqtwLvMPTPiMeQuzWMC6epl26LPMXlN00OP
	 QUopMBkzGFy33bz0hwUlSW3i6a8PzeOCoG+nZ7bc/vRtyWucjxWIBsfHQw1pRtNUYG
	 VUXWw0+7QP2BZJWiWm09xZ1pHokhhogjKhvwr4G3cUaAS31XU6vH5IlUdLnF55EYdL
	 7bxtjYLx/mTag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YL9YaPAfh3GP; Tue, 30 Jan 2024 12:33:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 53C1E41A68;
	Tue, 30 Jan 2024 12:33:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 53C1E41A68
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 997401BF473
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 12:33:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 66B6141BC1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 12:33:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66B6141BC1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dDnwYccMORbN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jan 2024 12:33:09 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ADE0641BB0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 12:33:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ADE0641BB0
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="24740967"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="24740967"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 04:33:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; 
   d="scan'208";a="3691917"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2024 04:33:07 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 04:33:06 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 04:33:06 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Jan 2024 04:33:06 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Jan 2024 04:33:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e8YQUndrEV7CGTopf47IsGnVBr0X352hmQ9JSMyDykl57w9qnoI2vkFMg3SUkLwqNF/AuUScK0+cH6bGqaqEo+qVtHx3VoBZWEHj65hLTFy99iEsnu5fDfCHSeFI/Y5cmCq7sDg/hFnqB4KDCk3mE/e/qDLhG3ikaifKyXwz+odBrewBa96W8XApkDd8yLNl2Xvtx8AlsooRlbIw1IeTXmRE67BOfO03Msjs7tSA0iBUjMogJl7KGFi+7+ztSGFOQICjbzVBc4NGXP84z6u4+prh7tki6KoLcYUjsOnQlCmo/TLNhcSBYRYvQQcjyO/HIdm7E3gqWeBJPU82lTFkqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+cKbKGeYjVGR+pE/g35VYu+603zxXNKRbtdcHu0yls8=;
 b=Z34zGoopZr5gA2dnuvrXuTEOSgiWFieUDRjN33RTJJEpKU19km3AjiO2u6e5gEhSbx24ymo/XnSqsWUz6UVl1uTLzJeBqe+bV+5a0bUVF1enZF152h0F4mb9BvmbfnUlcVaJzSuI00xUIDLdz5iPYVgbvhWa6FG1tDpbNHs4nIWwgaKJt9kFaXi82ww3HY/E7QyBpr0MazHsFJYgMqUw02EDP0zfbOu3obDbz0Zi6ligMAtzq7QCodbNpHxEHhzkutRDq0Y7mx1XvjyqnSBP7J7tp7xgF8EYvQ/nXaT6rWqlvnuTVK4P5JwvxlIiXip8WymReCHImcGyZ/vsq0Lqqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by DM4PR11MB6384.namprd11.prod.outlook.com (2603:10b6:8:8a::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Tue, 30 Jan
 2024 12:33:04 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::7733:f6b8:e322:f670]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::7733:f6b8:e322:f670%4]) with mapi id 15.20.7228.029; Tue, 30 Jan 2024
 12:33:04 +0000
Message-ID: <eab37717-8899-4dcf-b97a-2214b4387278@intel.com>
Date: Tue, 30 Jan 2024 13:32:58 +0100
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jiri Pirko <jiri@resnulli.us>
References: <20240130103101.88175-1-wojciech.drewek@intel.com>
 <ZbjfLTeXRA3-UzDW@nanopsycho>
From: Wojciech Drewek <wojciech.drewek@intel.com>
In-Reply-To: <ZbjfLTeXRA3-UzDW@nanopsycho>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR08CA0267.eurprd08.prod.outlook.com
 (2603:10a6:803:dc::40) To MW4PR11MB5776.namprd11.prod.outlook.com
 (2603:10b6:303:183::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5776:EE_|DM4PR11MB6384:EE_
X-MS-Office365-Filtering-Correlation-Id: adb22f0e-1dd3-4a51-2521-08dc218f9ab5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Xnrglf2lo5rUd3Xr7sEpAh1JDrlpmq8zwHcOiUgK12vJBB8kjSTjaK8Vix3O+VDFoeM+32XJahNRmX8UquOztW8Orw42viXI9GURz0FOWpe4k44PsKWu7x62Ee2JTjtKmnyMUgy0TSgMYlKjJHWjKFrnpnd1VSTL+SkfzBIDpdD6KrYi4cnETIIp5ZAIzBvRVSSRU75FDyaagYwAw0kTZPPErORC97amcEJFQC+9m8b/O/qgfOj9d9SKCsp2sa8b84HyIRENldd3qhtbRsHEm20g3MWq4DcS/m3v8wNTzHg3526a9X1337xym3PqPwJ4fdNbFb44BXKbTtFDj4uo8/9mIjcEWJxaPUecaA+Kf/F2LliikTIjDZnReloQhB1nNoMmkTpRcAmrQ7V0Cry0UQV/wAat5f3cGwpEUKFu/meVKTiryZkPRnmtwkYta9mZlLxJXeoGKj+c55mGjK9AlJ8J2PKbN7Sib421FMHunJRhKBXVTQL9jxzj561ajEK8o7rSIGIZvjY0jrNnbkrrA+4ApuJFuh2n9Q00IfWo8Ti5t5R3EuBFm0CJCiYqc9chUMU0XCw+4jK+0lAlph+mEYNUZ9NLqJNiZS4nH0D06lj8y0v7Z/RYjn8YFFHFpgk2PO3Cv4SlLWUZHE9p5F8xQw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(39860400002)(366004)(346002)(136003)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(26005)(83380400001)(8676002)(4326008)(8936002)(44832011)(2906002)(5660300002)(31696002)(86362001)(316002)(66946007)(66556008)(66476007)(6916009)(36756003)(38100700002)(82960400001)(6486002)(6506007)(6666004)(6512007)(478600001)(53546011)(41300700001)(31686004)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U2dWblE1SndxWjd6dTlmWGdET2h6RmtmU212bk1MNllNUHhpaExYTXlFTStC?=
 =?utf-8?B?Ti9GRE0zbnEyYWgzZGJySXJrTVVhd2tCK29QWkVOcmdsMm5ISkNQTTE1MzBV?=
 =?utf-8?B?OFBLRFVxckgrY0Zwclo5dkJyaGI5MFE2RFArN0RxaWU4S2YvS3k4QnhwZTlL?=
 =?utf-8?B?SlZaaEcrS2djUXR2OXFvUDVYM2t3bWFlYWdnUERMRGRnY1QvZWFrVFgzUjIr?=
 =?utf-8?B?N2NWSXdmd01CUlRiT2pzVk94TGw5U3c4aWt3Y0NWNWdKOUhCZlgyeFR5ZTdN?=
 =?utf-8?B?NmliWm9ZbWNOcmNLQkM3d1FKNStpRS9QSks2SXBaa0VKREg4K1IzTkJOMGRy?=
 =?utf-8?B?ZEVER0lrbzZDdnJlNG9CaWdnZFB6ZXJGVVdReSswYWdmY0RlYXpzR1hYdDBE?=
 =?utf-8?B?djhKaVpnZ280K2xpdlBoL25tUTJaU2daUkJrcjRNQzRwa1pIVUNNNTB3dWJB?=
 =?utf-8?B?QjR3QU42Qy9kb0FSUytBKzYwTzFjUjhFOWh0YytkMDBCZmNlaHhiV0hlUnpS?=
 =?utf-8?B?NXlrVlRQcnRwbFhTVjFYS0xxNDZ0RThGNVF3eExxek8xRjN0QnljL0Y0TTAw?=
 =?utf-8?B?S3hqRHFXaDlDU1VxWWNBOFJzM1JwUXN4YzdWNUdTSEx6OGNDR2xpM1Q2bmQx?=
 =?utf-8?B?OWRkRlBiR2hkUytUQ2tyajBsMjlqTCtXbm1tMGpXdnVCazNGcitvL0JwZ3U1?=
 =?utf-8?B?Q0hWQkNJOW85VEw0OVFsNUY5ZGFIa21mWHhSblo4bE5NY1hxYjhnYTZGMm14?=
 =?utf-8?B?MkZMMzR3dWhWVFN6ZFljZEwyWWhpSDJxR21mamZMVFh5TWpvQXZXVGNWN3JF?=
 =?utf-8?B?bksyQkh3NmhBQmpRNk9neGRRc1BRbHhkaGJzY3VJZGFIdFhnMnRHazk3aUo5?=
 =?utf-8?B?dElZOUttYU81aS92Y01Na0ZydjZtTTZ4SHoyZ25GY0hwajRZNkJWanA1eFpL?=
 =?utf-8?B?UEVlZ3hzTlZ4NVFNYTQzMGZiZHZZOE1SVmZOWGp3aC9rMkEzZFNhRGkzL2hn?=
 =?utf-8?B?NHI0SUo0bUtQWDcwRld6aXY5VG9KNjJKemFaNUl1MWV4V3dvL0ExTW41cXhE?=
 =?utf-8?B?K3pPSjN1elJnWUxYb3o2Sk1GSzFndTZYKzQ5RWJab1ppVXRrK25Fa2MvS01C?=
 =?utf-8?B?S3Fxcm9yUEcyMTZyQzZSUHp0Mnl0YnM0c1J2NVlZQWNaYVdQZk95NDVoOUNS?=
 =?utf-8?B?VUpVNkthZzFicDZZWWIwUVViQzhDRlpkcGhxSUtFSHZCK0V2aVJjQVcwMEk5?=
 =?utf-8?B?WTg1N1JsUW1hNmFYVTJlMWcrekVicjlqTTZpNTdiK3J4aURvNDdKOVo0clZP?=
 =?utf-8?B?dXA2ZkhHYXV1VkQ1T2syMnhXeVhSWFpyWXF2a3NhSkR4eEp1QVg0QWFNSWhL?=
 =?utf-8?B?M0dNNUt2TzNiRlZvZ21LclhBUDZGK2ovZjYxNHZJdGpoalpUNDRJaUp5K1Q3?=
 =?utf-8?B?OVVwRFZ5ckRhTjZUeTBDMDUxQ0syR3NCOHRVek9HYXlvZG02UU5idldOQTk4?=
 =?utf-8?B?eG9wcE1UUnk2R21qNWV0WDR5WFQva3dMdENJUjVtbDZYWlVyWHQzRDhSM2xv?=
 =?utf-8?B?NlR5N0R1cGdMM1EzNnBTNDNvaGxHVTArQW1EN28yQmNKOHJWRnNSRlBvU2o5?=
 =?utf-8?B?dzNiWmZmeDdqWCtIOUlUSHZJTDQzQU5Sa2pLTlhiWERVQ0grOVR4UHpza0VC?=
 =?utf-8?B?MllIdldOYm9ZUGVKbXFkdEErZmNqUFMwTSt0cUJlaTIvbGR4aGEvQ3BYSVRz?=
 =?utf-8?B?VjMrZTJ3Q3pZYUtRZlZyMHRmSWpoRUdBMTE0WVZBMkZDVk5DRjVnU01LMWsx?=
 =?utf-8?B?QlpGaE4ySlRhWjY1Kys1ZEdkbTY4K0RwS2xhUUtJdTZaZklaRnRBaHUwZTFF?=
 =?utf-8?B?MUNTSW9wK1dFZHRBd0wyV1BnOFFWWi9lZ2R5dGE1OCtrOGRsZEEvVzNFbWYw?=
 =?utf-8?B?b3hkRW95cm1rcXhTbUMzRUhaZVJnTzR1ODlBWXFSdndMNVcvaGxLM2tYUnVx?=
 =?utf-8?B?YU9adEx3TEhLK3MvZHpJTzNBQ2NxbDBqM3kxT3R0UEh5VUwycEQwZlVsYzUz?=
 =?utf-8?B?YzMrMDQ3cVUxam80SGdFMGlYdmd1ck1iYkFiL1ljbG0vc2hzdGJBdVFITlVX?=
 =?utf-8?B?RUVXN0M1VTRESHAwcEtlRG5jb2pvSi9Mb2FlaW1yMjJvQ0RuNzRYWHE2VTA2?=
 =?utf-8?B?OHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: adb22f0e-1dd3-4a51-2521-08dc218f9ab5
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2024 12:33:04.2079 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eN80WGYb0fGQzYTfIm5GboPA4VRHafIVH4uICKvcgqxdjNoV6MlGJLvYrrrFP0Xjh7LRs27S+3L0yL6dU7bDbv1xb6fkGlR19svcB3YDoEU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6384
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706617989; x=1738153989;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FAj8xGr601n8lZqgSR+3oszIEuTAE90C3TYekja26vs=;
 b=NO51YuMcapompFfgggVnMntEL6lqTBV94wNbKQU2L0noU2RdNQ+4/fn5
 lrtQPO627clVJuWKSDXGHm+yl38YB51dn5+ZWdh6F74znS2eaFWRCr+TR
 aXnvlZdj7aEZxwDSgFHiFxbE75H51fiuX4enDHMisGSr/YbnCy5d7D6wB
 bPNrwAtUeDyKdvvR8IsyAaxuxE+VybUnYl0veMEzCdV9oLPnt4RWU/Jsf
 t3+4Vew2ecIw9wPbCk/NKTE7smT3V2Pt3/u4JsGE+0z3I1IJ1CMFXs4Sc
 Og6rE4yclTjXCvVcJSGu6uGHSiaCuHFeuY4LgQFUOrD/wLZou0R8q3zOg
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NO51YuMc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] ice: Remove and readd
 netdev during devlink reload
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
Cc: bcreeley@amd.com, netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 paul.m.stillwell.jr@intel.com, przemyslaw.kitszel@intel.com,
 vadim.fedorenko@linux.dev
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 30.01.2024 12:36, Jiri Pirko wrote:
> Tue, Jan 30, 2024 at 11:31:01AM CET, wojciech.drewek@intel.com wrote:
>> Recent changes to the devlink reload (commit 9b2348e2d6c9
>> ("devlink: warn about existing entities during reload-reinit"))
>> force the drivers to destroy devlink ports during reinit.
>> Adjust ice driver to this requirement, unregister netdvice, destroy
> 
> s/netdvice/netdevice/
> 
>> devlink port. ice_init_eth() was removed and all the common code
>> between probe and reload was moved to ice_load().
>>
>> During devlink reload we can't take devl_lock (it's already taken)
>> and in ice_probe() we have to lock it. Use devl_* variant of the API
>> which does not acquire and release devl_lock. Guard ice_load()
>> with devl_lock only in case of probe.
>>
>> Introduce ice_debugfs_pf_deinit() in order to release PF's
>> debugfs entries. Move ice_debugfs_exit() call to ice_module_exit().
> 
> Sounds something like 3 patches to me :)

Hmmm, yea I think I can extract debugfs part but the rest feels
logically cohesive to me so I'll keep it together.

> 
> 
>>
>> Suggested-by: Jiri Pirko <jiri@nvidia.com>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Reviewed-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>> Reviewed-by: Simon Horman <horms@kernel.org>
>> Reviewed-by: Brett Creeley <brett.creeley@amd.com>
>> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> ---
>> v2: empty init removed in ice_devlink_reinit_up
>> v3: refactor locking pattern as Brett suggested
>> v4: fix wrong function name in commit message
>> ---
>> drivers/net/ethernet/intel/ice/ice.h         |   3 +
>> drivers/net/ethernet/intel/ice/ice_debugfs.c |  10 +
>> drivers/net/ethernet/intel/ice/ice_devlink.c |  68 ++++++-
>> drivers/net/ethernet/intel/ice/ice_fwlog.c   |   2 +
>> drivers/net/ethernet/intel/ice/ice_main.c    | 189 ++++++-------------
> 
> Yeah. Would be better to split. But up to you.
