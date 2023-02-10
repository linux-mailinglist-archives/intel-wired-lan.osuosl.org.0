Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C506916AB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Feb 2023 03:28:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D4988405EB;
	Fri, 10 Feb 2023 02:28:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D4988405EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675996126;
	bh=FonIal5fnLBXYC36FYkWJ0r9798kl+ouTo0P81GiWGs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5Aj/bhMZtBGv/DioVjJKR3VVyKPoBCUg/KpNGYAqxULF+t1wnGvGcWnz9swo5EaZL
	 Kv0eMjaLwnlNIKtze41amUzJ4CsjXeB5VoCnZolJ17ILMUsnOz4F1Oiaf2ZPJQBMyU
	 urDp9BIP3ax0SAiCSyJK/vQMueWSsuD6KKDLEz7tiHEZig4Ash/jIFDQPyMbb5Ppra
	 J1REiLHjziqW2NqZesENvMCi3016yJ40N2FMiuxSRSWtfz9Mg4dcwYdSVNBRMlxO45
	 /MwqlWm3LlnvmgSKgbIT74gtQv4yIwLRjh/U7ou7H/oxweqboOCDsZmwNqhs3RpBsM
	 woM+gY1EA6tEQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UiVunFpXdiZb; Fri, 10 Feb 2023 02:28:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B6DFF405B0;
	Fri, 10 Feb 2023 02:28:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B6DFF405B0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EF3C91BF32B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 02:28:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C778B405B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 02:28:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C778B405B0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OPkh1MtNUes3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Feb 2023 02:28:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F334440017
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F334440017
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Feb 2023 02:28:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="416542856"
X-IronPort-AV: E=Sophos;i="5.97,285,1669104000"; d="scan'208";a="416542856"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 18:28:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="700303247"
X-IronPort-AV: E=Sophos;i="5.97,285,1669104000"; d="scan'208";a="700303247"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 09 Feb 2023 18:28:38 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 9 Feb 2023 18:28:38 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 9 Feb 2023 18:28:38 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 9 Feb 2023 18:28:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QHkxcLS2w8ssXDEpJXjVNLvfiKIjIkQlS34Q6BQYG5KnkEYtUo60E3HyYlNDVy1lrVgNimuWuQJvM8JX+raY1BhkoquZ+3ZGraiScbuogMe2l0//qBiyIzU0vgCi4yUM+elOlX5KhbZnmGDoarhq87icskhKiTnU9qY4EADWexiCwx0YUCBZB4OpMpzVSGK+9ec5E7mzHBJv24lpJBEmaMULDNjhdzVls09ZYXn0hg0puTzSB7Hr/NFvnIPLdhjHY73MUX8pUhXk+QKWtRxptMDvXKXrbkrq0jyemH/WT5mQDH9aJf+a4BIq6MreSTVTgqzW7+uL16FXhkpGlYvszQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wdjvrs/mNVHP3GA9qptBjwy3x9RKlFSre0OB9xshL1g=;
 b=ZIWQgVZ2zYW0qnwlj4mkvUzIbkZMhMxm2wiXrHexe6WxnItMJMFYn31ruFbSkhhZXzX48M6u5SKYOU+hXV25kMTmYMKGpA6iWBD9yLCOum57uEhLumM2jWBVI5QQrAWXImg7FN0oJ+Mg1TrWVoavmHd5gZYXRXK8f/v8017v+ZdyKw091OUH2ng39yF0rmNVbOW2KjIUAT6mrYD76UL0FhpqeIpWfLkPTXA0YMi00zyhr+O3Eye+tXCpoef0rHMVMW+8LPtZDKFKnKB09qG3edsgGHKuJWAVmUQbHc/LWIsTA0E7IhHMSDEwmLMdud/E3B4s5kHvSDwBCeWT8pjoNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB4886.namprd11.prod.outlook.com (2603:10b6:510:33::22)
 by BN9PR11MB5417.namprd11.prod.outlook.com (2603:10b6:408:11e::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.19; Fri, 10 Feb
 2023 02:28:36 +0000
Received: from PH0PR11MB4886.namprd11.prod.outlook.com
 ([fe80::b12:b4f8:776d:f18c]) by PH0PR11MB4886.namprd11.prod.outlook.com
 ([fe80::b12:b4f8:776d:f18c%6]) with mapi id 15.20.6086.017; Fri, 10 Feb 2023
 02:28:36 +0000
Message-ID: <d6785ec7-ef66-3d97-d87a-acf6dc7cff2d@intel.com>
Date: Thu, 9 Feb 2023 20:28:32 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
References: <20230206235436.2254802-1-jesse.brandeburg@intel.com>
 <Y+Oky4j0zDyfLp8r@localhost.localdomain>
 <030bb9a9-de44-215e-c274-f0a02b2d5cd5@intel.com>
From: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
In-Reply-To: <030bb9a9-de44-215e-c274-f0a02b2d5cd5@intel.com>
X-ClientProxiedBy: SJ0PR05CA0087.namprd05.prod.outlook.com
 (2603:10b6:a03:332::32) To PH0PR11MB4886.namprd11.prod.outlook.com
 (2603:10b6:510:33::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4886:EE_|BN9PR11MB5417:EE_
X-MS-Office365-Filtering-Correlation-Id: 55784b1a-0eab-4467-786e-08db0b0e831e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kMOSQwQDekqtZ76EtOxqyp2pf+svHlmLCmMAjdkRMHGCNtPgdydpr0vOmt2jECJ9WeuCsghfUz4Ciqt/2/aUoGxYxTpmwfRjZ/XcpWVR3niSt7ec2IlXEi0wWk1MtZaQjBFXcZyvL69qYI+AfX5aHz/XC1NGaCMc4CfwKQ1rf0DyFVWp+FVd2SzhocoVyH+04aGaqEfFfkqUOfQR0C84jr0vA+DK/9f/DmeD7naoXtVoczKRsgBOzgB4EfMV4bW+WaI/K8+UT6YsFbA/uO9vc+QrBMwe3Fpt0wo5TAIYj+/Mt3iwhp1aZjre5/csfRvtXw62V3R3hvSpFzVpzyjpDc3LfC93QaDXRT9fQyipfnnHCQocaX46pkpnCQ6dy52nRvh9IZc7WBpv3tQb1egkHB6huOVHBLkhItk3cea5G15fFLjtd8bc0bseCHPb61YYz2Njx1ZhJmtO6VpAIo5SqIYiZbp1XLpH0AUm2Psw58Vp7HQ1X3G8TTLVpNTDLHrpOhAFUWdDpIIUST9+DMat2WXeT56hLeC+oCCgeB2yv0WG22d63KQaIUTKrad9bT5FrSYpUkO1T8WQIJQNo+GTZ45ZM97rEJfbFa51t881JxPzkPOm/dWulliaUkWfh4kJdfWSU6ZO5oFDfV7xitgv3HFqiW1XZBLxdj4nXidWhZInyF7MNBrgbT+BXuh1WjnJaJxQQbWutjpnzoxDrYiwDQkP15x4iPPdvl1TSnXEwoM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4886.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(136003)(396003)(346002)(366004)(39860400002)(451199018)(316002)(186003)(110136005)(38100700002)(36756003)(82960400001)(2906002)(86362001)(31696002)(8676002)(4326008)(66556008)(66476007)(83380400001)(41300700001)(66946007)(6666004)(478600001)(2616005)(5660300002)(6486002)(26005)(6512007)(6506007)(53546011)(8936002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N2dKV1hvSHZ5Rm9acXk5NkFpbjlxMFQwc0xpODkrWEVZNGVlZ2FFeWQ1RHJD?=
 =?utf-8?B?VkxNUVFDSDRTaHY2cncrYXg1WDIvMWVwTWdvY3VJQnlyQTFWK01yOEJSZTlK?=
 =?utf-8?B?VDZsbTNTYUp2cWpSam04MEMwTFFwQ3RQNzUvdHhIbGVsS2lkcng0ZmdqbjNj?=
 =?utf-8?B?UWhlaW4reEREL0FUUTdKRW00emFyT0hRbk10TWxaVGhzQjRDSmEwbXBYOHE2?=
 =?utf-8?B?RTZyQUdVZWEyN0xsQ09RNGdXZ2ZjcTErbGRTU2ZIZjJqOWduL1NCZEUwWUY5?=
 =?utf-8?B?RXo0SndaTDQ4ckdWVDFBaWZoZVlTRG54K0FFUnZWK1o0YmJ2dUlHN3NMMTQy?=
 =?utf-8?B?RjVKcDBlTVh2RWNCWnAzQ1UvNTdOUm5jdFZpcnZkNCtiWjFhSi91ZGNGY2Ro?=
 =?utf-8?B?SU92UmVqa1kzMlhJYmtnamRMS3FJbWFURU9MeElYSlg1L3lBZ2NFU2F0UHZt?=
 =?utf-8?B?NDhBQVlGdWFqZ0wzQTVMMXNpdmxZc29ac1kwcFJOcGQveCtZeXdmY2o5NUpj?=
 =?utf-8?B?RmVMYkp6L3NRZFJMN0lRa29wU3pmc1VVQUxlMkNUeUR2SkxDcFdIeDNKMm9v?=
 =?utf-8?B?Y2pzcEcyTUhYQ3JCSWpMTHVBN21ONndMbHgrUlMvRTZ4eEVsS3ZRRm54OUhC?=
 =?utf-8?B?NlFma3JoVGxtZVZSTmtaNCtGV1FvaXZQSVdQSTI5L1BSNFNnZnRLRUtzZXd2?=
 =?utf-8?B?ZGI2bmRaV05CZm5MZ1prdjNjdjFJTXZnM3hZbWNPdDVhd1RkV0dWZFlrRFNC?=
 =?utf-8?B?OW0zR3hLQTgxbFhYa2ZMR1hKQ3FvS2pXLzVVTE8zdmpiVFR2UWxTUzlYQVJJ?=
 =?utf-8?B?NE00cExTdXNuRlBlVUIxd25sQU1LQXE0YXgwdEUzQUhIVFdVVFJBVEl3Qmtt?=
 =?utf-8?B?b1hreGNmNk1XVXpSVnkwUWpRQUZaNU5zei9wd1NtY01KOUxGTjJTVWhVdVU1?=
 =?utf-8?B?U09RNzhudHh6MVUyZ3FvWlRhY09oSXZEeFpKNkV3Rk9GY3RWT2ZGd3pzekhM?=
 =?utf-8?B?VlV5MVVERm0zSmdTNE5vMkpvWHczQVZkbTVNWnlNc3hKNVYvNDZUbkJBMFVs?=
 =?utf-8?B?OWtITDZLOU9WbS9QZTg2bVBwVG1UMU00MXFCRzhBY1VjSi9BMmZ3YUFxeTU4?=
 =?utf-8?B?MTFjSzc0ZzQ2NGRudXRhQ2dhYk51LyswZXVXTHRSUlBRMGhGT3pUYzdwUDNS?=
 =?utf-8?B?dDI2RHRqTmgzWEw3bE1QQ2lYbTlvOERMU1JORzQ0Rjg3VEtTb0NLTDI2YnND?=
 =?utf-8?B?ajlNTTJscEE2SzEvdnJIMDZiV2h4d1J3TVpCazJHL0dGOFhuNjVQTWxmWWFs?=
 =?utf-8?B?bnFSRFVMRHZFanl5UzNJUTNpQUkzTkF6bWZvME1xZmZmR3JiS0hOM1o5NHpl?=
 =?utf-8?B?RGRGalFqUDdxSUgwL3RGbGc4Nlg5dE1POXdpdG04bVVmRG5oc2dWaUVKTHVY?=
 =?utf-8?B?SDlhWWNMUnF1NFZncnZVM1UvSHBtSWxSNTV6OFRoUmtMT0FuV3dpZFY1M0pD?=
 =?utf-8?B?WXlxRWIyUTh2VnE2RTYwSElacG9ic3I1WWUrUTNUUXc0ZHA2eWxsZ09sd0lQ?=
 =?utf-8?B?NVZKSjVJQTYydXFFZklJaml3ZFBTL2k1TC9CQ1RBZmZTcERzU1BLZW1iZFcr?=
 =?utf-8?B?MmthTTl5SDhEZGF6NTB1c2VubWUxN2RYbk9WajV1Vm9vTG5aT1JweEx3Yldz?=
 =?utf-8?B?eEhrSmcvcWVSdzFXSmtWZHJkc2MrUGM0OFNSWnBwazF1bnpJdWdaT0VMNkNj?=
 =?utf-8?B?b2x3KzZscHU4ak5UcW9jaXh0bVd6ZHgvT0Q1M1BrN2dzTExGNkt2T3ZhanIr?=
 =?utf-8?B?Z0xGQ2RoaDgwdGs3SGZ0L3hxNlZYMGNReVhtSDJqcHVoM1czcjhvMklCSkll?=
 =?utf-8?B?dDVMZEpVeDBpV3VqZ3drYkVIMEpRSXZpK0krRDcxVko0dWl6L2RITk5jbGFi?=
 =?utf-8?B?Q2cxWGtxZ05HOHlzL0xOQ25yRHZteEhWQnhKdXQzNnFhcGRZVy82Mnhhcito?=
 =?utf-8?B?aENoRzZqMlZvTHZBNGxaK00rdkVIT2cxZXFjbWxWYW1SNGZZSlBwSGZKZjIr?=
 =?utf-8?B?bkNEYzRxYTFsYVJublJmQ2pueis2T0NkandKQnNITkhTWWRldnRSRW1KY3lB?=
 =?utf-8?B?K3JlMzNENlgyeStZalcrTDFPUm55SDRtM0lCUU45NVlVbFJvRFNYWGxMQ0RL?=
 =?utf-8?B?eEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55784b1a-0eab-4467-786e-08db0b0e831e
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4886.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2023 02:28:36.2035 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SX2bc+Dr6G8Nyl7QyakPbrE7vlxBEccjo9HkZ51Vn0dsOQgC/wz6tD8B06v++/j3w5tF9Qq2QrjVneKP8J2sPbOnVgcOLUU/eK1gtesLKmc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5417
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675996119; x=1707532119;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n4p7Ml7azCpDnfOKL/nxtq0KRGY/PCOU263coArwQ0s=;
 b=MXtPx5Cs27kZVJG8xbaF7A2OIIiMVd/SJGD5iI7iXmTAyiI+0fKTE9W3
 nAucEXN2yjKZ/bteMFzP5+4/D6SxDv7ZrH6taVo8eafT86Tr1zyvmSFab
 THfmFsPbBCj5v9FCKyr8jMhktdqUuWPWgWWf/W33tS9bQMdynjvjy+FXI
 mhYEJ7Knb/bmeFzQNDQ7g7PVG27u/yQpIjXL1lmUh7hAcoOWud4GKWtKN
 SxI6ICJgo3R3XLnvn4Fbt8/jDt1xp2Kqyn3hGIYoQxwLQa4/g16ey+XXj
 EXhWT+DX8Wp49engnssLVTHifvQCXUXD1pjM7kSDemU4KZ1WGW7DQTF1r
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MXtPx5Cs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: fix lost multicast
 packets in promisc mode
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAyLzkvMjAyMyA4OjA4IFBNLCBKZXNzZSBCcmFuZGVidXJnIHdyb3RlOgo+IE9uIDIvOC8y
MDIzIDU6MzQgQU0sIE1pY2hhbCBTd2lhdGtvd3NraSB3cm90ZToKPj4+IEBAIC00MTQsNiArNDE4
LDE2IEBAIHN0YXRpYyBpbnQgaWNlX3ZzaV9zeW5jX2ZsdHIoc3RydWN0IGljZV92c2kgKnZzaSkK
Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfQo+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlcnIgPSAwOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB2bGFuX29wcy0+ZGlzX3J4X2ZpbHRlcmluZyh2c2kpOwo+Pj4gKwo+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvKiBwcm9taXNjdW91cyBtb2RlIGltcGxp
ZXMgYWxsbXVsdGljYXN0IHNvCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
KiB0aGF0IFZTSXMgdGhhdCBhcmUgaW4gcHJvbWlzY3VvdXMgbW9kZSBhcmUKPj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIHN1YnNjcmliZWQgdG8gbXVsdGljYXN0IHBhY2tl
dHMgY29taW5nIHRvCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiB0aGUg
cG9ydAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICovCj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVyciA9IGljZV9zZXRfcHJvbWlzYyh2c2ksCj4+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBJQ0VfTUNBU1RfUFJPTUlTQ19CSVRTKTsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgaWYgKGVycikKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBnb3RvIG91dF9wcm9taXNjOwo+PiBBcmVuJ3Qgd2UgYWxyZWFkeSBkb2luZyB0aGUgc2FtZSB0
aGluZyBpbiBjYXNlIG9mIElGRl9BTExNVUxUST8KPj4gSSB3b25kZXIgaWYgb3VyIElGRl9QUk9N
SVNDIGhhbmRsaW5nIGlzIGNvcnJlY3QuIEN1cnJlbnRseSBJRkZfUFJPTUlTQwo+PiBtZWFucyBz
ZXR0aW5nIFBGIFZTSSBhcyBkZWZhdWx0IC0+IGFsbCBwYWNrZXRzIGZyb20gc3dpdGNoIHRoYXQg
ZG9uJ3QKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBeXl5eXgo+IHRoYXQncyB0aGUgY3JpdGljYWwgZmFp
bHVyZSBvZiB0aGUgb3JpZ2luYWwgY29kZS4KPiAKPj4gbWF0Y2ggYW55IGFjdGl2ZSBydWxlIGdv
ZXMgdG8gdGhpcyBWU0kuIElmIHRoZXJlIGlzIGEgcnVsZSAobGlrZSBpbiBjYXNlCj4+IGZyb20g
dGhlIGNvbW1pdCBtZXNzYWdlKSBwYWNrZXQgZG9lc24ndCBnbyB0byB0aGlzIFZTSS4gTWF5YmUg
aXQgc2hvdWxkCj4+IHJlcGxpY2F0ZSBhbGwgcGFja2V0cyB0byBQRiBWU0kgZXZlbiB0aGVyZSBp
cyBhIG1hdGNoaW5nIHJ1bGU/Cj4gCgo+IFRoYXQncyB3aGF0IHRoaXMgY29kZSBjaGFuZ2UgZG9l
cywgdHVybiBvbiB0aGUgTUNBU1RfUFJPTUlTQ19CSVRTIGZsYWcgCj4gd2hpY2ggbWFrZXMgdGhl
IGhhcmR3YXJlIHJlcGxpY2F0ZSBhbGwgbXVsdGljYXN0cyByZWNlaXZlZCB3aXRoICpvdGhlciog
Cj4gZGVzdGluYXRpb24gVlNJcyB0byB0aGlzIFBGIG9uZS4KPiAKPj4KPj4gQmFzaWNhbGx5LCBo
b3cgSUZGX1BST01JU0Mgc2hvdWxkIHdvcms/Cj4gCj4gWWVwLCBpdCdzIGFsd2F5cyBob3cgaXQg
c2hvdWxkIGhhdmUgd29ya2VkLCBidXQgaXQgd2Fzbid0IHF1aXRlIHdvcmtpbmcgCj4gcmlnaHQs
IGFuZCB1c2luZyBicmlkZ2UgImZpeGVkIiBpdCBiZWNhdXNlIGJyaWRnZSBzZXRzIGJvdGggUFJP
TUlTQyBhbmQgCj4gQUxMTVVMVEkgYml0cy4KCkNhbiB0aGlzIGJlIHNvbHZlZCBieSBsZXR0aW5n
IG92cyBzZXQgbXVsdGljYXN0IHNub29waW5nIHJhdGhlciB0aGFuIApkcml2ZXIgb3ZlcmxvYWRp
bmcgSUZGX1BST01JU0MKICAgIG92cy12c2N0bCBzZXQgQnJpZGdlIGJyMCBtY2FzdF9zbm9vcGlu
Z19lbmFibGU9dHJ1ZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2ly
ZWQtbGFuCg==
