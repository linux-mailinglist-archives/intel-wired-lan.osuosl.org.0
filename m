Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED829794304
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Sep 2023 20:25:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 65D5841578;
	Wed,  6 Sep 2023 18:25:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 65D5841578
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694024757;
	bh=encs7s105xMRuLhIBIBtAoMpOXmKKP5jNftEVNsbrdo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=e5aH4Dh2O2IudINo3WyGOsiWOtdxhGbouNvksnPpKqArL7Pd8eCaTH27PNYdvj10W
	 x12TdV6xQxKKNsC9bkRIGHRMmFmIjeqkBBcytWENuVFfcPhotNw6xWo0ztds/+CGx7
	 oHytrUAsuPv46yH9SSWRvu5/XD1cGUYdwsuREUNGlLnOfe+g5/uiZxxZGIaHMcQcGq
	 iubDoadCQaLobwYPsf/RUw9+yN7cqrTjXadr6FPr/7+ZhgKsdzBJ4s1ALajqHxdd/I
	 y8llFjchCFG6gLMn/Bg5iFk0WSJCiM2+SxrLpI24jTuEeudO7hBW+M+QEQ0O2+9cQM
	 1SqqdttcZ1wdw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6_O-6X4c_amH; Wed,  6 Sep 2023 18:25:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2EA7341577;
	Wed,  6 Sep 2023 18:25:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2EA7341577
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 11DB41BF853
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 18:25:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DAE0A41910
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 18:25:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DAE0A41910
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j0smsYtnLOT6 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Sep 2023 18:25:49 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8CD444190D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 18:25:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8CD444190D
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="408157173"
X-IronPort-AV: E=Sophos;i="6.02,232,1688454000"; d="scan'208";a="408157173"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 11:25:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="807131999"
X-IronPort-AV: E=Sophos;i="6.02,232,1688454000"; d="scan'208";a="807131999"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Sep 2023 11:25:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 6 Sep 2023 11:25:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 6 Sep 2023 11:25:33 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 6 Sep 2023 11:25:33 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 6 Sep 2023 11:25:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C4jYJzY33lFkphNgWM5bATebS90D6OfPLY2X9wH7qk/UDKROZfFw+ykkXYt9FWLhE0ktADr8Uz1I4AL1jbEwgRFjAQqs6OQ4N2gFUmBIS2JZlLeNVNoypB9ozQVQ7wqJOjaP4j7lu72CIvdD9llD6QJef+LEyI6feEu04vOowEVM4DwaxVbHc5dOUCdNvYi7OgGR0PBCWVkLdtw7HTfWPhiw9ir0Bc/2gTEsPOhUIuSnojnZxK/BalAQwqZQc3Bnu70lmUd9VrBHlSZXalNZY1Jos9XurUOB1vk3tIREUWbqTOJBBaUltVgLn9eIoT7LUDqllwkxPn8nJJHOm1Ej2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1pdWY+XDPo1Z/1gzmM+cEidDzkdmdPWqa6nt5+fPTKw=;
 b=lmR1UczjiVlDb2MJMROBaNUbQe9cGuh2rD3tItIuBx4aYxHJMc7OZaSX7rU/Cu9AvtZC718nP9ep4fBDNuz/2MNcURe7uN8oWwQl01p5nonhniPobuwVTmlLhkPINSf+kh4OhsUXguJNBV+2rLpmaD7u981SM2Wo52xBjwXovCd/IpSqC4vnXezjFGkpWKWvq1cf70C3SQdcJbBizzUuQ9vzCw1LNQlYKkPFQKXBTbkHiLZdyraH18OfZL3grDaeynjTWQqhkyyBQux5ZvGwuV4Va1m+pmbRSJ6UrIEFkI2r3QZo+2ynPR0Vg8dFkPkob5FJzslxjwD3IoBzEMjqNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by BL1PR11MB5383.namprd11.prod.outlook.com (2603:10b6:208:318::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Wed, 6 Sep
 2023 18:25:30 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::3e89:54d7:2c3b:d1b0]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::3e89:54d7:2c3b:d1b0%6]) with mapi id 15.20.6745.030; Wed, 6 Sep 2023
 18:25:30 +0000
Message-ID: <777fad0e-04dd-213e-3b84-1fd4e9b8a253@intel.com>
Date: Wed, 6 Sep 2023 12:25:23 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>, Haiyue Wang <haiyue.wang@intel.com>
References: <20230905185020.3613223-1-ahmed.zaki@intel.com>
 <20230905185020.3613223-4-ahmed.zaki@intel.com>
 <a4265a6f-460d-4450-af08-28ae6419b2b4@molgen.mpg.de>
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <a4265a6f-460d-4450-af08-28ae6419b2b4@molgen.mpg.de>
X-ClientProxiedBy: FR2P281CA0157.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:99::18) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|BL1PR11MB5383:EE_
X-MS-Office365-Filtering-Correlation-Id: e1852273-51d1-4a5c-dc77-08dbaf06a67e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TOc6pYx4NV8tJDMHplWkynFLEPOheyYV49/no8k8lXQtW5BuJvkmgaHEZPbhOr33yA123hUA/hO7pFnKesxpU1zrbfAe5ixEUZ8jBSiU8Cd/TgbO5bz9My9I8s8EGRx5q/0Bh6+Si8blCyEMNawv5WK3QUyrN6cP62i1lEQ887FPj8nAwUEwr48A42CIULRpohOAEhE7MV03eHSqUGGZSxKOQEFW5ELaq7CmihgbE95sVjtqHSR7D4e5PFzwU00atUDvsuOG6TUFjrbhrLEcEG4w3/xzc+oOpXAN2EoUy/m3hUTl4tTPxXd2Y1UwEMnOfKlPft0FURuuoUoDpav4OpGyrqMR4ARwwAQarj439YpXth3f1UF30vVTXsB7wGQdFmhMB1lJNIjnZYSvtv97qAyKssQFr3l53PTwEFJn56m+T6xCXjdekU2B3z9U0cJCY7h5OR8S30ELAFt2S/+IYKI31Co/cZs1xgK8K262S7Ov2nZFEKBy/5w2SY1aorqDs6nWHF89HNQIes0UNUh9CRunaxfgNprhSdRxSCIuGSw0Szq/ZSq4AhYsILu/cseBbgtd25Lx8Sg16SToJeww0qUAXxaM1wekiw3250vV/cA36TOjAoShOVAUGKNxJG2aaF4ovfYVPtWY3jHjqVpLuQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(376002)(39860400002)(366004)(346002)(1800799009)(186009)(451199024)(53546011)(6486002)(6506007)(6666004)(6512007)(110136005)(966005)(478600001)(83380400001)(316002)(26005)(6636002)(44832011)(66556008)(2906002)(2616005)(41300700001)(66476007)(66946007)(8936002)(4326008)(5660300002)(8676002)(36756003)(82960400001)(86362001)(38100700002)(31696002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cVhzajBXT3JZNHJaZUhDbU45bUFKWW81R0xOZFEya0dKeC92bjhGa2xWYWR1?=
 =?utf-8?B?TjJRdkN2VFUyREJrTVFRVmFMZytLdmVCVDhMSjJ0NXpraUM4blR2OUY3NXZJ?=
 =?utf-8?B?cW94Vzc1N2pQNGxLbmpQWlEwd3F4K0RPbEc1QmYxWDgvWUJXU1VwSU0vdHdI?=
 =?utf-8?B?alg1S3EvZldreTdnQXcyaUZRS0tTdVJqbnFvb2Y2RlRGNjJtMmVrRThGQ0dj?=
 =?utf-8?B?aGcwQnJLQk1qMDRPcm5MRDRjY3FIKy9JRmFPbU1IazRXTHBxa0tQOGtxSDN2?=
 =?utf-8?B?WXpLcEZrMy95WGRyUXpSUWNwM1JhYXBrWlJYWGowQ2V5TzNQN0FkangySFg1?=
 =?utf-8?B?cDREbHN1TVhkV3o3NGwyUHVuQ1hiL2ErWHNqblltV01LWDU4bm13cXh1czFu?=
 =?utf-8?B?RHQzZmhZbm5FOVdPZFJFNkRDTDJ6U0NkM2FVSmJNMG5jV1hLVU42QmlNZGhx?=
 =?utf-8?B?MU14aTNMcmhDY2FPRjIxV2Fsa1dqZmYwODdMbmp6cWRBUVlFdkNOTEdHeVQx?=
 =?utf-8?B?dFdYUWE2MFNDN0RYY2duMjFWK1R0TU5ISkl1NXN4SVBlUDluMHFhTHpwbG8y?=
 =?utf-8?B?RXlwTjQ3N01sVWIzU1VCYjhBSzhaUmNHby8xcHhrRkR4ak5MYnlndlVWcC8v?=
 =?utf-8?B?elJLOHIrc3dqT1kzWXZodE9nUWFkcDd5eXR4ODM2MXdKTDhIMzlSVElVNHp5?=
 =?utf-8?B?QWZ2UEw1R012NmNtOWN3SGJDU1psSFVZREIwVXFTOU5NNVV1MnRIcFZyUURN?=
 =?utf-8?B?a2NPVU5ZR3VxSUk5cjVBT21UOFU4OENUMDVTaGdIUmt1NjMzcjUyaWRqT1ZI?=
 =?utf-8?B?RGVDVGpIZHdRUVI0RWpNM2s0blhQQXVlMXVDVkVPRFBWUW56a0lTSmQwcW1R?=
 =?utf-8?B?Sisydm5LTDVRei9XZDk3eW9NVUNHMTBkZEZ0eVlSa28wQ1BIZ204Z2VNa1B0?=
 =?utf-8?B?R3VEdXNZcGtlam90TENia3RnTXVSS2xCY3pkN3JaN3J1aWxOa3lTczB3SHJY?=
 =?utf-8?B?MHk2M3grL2Q3MFArd3dlYVdzSkZ4cG1ZcVVONmJnYjRBYWMrQUNOZmpvYzRn?=
 =?utf-8?B?MTJxNWsveU1JNGxWVzkzZVZXdWE4QTRGNkxjK1VkT2ZLTE1QdXZMd0sxb0dh?=
 =?utf-8?B?Y2tRdFVqQXFTRUp1MTE1U2lEZUJRQlQzek5EbE02cjFkcUpyT0tYV1FWc3Jr?=
 =?utf-8?B?c2NZMU1nQ29QTjJLNzFrazh3NlM0ZTNDaGl3WGFLSHlibnM1R0ZKZDhqUU8z?=
 =?utf-8?B?d1RwR3BNbnZxTWVsdkFkV2ozajdyUVA1L2lkZWdvM0FYYUVMVFVHaFlYRGJT?=
 =?utf-8?B?WDZUcGJ4VVFKcjZ5ajhtVHp6aGRnNk1LRjM2L1FLbCt5cXRvQTN0WVBnVFZT?=
 =?utf-8?B?R3BzdTUwallicVJpNlRPR2lzVHVJbHYrRXZrcElXVU9MaDNOOXZNV3FIVnRw?=
 =?utf-8?B?Unh1Z014ckJjcXlQR0d4WHpBTGhMeUxVTTY3dDREK2d5TnplTDdnNFVQZ01W?=
 =?utf-8?B?d2l1TTRseURiQnZLVzFXcTJlaXZ1RnlDTWo1MjRLUE1tblV3QVV2QWtJaHln?=
 =?utf-8?B?UElKSStzN3RFRnVDb2VlSjIvc0pzMEFIOFdPY2p0OEdsQlNDaVZSdERBNXZ6?=
 =?utf-8?B?NlE4S2VoOHBEdiswczRuQUZRMmI4SStBMGtrTEFSbS81M0RsVVJRU051eHd4?=
 =?utf-8?B?UUFQck13Z0VrRi9KK3V1bTUxUW5XaGNOcDYvbEl1QTBsNjhLM0JBWTBoQ2tO?=
 =?utf-8?B?WHNlczU3KzBqcURnYWYyQ2M3NUxaTVh3NjFkTm1UMmZVRlh3bmdCc3VJK1Jq?=
 =?utf-8?B?WnQ1L21icytGbUJ5UjFmajZ3ejBXQ25Cay9jZUJpT283aGJYL1VoNTRSa2lN?=
 =?utf-8?B?dENha3UzUm5XU1BIMW1oN2tIcGV1NEdBRzRRaU1GSTQrQVBTMmMwQ3hBY0N0?=
 =?utf-8?B?b0ZndXNDZEJENmZJTFZmWjdaemQ3MzFjQVM4T3FUb0ZlN3g5cHJVbHVocXlI?=
 =?utf-8?B?NlZZdGhEdlRsZmNMSjhxMHlCN0c2S29Odmd1N2MwT1laTDJqR00wNFRyVUd3?=
 =?utf-8?B?ajRBOUhhTmFMbGZ1eGZzenpYTzhqdVVtMDNXWE1SWkw5ZGxtSVBDbXg3b0Y5?=
 =?utf-8?Q?zLRf5o/PhQRFIm67NEHlaOLpY?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e1852273-51d1-4a5c-dc77-08dbaf06a67e
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2023 18:25:30.2883 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KXhxSniFKQPFI96SG+BqSfS2YclGDIi+RWW+pi7BAaqgthTqkR2k6kmtUw9hAK4/u3NIXgXVkyfDRHeYIrwfDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5383
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694024749; x=1725560749;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dacZq68JXULbYQsjPzlxK8RkmkAQKyQYp2bFiOXqDDg=;
 b=Ycs6lH627+K5fYofg8vycbuCj43UROeJl82TmGAV6bATgl6sESB6lxFK
 zusGfwE8Co/jKrynCesnLKAiB37mQjuJVsx3fFEVyIlhbAOUFVIx5bKTV
 omTbrLWta7rRVJC2d7zQ2mAl77Chla/g+DN3grtxPJTLQ5Grblx9629Rk
 Z+8J5CMmNu/EqteZm7JaROHXlQMNmLDzzN7+ne5Yh9tfZbMgo1yRHWfxG
 gwLuBjcLvoJ2ztYfzRn+dOuHuE2OWcy53vvD7qnGxpfi62IghzSUP04Nj
 J7OpbJgkeUvB1+2NGEgyo8mQVFo5LVpGssP1Tyrrv2Ojm895dqnhW9vF4
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ycs6lH62
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 3/4] ice: Fix VLAN and CRC
 strip co-existence
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDIwMjMtMDktMDUgMjI6MDksIFBhdWwgTWVuemVsIHdyb3RlOgo+IERlYXIgQWhtZWQsIGRl
YXIgSGFpeXVlLAo+Cj4KPiBUaGFuayB5b3UgZm9yIHRoZSBwYXRjaC4gTWF5YmUgcmV3b3JkIHRo
ZSBjb21taXQgbWVzc2FnZSBzdW1tYXJ5IHRvOgo+Cj4gaWNlOiBDaGVjayBDUkMgc3RyaXAgcmVx
dWlyZW1lbnQgZm9yIFZMQU4gc3RyaXAKPgo+IEFtIDA1LjA5LjIzIHVtIDIwOjUwIHNjaHJpZWIg
QWhtZWQgWmFraToKPj4gRnJvbTogSGFpeXVlIFdhbmcgPGhhaXl1ZS53YW5nQGludGVsLmNvbT4K
Pj4KPj4gV2hlbiBWTEFOIHN0cmlwIGlzIGVuYWJsZWQsIHRoZSBDUkMgc3RyaXAgc2hvdWxkIG5v
dCBiZSBhbGxvd2VkIHRvIGJlCj4KPiBtdXN0IG5vdCBiZSBkaXNhYmxlZAo+Cj4gb3I6Cj4KPiBW
TEFOIHN0cmlwIHJlcXVpcmVzIENSQyBzdHJpcCBhY2NvcmRpbmcgdG8gZGF0YXNoZWV0IOKApi4K
Pgo+PiBkaXNhYmxlZC4gQW5kIHdoZW4gQ1JDIHN0cmlwIGlzIGRpc2FibGVkLCB0aGUgVkxBTiBz
dHJpcCBzaG91bGQgbm90IGJlCj4+IGFsbG93ZWQgdG8gYmUgZW5hYmxlZC4KPj4KPj4gSXQgbmVl
ZHMgdG8gY2hlY2sgQ1JDIHN0cmlwIGRpc2FibGUgc2V0dGluZyBwYXJhbWV0ZXIgZmlyc3RseSBi
ZWZvcmUKPj4gY29uZmlndXJpbmcgdGhlIFJ4L1R4IHF1ZXVlcywgb3RoZXJ3aXNlLCBpbiBjdXJy
ZW50IGVycm9yIGhhbmRsaW5nLAo+PiB0aGUgYWxyZWFkeSBzZXQgVHggcXVldWUgY29udGV4dCBk
b2Vzbid0IHJvbGxiYWNrIGNvcnJlY3RseSwgaXQgd2lsbAo+Cj4gVGhlIHZlcmIgcm9sbCBiYWNr
IGlzIHNwZWxsZWQgd2l0aCBzcGFjZSAoc2ltcGxlIHBhc3QgaXMgcm9sbGVkIGJhY2spLgo+Cj4+
CjwuLj4KPj4KPj4gwqAgKy8qKgo+PiArICogaWNlX3ZzaV9pc19yeHFfY3JjX3N0cmlwX2RpcyAt
IGNoZWNrIGlmIFJ4IHF1ZXVlIENSQyBzdHJpcCBpcyAKPj4gZGlzYWJsZWQgb3Igbm90Cj4+ICsg
KiBAdnNpOiBwb2ludGVyIHRvIHRoZSBWRiBWU0kgaW5mbwo+PiArICovCj4+ICtzdGF0aWMgYm9v
bCBpY2VfdnNpX2lzX3J4cV9jcmNfc3RyaXBfZGlzKHN0cnVjdCBpY2VfdnNpICp2c2kpCj4+ICt7
Cj4+ICvCoMKgwqAgdTE2IGk7Cj4KPiBQbGVhc2UgdXNlIHRoZSBub24tZml4ZWQgbGVuZ3RoIHR5
cGUgYHVuc2lnbmVkIGludGAgWzFdLgo+Cj4+ICsKPj4gK8KgwqDCoCBpY2VfZm9yX2VhY2hfYWxs
b2NfcnhxKHZzaSwgaSkKPj4gK8KgwqDCoMKgwqDCoMKgIGlmICh2c2ktPnJ4X3JpbmdzW2ldLT5m
bGFncyAmIElDRV9SWF9GTEFHU19DUkNfU1RSSVBfRElTKQo+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCByZXR1cm4gdHJ1ZTsKPC4uPgo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB2Zi0+dmxh
bl9zdHJpcF9lbmEgJj0gfklDRV9PVVRFUl9WTEFOX1NUUklQX0VOQTsKPj4gwqDCoMKgwqDCoMKg
wqDCoMKgIH0KPj4gwqDCoMKgwqDCoCB9Cj4+IMKgIEBAIC0zNTUxLDYgKzM1OTQsOSBAQCBzdGF0
aWMgaW50IAo+PiBpY2VfdmNfZGlzX3ZsYW5fc3RyaXBwaW5nX3YyX21zZyhzdHJ1Y3QgaWNlX3Zm
ICp2ZiwgdTggKm1zZykKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGdvdG8gb3V0Owo+PiDCoMKgwqDC
oMKgIH0KPj4gwqAgK8KgwqDCoCBpZiAoZXRoZXJ0eXBlX3NldHRpbmcpCj4+ICvCoMKgwqDCoMKg
wqDCoCB2Zi0+dmxhbl9zdHJpcF9lbmEgJj0gfklDRV9JTk5FUl9WTEFOX1NUUklQX0VOQTsKPj4g
Kwo+PiDCoCBvdXQ6Cj4+IMKgwqDCoMKgwqAgcmV0dXJuIGljZV92Y19zZW5kX21zZ190b192Zih2
ZiwgCj4+IFZJUlRDSE5MX09QX0RJU0FCTEVfVkxBTl9TVFJJUFBJTkdfVjIsCj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHZfcmV0LCBOVUxMLCAwKTsKPgo+
IFJldmlld2VkLWJ5OiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPgo+Cj4KPiBL
aW5kIHJlZ2FyZHMsCj4KPiBQYXVsCj4KPgo+IFsxXTogCj4gaHR0cHM6Ly93ZWIuYXJjaGl2ZS5v
cmcvd2ViLyovaHR0cHM6Ly9ub3RhYnMub3JnL2NvZGluZy9zbWFsbEludHNCaWdQZW5hbHR5Lmh0
bQoKClRoYW5rcyBmb3IgdGhlIHJldmlldy4gVGhpcyBhbmQgeW91ciBvdGhlciBjb21tZW50cyB3
aWxsIGJlIGluY2x1ZGVkIGluIHY3LgoKQWhtZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
