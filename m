Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 11EB97C4561
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Oct 2023 01:19:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D8E5A41E75;
	Tue, 10 Oct 2023 23:19:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8E5A41E75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696979961;
	bh=Fnh8aCiVairEed6QAOXkSuZOmIlsoMA+MFLMr+XP9mI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j48XTvzjMyW761IfWvCG6NzZkoal/hrovU1Arri01BuSHwb1QkyzJiLZCEEF1T3on
	 R8TGR/LTNnwh5TsGZNgA8TdV0GQ5jYchJDyhHGwi726AvM78lZPUoPho735T7HgyVt
	 GJrUdltK0dbVkDAHYZ3F3gtz/YP3c+UfNmst1VTQmVnvvaYXIie9chnp8tUmthAF68
	 EEH5PkNHH2wWXirkyInJjy8PD/e1d6St61nZP+dWHyFNz36H14UIhle9QCiGoMiHlo
	 DqZfzymysp6kTDGu0xLbLTXTcPszgs+2ekvRa5M/XxoZXfEyfbk4ZUbaN5Czeq5HdB
	 l59o+QoNCCaMQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YHGIPp0V3m3Y; Tue, 10 Oct 2023 23:19:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7DEDF41DF6;
	Tue, 10 Oct 2023 23:19:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7DEDF41DF6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4B5881BF83C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 23:19:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 218F44159A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 23:19:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 218F44159A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O-JTfQkxs2Ra for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 23:19:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D3E0540012
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 23:19:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D3E0540012
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="6096821"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; 
   d="scan'208";a="6096821"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 16:19:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="788763444"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="788763444"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 16:19:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 16:19:11 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 16:19:11 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 16:19:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S3fS/C5/k2NStC9rC+SGHyuDQFRPZdRpKC4lp3+OXSV/+v16fLqku3sBkMEksxznK4WeVZDsFiGm6bY3f5UDeVahmuJLy7VOXGI672tPQSxY19Wa+Wi+tDaSW55l1Ue1Gcf0pPPbChIkKoM1+f3CQyi38fMqx2Wu4yJEQuiz0N4v7Y3kNJAMFqMenooncEYcIYFVArpejhOcu0Ucub6y7DXAUy3nVjI9yaoJlbnCu9eO4p4G7w3NO1EoG0/tbeH+zdh3H+VSvOVwHBN52sxSU08cwmD0bbcJ3IbQyo+J6tA0Fding6cQMfhp82xtlkkhBevXEqqFUZWewzJXMgRhuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hzvUp3qkZbj1IcoXrrJKAF4m/UcO+v+VtOneKKq0aYE=;
 b=PklUQ4Kzylk/u4lbh/AKJVg9tLFH/hoLUvxJIAlGUsqod5RK0QdgccxZSC3Ibzm79sikjc2iOLTh61E8C2VRvG2a7mSAP0HRVBmz2t1ROHbR/nrSovxJHvMEMvJqZsVEdrLsaRCK1szu5KFy3kFAdMtDRmbALKHjNgxpXNustr21FHoRHo1QqcVNyRaDKPmo8MK7wLuazQZWwN8P1XjPFjxVsoRUgwQqwFcvc/UQibJns7YuTOtHXxQ8ERhLl2cjz2tr3fFPOyae9mUYBVsN8m41f7ZY09irCdf89u208VVTuMAz1Ypsc6h7hzQwqMwunh0OYhjxCMqn10K9JDva8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA2PR11MB4921.namprd11.prod.outlook.com (2603:10b6:806:115::14)
 by SA1PR11MB8489.namprd11.prod.outlook.com (2603:10b6:806:3a9::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.36; Tue, 10 Oct
 2023 23:19:09 +0000
Received: from SA2PR11MB4921.namprd11.prod.outlook.com
 ([fe80::4336:be6f:a18a:7fd6]) by SA2PR11MB4921.namprd11.prod.outlook.com
 ([fe80::4336:be6f:a18a:7fd6%4]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 23:19:09 +0000
Message-ID: <d84f2d4d-40d7-af15-0049-f8e1efed1eba@intel.com>
Date: Tue, 10 Oct 2023 16:19:06 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
Content-Language: en-US
To: Justin Stitt <justinstitt@google.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>
References: <20231010-netdev-replace-strncpy-resend-as-series-v1-0-caf9f0f2f021@google.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20231010-netdev-replace-strncpy-resend-as-series-v1-0-caf9f0f2f021@google.com>
X-ClientProxiedBy: MW4PR04CA0247.namprd04.prod.outlook.com
 (2603:10b6:303:88::12) To SA2PR11MB4921.namprd11.prod.outlook.com
 (2603:10b6:806:115::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA2PR11MB4921:EE_|SA1PR11MB8489:EE_
X-MS-Office365-Filtering-Correlation-Id: cda04342-b200-4210-5fde-08dbc9e74e16
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XEW9WmoxFFTLFqAgL7i4ZdHMvt3xfOhKSbrbg2vojYGck2z5p8mMfMUsLDNkUhTZfW+wEqt3Cj2xqJUCbtCWHzSlkmggF76KP7ylxQ23XI52yJyyjE7aL9gyI/pKBNQXFM67jGLjNfI+V1XV/t4gVJLsM2EQYCEkg3i8RI2fqddTkmGXgb8rCGno3aSNWGLYsD3fWyKG28zZCgCNrisy68yAt54bDtlNTt/nejGSLMIkM7O0HlOMTo5rn5y2gq4AL/aIL6jdG4vWnnmdz2wYnwqtOQPHsS5tKnpuopdV7wBTVjpNyYQbNC4VKWqtPuiHYFf5Lj+aC1/+Dm7y9D+rQt9WwbX1ulgKLJIV3EJtCBfHEzaZEIMVGLf97lMJAtmJnjvS1uw9FAn02qUwvo3zcIjwc4Rgq+K+KZ6KoI5NN0XgT47zC06x3E5Oid8h7/gqyPzXXVgVoHGG+8NMVrrQ7SyeXC7H+G+EGrLxKCsV5juOGFVXzBZdP0rbUuF1LtxpzHPNG30IcWVeEyjkidcAa8Df0P4iHMvcB2K0KburSiOou5LuXlQTBiN7JvEAcEyuN8B7fKDA1P1vB4MrGbMni8CC9kHmVcLvUodws8QJ/ldjA7pB6kqyo3lQWfctoRID9ByHk/X0VkQbHafgU94D2eLs+8TllYrVIxCON60aNSMcXGMX3RTaNlyc7+v7mWrK
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB4921.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(376002)(39860400002)(366004)(136003)(230922051799003)(64100799003)(186009)(451199024)(1800799009)(53546011)(2616005)(26005)(110136005)(66556008)(66476007)(316002)(6506007)(41300700001)(8676002)(6666004)(6512007)(6486002)(478600001)(2906002)(5660300002)(966005)(4326008)(8936002)(44832011)(66946007)(38100700002)(36756003)(82960400001)(86362001)(31696002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eFJDT0NoSisvcm9wZFplZDBiVVhxdGNsS2tESHVTMk1XbWI4eGJyMTZGaHVU?=
 =?utf-8?B?YXp0b0dneXNJU0xNeWJ1Y0hWN0pHWUYyZ2hTOUlHTnB0NmxpbDUvSGJOSTNN?=
 =?utf-8?B?S1lMOFVJQ0NTQy82eitDTzdXeVE2bkhwb0hPTXluNzBPMjRjNHh3MzVNRkJs?=
 =?utf-8?B?L1dLa3lvUEFXSzhmbkJzRlY3cUY0aDFvNzMvQnJyR2hxNjJNMkY1OVBoQ3Rm?=
 =?utf-8?B?elM0cXdwWVd1TnpuUHY3ZzJVeHJaVnlLaGNtRDZPa1RmT1JWNUZaVy9mNkRP?=
 =?utf-8?B?MC9QRHMyWWljd1hMRTE3NXJDZ0xtU2xTa2FTRUhZaG1Gdk1NaDAveTM4bUJw?=
 =?utf-8?B?VDFlbHpGYi81SFBRcXAyRXFyZE4vVjFTcDY1YWhpN2ZtbG5WZUVNS29MbG0v?=
 =?utf-8?B?N3ZQN3prVGZZZ0FYSTMzNjRJTzJpVjNoclhQdHV0a1NkNFhuQ2d6U01KNUdq?=
 =?utf-8?B?bWFZVU9kL0hPYXhYSEhCN3o4ZGxyQVVZWjlwUGtObU5WVTI4TlhEWDZSbnRH?=
 =?utf-8?B?bmdveFpWWnJIODQ3QThFUVRMRnlDanBMYVBoOFhPU0lpRmtuTjR2dkRaOEFa?=
 =?utf-8?B?eDJoVW1kWERWT085b2c3QndEaURyeUdtNU81cTJmRmxhejVHSTlHMldXZ1Ay?=
 =?utf-8?B?TXNkVWpodURNV3FiV20xWkxDS3piTjk4blM5S3dyMi9FMUxZaEZuaStPMXpm?=
 =?utf-8?B?UERTWkNjWGx3dzlkV1VGNk41OHRnSWs0dkNpa2VKSkVjVU5OMUNZZ2pRT09E?=
 =?utf-8?B?a2ZRS0gxVFVGSHNzS2oyazBjTC9PeEhiV01vTmpmNnozMXR4ekZLRk01Wld6?=
 =?utf-8?B?MGVtTDNaZVpNa3BGcTRKeHo2V0p3TUNNeDN3a0Vpa0hYVEpndkE0MjVPdWpL?=
 =?utf-8?B?eklKSnIyUXNTdVVqakxjQjU4Q1RnbU1CNnlDMlBnNmI1TUR0azZ6a1JHQndz?=
 =?utf-8?B?TmY1SFk5cjMwYXc2ZEN6MG1MWEh0TzZ1amhWSjJJS1VsY0VVMi9ib05FcG41?=
 =?utf-8?B?U3UxS044Q04yQ0xRa01ZUzhpRUlpSG1vbERqb2F4ZXhweEFFclhSOWkxbEtx?=
 =?utf-8?B?blZtdlpHSkRib0JEb1NYMHFaS1FHY3dlZW83cmZJM2Z0dVRFdWVEZlZjWWRS?=
 =?utf-8?B?eFY3clFLZ3pVWGxHOEJwbVlBMGJlODY5WXYvNHZyQ29SV090K24xQ2tvSzIx?=
 =?utf-8?B?bGZ2djk0eGdMYWMxNFhKUERXTzF4MDFTOGN0WXBtb0svZkV3ckFPbUt6clpR?=
 =?utf-8?B?OS96SEd5QXJlWC96Yno1NVZhb0ZFR3NTTzYwMFplNU5MdFArS0VQU3ppSDNV?=
 =?utf-8?B?em5GT0oxMVdtZHRxczBhbTFnMEZ1OUZYUDlXSE1iaDlrczlZc1JFSll1SkQ1?=
 =?utf-8?B?Wmd0TW15K0FyMHMvVHgvM1FHb3F5ZzFPRy9HZHFJRnlJK0tFYXBZWmwxTW95?=
 =?utf-8?B?V1lIUEw4QmEvbE9wMVFJWHdmWmp2ZmNiZkZ4WHZuc0Q1YlFYRFJUbHB4Z0RE?=
 =?utf-8?B?QlJvTmV0bkpEQi9lWGxsMHdYeUhFRWVxOUcxZDhUY2pVcjVtcnBmU0dsbDFv?=
 =?utf-8?B?cU12bzVad3RwbHZEdXhheEJFVlNPeTRzK0x2c2tTNVJPM3QyUmtRMVc0MHJB?=
 =?utf-8?B?Rm1IcE81OFlSRkI2UTEyZE95U1FRV3NSL01weUNCWGY1eDQxK0ZYNXBCWXRZ?=
 =?utf-8?B?V3pMMGp4UUV0VzhxSjYzOXNwT29CdjNBelpDMC9hNzZVWHBteXB2ZXNxdTlu?=
 =?utf-8?B?SWlJZ3QvUFZhdjhCNlFSbzhtdVkxQ1k5Yzg2S2k2NXdheHFLN3hyR0U1U3ZW?=
 =?utf-8?B?WktDL2lQNzdDS0ZxMlI2WndWTTVrNlR5dHhiRzNCTVRtRENjeXRlQnkvL0lS?=
 =?utf-8?B?RmZWWTBMbVNsVVo5NWZGTWV1OVBuOTJIWWlYRjZCMVRQOXh5Umd0aFhFS2xE?=
 =?utf-8?B?RFNBWWtZWWdtRDU1QzZYWGdGKzlqMGQwcWdmb29iZkRDdTZ2MXJvRXBqSStL?=
 =?utf-8?B?RUxJREJnamFhWFBUdFo1TVJJTk16UDM3OUxodHZUZEpBRGU1S2w1MVA3cmZj?=
 =?utf-8?B?Y3ZVdW5objltZ1IxVlNjQmhpLzNtNmJEZWx4NGlPT3FHSmF3ZEIrTnhwYlNq?=
 =?utf-8?B?TEZOOVRieWRwYUxEL0E3S2lSOElsYnVaVUFWQWpUMERvMmFoN2FKYlA0VVVG?=
 =?utf-8?B?cEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cda04342-b200-4210-5fde-08dbc9e74e16
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB4921.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2023 23:19:09.0515 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A42HSBpQrYUBQXtqEqL4gJ2BIDBiv6hQfqjZ7xA3ViXEjljZ5Key6NFBEy+uUZDeQ0ZGU5V3DDsxVlRuYKKCdmzmHxoqne73+B7G8qL8hfM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8489
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696979953; x=1728515953;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uv3B8GC/eCrG3xwrrR072GCkldqlRpFGA2jQZexmp9E=;
 b=Kg73Hde13KCXSsLtzbM1lUkQHJF5b6v5JVmCW+6CPTPRIr+PaQv6Bdry
 w4YYfoGbACAxEh3cZwjPCu4w+tnBhPoEQKUuLAFZQ6RISFevD7XWEAAeX
 FFz5FzTl59Vrvq5bC7U16k+TTYmlXGaJEnMM3rkseRB+Cs56AFG+Ae7P4
 IkiqkkEemSBWhi56Yqi5qEv/8Sa+a675fJ47loT0/mO9V6gTMo/ehlIrt
 AW5f4bQvn6Yi9dgitn2UoKn54WH7ZQdtj0S6il+MGpgXsK6SSiRxAlJiQ
 QwrjnX/dG8nI0qHvedl5eAgYoDB0hXrMf0HoRFxD1Z227YxxPBD57+VgK
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Kg73Hde1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/7] net: intel: replace
 deprecated strncpy uses
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/10/2023 3:26 PM, Justin Stitt wrote:
> Hi,
> 
> This series aims to eliminate uses of strncpy() as it is a deprecated
> interface [1] with many viable replacements available.
> 
> Predominantly, strscpy() is the go-to replacement as it guarantees
> NUL-termination on the destination buffer (which strncpy does not). With
> that being said, I did not identify any buffer overread problems as the
> size arguments were carefully measured to leave room for trailing
> NUL-bytes. Nonetheless, we should favor more robust and less ambiguous
> interfaces.
> 
> Previously, each of these patches was sent individually at:
> 1) https://lore.kernel.org/all/20231009-strncpy-drivers-net-ethernet-intel-e100-c-v1-1-ca0ff96868a3@google.com/
> 2) https://lore.kernel.org/all/20231010-strncpy-drivers-net-ethernet-intel-e1000-e1000_main-c-v1-1-b1d64581f983@google.com/
> 3) https://lore.kernel.org/all/20231010-strncpy-drivers-net-ethernet-intel-fm10k-fm10k_ethtool-c-v1-1-dbdc4570c5a6@google.com/
> 4) https://lore.kernel.org/all/20231010-strncpy-drivers-net-ethernet-intel-i40e-i40e_ddp-c-v1-1-f01a23394eab@google.com/
> 5) https://lore.kernel.org/all/20231010-strncpy-drivers-net-ethernet-intel-igb-igb_main-c-v1-1-d796234a8abf@google.com/
> 6) https://lore.kernel.org/all/20231010-strncpy-drivers-net-ethernet-intel-igbvf-netdev-c-v1-1-69ccfb2c2aa5@google.com/
> 7) https://lore.kernel.org/all/20231010-strncpy-drivers-net-ethernet-intel-igc-igc_main-c-v1-1-f1f507ecc476@google.com/
> 
> Consider these dead as this series is their new home :)
> 
> I found all these instances with: $ rg "strncpy\("
> 
> This series may collide in a not-so-nice way with [3]. This series can
> go in after that one with a rebase. I'll send a v2 if necessary.
> 
> [3]: https://lore.kernel.org/netdev/20231003183603.3887546-1-jesse.brandeburg@intel.com/
> 
> Link: https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings [1]
> Link: https://manpages.debian.org/testing/linux-manual-4.8/strscpy.9.en.html [2]
> Link: https://github.com/KSPP/linux/issues/90
> Signed-off-by: Justin Stitt <justinstitt@google.com>

Thanks Justin for fixing all these!

For the series:
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

PS: have you considered adding a script to scripts/coccinelle/api which
might catch and try to fix future (ab)users of strncpy?

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
