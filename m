Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A4C5E6CB2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Sep 2022 22:08:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4AF7E4009E;
	Thu, 22 Sep 2022 20:08:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4AF7E4009E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663877288;
	bh=vC9L27EDJ3yx0hhiIs8jgtRoE3GcI4SFvpP2TDnAUIA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=f2Lt1sojSflBPjomfsSmAwphLBxsA+vgne1DP/872VUwKxeHcUONOnG+VzfVgAnAC
	 zh6Zp3nsessOFpOr9Bo8eb8IZdO5PRkH4PaauJCYs05SalkkBsAquWd+yXbFTBRkJl
	 n/mr+rGbkonbDsrtKqEd1fT5+5hAiiiLALEP7yznB10qDGn0TrirHzwjxumYiofurO
	 NbP1ce//tdEcGYDUsdBFueG2HeKobVwfbWtHq8JQPGJ9oUKc++y8VSdQghK9QloFcr
	 VcUkx3+gH6kaZsL56YNYVz9qbud3Pk6k8CmwZgLmNxBwbTj8YSi2w+6wHuxkuowOhM
	 5w4VhEKZ/GrQw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AEc5Iq1oVPRQ; Thu, 22 Sep 2022 20:08:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B8BAD41578;
	Thu, 22 Sep 2022 20:08:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B8BAD41578
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2672B1BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 20:08:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F3A1081BB4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 20:08:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3A1081BB4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZeV5avZ9HmMo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 20:07:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C398181770
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C398181770
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 20:07:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="280786795"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="280786795"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 13:07:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="865018984"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 22 Sep 2022 13:07:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 13:07:28 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 13:07:28 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 22 Sep 2022 13:07:28 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 22 Sep 2022 13:07:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LnVsO/wwHshWzQOX/iJUTjQFdHpRCe8QMEldZg07S+jtVtMbSVZkvQs3tJknIWBvLZcK2GJ/gWn+Faaq/iOnm+grgMVLt0TuTG8//4WOLHTs/5vE/FY7Gch4TEt+/g69I8BuYM7A01Loc9c6uES7uhR4L3uIDtXmQXt8s4fd5CPRWsFo8+oKvt78fAcCWPVm0cjkPMUCFW5XesletlxCMZzrOo3FaSS5ay4rRIx8eRNaIRQyi/ehHJkNMM45xbSCRb+p9n7hYlkwt7l/XisMKhdX59vmMQh0t4PlC3IhJC2WTSP2w59dUUg/suWQer3cr0EO//wq9v18l/F8ZUaBmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=68MWHITrm4Jn6U8XFWdW8K/4mQFdALH7xAiQ7zw0dl4=;
 b=ba0e1G3wEQOCFUIkq7LfD2DwWDfZtlszErROoWbbvx5hA8Nk7SutBP+ChwAFhtCk2+ivnywbEaNLsxSy0jIIj0EFFZ5HLrMypoN+T0n3xcVw0mJIIP771l/sgj+g687809rLfoVLkpxhdc0ukIjb50UKnbNCbFA80sNEvRD93pBxh9uqo9ID1bGhsQ9IxPVO1LGDz5m1S7hkXnWDkpnohYvzz6Pzhh5YsX9P4faAUjvtog+BU11bPZ7sB7Wyq9V1hXQewfrBlBrfhije1mvmWidqGWPr3xP+DGAeysoRf6Bo00elmCu7w6oC4nVP6XaH+0EtLlgOH1PzfXJUrsrOBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4764.namprd11.prod.outlook.com (2603:10b6:303:5a::16)
 by CH0PR11MB5348.namprd11.prod.outlook.com (2603:10b6:610:bb::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.18; Thu, 22 Sep
 2022 20:07:26 +0000
Received: from MW3PR11MB4764.namprd11.prod.outlook.com
 ([fe80::e82e:c89f:d355:5101]) by MW3PR11MB4764.namprd11.prod.outlook.com
 ([fe80::e82e:c89f:d355:5101%6]) with mapi id 15.20.5654.018; Thu, 22 Sep 2022
 20:07:26 +0000
Message-ID: <d4e33ca3-92e5-ba30-f103-09d028526ea2@intel.com>
Date: Thu, 22 Sep 2022 13:07:22 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>, Alexander Duyck
 <alexander.duyck@gmail.com>, Jakub Kicinski <kuba@kernel.org>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Netdev
 <netdev@vger.kernel.org>
References: <20220629085836.18042-1-fmdefrancesco@gmail.com>
 <2254584.ElGaqSPkdT@opensuse>
 <CAKgT0UfThk3MLcE38wQu5+2Qy7Ld2px-2WJgnD+2xbDsA8iEEw@mail.gmail.com>
 <2834855.e9J7NaK4W3@opensuse>
From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
In-Reply-To: <2834855.e9J7NaK4W3@opensuse>
X-ClientProxiedBy: SJ0PR05CA0015.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::20) To MW3PR11MB4764.namprd11.prod.outlook.com
 (2603:10b6:303:5a::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4764:EE_|CH0PR11MB5348:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a66ed2f-639c-43ea-20b9-08da9cd61189
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gaHtvrdBLAGl5YAVxmpgeGVBVpcvENAH/5MZu6J3ZSE6jq5g1p2HTIox/n12Gn0w4+/25/7xpbX1q+vPly2bHRIWCov+Lud2me6Lus7X/i+a3DN4MVGv+FG+bjukkW34rx1D0Z0XbQdgyMpbZbTXzFvRhryu80KXPLHuGOQGB/7YNGf2AYb+l26J2Tp0wN/j8OAiawHo/h9rZUhP97ZRLcswNheeAtTYXuHm01wmVmvfieKReGTvuI6q7AZxUMLHKKync7T8eRLvFArP4XqPZYOSIvdXl628vUZhh3JZM8g1S6pogzbP+IMVzUMgkBi19wM+N77Y8/Hbnen27r+i+iupFSJYZRzS4OooYKobUV7RB5Kdsau8+tT/Ih9/78nyQu5LYziIh7B2l/Q7J/+a1cLFLtA+MYRKFIX4SJ/Axk8L3KxyttglosXl7S6EnDM/4KCBHUSqXc0/hvizUqtOM4ujS3nio4cFSwvBQDY6EEgdShg6BEQUlgafmh2CsgFC0deqZcPem4uyZHbQvmz05C8ZY6IDhxiLayKEtJ21uO7vU9HKxHaxYr/E844le7oXRNdKz5iWUBaXrROoIP9MCP6ECpnQuxXoXPQr5v9YiusmMEjwR5+7KTmvADD+EDu9sX4RDCjdR4iyDoAa8E23X7XsLp9vEfSTG/T5vsHuKRb0FGmhHbMdxRm/f5TQmKKVYdbeS2b6jsiGoTi9qbBaO7KexnpfdHFsXS3N1urTjq48g9Lc9i3SdiXRd9MR7eVKaVQu4pzJanyZnH8uIpV7xVQ9p2WA3Cb2ipRnxWpWuNUy3Xpur4QTeqUxZuyjnIyyEZ0nWROGkzbwHw7zCVYH25/YJ7bYDllti6SopZUruaSyejaTEclsllHZJt4XEioi
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4764.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(366004)(396003)(346002)(136003)(451199015)(31686004)(2906002)(36756003)(8676002)(4326008)(31696002)(82960400001)(38100700002)(83380400001)(186003)(7416002)(44832011)(8936002)(66476007)(66946007)(66556008)(316002)(54906003)(110136005)(86362001)(5660300002)(6486002)(2616005)(478600001)(26005)(6512007)(6666004)(107886003)(966005)(41300700001)(6506007)(53546011)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RmhNaUczRVpZZFAyWnNRbmJpa1U4TC9hUGhqeW91R1hRMFovelBVcEpxUTFn?=
 =?utf-8?B?cEdUMHFKSkNQY204QXpTVXdMUXl6dldzTk5TWW9mMFFJRGZjODduYUlsQm1v?=
 =?utf-8?B?V3BEQXAvTzFPUUlBcUpGdTlkcnA2MFdIMmt6OU1vMzU4OUhtMGFaSUhqUHlv?=
 =?utf-8?B?VnRVSGN1WEdjRVJZQWY2akZ3ZndjejRRTWVLZkY0OWwvcExBNm1YQ042RURL?=
 =?utf-8?B?TDM3RTdtdkZFZUFLaVVuNVZ6Qkw4cks2aUVBSkFjNlpzbmY3ZVRMSVZIWVVw?=
 =?utf-8?B?N2dIckdlYzRvdTduRWlPd3k1eGtwNDBEQTh1U2VzYmFQM1k1YUxCTkxQeGhk?=
 =?utf-8?B?eXBRaXFBRlRXZWNWQUR3ZXRkb2tqZDVtSXQwM2NxUGhKMHpWdFRVK0VoNHM1?=
 =?utf-8?B?a3l2WXlNcEM3SXJXVXcxaXc1d2M1NXRTbjBXVjFCK0ZSb3BsWG1WTXY3TGhE?=
 =?utf-8?B?cGU1d2xMVjNldGg1c1dwV0FHM1VSSHU2VW5kNGlvZVlMdEVMVHhEVURNWlp6?=
 =?utf-8?B?NkpGTUVubmJsUVk1VzNlZG9lb3ppd2oxQ3N2YmJDRnFwWnh5RW95T3FnQmJV?=
 =?utf-8?B?UHhSR1lBdy9uTlkxYzBSY2t3SElCMmc4WmNJNTZadkYzaDJDWGYvM2JSMnR0?=
 =?utf-8?B?Z01CSEM0V2phUWZDVVcxLytiak02ZS9jWWtKcE5pYXQ3NnN3OWFXTnd2TXoy?=
 =?utf-8?B?bmwydzBrSG92T2NhMGJIeU9lRlJQdWdWenRiT0ZSYmFaSDVETVFjeXV4UHFv?=
 =?utf-8?B?STN5aU9VZ1locEtwR1JvbTNBTUg3VnZnZVZrNjU3YTdrSy9hUWJUZCszRHI4?=
 =?utf-8?B?Q1EySE8xN1hOQmJBM1BpRFUxdGVkWFlxUmgyQXhCTDVLNHZROEIwbmEvajNr?=
 =?utf-8?B?YmZNOWt3dDduSHRvTmlsM2dGR3krK2ZvMXNVNFJza0dYMWxlVjZsOVQ2aE5x?=
 =?utf-8?B?V29jQmtFYXlaZW1xSUczOVVuR2ptN0hhalRsM1E2d2JWMDhmbmg0cmNNQVE5?=
 =?utf-8?B?QStMNnZONkQ1a21rcmplWldpT3UxenFMMXdIRU9YRUhXWEVRNW5EOVVjL0hT?=
 =?utf-8?B?TXR4VjJaU1hPK05FSkFPTTBMT2U2WWhKL2tjRGhibU9NRHhXc0V6SllMbTlC?=
 =?utf-8?B?QlBXSTlwNitZNWM3WnlaRHBUTWJ2NVJIRzJOSGh6Y3lGTzBaampkWjhUM0dK?=
 =?utf-8?B?WUZXZVZjZGZLWHpKbHdvUXVieVZkVzBsR2NyWU8ySHZ0cStpdFRlZklQL0Rr?=
 =?utf-8?B?WUVKN3VtWG4vNk12WTltdU1sN0pJTXJDU1NZV0xQbit3c3h1bWdhaW54S1Uv?=
 =?utf-8?B?RzR5clBIdmhjQWxwSndnZWcyUFp5ckY1RGtreFRqQU1HaVNSUFNBeUNHdjFi?=
 =?utf-8?B?L2J5WDFnTWVwNVg0c0hpd1hWT3lVK2NGdFprMzhjUFVIV0pIWHRSR25xT1FF?=
 =?utf-8?B?bWZ4NzdJTXJjTFc1UzRQUXYyZFcxb3N2MmhRdWdEQlI4WGlqcG5oYTR0Y0VB?=
 =?utf-8?B?UnJrb0xnZ2MrV2F6aFVPcEJRampncCtpQzVhWTNVUE5TZ2xrT2F3VUFjb29C?=
 =?utf-8?B?bDVCQUFSS3VYZE92c0pHemFud1EvNTBLcjdKU2hxUWNsN3BCTVVONHFsSVgw?=
 =?utf-8?B?Wk5tT3JRY0lYOWdoaDQvRG5VNHhIc3lrZGdwNEhiY2hPOWdnT05COUx4T1U1?=
 =?utf-8?B?aCtvNXMveHJqNjVRT1lGWTlwakkrYWdnUEdYTkVwS3BxeUJJTU01VHNCNnAv?=
 =?utf-8?B?SlYyVnkwLzQ1M0xaUlV5aHVUNWQzR00xOFlQNFQ3K0I0YnV1QXVlbVhzWGhD?=
 =?utf-8?B?MVEzK05BMndMcUZKTUlYamh2MWlVUmRWRGgxUmt0d1NSa2FkbE52bWlLdzhW?=
 =?utf-8?B?dmZDRjBvcitaVzFKckc0TEpwS3BXM2xod2xrd1RMd0lmY0pER0dVSFYxRVJX?=
 =?utf-8?B?RmtaM3h4ckd2YzNRWUdDNUNSTUVUam92eU9QQURFbDVha0NLVXU2UjA0UmJs?=
 =?utf-8?B?N0xmUk40SXBPSjNKREJ3eGwyZmQzWHMrbWhDNDNrbGViS0lGUG9uRFpGejF1?=
 =?utf-8?B?ZW5sdGxjMFJTa1JmdlQ3ZDlSbmtsT2UyTGNIYUtKNDJxZmp4YU1SN2ZCUHNu?=
 =?utf-8?B?VFB2WUY3UndaYkd0Tjl6cXRWR1Uzbk55SXhvTUl1b0lmdUhNSk4vdkNQQXk5?=
 =?utf-8?Q?p5wl5j1VOze0PEmUjfmzai0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a66ed2f-639c-43ea-20b9-08da9cd61189
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4764.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2022 20:07:25.8886 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bY48JKjcm4t+W6WzZR+ZAez42ND5WLtUi+A40bEzlD1GYWPjdWwGUdpFSyb2khBmH1Z73nwNqoiQ2w3UNF67G4hm36iEb0aKjiof6k4Uj+uYSIQzAB2LxHZtLMcABozX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5348
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663877279; x=1695413279;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=U5GnEsZWXn7ptu7CNAt9Bd6335O8LBPub3wp7Gfjy4E=;
 b=B8ElvSgIU/Td8jWMF3mVxFXEj96f7aOh1LqqeksQA2OHuKZtPbOCB4s7
 SLdxhpsGf/P1kSwaekaNCRv9ysMRmKQZzk5xresGxx8yGESnfxxvLc2L+
 qxZtHdBdf5pkkVa+fCk0kEUdEswcLR9VAPv36Y/fEEtS5qi8iw3Q9eXaQ
 2t//UCyO8W78CBHCV/5PVh46bH61OJ6s4Pd4YYrmsuyi649DLHD7wNNXJ
 zsRDzlUJ4c8AM/+NnpMRxYDxaepWshgcPWtJhXVTipRMXVHyb+VdbnKBb
 iwwkFwE1+BYHNUuzff7a1Bxg/bhF4RZmva5Q5zKF670U4klaVeCFr9wdh
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=B8ElvSgI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Use kmap_local_page in
 ixgbe_check_lbtest_frame()
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, LKML <linux-kernel@vger.kernel.org>,
 Alexander Duyck <alexanderduyck@fb.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, bpf <bpf@vger.kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Ira Weiny <ira.weiny@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNy8xLzIwMjIgODozNiBBTSwgRmFiaW8gTS4gRGUgRnJhbmNlc2NvIHdyb3RlOgo+IE9uIGdp
b3ZlZMOsIDMwIGdpdWdubyAyMDIyIDIzOjU5OjIzIENFU1QgQWxleGFuZGVyIER1eWNrIHdyb3Rl
Ogo+PiBPbiBUaHUsIEp1biAzMCwgMjAyMiBhdCAxMToxOCBBTSBGYWJpbyBNLiBEZSBGcmFuY2Vz
Y28KPj4gPGZtZGVmcmFuY2VzY29AZ21haWwuY29tPiB3cm90ZToKPj4+Cj4+PiBPbiBnaW92ZWTD
rCAzMCBnaXVnbm8gMjAyMiAxODowOToxOCBDRVNUIEFsZXhhbmRlciBEdXljayB3cm90ZToKPj4+
PiBPbiBUaHUsIEp1biAzMCwgMjAyMiBhdCA4OjI1IEFNIEVyaWMgRHVtYXpldCA8ZWR1bWF6ZXRA
Z29vZ2xlLmNvbT4KPiB3cm90ZToKPj4+Pj4KPj4+Pj4gT24gVGh1LCBKdW4gMzAsIDIwMjIgYXQg
NToxNyBQTSBBbGV4YW5kZXIgRHV5Y2sKPj4+Pj4gPGFsZXhhbmRlci5kdXlja0BnbWFpbC5jb20+
IHdyb3RlOgo+Pj4+Pj4KPj4+Pj4+IE9uIFRodSwgSnVuIDMwLCAyMDIyIGF0IDM6MTAgQU0gTWFj
aWVqIEZpamFsa293c2tpCj4+Pj4+PiA8bWFjaWVqLmZpamFsa293c2tpQGludGVsLmNvbT4gd3Jv
dGU6Cj4+Pj4+Pj4KPj4+Pj4+PiBPbiBXZWQsIEp1biAyOSwgMjAyMiBhdCAxMDo1ODozNkFNICsw
MjAwLCBGYWJpbyBNLiBEZSBGcmFuY2VzY28KPj4+IHdyb3RlOgo+Pj4+Pj4+PiBUaGUgdXNlIG9m
IGttYXAoKSBpcyBiZWluZyBkZXByZWNhdGVkIGluIGZhdm9yIG9mCj4+PiBrbWFwX2xvY2FsX3Bh
Z2UoKS4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gV2l0aCBrbWFwX2xvY2FsX3BhZ2UoKSwgdGhlIG1hcHBp
bmcgaXMgcGVyIHRocmVhZCwgQ1BVIGxvY2FsCj4gYW5kCj4+PiBub3QKPj4+Pj4+Pj4gZ2xvYmFs
bHkgdmlzaWJsZS4gRnVydGhlcm1vcmUsIHRoZSBtYXBwaW5nIGNhbiBiZSBhY3F1aXJlZAo+IGZy
b20KPj4+IGFueSBjb250ZXh0Cj4+Pj4+Pj4+IChpbmNsdWRpbmcgaW50ZXJydXB0cykuCj4+Pj4+
Pj4+Cj4+Pj4+Pj4+IFRoZXJlZm9yZSwgdXNlIGttYXBfbG9jYWxfcGFnZSgpIGluCj4gaXhnYmVf
Y2hlY2tfbGJ0ZXN0X2ZyYW1lKCkKPj4+IGJlY2F1c2UKPj4+Pj4+Pj4gdGhpcyBtYXBwaW5nIGlz
IHBlciB0aHJlYWQsIENQVSBsb2NhbCwgYW5kIG5vdCBnbG9iYWxseQo+IHZpc2libGUuCj4+Pj4+
Pj4KPj4+Pj4+PiBIaSwKPj4+Pj4+Pgo+Pj4+Pj4+IEknZCBsaWtlIHRvIGFzayB3aHkga21hcCB3
YXMgdGhlcmUgaW4gdGhlIGZpcnN0IHBsYWNlIGFuZCBub3QKPiBwbGFpbgo+Pj4+Pj4+IHBhZ2Vf
YWRkcmVzcygpID8KPj4+Pj4+Pgo+Pj4+Pj4+IEFsZXg/Cj4+Pj4+Pgo+Pj4+Pj4gVGhlIHBhZ2Vf
YWRkcmVzcyBmdW5jdGlvbiBvbmx5IHdvcmtzIG9uIGFyY2hpdGVjdHVyZXMgdGhhdCBoYXZlCj4+
PiBhY2Nlc3MKPj4+Pj4+IHRvIGFsbCBvZiBwaHlzaWNhbCBtZW1vcnkgdmlhIHZpcnR1YWwgbWVt
b3J5IGFkZHJlc3Nlcy4gVGhlIGttYXAKPj4+Pj4+IGZ1bmN0aW9uIGlzIG1lYW50IHRvIHRha2Ug
Y2FyZSBvZiBoaWdobWVtIHdoaWNoIHdpbGwgbmVlZCB0byBiZQo+Pj4gbWFwcGVkCj4+Pj4+PiBi
ZWZvcmUgaXQgY2FuIGJlIGFjY2Vzc2VkLgo+Pj4+Pj4KPj4+Pj4+IEZvciBub24taGlnaG1lbSBw
YWdlcyBrbWFwIGp1c3QgY2FsbHMgdGhlIHBhZ2VfYWRkcmVzcyBmdW5jdGlvbi4KPj4+Pj4+IGh0
dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L2xhdGVzdC9zb3VyY2UvaW5jbHVkZS9saW51
eC8KPiBoaWdobWVtLWludGVybmFsLmgjTDQwCj4+Pj4+Cj4+Pj4+Cj4+Pj4+IFN1cmUsIGJ1dCBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmMgaXMKPiBhbGxvY2F0
aW5nCj4+Pj4+IHBhZ2VzIHRoYXQgYXJlIG5vdCBoaWdobWVtID8KPj4+Pj4KPj4+Pj4gVGhpcyBr
bWFwKCkgZG9lcyBub3Qgc2VlbSBuZWVkZWQuCj4+Pj4KPj4+PiBHb29kIHBvaW50LiBTbyBvZGRz
IGFyZSBwYWdlX2FkZHJlc3MgaXMgZmluZSB0byB1c2UuIEFjdHVhbGx5IHRoZXJlCj4gaXMKPj4+
PiBhIG5vdGUgdG8gdGhhdCBlZmZlY3QgaW4gaXhnYmVfcHVsbF90YWlsLgo+Pj4+Cj4+Pj4gQXMg
c3VjaCB3ZSBjb3VsZCBwcm9iYWJseSBnbyB0aHJvdWdoIGFuZCB1cGRhdGUgaWdiLCBhbmQgc2V2
ZXJhbCBvZgo+Pj4+IHRoZSBvdGhlciBJbnRlbCBkcml2ZXJzIGFzIHdlbGwuCj4+Pj4KPj4+PiAt
IEFsZXgKPj4+Pgo+Pj4gSSBkb24ndCBrbm93IHRoaXMgY29kZSwgaG93ZXZlciBJIGtub3cga21h
cCooKS4KPj4+Cj4+PiBJIGFzc3VtZWQgdGhhdCwgaWYgYXV0aG9yIHVzZWQga21hcCgpLCB0aGVy
ZSB3YXMgcG9zc2liaWxpdHkgdGhhdCB0aGUKPiBwYWdlCj4+PiBjYW1lIGZyb20gaGlnaG1lbS4K
Pj4+Cj4+PiBJbiB0aGF0IGNhc2Uga21hcF9sb2NhbF9wYWdlKCkgbG9va3MgY29ycmVjdCBoZXJl
Lgo+Pj4KPj4+IEhvd2V2ZXIsIG5vdyBJIHJlYWQgdGhhdCB0aGF0IHBhZ2UgX2Nhbm5vdF8gY29t
ZSBmcm9tIGhpZ2htZW0uCj4gVGhlcmVmb3JlLAo+Pj4gcGFnZV9hZGRyZXNzKCkgd291bGQgc3Vm
ZmljZS4KPj4+Cj4+PiBJZiB5b3UgYWxsIHdhbnQgSSBjYW4gcmVwbGFjZSBrbWFwKCkgLyBrdW5t
YXAoKSB3aXRoIGEgInBsYWluIgo+Pj4gcGFnZV9hZGRyZXNzKCkuIFBsZWFzZSBsZXQgbWUga25v
dy4KPj4+Cj4+PiBUaGFua3MsCj4+Pgo+Pj4gRmFiaW8KPj4KPj4gUmVwbGFjaW5nIGl0IHdpdGgg
anVzdCBwYWdlX2FkZHJlc3MoKSBzaG91bGQgYmUgZmluZS4gQmFjayB3aGVuIEkKPj4gd3JvdGUg
dGhlIGNvZGUgSSBkaWRuJ3QgcmVhbGl6ZSB0aGF0IEdGUF9BVE9NSUMgcGFnZXMgd2VyZW4ndAo+
PiBhbGxvY2F0ZWQgZnJvbSBoaWdobWVtIHNvIEkgc3VzcGVjdCBJIGp1c3QgdXNlZCBrbWFwIHNp
bmNlIGl0IHdhcyB0aGUKPj4gd2F5IHRvIGNvdmVyIGFsbCB0aGUgYmFzZXMuCj4+Cj4+IFRoYW5r
cywKPj4KPj4gLSBBbGV4Cj4+Cj4gCj4gT0ssIEknbSBhYm91dCB0byBwcmVwYXJlIGFub3RoZXIg
cGF0Y2ggd2l0aCBwYWdlX2FkZHJlc3MoKSAob2J2aW91c2x5LCB0aGlzCj4gc2hvdWxkIGJlIGRp
c2NhcmRlZCkuCj4gCj4gTGFzdCB0aGluZy4uLiBJcyB0aGF0IHBhZ2UgYWxsb2NhdGVkIHdpdGgg
ZG1hX3Bvb2xfYWxsb2MoKSBhdAo+IGl4Z2JlL2l4Z2JlX2Zjb2UuYzoxOTY/IFNvbWV3aGVyZSBl
bHNlPwo+IAo+IFRoYW5rcywKPiAKPiBGYWJpbwo+IAo+IFAuUy46IENhbiB5b3Ugc2F5IHNvbWV0
aGluZyBhYm91dCBob3cgcGFnZXMgYXJlIGFsbG9jYXRlZCBpbiBpbnRlbC9lMTAwMAo+IGFuZCBp
biBpbnRlbC9lMTAwMGU/IEkgc2VlIHRoYXQgdGhvc2UgZHJpdmVycyB1c2Uga21hcF9hdG9taWMo
KS4KCkZvbGxvd2luZyBGYWJpbydzIHBhdGNoZXMsIEkgbWFkZSBzaW1pbGFyIGNoYW5nZXMgZm9y
IGUxMDAwL2UxMDAwZSBhbmQgCnN1Ym1pdHRlZCB0aGVtIHRvIElXTCBbMV0uCgpZZXN0ZXJkYXks
IElyYSBXZWlueSBwb2ludGVkIG1lIHRvIHNvbWUgZmVlZGJhY2sgZnJvbSBEYXZlIEhhbnNlbiBv
biB0aGUgCnVzZSBvZiBwYWdlX2FkZHJlc3MoKSBbMl0uIE15IHVuZGVyc3RhbmRpbmcgb2YgdGhp
cyBmZWVkYmFjayBpcyB0aGF0IAppdCdzIHNhZmVyIHRvIHVzZSBrbWFwX2xvY2FsX3BhZ2UoKSBp
bnN0ZWFkIG9mIHBhZ2VfYWRkcmVzcygpLCBiZWNhdXNlIAp5b3UgZG9uJ3QgYWx3YXlzIGtub3cg
aG93IHRoZSB1bmRlcmx5aW5nIHBhZ2Ugd2FzIGFsbG9jYXRlZC4KClRoaXMgYXBwcm9hY2ggKG9m
IHVzaW5nIGttYXBfbG9jYWxfcGFnZSgpIGluc3RlYWQgb2YgcGFnZV9hZGRyZXNzKCkpIAptYWtl
cyBzZW5zZSB0byBtZS4gQW55IHJlYXNvbiBub3QgdG8gZ28gdGhpcyB3YXk/CgpbMV0KCmh0dHBz
Oi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcHJvamVjdC9pbnRlbC13aXJlZC1sYW4vcGF0Y2gvMjAy
MjA5MTkxODA5NDkuMzg4Nzg1LTEtYW5pcnVkaC52ZW5rYXRhcmFtYW5hbkBpbnRlbC5jb20vCgpo
dHRwczovL3BhdGNod29yay5vemxhYnMub3JnL3Byb2plY3QvaW50ZWwtd2lyZWQtbGFuL3BhdGNo
LzIwMjIwOTE5MTgwOTQ5LjM4ODc4NS0yLWFuaXJ1ZGgudmVua2F0YXJhbWFuYW5AaW50ZWwuY29t
LwoKWzJdIApodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzVkNjY3MjU4LWI1OGItM2QyOC0z
NjA5LWU3OTE0Yzk5YjMxYkBpbnRlbC5jb20vCgpBbmkKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50
ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
