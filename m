Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CD1709CF3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 May 2023 18:53:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 981D041762;
	Fri, 19 May 2023 16:53:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 981D041762
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684515235;
	bh=D63+Th9u6W427JfAuUudSGPYdPxHCFJvMu9386cDTco=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zRaSCOYxXW0CzB3fRq/W5PU/oe4em+P9WlqKemhu9dZD5+C8jEAEVIOf8uISjSv2U
	 dLW7qucj8B6VjvmK7ypCnI1RHH+UXXhU+GW3KKaxgv/QXoVJMy9cC6KeFtzMNFlEQF
	 /HOyvf/J1EwrEvOpQcqG9mYvsjCFNCTALFRJ2TSwAJlgmiaMfA5BN0r6yVAeKP39eB
	 S4gEc+51yH8AF0FhVg+k1HFWZ1qV+XTFyl0XPKM0M7gyJELoGjNL8l4qWYQdk9ANIT
	 DQDpTDegPo/3oJPjqToza3gjnU/srqFGsbWkua4FGh8aZ7Ey7cvKTiQOIPzKPghyQp
	 cV/2eyLqJwhmg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xbwn26dSoZXk; Fri, 19 May 2023 16:53:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3721F40177;
	Fri, 19 May 2023 16:53:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3721F40177
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0B4551BF362
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 16:53:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D407940522
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 16:53:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D407940522
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jzWvi6ifJrlb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 May 2023 16:53:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9AC40402C3
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9AC40402C3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 16:53:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="349937329"
X-IronPort-AV: E=Sophos;i="6.00,177,1681196400"; d="scan'208";a="349937329"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2023 09:53:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10715"; a="767676867"
X-IronPort-AV: E=Sophos;i="6.00,177,1681196400"; d="scan'208";a="767676867"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 19 May 2023 09:53:37 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 19 May 2023 09:53:37 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 19 May 2023 09:53:37 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 19 May 2023 09:53:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VUdRZpM1zz+WpOWeOgJ+86ILj9RXoRewCbQjbMrZW0ND52X/AQ6IwzqqgBYAZSwLQmWqKsVW8Eef4tNX2Uduk/st3Pgo6YUJTY5bbHe87VjsJGlmzxIHQvgN7is/YOQqKM4LsE/+xT17rrKWMWeqaFKqa8L4Nt1SRJTQTnnBtuncvYAtjMxQyPo0RJPk/aYgjZWa1RxWT0ts11H7ZfoUWmEqZDdzRhtLK7yryd22c5+wE6qybI+ke1B0AplMRa2X4CS4nmlaOyVrwjewvGRO5CZW1Nc0haXm7o215e6pF1v4HobtgAUCmMxHn40++Wju+0AYHnA+QRuZprcW9c1F9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Di19W1XF1oJP0mXEAoXmw1CKbArGdd4rqF4Ec0GodKw=;
 b=lB+gp9lkLv5kxtwtZaiCcfYSTtzPZL88dQgBd63vUS3Yp7zhLSnMmNj1XXw+D4mIS23AXByJZgF/aGQa/bzyjG2IznqDmV62I8cAsip9MKW9+56Ui2esbTqquyxBOk3/XCVFt7Rwo1eFKgBztfKo+xCEjBUNMaEErJVqOvFRsXz3UpgKdm7v3qd8170Xc0+BsQh+JvJpqDAt97wkFIt/CooZze76AuWYHIbMGYImGvXnKevVSakbj1TblHZdvWpEaxuDLxBbB/8cHmX5hzg8J8gVSFXkiU7V1Hnl1JkM5+hW/9hOQbZUZVO6PemABSTdNYvItcU6gsHp6WgFFgFGcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by PH0PR11MB7710.namprd11.prod.outlook.com (2603:10b6:510:298::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.19; Fri, 19 May
 2023 16:53:23 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::64d9:76b5:5b43:1590%2]) with mapi id 15.20.6411.019; Fri, 19 May 2023
 16:53:23 +0000
Message-ID: <ac1895cc-a7b0-e40c-7dfc-8ab301f39893@intel.com>
Date: Fri, 19 May 2023 18:52:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Larysa Zaremba <larysa.zaremba@intel.com>
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
 <20230512152607.992209-3-larysa.zaremba@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20230512152607.992209-3-larysa.zaremba@intel.com>
X-ClientProxiedBy: LO2P265CA0057.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:60::21) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|PH0PR11MB7710:EE_
X-MS-Office365-Filtering-Correlation-Id: c3307129-48a2-49f7-0de9-08db58898ec2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: k5MWNKe7mNO1Ok9Qyrzgy5HWUxMz7hmoj6XvcmsDeQMFGAD/kKIViOtS706IeimTTVA0fRpkEneSUI+SDtZKazHaoobWAfMokPLTpJOrwKxVMFst/6x2WdzQZXfoFL9jBiFky5A7BG2OkDnatbkK0UmsIPZigj0oKzGG0I4ZwCrSdz6vMQ/eOVNfgk+H6Br8tgvXzjE2NgKctSE8ExLK42PpeXquKgkmRbRmbU44Kb5N7xeOHlOP1iApsn4p9rwdawnqzr/V/I2oiy2OCnjHU2T9COw9WUwnBZUb/64s+3+xU7WY9XOqeO5l70B9YcP83wCWjYPBcWp6XsEoDZyuxIZgm6D2FTYkr7vzMFIQd+OfYPnNHZYRTXXUrYKptuQ8LO0/8ROCcfV/2kjxpwRDf+LaufcP4taegoXy6ufT/Wlk8zidn/mIqHtAhabwTLDT7RBCS47RGQ6FzQrLgYSotbHRTm8zUrWlc/4Nw8hgwR3TjKuM10JcqjyMBGw6bTgqiDcPOJyURhIRNPsHTYBi1rI6dbZw/trF/luYd950Cap/fBxnhqteIU0ZY3u93FW3Fs8zv0DBHwHv8vdxj0hlvuncwblUm1j+ThzRwsrFLWAF8D4JpCvXKUykBXOiTXZ8mdJ8leM7fSqStkwNWqkpCQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(396003)(376002)(346002)(39860400002)(451199021)(8676002)(2906002)(8936002)(478600001)(4326008)(31686004)(41300700001)(6862004)(6636002)(316002)(54906003)(37006003)(7416002)(6486002)(66476007)(66946007)(66556008)(5660300002)(6666004)(36756003)(6506007)(6512007)(26005)(82960400001)(186003)(83380400001)(86362001)(31696002)(38100700002)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N2lyc05oa1FuQjVWOXc1QnZtSjFyTE9pdEJ4Q09qMTFYU25vd2R6Yy82b1FG?=
 =?utf-8?B?TjBUYjFTVkh0UXhCVmtGRWUxcjIzcHBOL1dXN0RTUkVSdVJoSWptVDJqWWhG?=
 =?utf-8?B?R082bWRHaTR0YXkzQTRycXVMeHFOOEhqaHRLMGlaVklKSGd1eVJ3Wjd3ZWF4?=
 =?utf-8?B?TkFVRnh2U3FRbFJ1MisyWUZxVElpWmYyQSs3T2pzczZCdVE4b1dPWklXNlBa?=
 =?utf-8?B?L2ZIVEFtd1B5THZSc2l1Zm93dHVQdnJLWHU3NVFNK3RTdnV2K2pON2k5VDBL?=
 =?utf-8?B?SCt1TnNObGVJTzk5ZzNaRGpMN2pTa29yNU1lejdwL3JjMEY3RnVSRTRhZHY3?=
 =?utf-8?B?dlBjMFVmZ2cvSWVpaVkyb1BzbENLWWpFVEwxNXhxa3F5eTEvcVNoTVpDcnlF?=
 =?utf-8?B?cEduTGdBOWswdFdBRjN4NURGK29tbHl2M09ET3Y4VUVZVGRYTHlMeDJqakFR?=
 =?utf-8?B?aHJUUDFvWnRzblJ5elZyQlhoVDdUTi9EVlZVY0RodGVwdExHSzVhbTJSM0Rx?=
 =?utf-8?B?OEJxNkVPSGFTUEdnUlpuMWhtbEE0NTJiS1JHQ3JqcUxTVXg0N1JLeXp4VzFD?=
 =?utf-8?B?STBWUDhZTkNONWloOGxSV3hwMWlOaFFSTWh6a3lyUFE5VjZFMklkM0xwV1BL?=
 =?utf-8?B?Zy81UjJ0VDBDTlpZSjQxNUlvam4yV0RnYzNiK2hLUWdxVy9MSnV3dmZBUXFT?=
 =?utf-8?B?M0tjMEJwNlR4NzdTWTdMbE4rOWhNVVl0NWZmK3pYMVhKZzV5Wk5HR3lzMWg2?=
 =?utf-8?B?SmV5bXlwOWVjZVRETC84dmlFTTB6bnRtK21BeHppWjJJcGxhTzduTWRWTXA1?=
 =?utf-8?B?SE40US9xNXI3RWtUZVEzRUFQSmJjeVFlZGNwVkRKUW53YTdFZEdkN0VMMVcy?=
 =?utf-8?B?NVY0UlpOQnZlYlV0dW5Va3JIWHBNb1l0bHBUUmJBUTkyT0ZxZjNZbkdqU3Zl?=
 =?utf-8?B?MlhiNnNMQWh2U3ZRbTIxSFBjOFRlVE91eWFneERyckwzWnQ2WGIrcHkzUXJi?=
 =?utf-8?B?a0M4eUlNZzU1S3I1TGQvMzdJa0lrU1VBVTN5VkMyZU9ydjFTZDBJTU5TMTJt?=
 =?utf-8?B?bTVrcmFrdkgxcjE2Y2sxQk9sSVdJcUlxRUt3R2IxVXB3cTN1d3VwUDJwVFJX?=
 =?utf-8?B?SkJVU2FKellSMDZ2dldKeU9vZFluMzNkZTNEV3ZONnJsRjltVGZZZDlURlFj?=
 =?utf-8?B?ZWR4cktlQXpiKy9nbG5vL3JWeTRKV1RLZVh6V0twS2lrOW81MURjTkIwNk1C?=
 =?utf-8?B?ZjZzTEFMQm9lakJ3d2lvQUY2NklvWm50cGN3dG1VbmhTWmxmSmpObC9BTkRC?=
 =?utf-8?B?UDZ6bk5uM1RZTE5obWJaaVNlK3NnQXkwVi9LTVBHVnZpR0JDeVNWU3VnOVRo?=
 =?utf-8?B?dU52TXRyMDBJcG5INGFGR3UxQnhUZDBrR3dQbjZlNTB6Q1MyM3ZwU2o2OHhv?=
 =?utf-8?B?ZmhZaWpRTE44Z0Z0T251RTVKT1Fud0JtZkZMMjZEZzA3R2kxMFk5Tk9UT3RI?=
 =?utf-8?B?azl2eHE0OWNLcThDWlc3dUdTU1NKeVE3YmUycVVCZGN0dEdYeVE1L3JvcDB1?=
 =?utf-8?B?OXgxZUp0U25RcVBqQnBBQ1hQeHovZ2dEaGdnVFpZbldrSVFwK2Z4SUNYZXcv?=
 =?utf-8?B?dkwxRzIwc2ZRQVA2UjJQZ0lOeExrWmhRbVU0c3pDUmZqa1E1SEViUVB6djFP?=
 =?utf-8?B?M21MR21tTkdaSHJ0ZUhDTHM0Y2o4bHpwUERJQmFra1VNV1BwbzlGaEpqWGEv?=
 =?utf-8?B?aDE5ZEFQM3JGRVBLN1VMS28wRWl1akI1TFFiUmpHVWwvZGVNamJmZHdyT054?=
 =?utf-8?B?WWpwcFdGMjhQTFpBUWZrWWJaUUJmRnM0T1VBNktkV0JHMmF3c216N0IxZDZS?=
 =?utf-8?B?M0ZHazVCTlBjZ2RkYkJqYjJ3MUl0RCtUSU81c09LWEp0cVFjWVhLbitVOTBn?=
 =?utf-8?B?RURBWkJTTDYyWHRlVkFOK0NpckIzRUU5OWlBd3FLS3VkN3BYT283VFJTcFJH?=
 =?utf-8?B?MzlEOVV2ZnQ0WkJYVEJ4LzZpMWZSNm1TQmJsY0Vjc1ZFamlDK2JRRjB1VkJ0?=
 =?utf-8?B?QzZLRE9VV1Z2YUFIM3pZM2pTeThBMng2Q29mUUpnZDlnb09YS0Z4dUUzNXFn?=
 =?utf-8?B?VEV3SUVsZ2MvN3phWmFSQ29RSWhwTnZOc0VVVnh4U1d5ZWhyeFJTaDJmeUFP?=
 =?utf-8?B?ZHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c3307129-48a2-49f7-0de9-08db58898ec2
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2023 16:53:23.5607 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bNfyA1XnvurKoetgCdVyLnS1/SuFIq3CLNIR4iTuc0qzyfL0MDJ4BLJkvBTxkz0BvqgwVLLN0jvp1sP9SYa8MMHqH/mdLJR0IImsif93GZc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7710
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684515227; x=1716051227;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B9ZSoLldXVUidDjWhScKU0flJ5XjWUwxzw5SkJeW1kU=;
 b=MEKcxgr2+DQicXzQxnzVZu7JKX0SHGxQxdKKXBpJ2TwifXHiYT/5XnWI
 35F9O/Gw4BXwK8Fmjtun6FaVqjenNV1m7GHSnBzIPvYanUBzlKC9IULP7
 3mUmrAWJmfhExUmNk4mx+vGbQ8JZLBOyR/3r4u+tZyLqwNTcz0hS3OHTH
 BbNTwUsVHpUcJ6nvvKVq+gsEIS8D6fSNnxYL8Tyojhb3Ctvp2bOPh3Ct9
 B+lX1oDWWoIkcKz+IDZclcNWG+XFD/q108k/cfIFgqgmxWoUm2r3/u8ok
 2Oe8d7JyFJBn2wl5fJWecDO583e0sDwFSr4PZgAd3aGl41ahAaFgRVZ/M
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MEKcxgr2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH RESEND bpf-next 02/15] ice: make RX HW
 timestamp reading code more reusable
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
Cc: Anatoly Burakov <anatoly.burakov@intel.com>, Alexei
 Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Song Liu <song@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Stanislav Fomichev <sdf@google.com>, Maryam Tahhan <mtahhan@redhat.com>,
 xdp-hints@xdp-project.net, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jesper Dangaard Brouer <brouer@redhat.com>,
 Yonghong Song <yhs@fb.com>, KP Singh <kpsingh@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jiri Olsa <jolsa@kernel.org>,
 bpf@vger.kernel.org, Martin KaFai Lau <martin.lau@linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Larysa Zaremba <larysa.zaremba@intel.com>
Date: Fri, 12 May 2023 17:25:54 +0200

> Previously, we only needed RX HW timestamp in skb path,
> hence all related code was written with skb in mind.
> But with the addition of XDP hints via kfuncs to the ice driver,
> the same logic will be needed in .xmo_() callbacks.

[...]

> @@ -2176,9 +2174,8 @@ ice_ptp_rx_hwtstamp(struct ice_rx_ring *rx_ring,
>  	ts_high = le32_to_cpu(rx_desc->wb.flex_ts.ts_high);
>  	ts_ns = ice_ptp_extend_32b_ts(cached_time, ts_high);
>  
> -	hwtstamps = skb_hwtstamps(skb);
> -	memset(hwtstamps, 0, sizeof(*hwtstamps));
> -	hwtstamps->hwtstamp = ns_to_ktime(ts_ns);
> +	*dst = ts_ns;
> +	return true;

Can't we use the same I wrote in the prev. comment, i.e. return 0 or
timestamp? I don't think ts == 0 is valid.

>  }
>  
>  /**

[...]

> + * The driver receives a notification in the receive descriptor with timestamp.
> + * The timestamp is in ns, so we must convert the result first.
> + */
> +static void
> +ice_ptp_rx_hwts_to_skb(struct ice_rx_ring *rx_ring,
> +		       union ice_32b_rx_flex_desc *rx_desc,
> +		       struct sk_buff *skb)
> +{
> +	struct skb_shared_hwtstamps *hwtstamps;
> +	u64 ts_ns;
> +
> +	if (!ice_ptp_copy_rx_hwts_from_desc(rx_ring, rx_desc, &ts_ns))
> +		return;
> +
> +	hwtstamps = skb_hwtstamps(skb);
> +	memset(hwtstamps, 0, sizeof(*hwtstamps));
> +	hwtstamps->hwtstamp = ns_to_ktime(ts_ns);

Ok, my optimizations aren't in this series :D
If you look at the hwtimestamps in skb, you'll see all that can be
minimized to just:

	*skb_hwtstamps(skb) = (struct skb_shared_hwtstamps){
		.hwtstamp	= ns_to_ktime(ts_ns),
	};

Compiler will probably do its job, but I wouldn't always rely on it.
Sometimes it's even able to not expand memset(8 bytes) to *(u64 *) = 0.

> +}
> +
>  /**
>   * ice_process_skb_fields - Populate skb header fields from Rx descriptor
>   * @rx_ring: Rx descriptor ring packet is being transacted on
> @@ -210,7 +235,7 @@ ice_process_skb_fields(struct ice_rx_ring *rx_ring,
>  	ice_rx_csum(rx_ring, skb, rx_desc, ptype);
>  
>  	if (rx_ring->ptp_rx)
> -		ice_ptp_rx_hwtstamp(rx_ring, rx_desc, skb);
> +		ice_ptp_rx_hwts_to_skb(rx_ring, rx_desc, skb);
>  }
>  
>  /**

Thanks,
Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
