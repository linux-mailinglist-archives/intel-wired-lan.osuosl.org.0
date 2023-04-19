Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0BD6E815E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Apr 2023 20:43:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F34CD616FC;
	Wed, 19 Apr 2023 18:43:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F34CD616FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681929811;
	bh=3WA2So6TVc0iP3sD1QGAB7Ntgc/ijUpJwGCn4SAxq7k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lXhsK/LM/WA2StSRj0l0kl8+KNbjil3IVvvW4uXJfjoXEB/ueKCd3TGuuv/s7pZ8S
	 lgkf+ihxYjBXGybt1GsNK/MjosMYEbcezkFNrrpT1LYUbIyjmWjvVsRueJ1p+xJ0oM
	 9qqybAvfcbBybZjqRNFIg+t421a6w4nPC9QpJxsriA3/3alG8MYb/DwrQrHWf8JqWR
	 5FoRi2O62de5+yHdVD7OFZ2WTttXryJresv/Pqjc0/A+Fp2qpDOdYz1h1VZWnpMDb0
	 zQXmSswUwB5JmglkDX5YPnMGe52pXF16bpBSWE1Kk32gssn/jgKBW6isX5QZw1qJ6c
	 qS8i3qkpMF+3Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D3nJBcgaZYaD; Wed, 19 Apr 2023 18:43:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C269A607D0;
	Wed, 19 Apr 2023 18:43:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C269A607D0
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 79A761C437F
 for <intel-wired-lan@osuosl.org>; Wed, 19 Apr 2023 18:43:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 50CFF4056A
 for <intel-wired-lan@osuosl.org>; Wed, 19 Apr 2023 18:43:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50CFF4056A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NuJnb_lZWlKc for <intel-wired-lan@osuosl.org>;
 Wed, 19 Apr 2023 18:43:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A7AA40549
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3A7AA40549
 for <intel-wired-lan@osuosl.org>; Wed, 19 Apr 2023 18:43:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="347385004"
X-IronPort-AV: E=Sophos;i="5.99,210,1677571200"; d="scan'208";a="347385004"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 11:41:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="865942617"
X-IronPort-AV: E=Sophos;i="5.99,210,1677571200"; d="scan'208";a="865942617"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 19 Apr 2023 11:41:46 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 19 Apr 2023 11:41:46 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 19 Apr 2023 11:41:46 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 19 Apr 2023 11:41:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gXaO7XW+fiQqY8ySk5xjLMnKurm+lHhmiExu5K2vtHZVTvxPeBg0rKwsW2HQSY6/V5K3h56z1VGmC4SZESDtXR4SnnSNf9nz3mJHu6pzmWlbxIlRWq77kLKBQeT9DfDJRnFCPgTTrmjWYBqEnrxC1lkqCDIouwIdv7mfOD2MSegMBzsn3tAIwiqRjvO2QV32H/zPoLYIKNcao4pIEQm+k1UlIamUnyIjSBijuwT26ZM4WrPpPev561pqqmkrRLb3ApxHRcXNG98uD9LcL09c8fMeF14QNFGpyC5VpPzxZmpYjs3huvZWTggEv92YJW4568nRdn+UUqWkGuKce8Bl1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dPkXfxaYFamhdLkPs4D20q2whpgAdPHiJ99eAQ2Qz8Y=;
 b=YscgWC2qY3m7AmWlLD+ALk/39L70uZBHXxZGq5eVLAKkVCN3XDy71gfSLVtVp9ieEiS+TsWEsMipsjQaOodsf+hWBUuMZ19K9zvHtjf7CPf048gGsBNcTJfyb4XPPH9t95EqmbVsbGhHPmfYFcN7Zkbsyr76MxeaBGHASLJDqB9EpCUG34pwMFjEc1VnXtDOuyrVHDQWslNsT+DbYGVd869TVew1rtcuDXMhnE6jHj5lRO4rE8nH+HHmg6+JFJO1XgyNhowHBYsP27tFMGcebwgj2nHXHWpQ2krCfPvAoK2tVojgb1+Y4fvuGSs8wl6UMFUOzRxU+CpeO0ISXCizBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH0PR11MB5111.namprd11.prod.outlook.com (2603:10b6:510:3c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Wed, 19 Apr
 2023 18:41:44 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6222:859a:41a7:e55b]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::6222:859a:41a7:e55b%2]) with mapi id 15.20.6298.045; Wed, 19 Apr 2023
 18:41:44 +0000
Message-ID: <bc9cab2a-d3ca-cb73-2aac-6b2d78f755b7@intel.com>
Date: Wed, 19 Apr 2023 11:41:42 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: <intel-wired-lan@osuosl.org>
References: <20230419115006.200409-1-kamil.maziarz@intel.com>
 <20230419115006.200409-4-kamil.maziarz@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20230419115006.200409-4-kamil.maziarz@intel.com>
X-ClientProxiedBy: BYAPR08CA0037.namprd08.prod.outlook.com
 (2603:10b6:a03:117::14) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH0PR11MB5111:EE_
X-MS-Office365-Filtering-Correlation-Id: 19e9b9df-2d7f-4f03-e14c-08db4105b92f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yl/W8KjtTPZTv52fH6h0mhwdteqJPa9wotdrWq92srsQd1NJMyCw7o47mTskcbVEMKPbqAF8KEB7/wuFUNM2l50YufTHE9gevSRT+pkiQ7ZzoM3X3KsimzIsK+9sGCyq05GIv14dvj6WdbEd0ieRU4P70xFmF1Z9T//9zRBvJ95f1bdEWJJIqZYlEDtE6RtA9j5EY5msV35y6TDpie+GLllx8BDK2V+lDRAgl4Q4+dMPejaCNBIPPY15KNvOSeTFumFPk4KwpDO9dyTF+9yEpZkIfnoNPzNU/0kUpX+SZVxZ+o8QcUHdhHGVnY+jdxPXzlo78AMhpULS4EqTF47wTqcYThpXllaDY91HVWgTSeMjRLXcVxvnqZ92kWWtdsT6bDuovOQU9pw/IKi20kN8hwZz4+oWRh8Fakq/ntrjQyv2hb0BK/m/Y2nVdHK4gXAcgUs/OxYVFuxrjTd8O52fIJwCU3TigtnqMeJfp5s1yJjXeTFRcd0JaT1KaNiCCyT+tTg95yxLMg40IYxHPMf9XmxMwRxfs9bYIBGGoItRA7YHLuK1ZhrhnCpo/RbH1q4nSzfYvAc2uynLIn9xNDXbIzInQDSsO+64lT2wXcoQzweBrVGUpgd7QRFraoCWpyyL9x1MMjYSI757Xp4rt+UWZQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(136003)(376002)(346002)(366004)(451199021)(31686004)(83380400001)(478600001)(2616005)(31696002)(6486002)(6506007)(26005)(6512007)(82960400001)(6916009)(66556008)(66476007)(41300700001)(66946007)(53546011)(316002)(186003)(5660300002)(38100700002)(8676002)(2906002)(8936002)(86362001)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K3dtdS9DV1BDWkF2UXh1R1lTNGl2cEtEcFZ6K2pMaHZMWm0yR2NncERMYkRm?=
 =?utf-8?B?TDVJdUswYWRIcVZPU3Y2ajcvWTNzVXhUZ3J3c01ZTVhhNzBVbWF1V3JtdW5J?=
 =?utf-8?B?TFhqU3ZmajQrWmhOZjk2a0xHakE3elltU0JhRHdlUjVIcFRpWll6NENZTzJ6?=
 =?utf-8?B?bDVGYmVMMlNYU0R2MktuM1BVUjErNXlkV0F4YUZjQWNIVUJjR1ludVpWbjV4?=
 =?utf-8?B?TThlYUxyNnplQTNvZW5McGxMNWsydkwxSUtqZnNHcnplVStjc21jME9kK2Zo?=
 =?utf-8?B?LzhIQXpCRDgxZmhkM1hXRDl6aHQ4NmFsTTMxU29mbU5wd01QU2lUa0xEYWV5?=
 =?utf-8?B?L1Jmakpjdzl1dTZabDVKb2N5M0s3SHFlWVlOTU41S2Z0QmRWU01TdFIvdUdp?=
 =?utf-8?B?WVRhM2hJU0JXcEhrR2RiM0lIeTdUSXBuSVZqaFBpaVRDQVYzdDcyK1BtWUx4?=
 =?utf-8?B?MXpjWWRMWVdvZ0JqK05hQjZFY3duUEM5MnBlNW9RZHJsV3Vtamx0d3c2amVV?=
 =?utf-8?B?ZEJMZHd6dEl5elJLT2J5cllmVGZtdEZObm41NlZuSm83aExIQlZXa1V0emg2?=
 =?utf-8?B?NTVkdDRzQ2hlUGZGaVk0S0xCWERJVC9aU2hBMXRBenE5K0x2SjBrR0tyYUhW?=
 =?utf-8?B?UHlDMndoM1RnSklRNThpcm1KQkxNVTVhUUE3ZTVXV0syeDhSL016azZ0emEv?=
 =?utf-8?B?bCtRRFBtdlRJRXNoOC8yNng5Wkw2SWExdTAycmpJSFVMS3ZRUElWZVpkcXlY?=
 =?utf-8?B?ZEhXR2hwUlBTMjFCT1RZWmEvUXRRY0FxZmxyMWJNL1JRTCtGbFdTdkh6Ulli?=
 =?utf-8?B?cmZ6d05KRDlBNkJNU05zc1F3TzFrWkJaZ1k0MnFsNmVVeVpKTnZ2Q2lUcml5?=
 =?utf-8?B?T2JudXl2MVQrUklzZEJFYlZkRW9Gc2RVV09nRGpoK2QwaC9USlZ2YWtpbEc0?=
 =?utf-8?B?djRCTUhiaGZab0lkM1NmRWs4MlR3WXZ6enpxdmNZeit6NTVyV1d4Z2U5SUxq?=
 =?utf-8?B?a2dpVjU0TE9mSmNwZWdHSWVPVjdoVSt2eStNRXBKOUxzbDZidGgzN1dybkps?=
 =?utf-8?B?dHErQTcvZjlYYnBnUkhyaHlpZE1mOFVXZWF3Nk8rOTdnOU1MNW53ZnhHbVlC?=
 =?utf-8?B?Vk4yVDRubkozNWZuM3BkV3g0Y1J1VDAxUjV4dXpENEZpSy9qcUhMUzBXRE1K?=
 =?utf-8?B?RHRGU2Z5L0dSa3lDcWVTMk1HTzQralJGTG8rNXBjVTgwKzB3NUszdFVOY0xU?=
 =?utf-8?B?ZWZXWVBvcWxzR3B2anEwK2czVkZtNVNNODZGTU9OeTM0Ujk1Y3NxZzVRdUJq?=
 =?utf-8?B?d2NuRjB2NGJHSU83dVR1Z2phVURjNGJ0NjV5b3lDdTE4eDZpanRwWGVRNWhS?=
 =?utf-8?B?QUFCM1B6VkNaNnMwTmpldVk3WlQ0R2VRQk1LWENxT1FxbE1oQVREWkhjalNR?=
 =?utf-8?B?ZWpVL2ZwaWVWNzJvbTdlQjNmeUQ5OHQ1L21DdFRoT2JsYzVEVUl0SnBEVU85?=
 =?utf-8?B?VEZOTE1icnhWQ0tUQ3pNbnkxUFR3VjdKOXF6S3hURmxyRjRoLzdqQ09mc1RF?=
 =?utf-8?B?ZEwrL1JPY2xnYjgwdnp0bFhmcFcvNmtZV3VWZUJ0YU53dkZyWG1pdzFLUnFk?=
 =?utf-8?B?dFg3UlJnRUhRYkJHN1lrWDZqK21SQ2ZYR2N2QlFKM2R3ay9tMmpSd1Bod1hH?=
 =?utf-8?B?dVdrR0U3eFFyUzAyREFBdS85bDVEWjRPMytLL0Y3b3FXRmZLRGFVWXVtVWMx?=
 =?utf-8?B?Y0RCeXUxek1lQzFaVExQM0l5VnRnVmxabW8vRkZPdCsyUlc5WDBGcGlkWjZh?=
 =?utf-8?B?NmEzMFIzdDlxbmJhajdSVzZYTGQ2RFFsOVBnNjAzb0cyMk5XSXppRWx4bTky?=
 =?utf-8?B?QkthLzl5UFU4bzVlNTJydUhYWGFNV1JPclk3YXAzZVo4c1l0MVM3MmdpL0xL?=
 =?utf-8?B?bzNuaEl6VlJKK1RXQTZoZjhUbW40OStqcEhMSWlKRWxLajFTY01YekQ4dTli?=
 =?utf-8?B?WXN0bmVSYzN1WjlnZitUYUowUmNMeHFSZEs5VWVzc3VGYnBCTmRsVlRCTlFt?=
 =?utf-8?B?QzRmajhzNjRqOGdwVXZBWGpoeTA2Z1RUWlhFSHBnRDF4dU8wekMzNHl4bng3?=
 =?utf-8?B?cHNSVHhocW92WkZmdERmNkJsK0RoaVpPVXo3REZseWV1VkpsKzFWTHJrd1k3?=
 =?utf-8?B?QlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 19e9b9df-2d7f-4f03-e14c-08db4105b92f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2023 18:41:44.2569 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gF6LLplvdY2YzdYiKE8Kqwp9kMO5UeUlS29XmXV3J84aFYFTzPB0/I7UIGjr5ez3OOeKT7fX5ukiPkOSvA9D3+Nrnbs4agFnlc+ls5duwzM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5111
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681929804; x=1713465804;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0EA80UZFtfq6ikluBtUSp7X+CMP1cZaLMmL72yDRXyc=;
 b=BuB3VPbDMjTlaT4k35jxF/olFoOVQHtF3zrOC4fGtPhChtF+qZauqCrd
 pZiQxQX6jp0bq4/jP/KuSfD+m7hEFKUkNegTHX/gFtfH6ytGcrBWvL70a
 kLyKGwoKq8BcLR1qoxcnlpuTmRlMZdqRrvy6wvs1xv9ic5StN5/v6TeYj
 JVYj1x1bQsW2Q7S2JHmsz6VOdbFVPwdLdXloAzPsp9fCWP3tLnJDsfPtw
 FVel/oRuqPVj664VNAcjdEsaZ8Ghx45jYWaHJPZQPlz2WO6PqmDtwe7dY
 ED4a4JsztVNZ9/q5tjTNjSLI4IIO9CGcXI8jk+3IAkKFR9/+y+9ONWykm
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BuB3VPbD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3 3/4] Revert "iavf: Detach
 device during reset task"
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 4/19/2023 4:50 AM, Kamil Maziarz wrote:
> From: Marcin Szycik <marcin.szycik@linux.intel.com>
> 
> This reverts commit aa626da947e9cd30c4cf727493903e1adbb2c0a0.
> 
> Detaching device during reset was not fully fixing the rtnl locking issue,
> as there could be a situation where callback was already in progress before
> detaching netdev.
> 
> Furthermore, detaching netdevice causes TX timeouts if traffic is running.
> To reproduce:
> 
> ip netns exec ns1 iperf3 -c $PEER_IP -t 600 --logfile /dev/null &
> while :; do
>         for i in 200 7000 400 5000 300 3000 ; do
> 		ip netns exec ns1 ip link set $VF1 mtu $i
>                 sleep 2
>         done
>         sleep 10
> done
> 
> Currently callbacks such as iavf_change_mtu() wait for reset and don't try
> to take rtnl_lock if they already run under rtnl_lock (flag
> IAVF_FLAG_RTNL_LOCK_TAKEN), therefore rtnl_lock will be released when reset
> finishes, and only then another callback which uses rtnl_lock will be able
> to start.

This comment is no longer correct since we stopped using this flag, but
otherwise the patch content is fine.

> 
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> ---
> v2: no changes
> ---
> v3: no changes
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 13 ++-----------
>  1 file changed, 2 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 7bcf422c0b5f..8dd488158961 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -3017,11 +3017,6 @@ static void iavf_reset_task(struct work_struct *work)
>  	int i = 0, err;
>  	bool running;
>  
> -	/* Detach interface to avoid subsequent NDO callbacks */
> -	rtnl_lock();
> -	netif_device_detach(netdev);
> -	rtnl_unlock();
> -
>  	/* When device is being removed it doesn't make sense to run the reset
>  	 * task, just return in such a case.
>  	 */
> @@ -3029,7 +3024,7 @@ static void iavf_reset_task(struct work_struct *work)
>  		if (adapter->state != __IAVF_REMOVE)
>  			queue_work(adapter->wq, &adapter->reset_task);
>  
> -		goto reset_finish;
> +		return;
>  	}
>  
>  	while (!mutex_trylock(&adapter->client_lock))
> @@ -3232,7 +3227,7 @@ static void iavf_reset_task(struct work_struct *work)
>  	mutex_unlock(&adapter->client_lock);
>  	mutex_unlock(&adapter->crit_lock);
>  
> -	goto reset_finish;
> +	return;
>  reset_err:
>  	if (running) {
>  		set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);
> @@ -3253,10 +3248,6 @@ static void iavf_reset_task(struct work_struct *work)
>  	}
>  
>  	dev_err(&adapter->pdev->dev, "failed to allocate resources during reinit\n");
> -reset_finish:
> -	rtnl_lock();
> -	netif_device_attach(netdev);
> -	rtnl_unlock();
>  }
>  
>  /**
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
