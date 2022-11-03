Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2646189E4
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Nov 2022 21:48:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E5D94185C;
	Thu,  3 Nov 2022 20:48:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E5D94185C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667508520;
	bh=hPMHET+OtnL24K3JpPuSqsioN+ecEGRyjG0RUwGfrG0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7JMR7GLeVuJ5h5fO5rBYnoxihbxRKvd5Ju+0IGWLmLiV4qBxAHUBXX5QyGKoSEc0h
	 kQd/Zw+oVpn5u6K6HHcMlwHkf0qW/3z8+uQf197jgD6jbXN8CFyIAb1DM7/PcuaFTv
	 iNfhCw5RbOrDk6AJyYFQocZ6BRp2xkMypKahjDqq9GoiOixjmzXmmjCqqyhZRkOMnz
	 vY9R0cVCqM8A62LRNYWm7mtKxKRFCAEO7gDiqbCtDLULA7P/lySB3TxLvuVlpRz+QF
	 2cAX47Kb2fuJU5BhTYvcAbyZsi9yKfuzHCTQFtCG9avcdvHhP68yTxMUN1sCZt0u8L
	 bnw+RB4sZcVIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WGb7CRSkw4C4; Thu,  3 Nov 2022 20:48:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E598E41858;
	Thu,  3 Nov 2022 20:48:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E598E41858
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4FCC31BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:48:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2649B40BC6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:48:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2649B40BC6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mwZaGA_24FNE for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Nov 2022 20:48:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E0B3E40BC0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E0B3E40BC0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Nov 2022 20:48:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="310919244"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="310919244"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 13:48:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="703825550"
X-IronPort-AV: E=Sophos;i="5.96,135,1665471600"; d="scan'208";a="703825550"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 03 Nov 2022 13:48:29 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 13:48:29 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 13:48:28 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 13:48:28 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 13:48:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZU47OM29oy7besHMyeZCSqq/zFIUGhFIYsv2a4t5ZAiZnp0Cd8amui0yW6hwkPPGg5lLszQXyXdFOwf5erX+a1yMqOmp1Bo6FGUmPveMjSM4I/g2cUVCWb/5IOH9zjXHf08+XLKMKStNiV6aa0CeVVw9gUUZJOkpP+8LS//Mg2F/CrSPe7oXL2c5gfnK4aKwtJl5Zv4z/sC4MWCVc+O61ILmf4oNJ5222gmzSbe4UQ+7HSOTYzmlb8sIMch/rWCUXRMP2RtKGaImwVa6biDvRXZH7U+xAnKYQOJptAOLLAjSBZcg9uJt/w5HpBV+aTzpaoB6MTHVqrdpPspIlbx9Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=heEd2fVZ6LbH7rS8h2iaI5ko/DW9k+au1HokHbG5ECs=;
 b=hCkcH/BpAR9ssOpd6SYxbgiyZ+GT8dA5nYvTEfUUFLIYfxYwERcoCZhcFLxoE7hQJ/LVRgY4vAvc39gtzKo/Di87pC/EMXRpEYFaFu0Q1GeEyZbpg4PwC/PVjARjCr0YID0pHyz7kldRASr9uCWiEPDunr5HS5MpBRAzMAFJUX/CHt2SAakbxj9DETFiresGz0pKG50Asf+hRxYimOlocBL0vKMP/jl43KxMcDqLCxSNT5wrtVkLZx0lVoCSQdvtnVH2OeV2lrevCAKSG4ojtM9X0EJEBMrYLIuRWQ3Cf3KF8NspPY2iHxJO+fOZTIYq73Z5J7sOku7CLqpOMn6XdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA3PR11MB7463.namprd11.prod.outlook.com (2603:10b6:806:304::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Thu, 3 Nov
 2022 20:48:26 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::d408:e9e3:d620:1f94]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::d408:e9e3:d620:1f94%6]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 20:48:26 +0000
Message-ID: <a02ad01e-b31b-875b-763a-9ce4df53dc9b@intel.com>
Date: Thu, 3 Nov 2022 13:48:24 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
References: <20221101225240.421525-1-jacob.e.keller@intel.com>
 <20221101225240.421525-6-jacob.e.keller@intel.com>
 <7b88f460-9637-7174-40f4-b5a23591df52@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <7b88f460-9637-7174-40f4-b5a23591df52@intel.com>
X-ClientProxiedBy: SJ0PR13CA0026.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::31) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA3PR11MB7463:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d06ca2f-82b9-4850-87e9-08dabddcc1a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5Ji40uMMMgiJdzluhWI4IMn8N26bDmvHuHpH3rj+ZPvr+fX7OjUJSWXcxvvMzY+wCVI/Jet72vFccE+aOYCFSHZ9HueshBlBWCIN35T/l4VcgelFdTPLdG4EmyGyyeRiptN6OFsfZsyhzTrSb8Jeldj5tmomisQSokasvEeVRmELJIAzdA/MLMNVimsfdbkJO4UQ15w/F+NGOt8xKLx6iW19qDhdGf0GVylRX1fvJqgOSaQE9CDKCPuai9xTNQqqRl+oO6q0/BCX3BWdszI+W18VMhso3NjNW8h48tImyk1HQOOzMKeLi3EmPOBH+ZHHcK++Lag/QOq8x+uOLgH+gK119/6f8y/zPSqrPn/PBt526G70OTTh8X32eMz5T6+JpOILKPUaQHzXO9nMWWNo9+EWOAMDpmlfsqJgFh2lpOZ80mOL4pHVo4WEPy4GEz2Phu1HybfFTbI/2Rw3DYyit/MvhOaNtWy6fk9eSWPlpS5TSy5hGhuNIPWSyCIhP4Kk5tVbgIQLltXoGEVpJ/xv2wb3yW7XVUBHSbQqA4AAOXEubPAniMG38qJSgJFObOUNlJm1MhZy9E+sFes98n9BmwfkrruzMylSX0aAvBrf0kc2x+LAF5A3a/35+Y4Fc4YduOMK8E2RtSAW9QmIupuY2uH824QNLla0K77QG+kwc43u4bj4zq36N9nA17xUR6Zg9kgenSCaD0T0ucmLvJacPepVgZrHA3rBRb1JX4oOs97A7cNplIrxvGMD18EW/eVT1Axx2KV1XrUJ1ROMG2hO1l8zmWlSzPZ/TzwFdHKkl0Y=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(396003)(346002)(136003)(366004)(451199015)(41300700001)(316002)(110136005)(82960400001)(8936002)(5660300002)(66476007)(8676002)(6486002)(66946007)(66556008)(6506007)(26005)(478600001)(186003)(6512007)(53546011)(2616005)(31696002)(83380400001)(86362001)(31686004)(38100700002)(2906002)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVZXdHd6aXVpK2dXWHZNT2xWbUxQZ0taZmc2QzJkWmgydys3TXVDMFJETE1p?=
 =?utf-8?B?WjArOWlaWHZmUi9zbkorK3dJSFBCZmUxanVqaDB1VUY0bFBmd3gvQ3FnTkNy?=
 =?utf-8?B?a2RaQURIbitwMjJFRE1YUXVjSG1GUGwvdGVZUU5jODMzZG5QN2JWNWN4cytW?=
 =?utf-8?B?b2VJS014ZEJJQ3czc0FwVGV4VkpmTjNwZ3o0MG04RGlJVXcwWk5ZclNLL2Ns?=
 =?utf-8?B?RFZ5Y2pqaURNNnNPRy91NWNkMXlDcnJrZXJRSis4bkhqcWFURlM4bjJrSVBB?=
 =?utf-8?B?TC9sd2xqdzNtSStha01GL3FGYlZVdUoyUkNVaFI1OW9KZ3BkNWkrQXR3YW0x?=
 =?utf-8?B?NEh2VjU2T2NUajlXcGlLWFhna0dWZFlOVTY5TTVaZXRNSFVxbUJhb09BQWZ6?=
 =?utf-8?B?MnhUNUxRWWxRT2JCYy8xRVlodXRSTFpFOTRPdEdTQkJWMUJPYWlYc3NxZStU?=
 =?utf-8?B?OVBhUGlRdXNheUNGTTN1TFlONUZLYURDeUkyMjF3dnFrdys5WGFmT21jUTdK?=
 =?utf-8?B?bjczREhWYVNBVjdiVjVrVDNVKzhCbkFQWUpuK25HM3NJRmF2K2JwelJpcXkw?=
 =?utf-8?B?UERKYzlTelJ2Si9oelpZaWZwamtMcHVXeEpyT3lmR1NtSzNYTE9CR0dHK0tY?=
 =?utf-8?B?VndPc2ttVktKSjJFenFLOGVhK1FQUzhub1ZGZWZsbUNyY0xSTk9NeUhhLzAr?=
 =?utf-8?B?OExwV2xTWUVWR0o2UnhMaXpzcXNOdzRYR1ozQ0JyNnFzd2prVnk1L051dW41?=
 =?utf-8?B?a0Q0QVJNbStla2tZOWtyZDhzeGVHVkZiUlM1MnVsaVk2SXpYYnhudW10bW1M?=
 =?utf-8?B?S0JRdldodXcxbVpvQ3NFemFuWC9PYXdVZi9ERFFTalIyV241bDdzN0IwZkg3?=
 =?utf-8?B?MzhZZTEwOUJLWFE5QktKaXVHZkY0NnBuaWVnY3A2d05KLy9CS25NWndGMEVG?=
 =?utf-8?B?a1QyYzFBWVNCdmN2T2p1ZFAvN0t2MUtMSmc4UnhZQ2V5V2d1KzlkQUpnMGhE?=
 =?utf-8?B?MGFWdjM5cURKZVVyTDYvVUl3dzNNdERWc2x4N1c5Zzd0S241T0lnU1VKVmlv?=
 =?utf-8?B?UUxNT1c3aHpGMVBCVXJGeHpCcGdDVEt0akxaTHNmTWFERmYzaGNzdWd5R2V5?=
 =?utf-8?B?UEkyZzV3TTNGd2xwSEg3eHNkOEYra2lkcXdpY1NNMUtpRWdqdXFoQ1kzR2Z4?=
 =?utf-8?B?N0FKcUZlSloyTEFuRkYwN3ZkdDZtZDF6MFVUeCtKZzB3bHFmSkQrQlBPOUEy?=
 =?utf-8?B?amdOLzlyUVRaU3JLMzlybjNlOVEyT01KWExxRERxWHNJR3RkZzJxYzJxRldz?=
 =?utf-8?B?b1ZnaWIzdzZaYXgwWHI1ckNsQmVjV2EwUEN3YjZlQWJnVUh2ZGQ4NERwcmZ5?=
 =?utf-8?B?VXRLOForK0I4YVZUM0w1MkZpL3RUdGlnclBHeVhXVGRXNVppZElJRU80WVhZ?=
 =?utf-8?B?bUw3TjRWQVBGUkZTN1Z4SkN3Y3hqT0xIbjk4RVNjeU5oL1RrTDBQeWtEWDNG?=
 =?utf-8?B?ZlV6VlZndzNMOHl3c0IxcHB4cVZpM21wMG13dUQ2YVhKSExiQTU5bEtzNkZ6?=
 =?utf-8?B?NUxUN1ZHUG1pVnNnb3Q5TkpQWFc2TFlmeEp5WlhuUkVDUDNjY3I4RGVqWlBB?=
 =?utf-8?B?anptNEUxdE1EU0tYYjNLQUFRbnY2Zjd1Q3ZaTWI3V0NPeUl2RDczaGZPeVRX?=
 =?utf-8?B?SlY1ekJEeW4zMFNTMklSd0xsd2x1ZUpDK052c1dxUTh2QS92bEtnSFNJRUFq?=
 =?utf-8?B?RHhYNEhqcjR3KzF1b0kvTjlBb1d1Wko1c291ZytxVkdtdXUvS1VnbUo3RFNH?=
 =?utf-8?B?dzhtaFB5UEdyajI1akxiUTdiY2ZMaFVjdmpqY091RlJvVjR4Um1jR0J6cGlH?=
 =?utf-8?B?aVNFNEhKcGZTYjN4ZGVJdmJsNFAzVE02WlQ4bE5IMThCZVZaUHFmcFFrZldq?=
 =?utf-8?B?bkJKYWZxcWtBVlpaQWkzZUdUTStYRFMxUGdpNnM5SU9VTDg0bzlMZzN6akhx?=
 =?utf-8?B?Q0FQaUZ3Zll1YnBSVzhMZmtNSGh5M1FJZmhjK2F0UFZFc0tTdWU0OEZOaDl0?=
 =?utf-8?B?dkNPNzdxQm41NHg0QkNCanlxMmEvWHpJWjV0cStQNzE4SThWb1JuZmFtU0FH?=
 =?utf-8?B?V00vVUs1WjFKa1NWWmdhbE5kNWlEMi9mY2I3ZmRUN25aS1JFVEkyMnBhMlpm?=
 =?utf-8?B?V3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d06ca2f-82b9-4850-87e9-08dabddcc1a1
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 20:48:26.6952 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZS5HQeGW1G6B6GRpF6/yuWupCN6oXtVyH5nUOtVeWqX64IW9nmnzVUJrYY6ewG2zN5bZVC34eVqPGVz29p8DTH5GpbzeaW/VDkQey8DpvYE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7463
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667508511; x=1699044511;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=H/3Am+Mj99RU2s+kWhByND8NjdNMMc8I7Iyrpxs30Rg=;
 b=Gnhn3+Uamm5ZKDfzjJtV4qECr84p/DrDTvtvKNBEyxGAllE+HGCdTlSZ
 GsWPd7JbiD/AA6gcDlokZYCSK9bj1O9gn/1dVOqgbrqHlAh0I5xTiyyQa
 AtbdUUcL9I3ipX+GvoioFqk7UBEPPjzZ1huOGUnKJmut/19Pn2mK62crR
 2fjnxGQoPnV+75PDBVZY6g4YYbMAUL4hKsBSbqThwmT/Qcyz0qaZa9+XD
 4AoVitB1hBTtqRpDpQp1n52pend8RPI1Vf2CbET9DadjldylqWqzhdmmh
 eJL7CkMSvlPrHJUAM86fboEqJJYTlgM9zo9cE/j9Kcfl16WFyP6TRjVhj
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Gnhn3+Ua
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 05/15] ice: always call
 ice_ptp_link_change and make it void
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



On 11/3/2022 1:44 PM, Tony Nguyen wrote:
> On 11/1/2022 3:52 PM, Jacob Keller wrote:
>> The ice_ptp_link_change function is currently only called for E822 based
>> hardware. Future changes are going to extend this function to perform
>> additional tasks on link change.
>>
>> Always call this function, moving the e810 check from the callers down to
>> just before we call the E822-specific function required to restart the 
>> PHY.
>>
>> This function also returns an error value, but none of the callers 
>> actually
>> check it. In general, the errors it produces are more likely systemic
>> problems such as invalid or corrupt port numbers. No caller checks these,
>> and so no warning is logged.
>>
>> Re-order the flag checks so that ICE_FLAG_PTP is checked first. Drop the
>> unnecessary check for ICE_FLAG_PTP_SUPPORTED, as ICE_FLAG_PTP will not be
>> set except when ICE_FLAG_PTP_SUPPORTED is set.
>>
>> Convert the port checks to WARN_ON_ONCE, in order to generate a kernel
>> stack trace when they are hit.
>>
>> Convert the function to void since no caller actually checks these return
>> values.
>>
>> Co-authored-by: Dave Ertman <david.m.ertman@intel.com>
> 
> Checkpatch is reporting this:
> WARNING: Non-standard signature: Co-authored-by:
> 
> I see this used in the git log, however, seems like a Co-developed-by & 
> Signed-off-by would communicate the same and make checkpatch happy.

Will fix to use those tags, thanks.

> 
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
