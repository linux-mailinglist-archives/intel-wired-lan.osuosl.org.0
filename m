Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C782B6C32F9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Mar 2023 14:35:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0617940BB1;
	Tue, 21 Mar 2023 13:35:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0617940BB1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679405702;
	bh=bHu/ejkRbZwkeIbuhGu1UxB32chs6kWmQP66FrQ58Ao=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wMFkcnGidI9qIJur66CFrMwX8gV/TkdcprD04QaID6PgoHa0YzCo0nWtsYuC8ZB1Y
	 oKe2Ij0GFT8nOLmVdkm5p1pwYBtWljLCr+l1u5G2xEq6ZthoMKj9r8tJ7McGNoauoV
	 1J70WPZPCjx1CtKeorz9MNfGJl4qi76v2iaR3oKsSZsDu1ofzk6f+aHyHWiI3Y9ECA
	 LBSDNtAHwbffTa7MaPqAKEa0crxy57hR3ARRjDUhSD8eL0bh9qFwP3ttXFNawcLaG9
	 HqC4NnZrBj2L7Gr24lHmY0vDzhjzEh3wzWuE0giolpwYZIopo33J6PGM5R4XQxvO6q
	 OLlwOrGzW+9Mw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PvHKqruqMFdI; Tue, 21 Mar 2023 13:35:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C195140BA4;
	Tue, 21 Mar 2023 13:35:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C195140BA4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A4B271BF327
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 13:34:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8716D81E69
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 13:34:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8716D81E69
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JqLImVsHDtLc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Mar 2023 13:34:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8218681D19
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8218681D19
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 13:34:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="340482707"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="340482707"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 06:33:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="658778440"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="658778440"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 21 Mar 2023 06:33:36 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 21 Mar 2023 06:33:35 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 21 Mar 2023 06:33:35 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 21 Mar 2023 06:33:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YGhFICeJ4iDKsiN6hMMq2zwfYd7WVIOiW6r4z1/tayzi1Ka6P8KuT+c4ddlv+tbXW/ZgHkHnS2zCUTfYkR2DCptYdWAi6Un3Hc45XmGpoVqIi14mwDokw0A6hgdizwRvvDBREPHPXSXrOj09pXWPWvQ816j4pkxTQ6Bo7N9l2eTJVC+ccgY/O6YLL0sMkiMkCzU7kPqYCPiZ6vxXN7mpHjziuqb5UETxrpf/Juq2C0yGK6B2MrBSLzNnN1OvXjCkFMDUQt2byAnMBQ3XgOZ4VnYNhuSHYpPkAKjH8VnMOzhlkPtqloIBc5yC7+5qCSqgP9a+PQ5N0YqpX0Ba4+UofA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KCEhmJNruUah84PYijBRiCjuOuV1rnz5CPAPREWt03g=;
 b=IqaPXQ/YNf0DOO+NpIfmFMXfF6o9qpm26dfD3lIXRaxc2QFiVNpACsKmH+QJzWcGUnLTNMQT159kORmdxJiZ45ZE4CE7griGPdcATLsotJqskLFwrlPmvWLGboC2gzILTUwLQq+ZoKnnAik4JG5ivdoAWnfq/KOUroEzwmfp2KG8e5SFfP1nbJWXyh8hLTxdxGEvGXtax6mJeCNe0d0J9zqhRcZz3No6jng/sp8gNJPIByb+Bjc66eZlgzombLt3HoCS0RPde1zTAzbau2maER8pIw650yWax13i+UuKwnakO4MlG44lDiLr0VXt4AD3vE+VxsUJopmcKck+a0Cb/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5603.namprd11.prod.outlook.com (2603:10b6:5:35c::12)
 by MW4PR11MB7101.namprd11.prod.outlook.com (2603:10b6:303:219::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Tue, 21 Mar
 2023 13:33:33 +0000
Received: from CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::d2f4:519a:e4fc:4ebb]) by CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::d2f4:519a:e4fc:4ebb%8]) with mapi id 15.20.6178.037; Tue, 21 Mar 2023
 13:33:32 +0000
Message-ID: <4b194eb2-9944-8594-860c-d77d2b6d3a98@intel.com>
Date: Tue, 21 Mar 2023 14:33:27 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230314102514.46636-1-michal.wilczynski@intel.com>
 <20230314102514.46636-4-michal.wilczynski@intel.com>
 <a57f2fd4-e412-9643-953d-a41a690a55d9@intel.com>
Content-Language: en-US
From: "Wilczynski, Michal" <michal.wilczynski@intel.com>
In-Reply-To: <a57f2fd4-e412-9643-953d-a41a690a55d9@intel.com>
X-ClientProxiedBy: FR3P281CA0034.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1c::20) To CO6PR11MB5603.namprd11.prod.outlook.com
 (2603:10b6:5:35c::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5603:EE_|MW4PR11MB7101:EE_
X-MS-Office365-Filtering-Correlation-Id: 35569d2a-32a1-4d07-d351-08db2a10dd29
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FzTcK39cBGWVA62625Twq9VO50g3XGVF70CJfCEMTrXB4NQ2nNUEnwgRUUcEgjIITYKMn1OIUK62vOijf2q4gnA65KnDyY7gfIoL2jKD1JMuQUybxbVqAm9pVEnD2N6PYCY8eDCzk6SQ0kF1t7cf3N2CNpAJjpAlMlDftHyLMqYougyZT08zzA7hdpKHIc9EGvw/I0xZ9aA4PnI3JBK67MdGBEnHm7TWqQjYowoyfPnt2JB4rlPPAxWo3Tn5vwLO6SQkcr/vmmiYsKMdrkgQPdPGVBAWbfq1+oi0YnrkF+QVe/Jhz6rnTgmug4DcFBtmbsSwua/gFRMsNQrs4wQwzUfuiYNNovD1XlhWk6uF1LLBejPkAzoKopXP7Ou0qODmeEt8YBoMvuNnK07Fu7F2HWorXI9tY7cB3FlHo73qV2ZRQWKZcbN1VYLL9J2Xc0zK/YCD8KZke/kVkRP6Wa11n6V/rgJTRTLFSoY8aQV+9Iu3ZLbrkdeE2u1UpM6J5MlEsQEr/Qr+hEeOCzFkJdhtHpHZsinAVMwqGztOqssN+IH8yHmg2ieawnF0AaesAqP0zOLDZIJbhIBYVIij6VkEy0G74eJfoW8wDo25xXngG9XjSCX11MyYecTWMcmTqfITXmaHuexV38K0+ohOVPxpE8NZAxEOm+DGYG01k6QiB+EkeU2viCazlzbM+BlWoJQT8RigizmefEuWxuRkL6yyTgcOhfeIDZGYQRFMd/Ybors=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(366004)(136003)(39860400002)(346002)(376002)(451199018)(66556008)(2616005)(6506007)(6512007)(6486002)(186003)(26005)(31686004)(6666004)(8676002)(83380400001)(53546011)(66476007)(316002)(478600001)(66946007)(5660300002)(8936002)(2906002)(41300700001)(82960400001)(38100700002)(31696002)(86362001)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U3F3ZE1rNTBaSVRvOUUwK2NUaElYVkxaSGJPZW9wMjJsUm12bzlJdFdNUGFy?=
 =?utf-8?B?MGl3YVliTFlXRUhscGRzZ0hDVGVXdTJIbkN5YjJsbW1QZzVEK0FLd0lJaDlU?=
 =?utf-8?B?eEptSlNLRnhkaENzb1V1NFFMY3h6SUhqMFQvYVpTeFhmMVloMmI3MGdwTlBG?=
 =?utf-8?B?dDFqcGl3OFpXNU9VTEx1UXRCVyt0RmtUQlgvZGI1bm56Tml5MmFCb2Z1aWIy?=
 =?utf-8?B?YzBtMlJmNEZGSUNGOEVqRnNubUlvMjlETG9OUStNRmNETUZmWE9mS2gwZldL?=
 =?utf-8?B?RC94VlM5UktXZ0sxYTdPbGc0S05DMWYzQ3dRelZzZlFJckRBUnY2T1JlbEIx?=
 =?utf-8?B?UU41S1JBMDFLVTRaTEFYeWs2RDk3eUFjWk1vU053QmRwSjRQcHFGZXEzZFFP?=
 =?utf-8?B?TU1wbDFINzVoSEZmWHpOVWpoa2JoYVlpR3k5Tk1HNGVKVnJOM3RZTVViNTZB?=
 =?utf-8?B?aUlRSDVqdDhnTTNSOU5mQjZFVmVvbXhYbG1vTmJVQXNOS0lpaXdJa2NlTU8v?=
 =?utf-8?B?Q1VnU2k4amFQd2tTVUdXN0hoV25DQkpiclJ0WnUxT0M0YXVjMmwwTHpNaC80?=
 =?utf-8?B?bTBZZEViVDdkNjc1S3JzTUlsQUFlUzhYS1NGZERCSFFvWTZ0RjdJSVMydGt6?=
 =?utf-8?B?ZkRtd2QxNUNlR3BBK25TVUMzdHNkZVBkWlhIbFNINWFMUlZaSVM3NThsQ1ox?=
 =?utf-8?B?MGp0bGpZdXlWaHpENE9NTHNXZ1hyM0hMOG91MGtLb2xFVEJ1dldEeEZLU2Fw?=
 =?utf-8?B?RFcwcG5WM3NvVWJuWVczOEJrWmQ4a2xOd3lYMndSY1o3ejVlalRUcUVIbnFx?=
 =?utf-8?B?S2tOL0FMRHdmMFBtK3Z6K01DK0lUNmVoVzg2RFU3Mzl3SjdZemNXdFJFNHcv?=
 =?utf-8?B?dStUdWFRSU80dis2UHJ6WDBEZk1zTGJ1czhoQUFnMFJORkxyalNybCt4YXUw?=
 =?utf-8?B?cjZFWnBCU1d5Wk9pZjhaOW9ycCtPR1ZyMWVGRm5GVzNub1NUU2lLR0kyOXJ3?=
 =?utf-8?B?bGlxdkNDTjdMaWJSeFBCTUs3UHozUnNobnlrM01Sa1dhNzFXL2tKRFAyNFo2?=
 =?utf-8?B?TnFlY3RwamF1NjJHRDF0ZHdSbmthenZJTklpQnpETnFXVk13Zi8zUGVGSUhF?=
 =?utf-8?B?cHc4TllUN2Vka1NsVXBBME5RM1JJM1VlY2N6djVCa2RuQ1lYcnlKL1crZjM3?=
 =?utf-8?B?eVdHUVhXNTh4M042VXRteGVmNGRyMFlYOFE0ZXpBd1JadzludVR5bGc5Yzdk?=
 =?utf-8?B?MHpTZVVsVmd5OWJpRXgvM3ZkR1V3M25VREFFQ1pSL1ozR0NMK3lwRm9QY0Qy?=
 =?utf-8?B?OURPNGF6NDRSMVRLcW9RTTBKT1ZsZ0tCa1IzaUpMVVJteVlsR3ZzQllCbmdv?=
 =?utf-8?B?TXppQk1Gd2J1NWk5bHhsNFhXVVJubk9lVXQvdGUwVXVFUDREYy9mN3NjbDcr?=
 =?utf-8?B?TlJtbUJVMkVOVjBvdjk0RDJHZEt4bnd5Ni9kaEVNRlJBRWtOQnJ3SXk2Z3lL?=
 =?utf-8?B?ME9Hc3V4MUY4K0ZPYXdaSWNvQnpGcVNnYmlzVVZmMy9PZVlCakpHTGEzTGdi?=
 =?utf-8?B?TXZDd2E2L3NhQ1BmNEd5TXJISjFUaFFVTHBWTkdSWnZabFVmekdDTW9Yd1Nj?=
 =?utf-8?B?N2FlMWhVMkh0WFgzUndFeEtISHQwNXEyczAxaDBMaHF2dDV1WUd2WUI4YUJB?=
 =?utf-8?B?Zk5EN2pKRUVqdExqMWdHc3FUOG1UakY2L0ZDVzUyaC8zamVMcVRqcDFzUTlE?=
 =?utf-8?B?RmJkd0hNQjFPUGRRUFEwWXJBMTcrZi9lQkZqVWtmTkxLRndsNVA0SGpiMm5x?=
 =?utf-8?B?T1g5M1RNTjREL0cxZVBwdVFnUUt1aUFabmhXdU5qblJKSVpYTmVZWDJPQlJa?=
 =?utf-8?B?cXJpbmphVEp5WG45djA4UkhpT29YeGpuSnU3cWZXenlPaVVZMUk5YmxqT1VE?=
 =?utf-8?B?em9obTg2MlhPaGx1ZWZGN2tRVzFGeGtkTXM5V1k0SGUrbXZrUzlDTlFvbk5N?=
 =?utf-8?B?ZjVoVjJwOCtiMlpzc0RYemY5YXVMR2h5dnFEN3NPZWZ3S2NZb2Vhb21yUllX?=
 =?utf-8?B?ckprbDg3TXMwYkNKQ0dJRWtZV2l2bWx2dEo0Z3VWYXI3UWZtSzYvTXV5a1cy?=
 =?utf-8?B?RXFES0Rydm9MWVRvcnR2K0toelFkZ2ZOVHJ5VGRDQUJ2QVJrQ1p4eHdKNVdP?=
 =?utf-8?B?N0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 35569d2a-32a1-4d07-d351-08db2a10dd29
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2023 13:33:32.5468 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6sqMoAy484srOOiUnTJ7NE7CmrxtJXoUGriOnuT9NlqYfeWAk8sEdoMwSmV4eWE47JR+AMCSDPZc/FTixdGi1V0mFTNq25ShZ16A5rJzFys=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7101
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679405694; x=1710941694;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=KCEhmJNruUah84PYijBRiCjuOuV1rnz5CPAPREWt03g=;
 b=UK35HjMdtBshPoN2s0nsBTUWQqxoNqXBlo6ekW95nM9RWEdZkf+0LJMZ
 mRtybd6db6ljt52CqPeaTJ19IYyFobjg3T8mS2PHjNOYNPDwMbz12fxdb
 d75NV6DUvqTh5bTCjdQZcRWPOhhjO+UN+NGLU1a9cTO9zkGeGooQ/lZ9Y
 pEWcaGrWAaDtmi8HQUYx5rZQv5BJKjP92R9JKzocog667zY+jeHUJ2FNL
 ArDO+ecENoyxnmVKVHSPmu/RWQZy5byMxyp8FNQHInW8sjfcVnzQzdC/0
 N349VjQDM9NgDkCzgUyNkXwK0yfySXp9CMMCXk6tnm3SweicigjiAtNc2
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UK35HjMd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v10 3/5] ice: Enable
 switching default tx scheduler topology
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAzLzE3LzIwMjMgNjoxNyBQTSwgVG9ueSBOZ3V5ZW4gd3JvdGU6Cj4gT24gMy8xNC8yMDIz
IDM6MjUgQU0sIE1pY2hhbCBXaWxjenluc2tpIHdyb3RlOgo+PiBJbnRyb2R1Y2Ugc3VwcG9ydCBm
b3IgdHggc2NoZWR1bGVyIHRvcG9sb2d5IGNoYW5nZSwgYmFzZWQgb24gdXNlcgo+PiBzZWxlY3Rp
b24sIGZyb20gZGVmYXVsdCA5LWxheWVyIHRvIDUtbGF5ZXIuIEluIG9yZGVyIGZvciBzd2l0Y2gg
dG8gYmUKPj4gc3VjY2Vzc2Z1bCB0aGVyZSBpcyBhIG5ldyBOVk0odmVyc2lvbiAzLjIwIG9yIG9s
ZGVyKSBhbmQgRERQIHBhY2thZ2UoT1MKPj4gUGFja2FnZSAxLjMuMjkgb3Igb2xkZXIpLgo+Pgo+
PiBFbmFibGUgNS1sYXllciB0b3BvbG9neSBzd2l0Y2ggaW4gaW5pdCBwYXRoIG9mIHRoZSBkcml2
ZXIuIFRvIGFjY29tcGxpc2gKPj4gdGhhdCB1cGxvYWQgb2YgdGhlIEREUCBwYWNrYWdlIG5lZWRz
IHRvIGJlIGRlbGF5ZWQsIHVudGlsIGNoYW5nZSBpbiBUeAo+PiB0b3BvbG9neSBpcyBmaW5pc2hl
ZC4gVG8gdHJpZ2dlciB0aGUgVHggY2hhbmdlIHVzZXIgc2VsZWN0aW9uIHNob3VsZCBiZQo+PiBj
aGFuZ2VkIGluIE5WTSB1c2luZyBkZXZsaW5rLiBUaGVuIHRoZSBwbGF0Zm9ybSBzaG91bGQgYmUg
cmVib290ZWQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXaWxjenluc2tpIDxtaWNoYWwu
d2lsY3p5bnNraUBpbnRlbC5jb20+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pY2UvaWNlX2NvbW1vbi5jIHzCoMKgIDIgKwo+PiDCoCBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX2RkcC5jwqDCoMKgIHzCoMKgIDMgKy0KPj4gwqAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWluLmPCoMKgIHwgMTA0ICsrKysrKysrKysrKysrKyst
LS0tCj4+IMKgIDMgZmlsZXMgY2hhbmdlZCwgODkgaW5zZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25z
KC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X2NvbW1vbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uYwo+
PiBpbmRleCA0NzdhNmIxNTEwMGYuLjM3ZjI3YjE0NzEyMiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uYwo+PiArKysgYi9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jCj4+IEBAIC0xNjk2LDYgKzE2OTYsOCBA
QCBpY2VfYXFfc2VuZF9jbWQoc3RydWN0IGljZV9odyAqaHcsIHN0cnVjdCBpY2VfYXFfZGVzYyAq
ZGVzYywgdm9pZCAqYnVmLAo+PiDCoMKgwqDCoMKgIGNhc2UgaWNlX2FxY19vcGNfc2V0X3BvcnRf
cGFyYW1zOgo+PiDCoMKgwqDCoMKgIGNhc2UgaWNlX2FxY19vcGNfZ2V0X3ZsYW5fbW9kZV9wYXJh
bWV0ZXJzOgo+PiDCoMKgwqDCoMKgIGNhc2UgaWNlX2FxY19vcGNfc2V0X3ZsYW5fbW9kZV9wYXJh
bWV0ZXJzOgo+PiArwqDCoMKgIGNhc2UgaWNlX2FxY19vcGNfc2V0X3R4X3RvcG86Cj4+ICvCoMKg
wqAgY2FzZSBpY2VfYXFjX29wY19nZXRfdHhfdG9wbzoKPgo+IFNlZW1zIGxpa2UgdGhpcyBzaG91
bGQgYmUgaW4gcGF0Y2ggMT8KCkkgc3VwcG9zZSBzbywgb3JpZ2luYWxseSBJIHdhbnRlZCB0byBw
cmVzZXJ2ZSB0aGUgcGF0Y2ggYXMtaXMgZnJvbSBPT1QsIGFzIGl0IHdhcwpmcm9tIGFub3RoZXIg
YXV0aG9yLCBzbyB0aGF0J3Mgd2h5IGl0IGVuZGVkIGhlcmUuIFdpbGwgZml4IHRoaXMuCgo+Cj4+
IMKgwqDCoMKgwqAgY2FzZSBpY2VfYXFjX29wY19hZGRfcmVjaXBlOgo+PiDCoMKgwqDCoMKgIGNh
c2UgaWNlX2FxY19vcGNfcmVjaXBlX3RvX3Byb2ZpbGU6Cj4+IMKgwqDCoMKgwqAgY2FzZSBpY2Vf
YXFjX29wY19nZXRfcmVjaXBlOgo+Cj4gWy4uLl0KPgo+PiArLyoqCj4+ICsgKiBpY2VfaW5pdF9k
ZHBfY29uZmlnIC0gRERQIHJlbGF0ZWQgY29uZmlndXJhdGlvbgo+PiArICogQGh3OiBwb2ludGVy
IHRvIHRoZSBoYXJkd2FyZSBzdHJ1Y3R1cmUKPj4gKyAqIEBwZjogcG9pbnRlciB0byBwZiBzdHJ1
Y3R1cmUKPj4gKyAqCj4+ICsgKiBUaGlzIGZ1bmN0aW9uIGxvYWRzIEREUCBmaWxlIGZyb20gdGhl
IGRpc2ssIHRoZW4gaW5pdGlhbGl6ZXMgVHgKPj4gKyAqIHRvcG9sb2d5LiBBdCB0aGUgZW5kIERE
UCBwYWNrYWdlIGlzIGxvYWRlZCBvbiB0aGUgY2FyZC4KPj4gKyAqLwo+PiArc3RhdGljIGludCBp
Y2VfaW5pdF9kZHBfY29uZmlnKHN0cnVjdCBpY2VfaHcgKmh3LCBzdHJ1Y3QgaWNlX3BmICpwZikK
Pj4gK3sKPj4gK8KgwqDCoCBzdHJ1Y3QgZGV2aWNlICpkZXYgPSBpY2VfcGZfdG9fZGV2KHBmKTsK
Pj4gK8KgwqDCoCBjb25zdCBzdHJ1Y3QgZmlybXdhcmUgKmZpcm13YXJlID0gTlVMTDsKPj4gK8Kg
wqDCoCBpbnQgZXJyOwo+PiArCj4+ICvCoMKgwqAgZXJyID0gaWNlX3JlcXVlc3RfZncocGYsICZm
aXJtd2FyZSk7Cj4+ICvCoMKgwqAgaWYgKGVycikKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiBl
cnI7Cj4+ICsKPj4gK8KgwqDCoCBlcnIgPSBpY2VfaW5pdF90eF90b3BvbG9neShodywgZmlybXdh
cmUpOwo+PiDCoMKgwqDCoMKgIGlmIChlcnIpIHsKPj4gLcKgwqDCoMKgwqDCoMKgIGRldl9lcnIo
ZGV2LCAiVGhlIEREUCBwYWNrYWdlIGZpbGUgd2FzIG5vdCBmb3VuZCBvciBjb3VsZCBub3QgYmUg
cmVhZC4gRW50ZXJpbmcgU2FmZSBNb2RlXG4iKTsKPj4gLcKgwqDCoMKgwqDCoMKgIHJldHVybjsK
Pj4gK8KgwqDCoMKgwqDCoMKgIGRldl9lcnIoZGV2LCAiaWNlX2luaXRfaHcgZHVyaW5nIGNoYW5n
ZSBvZiB0eCB0b3BvbG9neSBmYWlsZWQ6ICVkXG4iLAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBlcnIpOwo+PiArwqDCoMKgwqDCoMKgwqAgcmVsZWFzZV9maXJtd2FyZShmaXJtd2FyZSk7Cj4+
ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gZXJyOwo+PiDCoMKgwqDCoMKgIH0KPj4gwqAgLcKgwqDC
oCAvKiByZXF1ZXN0IGZvciBmaXJtd2FyZSB3YXMgc3VjY2Vzc2Z1bC4gRG93bmxvYWQgdG8gZGV2
aWNlICovCj4+ICvCoMKgwqAgLyogRG93bmxvYWQgZmlybXdhcmUgdG8gZGV2aWNlICovCj4+IMKg
wqDCoMKgwqAgaWNlX2xvYWRfcGtnKGZpcm13YXJlLCBwZik7Cj4+IMKgwqDCoMKgwqAgcmVsZWFz
ZV9maXJtd2FyZShmaXJtd2FyZSk7Cj4+ICsKPj4gK8KgwqDCoCByZXR1cm4gZXJyOwo+PiDCoCB9
Cj4+IMKgIMKgIC8qKgo+PiBAQCAtNDcyNiw5ICs0NzkyLDkgQEAgc3RhdGljIGludCBpY2VfaW5p
dF9kZXYoc3RydWN0IGljZV9wZiAqcGYpCj4+IMKgIMKgwqDCoMKgwqAgaWNlX2luaXRfZmVhdHVy
ZV9zdXBwb3J0KHBmKTsKPj4gwqAgLcKgwqDCoCBpY2VfcmVxdWVzdF9mdyhwZik7Cj4+ICvCoMKg
wqAgaWNlX2luaXRfZGRwX2NvbmZpZyhodywgcGYpOwo+Cj4gVGhpcyBmdW5jdGlvbiByZXR1cm5z
IGEgdmFsdWUsIGJ1dCBpdCdzIG5vdCBiZWluZyB1c2VkL2NoZWNrZWQuIFNob3VsZCBpdCBiZSB2
b2lkIG9yIGJlIHVzZWQgZm9yIHRoZSBjaGVjayBiZWxvdz8gSSB0aGluayBmb3JtZXIgc291bmRz
IGJldHRlciBhcyBjaGVja2luZyBzYWZlIG1vZGUsIHRvIHNldCBzYWZlIG1vZGUgY2FwcyBzb3Vu
ZHMgc2FmZXIgOikKCldlbGwgaGVyZSB0aGUgc3RvcnkgaXMgYWxzbyBjb252b2x1dGVkIDspLCBv
cmlnaW5hbGx5IHRoZSByZXR1cm4gdmFsdWUgd2FzIHVzZWQsIGJ1dCB0aGVuIHRoZXJlIHdhcyBh
IGJ1ZyBpbiBPT1QsIHNvbWVvbmUgZml4ZWQgaXQKYW5kIGl0J3MgbGVmdCBsaWtlIHRoaXMuIFdp
bGwgZml4IHRoaXMgcGVyIHlvdXIgc3VnZ2VzdGlvbiwgZmVlbHMgc2FmZXIgYXMgcHJldmlvdXMg
YXBwcm9hY2ggaXMgYWxyZWFkeSBwcm92ZW4gdG8gaW50cm9kdWNlIGJ1Z3MKCj4KPj4gwqAgLcKg
wqDCoCAvKiBpZiBpY2VfcmVxdWVzdF9mdyBmYWlscywgSUNFX0ZMQUdfQURWX0ZFQVRVUkVTIGJp
dCB3b24ndCBiZQo+PiArwqDCoMKgIC8qIGlmIGljZV9pbml0X2RkcF9jb25maWcgZmFpbHMsIElD
RV9GTEFHX0FEVl9GRUFUVVJFUyBiaXQgd29uJ3QgYmUKPj4gwqDCoMKgwqDCoMKgICogc2V0IGlu
IHBmLT5zdGF0ZSwgd2hpY2ggd2lsbCBjYXVzZSBpY2VfaXNfc2FmZV9tb2RlIHRvIHJldHVybgo+
PiDCoMKgwqDCoMKgwqAgKiB0cnVlCj4+IMKgwqDCoMKgwqDCoCAqLwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
