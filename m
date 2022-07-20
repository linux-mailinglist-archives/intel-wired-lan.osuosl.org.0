Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A72CC57B8CE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jul 2022 16:49:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 090DE408BC;
	Wed, 20 Jul 2022 14:49:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 090DE408BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658328562;
	bh=4/aHkBziXwzD6P+r2idFT4axpJqtlh0azPVwQJr/ug0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=w/61iCFo+SmJD6JywB4NCpVh2xJCyZVOFu/STsdBkXwdmMoPoT2P+E+mX0WPzJ5Zo
	 9GV5IvUmKqbJrGDqjitOAfZerE64UbzfIUVHY2DT7CiDRU13EMxdcoBvfsv1bqkkz6
	 B/mWkevjK65ipPNwLLWyt6HLAH9Uut7t4dSbXQwdfjhv8PTfD0hzMpNMo2Bz2b+w0e
	 3avR3WSh/LcoOSSLT3/HDYBN8RMp9XVWYRzi0Uf993r7JRQpTsa3rizr9mryUOl0Ph
	 Q2mtjC2BNJ2ABVWbuRrg6BVRSJChEum3szfwe3CvDKFAxHVi6hEzecOzR1bJ3s6cqi
	 Sbm67AhucYzGA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w3Y9xKrAu9oF; Wed, 20 Jul 2022 14:49:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D99354032E;
	Wed, 20 Jul 2022 14:49:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D99354032E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D0E411BF5A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 14:49:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B74454032E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 14:49:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B74454032E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CL--mfCTWLDJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Jul 2022 14:49:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C36A8400AB
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C36A8400AB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 14:49:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="284354325"
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="284354325"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 07:49:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="656302390"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga008.fm.intel.com with ESMTP; 20 Jul 2022 07:49:12 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 20 Jul 2022 07:49:09 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 20 Jul 2022 07:49:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 20 Jul 2022 07:49:09 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 20 Jul 2022 07:49:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L324RBLK9ZlvU516gsKDxQwEtAvcpoWhrhdQUy/JvkJ5yJKQ4MOITh+3snf1zY+3p6MrFn+rhBKLVf9dCJdbsBH6H/p5V8X5v5HY+MXaI82fKV7RR9sWxboKG9esiefl1wlGZ+alW4JjAlOfFc/DPGf5pS79BWho7uioyGAbfiLEZLAa5qDHJE8KQsmpgbpBTGxaXgqmn8ahnfu+efWTphRAdGoumQp2PQNxowYQ0OYUOcyLZ6ppuVNMAlLA6xuaEY6F3hS8tMIxxpiL4RZQBQwoeqb93FmElB1fe4PKvwnb2DQhQMlfXt9BR84pRPCUGPioe1y5oH3p/dmGKfCfnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IfyrPhtBtwBymNVMDq53iKBjO9gX2QBhIwT46naB6wo=;
 b=OMOJ6KJTtXCfHSD2mbjDf36ZIBLgVY9B9BAQUPGcuo9TYysBOK/KF/qOSp/uJPacJNaB265hhW9gM4lbfjuYFAl55FO21lMXkm+xMrouNUjgekolWKWGWEqev1B12hlL19igY0Q8TuqDQtaeUWDMtHpMTWkniUcsEa7HREucwz8wJBHYr+zdLzDEFbv3K/BO26wtiS6X/LMI7t2tnJhVHRvtvOoe8ufQgWYBmCooswEaiPpW5vk/pWo/wGw5RbwEpT2KOlun6DRhh2fAZkQNuqjlQ16U1q6TKfO2lW3x3hBpGWRq9L4G7RsdAyzwCROKcWGJ556T67JQrFPeWDca7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5603.namprd11.prod.outlook.com (2603:10b6:5:35c::12)
 by MW4PR11MB6690.namprd11.prod.outlook.com (2603:10b6:303:1e8::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.12; Wed, 20 Jul
 2022 14:49:02 +0000
Received: from CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::5008:4f0:1078:7ba3]) by CO6PR11MB5603.namprd11.prod.outlook.com
 ([fe80::5008:4f0:1078:7ba3%9]) with mapi id 15.20.5438.023; Wed, 20 Jul 2022
 14:49:02 +0000
Message-ID: <8204d5fd-9f5b-1d32-4bf1-c13dbbfe478b@intel.com>
Date: Wed, 20 Jul 2022 16:48:56 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220704123252.2962020-1-michal.wilczynski@intel.com>
 <20220704123252.2962020-4-michal.wilczynski@intel.com>
 <5b566477-85d5-d319-a81b-4b7cb064f9d5@intel.com>
 <beb3878b-df7a-2925-9a88-39e806b9eade@intel.com>
 <4cc6a468-1ff9-a894-543a-7baa29500aa2@intel.com>
From: "Wilczynski, Michal" <michal.wilczynski@intel.com>
In-Reply-To: <4cc6a468-1ff9-a894-543a-7baa29500aa2@intel.com>
X-ClientProxiedBy: LO4P123CA0064.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:153::15) To CO6PR11MB5603.namprd11.prod.outlook.com
 (2603:10b6:5:35c::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: aac27765-44a8-4df0-c651-08da6a5efc59
X-MS-TrafficTypeDiagnostic: MW4PR11MB6690:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /PWc0uMqA8LmPLiyQRFjbBVHd7c7LlqjCuIw91eSR7SM1TUM4F+/hp+EZxrPmRwJoqbdqOPPiN14e9TamQAmb7L5/iOw0KNWBlUKZs/aT9cbUR10S7oJsNxsKFHgCXA3bya0aUIk3ddOrIf3I71O3lkHuCT6Ipy+CbdR7L4R+Bz32vieklnUbXBX5LfKrzX0VzL4PZn8qKL9/Kavxm/bw9ky1I6NKkcdMiKujebkh2EcptMU5GHfH/Z16ZhErH9w5m13TrAM+07APNQ0rkL2/6YyWchYGu7a9rncoSS/6kaxhl2IoWdjnuFna5/Y6cB50LNUenQkN3arKarE7+4keP2QO+vsBfhirvDg+2UaZWXznRIaXyRRdeUoMz0YODAivmD+FdfTK9Mqhf1RAiLBHAxPrLeDbca65+nfqAhJmQSng002ySKQtLqrbks8UgblSwtOCMoX/JyUNLwZ6I9MYSmtjkPQtWMfHgtXwj+1YVl8vx4XKTQCVJCbM6nvLvkZ90ewIAjBbQQhl7fB3jFGHb0oF9D2um8gWeo2CiFppkxRE3K6cTGL+AQMEdrvI8XsWyzg7aVGJkUxgwPPISi8x+xiKr9wY3CeJdMkXVPpzPDoT8tfZhV2jcnCwmDAtXngJWEn6Bqxa/voQLKpTrXrC8+weXLf2JdOR/3IaGk3CkH0LMgFEFuskWhedkRSW0M1OIFmA+pvlmXNuy0nLoeyS1WN8RVR120M5vBCC2UjRqRmofWHk7QsKOOVKrYv434EZj4FM10WW09m3S2j0NOcXnolqT4ksbncanazj57cmexDRZRkxc+UupopCYPyzvx7yDq5pouSGfy+4l4CVK8k2A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(376002)(346002)(39860400002)(136003)(366004)(86362001)(5660300002)(478600001)(6666004)(26005)(66476007)(6512007)(8936002)(41300700001)(2906002)(31696002)(2616005)(6486002)(82960400001)(6506007)(83380400001)(66556008)(186003)(53546011)(38100700002)(31686004)(316002)(8676002)(36756003)(66946007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z1A5cVErUkowZEc3OXp2dTV6aHJqY25IZ3NCbUdMeUd2UExJRGl4aTBaMGJa?=
 =?utf-8?B?R2RUdEZuK1BmWWhOSy81ZFM1cDMwdXdHUC9uakYvV3ZjUjRVR0c4V0hMNFJV?=
 =?utf-8?B?UjczUFlXK01FSlo1NVF4a1dlemxDdDVCbDJZbTZIbXo1dS9WejRHZnI1RXhO?=
 =?utf-8?B?dzQ3V1BsYk5MSkkyNUllVWlpWG0zNkt4bm1SbWh2QUdFQm1rNzBkVnY2WGVY?=
 =?utf-8?B?cjVjU0VMZGRtb1RTSE9NVnRtNVFCMWIxVTVwbXdHYjdUWGdXWVZCaGttTXFx?=
 =?utf-8?B?bzRGQjBZaVk4NXNwdEhBUTFTcVRvczFNMG9sZ0xuZk5BN3pPZnhLTGFvRnla?=
 =?utf-8?B?OGNOY2txYXZIREp1a3kvVHI4OXR2dytpSGd6bmlQcnl4NzRXWUdKYk94dVI0?=
 =?utf-8?B?anIrY0RSRTRpWXU2VDdkMUVOUUtqVTBmSVdUelYraDBUaWJ2SS9iQ0lUMzFZ?=
 =?utf-8?B?VzAzRll5SHJzZHlhRkVFbDB4WGFnQ3Uyem4vRUVGcU9tak9QTnkxbHc0c2x0?=
 =?utf-8?B?STk1VW9YTTUvYWVzdFNHYndzZ2I2d3ZSWmYvZVBXSCtobWRpeGx3M3JrNXNH?=
 =?utf-8?B?QklnTDJzQXpYSzN2U0JLam5jajJJY3ZPT3BlRHFMR0h3cjZRUTIvTUswaEds?=
 =?utf-8?B?eTJSdVh1MkpEeW4zSmVlbVo4bzVYRncyUVBacUo4U1JPUHJYS1NIdVA3R0lm?=
 =?utf-8?B?dEtxdTVCN1V2d3lYWDhRbEtVczhmR0dQOFlJanIxVmpQc0N1dTh4bm5ITUx1?=
 =?utf-8?B?MjZ5OGpPaHdlZVFVQ3ZvWGtFdU40aTliNWZzemVPTWFTS0ljMzlIc04zcXR6?=
 =?utf-8?B?dHdjdVF5cTVEMVMzRWZrd0ZhYUFpRElmU3JBbDZVTWRlcXZXU2JyK0NPNTJs?=
 =?utf-8?B?eFdmZ0VkVkdYOEc3WExWak5GTWV0blB3dGZpN244a3NhdnJoSDhjSXZyczVW?=
 =?utf-8?B?QTdST2ZBbncvV1dQU0NNQkJLK2hoUW9HdHZjakRpdkJxZmFIVmJUdkNFRFpL?=
 =?utf-8?B?L1VRbklvbnRnVVpYZktmYWV5MHlETWNBTFk5U0JEUWR2SVdZTEtyeng4aUww?=
 =?utf-8?B?VHdUV3BXRm9lL1NUZHRKbjVWcDQ4Uld6NmVjRUwzdEx2V08zZjRuQkFtWEFI?=
 =?utf-8?B?UjNNOGJSdGduRHd6Wk9EdFpwRFFlMURaSHhWczYrWUI2UFF0ekdra3BDbFRK?=
 =?utf-8?B?QnU2WHBLV2c3ZHRiRGFKblJzb09pSUNOdFlDM2JockxudmNQUi9ITXBITEhF?=
 =?utf-8?B?ZjJ5bHlIMzNQTjcxKzNERGxyL29Ebk11dWl0WVVGeXFTM0twaWIvVmprQytO?=
 =?utf-8?B?dTVLanJTZDRRR2ptRkRtQ0hEQzZDYmtaL0F3eWR0bFFEbEZEellBUVBCZThM?=
 =?utf-8?B?YWpDTUZLZThkMVM3ZWdUNXBESlUxSzZkb1hTWjF3N2FDaHNNN1pPM0VnaHNJ?=
 =?utf-8?B?U0RvbHJWTXB6TFFQQ2dDVldDd0RmelhJNHhOcWhMZjBGK01SV3Q3bnB2d2Nw?=
 =?utf-8?B?blgzMVRudDZjMUY2T2lUeEYwNnZGNDlCTUdEcmpTM21HRzlRSklxMUp0Rjk3?=
 =?utf-8?B?STJHT2x6U2xrQlFiaWwyREhWWkd5SFBnM2NoYTNZK0RwNjVVZkE5cU5ITFlp?=
 =?utf-8?B?V21VNWtLM0J1ZDNkek81MUpneHlzTHhoVzYveGFGL3MxcVQ4UHg5UVV6ZlFQ?=
 =?utf-8?B?SkdDenlDcWMwWHNzTExqbkVkcEJqUGRFS2xvRkdsU2NoM3NvSUhkVFRSV0ky?=
 =?utf-8?B?amRNNld2Mi85MnhtNVBPN3NBdUptZmVLTFU3RnN0QnFFa1p2YW4yK1RoYzVT?=
 =?utf-8?B?T2VuSXBQUUZmd0hGV3lSWW9YZFRkVGFYaG41ZFpJbmxXRVRCdXVJOVBwR3hv?=
 =?utf-8?B?YmRsYzc4b3gxeFduZXp3RXBrdUhkTFR5MmVSNzZuNGpTVW1ySlBUNFVjYUxm?=
 =?utf-8?B?TE41eFJ4ZWl4UmVtZ2RVazdiaC9Sb2JJT3RIV0llS1Roc2FjOWxCaDJMc0FG?=
 =?utf-8?B?VU9BMzdmUlVBT2xTVVZwYlN6U3ArWlI3bUVlaUJrN1lVeTF6Rkd4cC90K0pi?=
 =?utf-8?B?UW5zcmNHYmRIRkNjTEk3OEwvL2U5OGxsVUtEcEgxQ3FjK290ZTVXNVc5WkdU?=
 =?utf-8?B?NnV2NHBDQkRsbGdMdCtyVTNQTWVTM0xqc0dRa0R5dVNERXVpdlYyNkh1WXhk?=
 =?utf-8?B?UUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aac27765-44a8-4df0-c651-08da6a5efc59
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jul 2022 14:49:02.2500 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PIKzf002gGF7rO2kGL5ColA5kgsQV9H5PX7OeeysHPorna+uDSZfYDmZgbzPK1vsFmCSzcUi60NNr/kPGUG6WzgZUur7KZg5DdpTwS+Jz5s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6690
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658328554; x=1689864554;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=HIYprzvlJni8DPYV+7JEAjbfCfAgpGOUToUnLFd4IYM=;
 b=KugmpG21wQooKymNWlwMYRtr8CHDqa4dNT/sPFvU0he2tiWLSyGb/RP2
 qA8cr03bvbsrB6YXwBHvsM3x9mwgeJt7zozdCTcT/dUkP63Uqz3iIqRdK
 PpI16JcqmyLW1diHJMJvdaCoH2JPfHXEw7LAZ6GeQvWNHgMkPJ8nYYuWz
 ceKarRtRAxdAwblzh2wy16/gZ+VywQYlNGMiXYLGlKUyO6gXHvtoswQ2w
 WmF5UZA02O1Neu++dEDgOVXa12CjHP1LxJt3sV0JqMS3/P+4xiroFU7nd
 Vw50x+2CAv2oCxvdzqSMPL6EIuuggUVvpVAFFXh9hyTldKeqjeubaE1ww
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KugmpG21
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 3/3] ice: Enable switching
 default tx scheduler topology
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGksCgpJIGNyZWF0ZWTCoCBhIG5ldyB2ZXJzaW9uIHRoYXQgaW5jbHVkZXMgTHVrYXN6IGNvbW1p
dCB3aXRoIGRldmxpbmsgcGFyYW0gCmltcGxlbWVudGF0aW9uLgpUaGFua3MsCk1pY2hhxYIKCk9u
IDcvMTQvMjAyMiAxMDozMSBQTSwgVG9ueSBOZ3V5ZW4gd3JvdGU6Cj4KPgo+IE9uIDcvMTIvMjAy
MiAxMjo1MSBBTSwgV2lsY3p5bnNraSwgTWljaGFsIHdyb3RlOgo+Pgo+Pgo+PiBPbiA3LzEyLzIw
MjIgMjoyNSBBTSwgVG9ueSBOZ3V5ZW4gd3JvdGU6Cj4+Pgo+Pj4KPj4+IE9uIDcvNC8yMDIyIDU6
MzIgQU0sIE1pY2hhbCBXaWxjenluc2tpIHdyb3RlOgo+Pj4+IEludHJvZHVjZSBzdXBwb3J0IGZv
ciB0eCBzY2hlZHVsZXIgdG9wb2xvZ3kgY2hhbmdlLCBiYXNlZCBvbiB1c2VyCj4+Pj4gc2VsZWN0
aW9uLCBmcm9tIGRlZmF1bHQgOS1sYXllciB0byA1LWxheWVyLiBJbiBvcmRlciBmb3Igc3dpdGNo
IHRvIGJlCj4+Pj4gc3VjY2Vzc2Z1bCB0aGVyZSBpcyBhIG5ldyBOVk0odmVyc2lvbiAzLjIwIG9y
IG9sZGVyKSBhbmQgRERQIAo+Pj4+IHBhY2thZ2UoT1MKPj4+PiBQYWNrYWdlIDEuMy4yOSBvciBv
bGRlcikuCj4+Pj4KPj4+PiBFbmFibGUgNS1sYXllciB0b3BvbG9neSBzd2l0Y2ggaW4gaW5pdCBw
YXRoIG9mIHRoZSBkcml2ZXIuIFRvIAo+Pj4+IGFjY29tcGxpc2gKPj4+PiB0aGF0IHVwbG9hZCBv
ZiB0aGUgRERQIHBhY2thZ2UgbmVlZHMgdG8gYmUgZGVsYXllZCwgdW50aWwgY2hhbmdlIGluIFR4
Cj4+Pj4gdG9wb2xvZ3kgaXMgZmluaXNoZWQuIFRvIHRyaWdnZXIgdGhlIFR4IGNoYW5nZSB1c2Vy
IHNlbGVjdGlvbiAKPj4+PiBzaG91bGQgYmUKPj4+PiBjaGFuZ2VkIGluIE5WTSB1c2luZyBkZXZs
aW5rLiBUaGVuIHRoZSBwbGF0Zm9ybSBzaG91bGQgYmUgcmVib290ZWQuCj4+Pj4KPj4+PiBFeGFt
cGxlIHdheSBvZiBzd2l0Y2hpbmcgTlZNIHNldHRpbmdzIGluIGRldmxpbms6Cj4+Pj4KPj4+PiBT
aG93Ogo+Pj4+IGRldmxpbmsgZGV2IHBhcmFtIHNob3cgcGNpLzAwMDA6NGI6MDAuMAo+Pj4+IMKg
wqAgbmFtZSB0eGJhbGFuY2luZyB0eXBlIGRyaXZlci1zcGVjaWZpYwo+Pj4+IMKgwqDCoMKgIHZh
bHVlczoKPj4+PiDCoMKgwqDCoMKgwqAgY21vZGUgcGVybWFuZW50IHZhbHVlIHRydWUKPj4+Pgo+
Pj4+IFNldDoKPj4+PiBkZXZsaW5rIGRldiBwYXJhbSBzZXQgcGNpLzAwMDA6NGI6MDAuMCBuYW1l
IHR4YmFsYW5jaW5nIHZhbHVlIHRydWUgCj4+Pj4gY21vZGUKPj4+PiBwZXJtYW5lbnQKPj4+Cj4+
PiBEaWQgSSBtaXNzIHRoZSBkZXZsaW5rIGltcGxlbWVudGF0aW9uPwo+Pgo+PiBJdCdzIG5vdCB1
cHN0cmVhbWVkIHlldCwgaG93ZXZlciBJIGhhZCB0byBwcm92aWRlIHNvbWUgZXhhbXBsZSBvbiBo
b3cgCj4+IHRoaXMgbWlnaHQgYmUKPj4gY29uZmlndXJlZC4gVGhlcmUgd2FzIGEgcmV2aWV3IGNv
bW1lbnQgYWJvdXQgdGhhdC4gSSB0ZXN0ZWQgaXQgYnkgCj4+IHVzaW5nIGVwY3Qgd2l0aCBPT1QK
Pj4gZHJpdmVyIGZpcnN0LiBPYnZpb3VzbHkgSSBjYW4ndCBwcm92aWRlIHRoaXMgbWV0aG9kIGZv
ciB1cHN0cmVhbSAKPj4gY29tbXVuaXR5Lgo+Cj4gQXMgdGhlcmUgaXMgYSBwbGFuIHRvIHNlbmQg
dGhlIGRldmxpbmsgaW1wbGVtZW50YXRpb24gc29vbiwgdGhlc2UgCj4gc2hvdWxkIGFsbCBiZSBw
dXQgdG9nZXRoZXIgaW50byBhIHNlcmllcyB0aGF0IGhhcyB0aGUgZnVuY3Rpb25hbGl0eSBhcyAK
PiB3ZWxsIGFzIHRoZSBhYmlsaXR5IHRvIGdldC9zZXQgaXQuIElmIGl0IGlzIHRvbyBsYXJnZSBm
b3IgYSBzZXJpZXMsIAo+IHByb3ZpZGUgc29tZSBtZXRob2QgdG8gdmlldyB0aGUgb3RoZXIgcG9y
dGlvbnMgb2YgY29kZSBzdWNoIGFzIFJGQyAKPiBwYXRjaGVzIG9yIHBvaW50IHRvIGEgcmVwbyB0
aGF0IGNvbnRhaW5zIGl0Lgo+Cj4gSSBkb24ndCBiZWxpZXZlIGZ1bmN0aW9uYWxpdHkgdGhhdCB3
b3VsZCwgY3VycmVudGx5LCByZXF1aXJlIAo+IGluc3RhbGxpbmcgdGhlIE9PVCBkcml2ZXIgdG8g
Y2hhbmdlIG1vZGVzIGlzIGFjY2VwdGFibGUuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdp
cmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgo=
