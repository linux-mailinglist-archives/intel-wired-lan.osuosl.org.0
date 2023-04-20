Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE0D6E9DCF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Apr 2023 23:27:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AC36F40BAE;
	Thu, 20 Apr 2023 21:26:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC36F40BAE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682026018;
	bh=nI/PRHS3pROHRrixIrmWZynoN33szZaSyfNU69ZXU64=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2Y9qVrOrgdHSBC+Kb4WLArJoB/WhsiHjYrXvjzLguYGH9pk2+bvb+4NW6P4UXqhx6
	 ARJHFioyu+1Ccum1+iOxvSuKtMcHPhLASpfk0kxrJzAqv0C2P6QcoRFeIaORDyTJ3q
	 nLb85WR1vV0kDq6zcWW4cXYaGcWAVePOr6ibOCmIPg8sLtBxooYNaHuwdPlxEARAJW
	 boZqBO7R6L4IAINc28f4v0ADgQln5dISlI5/5/rQSjCA/lB/UFVo/wRb1CSMC0T8xS
	 ucaAkfnnRoUbZcimQM4I7DVmWPA2mUOozrnWciRAb8ai4nMCxFN3TlcBSQQnIIpnJz
	 UCiRLu9Vs8gkQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iMM4UmdJJn_w; Thu, 20 Apr 2023 21:26:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7256C40B87;
	Thu, 20 Apr 2023 21:26:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7256C40B87
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6F54D1C4309
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 21:26:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 466FE40134
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 21:26:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 466FE40134
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id THcDDQstZZlR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Apr 2023 21:26:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 692F940B87
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 692F940B87
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Apr 2023 21:26:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="373773260"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="373773260"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 14:26:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="694721607"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="694721607"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 20 Apr 2023 14:26:40 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 14:26:39 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 20 Apr 2023 14:26:39 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 20 Apr 2023 14:26:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C4ESkmDWhfomcaA9/O8Myc469yepCu3sFvisumP7nuC6rBk6Xopl+jR/l8bDegI4S+QS3ARNIVj48hIOiYcwJ1kPTPShZhdR7Iz0nb2PuJpMJnluXJr2kARwfYdU4VQihTlNSS31P1G1Zn4jF/4d+ktW6AKwSyRjp87OPKuZYvZCIgO+hryMsd6vmmvoZv8X2z9+E+9TR0UQshEfGVdsPwaLodGiN5/LfmAsJZ3bGLyt5IwLTUFObSHz6RsRIAYslqGv470QKIr/XO02OTEImylmCedF1DrBLrs0cCanWr2GUwPUSSXoR7SOUBVB14OAwjN/t9uT6ZWE3dX7/vy1tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3Am/f/pW+Tt92w5gzGDgqj47m7oEH1fhbEKXiI/ehdU=;
 b=LNS1zZdWNUZeqMIWwzr0DwTKKz00S+ipv8ApNdLpQSzX0p4Xca5KnxbKFiZu7lrDgPd/SVuOz9Q2jYPEzasBFgt5YM/muuzjdZLE/3wm1xfNkkvXjdQptb/CqksgT3A/cRbUHuo/YEkCemEx318FTNxaYUPKt4n647IMADdsmH5+AylasMCp2l9jS2N88msJ19yThLXIWKrBlZb1iaUjbfZNEa4ypfZkV3sd8y2Eq6x060LbzvoTXC1O95KevDgtS3R6vLdCP/Tr9e30BreSplE1EBuUMlhMJQLlpcY86qax252pphk+kE3w64M20m7TqbjOEBSAvn9sRq3k4H/8Cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MN2PR11MB4760.namprd11.prod.outlook.com (2603:10b6:208:266::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.21; Thu, 20 Apr
 2023 21:26:37 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4b81:e2b0:d5fa:ad47]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4b81:e2b0:d5fa:ad47%3]) with mapi id 15.20.6319.022; Thu, 20 Apr 2023
 21:26:37 +0000
Message-ID: <6ae884b5-3967-6389-fe83-b4586b12621a@intel.com>
Date: Thu, 20 Apr 2023 14:26:34 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Radoslaw Tyl <radoslawx.tyl@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230419074110.2071163-1-radoslawx.tyl@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230419074110.2071163-1-radoslawx.tyl@intel.com>
X-ClientProxiedBy: BY5PR04CA0030.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::40) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|MN2PR11MB4760:EE_
X-MS-Office365-Filtering-Correlation-Id: ea75e3b8-5627-4060-dedd-08db41e5ec7e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eVxityW9MIa8kJvnTMTpZEHdOK+wwbfM1o5X4Ho+27VA6FCP8P0h3OYm39tpN3uNX7gG6jNm52LOQ2QvaEqhXw4BOQas2/Ov7xM44dZAR7HU+IDHHag7YS1Yag542p73HSxOqjLfPUq/H/f/A89BjZidOJ/oTNuKcTHCWP/aL52VVkW5x1g5Kq2HucMvz1SdB5n6P8LPxz+VLOwQT7cPVn57o1sW1R8m1u9g2y3XHPZs3t2bj7ZzZxD+xEf1Qrym3MwX3SuF2M1sB1nnOMYpHXk3cMH0jM1LTUPZpHOsQT/AoP43BRnLyjkW429elMV44iU5arQrKtYjkJCi4EAzkvETj/9M6ThN1s5VPW8O2WVbHHBFOyu5yYTrF5s0Xpb/t/eU1ueaoyvig1rrhW8Mxhe+ueKXzACknHg3tk85n9Tuv2sa5l5ZREA/dZNwaTOF884pQT8cwB/9epWOoW8AOTsMezxJ/dUW7BE9S49FwoiXgL/vSCBcSgXXglWQAqdmby0IIWJknsOJD3JuuRaBDc0pr+WQSdnQNl8AWcF/GqEqhdVsSC1lgKuM+9kwyu15MIlRvX/Nhx49tAqbVk9HkmAiktPWqwmTYZQKFwto8o8mTCbf4Pt/efuvyTRckgaj0NWpsxWBM3E4BlKlX6K1jA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(39860400002)(366004)(346002)(396003)(451199021)(2616005)(36756003)(31686004)(66946007)(66476007)(66556008)(186003)(26005)(2906002)(4744005)(6512007)(53546011)(6506007)(83380400001)(86362001)(6666004)(6486002)(478600001)(31696002)(5660300002)(38100700002)(82960400001)(41300700001)(8936002)(316002)(8676002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OFBudWw4aTB0Ymh4QUlleERhdmlIcGNNeFV4OTNSUll2YklOOEc1VVo2RGwx?=
 =?utf-8?B?cWZBbWg3bDhKRXdYMGRNanpMeXNxSlVZN0pLLzNUc0p3Zmx3ODVlWEdVUVVK?=
 =?utf-8?B?cFpZbGdPVVROMktHWjdNNFZrWHFjRWpXUERwY3NZTlVNRlc3RXZXSWZqaDRt?=
 =?utf-8?B?cVRlQUpCVFNIMS9HRGF1RldDSXBJUG1ZMURybDEzbmVnQ0F2ZzFVTE9ldm9u?=
 =?utf-8?B?SlJXbGpUVnFQcmx3ZVkybU84bENkbmdwV04xSDlNWG90MmxwKzNTM3VVRUlY?=
 =?utf-8?B?dlZUd0tGbVQ5MXE1akNYTENBeGp3cjM1ZTc2VW9VbGh4Nk9VN2MvUEVxRnZw?=
 =?utf-8?B?NkMwSFNZV3B5NWxRMlcvbDlIVHRoZjRDdlpWcStvUlVLWUtXWTdSZWpkOVNw?=
 =?utf-8?B?aGdhS0JPYVVzaDlWR1l2VFRscjZ0YXlrelFLdmoxUkZLQ3VVVFptL0xxakZE?=
 =?utf-8?B?UndVZERxSGlNRklKQllIVTFhRDBBTFk5UFFid3Q2VFhqOThvTmZwdCtIZWpW?=
 =?utf-8?B?TjAybnhzTzJocnFtbHg4MlhxWkFlYk1GMUNua2U3ZFI0RjlNOXNzR1BuN3Y1?=
 =?utf-8?B?U3RhZUxTM0tIb3BYcTRIVUg0NXAzRWc2QXZUbm1UNGZFcDFGRFFZNnFkRWo0?=
 =?utf-8?B?WFB5NzIxWGU0bUtKQ1krei9VdCs5NzNIQS9UNzAwRExzYmhDbkFiM3JUYjNG?=
 =?utf-8?B?NDZPNkpGOE9EL2t2S3ZWZ09xczNpZzlSUFlsdDRGQWVhYk9TU3YwZnZYQ3RO?=
 =?utf-8?B?SUlTNFlCUHpaelZKYTIvcTgwZS9zMEw0SEkvcmJFN3RFL0F1S09JeTlrWXIw?=
 =?utf-8?B?Mmk4YTVrc2dWVHF6WWVSVjNQSWt5WkZ0a2c5aDVYNnlBTTBsRXJDMHVQUHV4?=
 =?utf-8?B?cVhPemhhWndCOXQ4d3lGbHZEUzBWeWF3TGdaa0E3SWltbFZvLzlPRExETzlN?=
 =?utf-8?B?UTNiSTdUbEtqdTVkTy9FYmpYYXBIM2FGd3ZQOE9RY3RSaW8zbzUybjFNMFBQ?=
 =?utf-8?B?bmtJWWUyOXNGSi9ORkQ4aFBqSU5tSEpGN01XRWRRTVdrYTkzR2N5MWxTU3dX?=
 =?utf-8?B?a0hRZ2pZNFNQVDE0R1RRazJ5MWl5MUQwSGlBTHhzTjF2L2xEYzRzVVJWTGRi?=
 =?utf-8?B?a2lNbHcwd0ZwUk1NQWIwa0VNNUJBM3pwY3BZNDY2akJJYWkzMXRxaTZWN1h6?=
 =?utf-8?B?Wm1BR3JleEQ5U3lhSm5sREhxNFRlbUxpbVIwKzJhbjViR0FlMTZEOWIzMlpt?=
 =?utf-8?B?V2k0UURKU1BISFZFRjJkT2hKWVlJT0JxZVhRRWpIK3ZlMjhvUXN0OUNOUU1L?=
 =?utf-8?B?L1gyajdCMEo1VVpHY0lMSlpOaHlDazBtaW5BTVNIQ29xam96czBneUtSclBI?=
 =?utf-8?B?ZmRQZ3FJUktXdFVoRW53dWY4ZHpVVkkvRFRWb05xaVBwMENFeHUxamRuTWQ0?=
 =?utf-8?B?eTRncW9CSGIwSWQ1VjBuSTlvNnVUd2l4WmxYMUU1YWJQelNVcThPdi9HMHgx?=
 =?utf-8?B?elNraU1OSTBWNHdRRktqc3RydXVBdkE3M2p0L1JBSVJKVHVsbUVQSE04RSs5?=
 =?utf-8?B?eGhrVmYzTlJVTEVzbWlSUmdFcWdZVk1DU1JoVTFhdHVUamU0dkM4aFdlY2JE?=
 =?utf-8?B?RnZ3TDBXY0FpTE4zTHJTczZDcTZoYU93VmRtY1JMMnFVY0xXejBkN1NqMHRF?=
 =?utf-8?B?enFCVnk1OTVYbTFwMG5JQzFkeEw1QXFYWlRkeHJJL0lWejdTUUFpYkx1bEd2?=
 =?utf-8?B?V0xKWWk0S2x1ckVUSUVLcWd5RnhFb0FVWFJzMVp6U3V4OEtsd0Z1TlVieFk1?=
 =?utf-8?B?UW5kVmwzYXdrUVQ0cFh0cnBWejRmR1hCNzVrT2RYRFNFcFpJZ0hRbHRML0JV?=
 =?utf-8?B?clMxUFhIMUFYVEw3a0YxNmloQW5UZDFnOHY1UlhDOUpxaCtBOUFULzVkTm84?=
 =?utf-8?B?b2VsNVcwMGRSRHJjbDZVbGt0Ymw0b3JRY04xdk1NOEd2NjM5R1BDN2swTzl3?=
 =?utf-8?B?RFVLVUlEcE5VU3VIUTlWb3VFZzQyeEprandlTTNjZnJhYkJLL1A2Q042Sy9o?=
 =?utf-8?B?L2NuK3cxZEY3UERTclc1VTVrL0t6eXlhbG1RT3dUNVplQUlqcTFhTGV6L3BU?=
 =?utf-8?B?VE1LT3NEb2FkZmJQQUljS0FvSEd6eGE2UWN5WmNQOE9qWjdyajZLMWREYytX?=
 =?utf-8?B?WFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ea75e3b8-5627-4060-dedd-08db41e5ec7e
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2023 21:26:37.6887 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YihnzjPe2RNOr3Gkvnf23/DX/2Ux4cAchQZTzuS0d3c2pFtANAUK/9/RjiARBl2LsgTmdin1NurMLxls1XXGH6xLpEmoKx0xCXxp+Xp29fM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4760
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682026011; x=1713562011;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+SDVljBSjhmABTDifLCB0b1Uq1ywakmMLgIMJXuBVXI=;
 b=ZI2eSkt2OqUPmHX4ypYvWsqCFqcw3Pd17g7D7d7oWcurp+y3KBeVmjgd
 23Nv68edHfhRZm7LWZOuq35znlKC0A8HnmrkE5tgM64yGhF8dNaVVcHSK
 AarLIP7SggkKy5A2MqzufaMotoxykyf99BeWm2rce5E7aa7fwON9WTghk
 QqEGr3yIcgbzzyYDqrNWFL81XHAx9064knXzcF+mfDTCJgUrLWtXju68S
 rRhMefWoKLd3jLlh0/ynV89BARGO03wDPsxPI0oyM0LCRXnAXNl+1XJxs
 6BTf04f0Ir/uUQpoSO1jIjCNHHQzge51z0b9mbqsAhmqUkTSIf/hPI0jD
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZI2eSkt2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: add PHY debug register
 dump
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

On 4/19/2023 12:41 AM, Radoslaw Tyl wrote:
> Implement ethtool register dump for some PHY registers in order to
> assist field debugging of link issues.
> 
> Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
> ---

...

> +const struct i40e_diag_reg_test_info i40e_phy_regs_list[] = {

You have a warning here:

../drivers/net/ethernet/intel/i40e/i40e_ethtool.c:429:38: warning: 
symbol 'i40e_phy_regs_list' was not declared. Should it be static?


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
