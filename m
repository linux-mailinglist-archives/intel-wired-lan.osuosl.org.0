Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0AE7AC6EB
	for <lists+intel-wired-lan@lfdr.de>; Sun, 24 Sep 2023 09:09:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B01CF81656;
	Sun, 24 Sep 2023 07:09:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B01CF81656
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695539386;
	bh=BytUyYtuckuk/oDyrNx5MiomFaSp1g152H5VthFATRQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NA+DkW4lwO2621ZXIkzJEwtNAoIuDELowBuXUDgtuOPMFeKnB9TQsVswYyUNOH/8O
	 lAHs9R4hmAYFHh/ndcV4VjnylBMbTqaBW30UU8D9dzDmVyOcByGnJHemqZj23i0BZK
	 vdzfvt3BYNIOAk3tBjXioSCsR3tI621UWWHbabrkeQTgarxGSlCYLA8RmRU8d/VfaT
	 bIK2GII4EsJ6wIx6HIHKIgVoDoYC+vyS6bXKqJ8ahgLY4V93EspLOE3KUbi+Ku2XAD
	 zsKGVlnR/5gltwaNz96ymkbSyBOHLl2DF8Wg8b1s2vCsNyNbH4cRetrGHZNp4qLFzm
	 YqkD2bCkluPrA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CnisAoG4UjUi; Sun, 24 Sep 2023 07:09:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E1428142F;
	Sun, 24 Sep 2023 07:09:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E1428142F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1C7B61BF408
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Sep 2023 07:09:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E199341517
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Sep 2023 07:09:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E199341517
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AR9spR0ZIy2S for <intel-wired-lan@lists.osuosl.org>;
 Sun, 24 Sep 2023 07:09:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9B59F413D3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Sep 2023 07:09:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B59F413D3
X-IronPort-AV: E=McAfee;i="6600,9927,10842"; a="361329925"
X-IronPort-AV: E=Sophos;i="6.03,171,1694761200"; d="scan'208";a="361329925"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2023 00:09:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10842"; a="921640213"
X-IronPort-AV: E=Sophos;i="6.03,171,1694761200"; d="scan'208";a="921640213"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2023 00:09:34 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 24 Sep 2023 00:09:34 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 24 Sep 2023 00:09:34 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Sun, 24 Sep 2023 00:09:34 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Sun, 24 Sep 2023 00:09:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b+ZGv1Wjc2lnUt93WmGwcAEnpJaS7uikn2EW8n30qzz4BC8GoOH6hFJM6HAOAO6S4uXBslNr5P0w+nKmvqIRAFYWpvFtVxBjv7Rmcm80ELF81HlFQQdIBg8i8N9Pl6j61hdyllxshcSJyGQ52JLPffCQuSiI+GfFj6wENlFlCVLU487vyCeTHYADTV25pUc8ndeBuWc2tSryABUXoC2T83GrY3bjXhnsphZsqSIRRw2pWm/V0IEB0JZvcpQmJEhERMGxLMI0khOTYZaIHbNuAPfgIhTyLOgtJIQDCn9J/+GKBFbMPdHO+2pG3JUI84tqYi9NaUoyviad5paywuLKXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bH+kqzxGTQA3vAb+dGjAKp/UfG6+WTyr9AWz5fGenJo=;
 b=X+pE7XCh+qIYscrYKaOL6yVAtmqusg2MiOKH8S7JJc/R8TBpBBphZwISJPXKySZNGX4e4Z1+1M5pADWcanLn3q1OLGT9LqGvS2e6LHw07PmFy8rxw0TBCr85YX9SY6S9Vx2g1ZkDfkmKcrZmQPPIo+q0+XySozRTM4iJsrVE//QNucSssvllnKp10GsYckzD3YvTwu9c9VNVHoB6Dyp1QC7nwKmW7KKW7VhPiXZoECunTzrsnvtSb9VQvJv3uK0ZVcs66qjk4nqd1t8/ONu+kTnrQii70StC8fMAeg1TmyXBsFJ4NEmfHAwTpX557rJxQU5EG1USer1RPSgZeOIcRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by CH3PR11MB8187.namprd11.prod.outlook.com (2603:10b6:610:160::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.20; Sun, 24 Sep
 2023 07:09:25 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::b8a7:a98d:5dbf:2bb9]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::b8a7:a98d:5dbf:2bb9%4]) with mapi id 15.20.6813.017; Sun, 24 Sep 2023
 07:09:25 +0000
Message-ID: <40c11058-5065-41f0-bf09-2784b291c41b@intel.com>
Date: Sun, 24 Sep 2023 10:09:17 +0300
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Prasad Koya <prasad@arista.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230922163804.7DDBA2440449@us122.sjc.aristanetworks.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <20230922163804.7DDBA2440449@us122.sjc.aristanetworks.com>
X-ClientProxiedBy: FR4P281CA0081.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:cd::14) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|CH3PR11MB8187:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a55d412-d539-422e-76a2-08dbbccd2f74
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yznXHJHYdRe8lFE5JNWnxaDgKS69WxmdveXWDbx2TDxQTyvLh8fs7z81a3ttCF0JO3VwIy0B4BujutkWKNCp1C0wenxdsGTH8YVHij/wYY72pRmaPmwxG2uHaR4+8lkC4ZtDmRRssnjjsT+OPLWTnGgFTrSXbfPyYGZVoqzEm1E2YNEhLPSphZ1R4nwAvCoxZ9znhN4BbTFomUAY4iw/eE/m0w8uXZ20GoQdZwnOpeXBUOT7Z2v7tRvgecaM/nOP5NtP9OIL5TzsFXUlsD/rW21foMzlaPoaG3qL4evZOWG87HrZX1HOCilwMKWmiH8J+8CVh3NmQscbG0QYd6lAtUshrPcJsjZOvajudJhq6j5n0n+jw520yPwtcY2LpIRVyMh0FMnGChgCZ3vxXrOOV589NyAG43hFL4G+71pF12Qbg918YwNp8ZIcdy/p7tPBgowPvdGrezB32fyfKGgk8zBfqExNNUTkSCzBXLaUrcfx1vHXTNOkgNGaI4rJCTXx2G9bfEAlvRm3hwOej8G6dbRjeQ0iG4FkFX2tnGBN3BU+gS7Nef4qeyT6Son0PjukgES7x6gS6Q/OmAZxNYC2TuoTml9H93dRQX5/AnVy8/1zg70Mi+lSSlwvpDsV5PrQz+to4U5PBSqXxMxZKBNmIA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(366004)(346002)(136003)(39860400002)(230922051799003)(186009)(451199024)(1800799009)(6512007)(53546011)(82960400001)(6506007)(6666004)(6486002)(26005)(2906002)(478600001)(83380400001)(66556008)(5660300002)(66946007)(8936002)(8676002)(66476007)(41300700001)(316002)(4326008)(38100700002)(2616005)(107886003)(36756003)(86362001)(31696002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OXE3Zy9idHRQK2ZaMGpXOVZKMTYrVU5jY05ybnphMG8xekk3eisrUHRaa3Uy?=
 =?utf-8?B?M2NQanZwWVpGQkNOSm9UeUY5WE5qZTRGSEtjeHZBOGhUV3ZpS3Z5c0w5clpw?=
 =?utf-8?B?ejl0NkpsOGZBa2RuU1RsdTViNlgzbDlKWjZSQzlDaVg4QTY3bkZpREh4MjFn?=
 =?utf-8?B?UFVXRG5SY010cEVIMmdOSjBoQ210NWExaGFIOWhHTDZBNXJRVUtaK1V1TVcz?=
 =?utf-8?B?RXVYS2lXZXQ4ZVROc2UwcEhmZEhjTlJkbXdPWFVOU1EvaDhGbkdkQ3dKaC9N?=
 =?utf-8?B?V0Zzc2dpWFhaR2ozMHVTTVd6L08xTkwxZWZiZG1HNVIxelk1bTZYVEtZQ01F?=
 =?utf-8?B?cm1pK2tDV2g0SFA4ZVpXeFg5bnpVazh0ZHpFbXpLeFRsanNwWUFNVzdyMWFC?=
 =?utf-8?B?cWJ5dEVKTEFNWisxVVR0TC9TdHMrSHJHVFNrOFVRUTh2MTRXbHlodlBnMzZj?=
 =?utf-8?B?cURQbW5uak9aV0crSGRzcTB6cWZRMW8vYlc1T2RpWS84czlaTThPSm5jbjFj?=
 =?utf-8?B?U3pHOWgxeTF6Q2x4bC9LM2pZVTNMYXJUM3ljN0JndC9FcTFjVGtpcmkxZ0lv?=
 =?utf-8?B?YzQwNnlBY0N2NldIMHpud2JqN2QwZU1xcWpZalI3UFhTQUpTZzVwZTFtZWIx?=
 =?utf-8?B?Y1orREhtSkliMEFNTnRyTEdBRzJjamExM2JoQXFuRWxabHBSTlkrbVZqaDI0?=
 =?utf-8?B?SkpsZmJmeWdlUXp3VzhscEVrZjFxTVJPV3pTVkdlY3E3anYvNDgzbU5xOTd0?=
 =?utf-8?B?M1plQThCTkdCcUszSmhxa2ZkSE5wSnZzNnZxaUVxQkpBaURUZDZZZ1grUUV4?=
 =?utf-8?B?WE9xa1kwZFNrN09iaFhiQ0gyUzIwUktKVUk2d3ZxRDlDYy9udU5vcWRiT3Rw?=
 =?utf-8?B?aDhwck9tcU1wZkFWcUF2NHNnMG90YXRPTWc0MVpNczk5dGtGMHFwVExjUU5L?=
 =?utf-8?B?M3hrVVN5WDJ5Q055Q1VkQ3g1YitETmpJbjZlOVNDelU0K3ltMklYUGdUbVdm?=
 =?utf-8?B?eHExYjBPOFV1c3BrZ1cvejVlN1FkcG9ySGxCS29lcVluT1NpRnZvTWZCbzVM?=
 =?utf-8?B?TmFWV09xNjgxbGNaRERJQVgxc0VScGxGZS9XaUl0WGhqWlRtQi83Q3dNR05O?=
 =?utf-8?B?Ym9LTUYrNHlzcSs5Z0NYdlRoUDRrdk1INDhpQzdvQXhKYmhnZ1gwZ2s4RVJR?=
 =?utf-8?B?dUsyajcvUDlFWlRsUU5iOVpTNTVUNjBsN2g5elpmdmo3QVFsNDJRblhYS0Zs?=
 =?utf-8?B?Q3haenFuRFNqdytnTzZ6eE9FSkgzRDJHdTlWblhaWmNmQVIwN1diKy9JMk5Z?=
 =?utf-8?B?ei9ONm52TEgwQ3VySHMzaXZJVm5SRi8vbC84bzVqVzgrakhlclluUmlCMGFy?=
 =?utf-8?B?RHBRRVdadncwQnhqVFBrZ0xvVDZGb3NmTTVsb0laYW56L3c4b2VLV1dmRm9q?=
 =?utf-8?B?RGxWSmx1ODFYakZVcU1keEtpUDJPQWRNNmt3UVNnQm05UjhhdXRWNGFsaUtM?=
 =?utf-8?B?YzJ0dDVNZFRIeEg1eWdtTERzVFFPMTc1NndTTXJLeER2NisxVzdXZUYvQk9t?=
 =?utf-8?B?UGE5YmpXWXdSMVZRY3hHT3MvYXNoWGViVUY2MUt0MG5aNUZaQlJzUjBnemZG?=
 =?utf-8?B?bkE5STJDN3IvL2kvTllBdG9vd0U3WlhNZHZxSlNCcFpjVmVHNjF6cytHSlBM?=
 =?utf-8?B?NHI4d1h5am9xa3QyWGdBK2ZBNUNRdm15a1I0aHRJbGxCcmNXazlsQTF6NWk4?=
 =?utf-8?B?UStuRGdHdThnTVBReTlMNEpCSXEwejZqYmNZTDhtR2dqbk0zQ0Y1L1Z4TEk2?=
 =?utf-8?B?eUdRMGZXUjY3V01Ub2d6dmhBYTlkMWJ4cENyWEpWanJQcnh5eXBhV2crUVNu?=
 =?utf-8?B?ZmdqZkFLR2xTUG1rUXJJbFMra3BDZFlHSkZwdXNkWnJoT08vdmRYQUF1bjBu?=
 =?utf-8?B?YUYrdzFvNlFQZjlpZlJMVkdudHVyRW51L1J0dG9abk1NQkhJbVJrSlRDT0Fk?=
 =?utf-8?B?T2xodEN0NHhYS01QZkJQcVI0ZUxlYjJhRnVKb1pzak1YdGd3NFlkMUdqM0l5?=
 =?utf-8?B?WmhPSDdNbXVtMGRDRjRLYzJLcjg5dVkwVFBJVVA5WVRzcHRpV0Uvb2FaUmZK?=
 =?utf-8?Q?PmTEAA3BGxI+hPoEzIkFqP2Ig?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a55d412-d539-422e-76a2-08dbbccd2f74
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2023 07:09:25.6793 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SEJyyBlugouPk5Q5Ib/gxc/xssFbitrIYg1Xgohy4DIt9xSmFLfzYSM496B3CAaAGkfNJDRozOXwTPplj8tY+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8187
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695539377; x=1727075377;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=630TpXnVNjK6QgdeQG8NwY4jDUYGZfPBX+krnb0YhW0=;
 b=PWU9Yj5MVNpk3oISszgO7uBbrQtI2uq7qQpA6lS+ou/oESt+VTEQbcNk
 /C6pGoFVyA+gO0qqkVhn+8NOpOz0F9cl8HpgXoZQG3c8uzDnAHdmFBm3M
 risRuMYsURw9E3oJr5NJv94Z1PZsMmusciCNuzi3GqS/N10usb/RlpYYc
 tod3yG8VW8KOxFn/yzGaIvozb8DMrkK/K4MQ5nwZYSOleFJYdg2Caeq3n
 HoENOI2nWvhWkoZh2G7g9U6KsZNQNf8/5FMT0G7DbNpYcqksleWdrYBkN
 FLiy0Hc069PrhN2La54GDB7riSLcPdBndMoI/y5vOOAUNdjwQcNBl+2zf
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PWU9Yj5M
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] [iwl-net] Revert "igc: set TP bit in
 'supported' and 'advertising' fields of ethtool_link_ksettings"
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
Cc: dumazet@google.com, netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, "lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 22/09/2023 19:38, Prasad Koya wrote:
> This reverts commit 9ac3fc2f42e5ffa1e927dcbffb71b15fa81459e2.
> 
> After the command "ethtool -s enps0 speed 100 duplex full autoneg on",
> i.e., advertise only 100Mbps speed to the peer, "ethtool enps0" shows
> advertised speeds as 100Mbps and 2500Mbps. Same behavior is seen
> when changing the speed to 10Mbps or 1000Mbps.
> 
> This applies to I225/226 parts, which only supports copper mode.
> Reverting to original till the ambiguity is resolved.
> 
> Fixes: 9ac3fc2f42e5 ("igc: set TP bit in 'supported' and
> 'advertising' fields of ethtool_link_ksettings")
> Signed-off-by: Prasad Koya <prasad@arista.com>

Acked-by: Sasha Neftin <sasha.neftin@intel.com>

> ---
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 2 --
>   1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> index 93bce729be76..0e2cb00622d1 100644
> --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> @@ -1708,8 +1708,6 @@ static int igc_ethtool_get_link_ksettings(struct net_device *netdev,
>   	/* twisted pair */
>   	cmd->base.port = PORT_TP;
>   	cmd->base.phy_address = hw->phy.addr;
> -	ethtool_link_ksettings_add_link_mode(cmd, supported, TP);
> -	ethtool_link_ksettings_add_link_mode(cmd, advertising, TP);
>   
>   	/* advertising link modes */
>   	if (hw->phy.autoneg_advertised & ADVERTISE_10_HALF)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
