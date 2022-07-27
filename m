Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CC25830B2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jul 2022 19:41:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A2A5A400F2;
	Wed, 27 Jul 2022 17:41:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A2A5A400F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658943663;
	bh=M2swsUoU4GoteY8LNkR42e4LHWd3lZ2VYkVTwGdiu0M=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=sdmvX4quPxtLDYnCitpTmA3sXiMn+26GeVGS8n3gjQ5q/ImciWgFlAO7yqabhBuQW
	 0Pqz2CdyiyIlt/3IQ/eZjjkjZ/KsmIaeFzc3i9Pqa7YUmsJ9yR3lJVqKefYCQSbwzv
	 MjdfqNR6+Z5PLvCTTGsMkM9X5j+erUcysJ9n6Tzd5Ckbzrt/FLacDgLeyZRmPEnAAx
	 rzhOIKIwuWKwJ6QL7ooOgb+XGHNUH/9xtEQ/wVXEuk1nyWeS3wen+3UmGWltV3LLgI
	 ro+TwTNH72abWYGt3ZKgUeGCc0Lh+AaJwJY6tGYf/BBX4yPhARIe01EyznWQhFzeas
	 HyUsvcnBGnODw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hD8pOYiUJiPh; Wed, 27 Jul 2022 17:41:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8B265404B0;
	Wed, 27 Jul 2022 17:41:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8B265404B0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 745F71BF9B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 17:40:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 579E082883
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 17:40:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 579E082883
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 24Z-VhRD5TWm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jul 2022 17:40:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 952548277E
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 952548277E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 17:40:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="314083982"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="314083982"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 10:40:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="703400077"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 27 Jul 2022 10:40:56 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 27 Jul 2022 10:40:55 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 27 Jul 2022 10:40:55 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 27 Jul 2022 10:40:55 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 27 Jul 2022 10:40:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NMtxZpeouEPT2A0siFg3i4EJ6v36AqzOjkxM0Uhw2NRxMFgho90QvokTYgGtu/Dz6CPcg8d7Dok103V01SOftI961XntRSPQ3aEPTRB8w8rq/6EG21txiJO/AF6EDk97e9nYmanSU+9OrZBn+N33zwC8LS02KHdpjAZxZWEjurPa6cxZ22prPSXQnnXBs8B41Dfbp9jrQHrdxTTUtTwxycA9Fg4E4veTxXc+eENiuediJ17ZhpX2GetV2d5HIbbzmnCQJM5uVLOlMaLZdLngzg6hWtmChb16LO3njKojDREOOBIK0j3kskFcBBlxW00Wm1f2KLHPfNl5gaYuSDXjjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cJ4CCcb8JP/GYd0cxILTy+znQR06b806qLAhyLvX5TM=;
 b=hKKMv6Wwvq6DaK5F0RuASqouXqCRhfESLj02kFQWlMHFa8BvUhgQJaAGGEbHiDteSBpGymnDQ87ZKmbplSGTG9FPIh9k+GZ6SljtJUAa5xWYUcFpdirkJxsRxApIoCOcoG2nCnvn5/M/VwBhfyCgLac/bird4Exgi21McdBUgk2JMYzxtFaayqJ6tjPsUE29yjVRBfW8Z6ZhPvxPrtb8KaXq2/hcmBOy2fyaEcI2OoPgQ+Lul1+OsEi0LGeuyaPc+0hW8jf/ehq8yPborLi/XiGRjdZSAxzXXEVo6Ls39Uz2r9K/ccgSX7FT03L1yFurRv4tXXYOq2ROBpAItp+9Tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA1PR11MB5922.namprd11.prod.outlook.com (2603:10b6:806:239::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.21; Wed, 27 Jul
 2022 17:40:52 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb%7]) with mapi id 15.20.5458.025; Wed, 27 Jul 2022
 17:40:52 +0000
Message-ID: <c5fd7d19-326d-305d-bfe0-390f417171e6@intel.com>
Date: Wed, 27 Jul 2022 10:40:49 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Jacob Keller <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
References: <20220726234357.50610-1-jacob.e.keller@intel.com>
 <20220726234357.50610-5-jacob.e.keller@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220726234357.50610-5-jacob.e.keller@intel.com>
X-ClientProxiedBy: SJ0PR13CA0120.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::35) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 229ea689-3966-48aa-e39a-08da6ff7268a
X-MS-TrafficTypeDiagnostic: SA1PR11MB5922:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YzpSd+fIqjYvvxtDCsBY05AXbI7SPTQc7057miGzpe1j0E6ITrZ3OIiZcu/209O9M+zXkOm7uevEOGAHRYcmOiR/tCjpW7Atf2K6Oaulhy4SqJZIcBVEmdm8scQi8RGLa6imW4VM+q6gS2ecQW1/FBXf9ZsJCy2x5V0TpSEBUpNXeEep/675JGFXDik9wzuT+lKX/WhI2pi3dOJJC2DZbPk6vu7S+9gZcBIBvxZlR4MJ4TEQE+VCpj2ch1L7ERmFCbUYuYQ0duxHiUlWw9HWplEwQCSwOyEdXrbfK+EdTpjpbTGx7inrjj636S+6oMTnnTJ7J0JEnVOyeLhQBr8uxR5AamlU3wYAXweFyD95qm6GgkS5xDnQ7Leq3tXkavFBeywRnX4yh9XgveF+zxYUtb05ZMP+54faEP3M4jrrr/o8JFYllw708tbEXE6UWFGbboCb9JUdU+xBjcsoR7MMfpI0MHLFAKjC1oQnlAmhdRQqQ4QOiHTjf5R8AFbijY7L++K3EiDH5ygfBuFKmlAwIvFOX9aPImO00m68gEjTo1AMpw0PjJQKho/RqqlrBlRc0qDaXPOEBGvng6mxXNdcZual+rIdnf5AtaTBk/QnLZTx/RE8xq083Z1EJwxhoxOsAVz0x7IstTwHJtNcN+UQs/yeKLxcig6OK3Cd5IKxjGZdhVnb+HzR9yrbYHG3rZYMsbjrJ+qIU83ukJmiH0OwcC/gwbi4NCwaLDxfETIMfCrwtX3YXkymEx3gmlYIQDRYItR9XN92FNYsGHllgl11fE14XCIimVthLOYrOYq04xmjW3ehLFRFmNarIXCd8D28
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(396003)(136003)(39860400002)(376002)(366004)(83380400001)(36756003)(6486002)(2906002)(41300700001)(478600001)(15650500001)(86362001)(38100700002)(316002)(31696002)(110136005)(31686004)(66476007)(5660300002)(8936002)(66556008)(66946007)(82960400001)(8676002)(6512007)(2616005)(6506007)(6666004)(26005)(186003)(53546011)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bWowait5SXBzcWUvQytTWGRscUVFS0d0VDh6VUE2WWZMLzh2M0lMK3hWeFM3?=
 =?utf-8?B?cXgyc3M5UkZqbExQQVZEbFVJcVZEdlMrRzNDek5OTTdlUUdNN1BvejhjYnZD?=
 =?utf-8?B?VFhOSGlMUTJGUHEwRzJORXowTWpQWGhqYVluMTZacjFBSWhwSVdKa1VSQlJS?=
 =?utf-8?B?d0tHR1BIZ0JzWFZibGdCcXI2aWRNRmlUVmVyUENkazdHMldaUGdvMXM1TnI5?=
 =?utf-8?B?Z1hVaXFUSXlTaWpLdDA5MFlOSEJuWStYN0RLYmF1QlFRRTVqd1g3b3V5TUpE?=
 =?utf-8?B?UTNCR09lSi9aaUVjUnVFdmxLbTVjYXZhejkzZlk4djlKNjRkdmdXcnZ3Ti9m?=
 =?utf-8?B?WmZraW5IcWY2aXBEdHM3b3gzcFZFMEhyRzRjN0NaWUxEZlJsS0VHSVlKR3V6?=
 =?utf-8?B?V1RaeXhGS0hHY2sza0JGK0xHTHJpMGtWWnZUWVQwd3h2RWR5dVJkcjc0SlRx?=
 =?utf-8?B?KzlmbjRzNkRHSktzSDJrbmxCWk5UaTRoV0lOV1dzNkpDU29UWG14N2RCUUZK?=
 =?utf-8?B?aDlNTGkwek0rVkJVOWxtZUVZSWw2MnluZndnRTlNVlZNR1RGdUN0cHdUTlZI?=
 =?utf-8?B?dzdBZElLbklFRWhmb3dwN25zU1NXYVRjWml5WnhLcEJyQXk1MDdyUURRaDdw?=
 =?utf-8?B?NTNucmk0cXg5eXFYU2NJejcwdVBVY2lLMnFraldySE5MaUdjQlY4N2ROSnJB?=
 =?utf-8?B?eDR2YVNJYVl5eElhUDd6Ynl3a3U5VFpKWEpDTUJTZGVkcktjT0JicnB6M2xY?=
 =?utf-8?B?eVZVZEtJZS9HeTNJTXMrMEFuZWMwM1dpbC9ZZWdBOU1YVm1Za1ZQSjJCN0kv?=
 =?utf-8?B?RTB3NzNKc2JpYmhNcGRvSEV2L1dLM0ExKytROVVmdzZhTFBwVVNIY3ZvQ2lh?=
 =?utf-8?B?a1ZaQlROTDdwbzVWVlBZOHRoTVdISStoTGwyZS9Yanl5YTNtdC9TS2w3ZVhK?=
 =?utf-8?B?UVN1YjdWNWFFL29odXV2SlVLMlhDbS9naHZ3R2M5RmlKVGdjeGZmUlR1OW13?=
 =?utf-8?B?aU5TaGk0WXZndTVhN2JHZHFXSzFQeThIU0ZJcVlJVGdUTEhYK2ZBZjdiOUNO?=
 =?utf-8?B?bE5ZRHdMMG9wOEJsdFdNZUVwdTlxbmR3ZlFmSHNWdkUvWEJQakhKb1BGYmF0?=
 =?utf-8?B?UFczci96RUFnUWNDTzZCYkNyOERJaGJYbzFMUFNwSkNhQ2pwQlJIMzc2Y1RV?=
 =?utf-8?B?bXY0ck9sZ3VZM0ttSnRRNFpvL0pOSDRlNWJpMEFzY0JlbkV4eFNMZ1VmSWpM?=
 =?utf-8?B?OFVqM3QxTFFKQThPWEVBQy95SHF2OEdGTU1mdjAvMlR6WWd5c3FnaEpaZHJ2?=
 =?utf-8?B?VXBHQ2JsS1l2R3dkREVpUGVrM0FqSE9lcDkzQm1HRXBIdXU0V0FQQWNPTzNR?=
 =?utf-8?B?STNjK1c3Q24vN3dWWUZFbGhLOTI0RFBHUWhCanpPV2lkellEbWpkcExqVUNT?=
 =?utf-8?B?TXhLUnlLc1VxS2x5YmJLd2NuSmIzTTNWc2FhaldVSklrb3MvNmsxQTBteDNL?=
 =?utf-8?B?Y2xoNTNoZEdrbW9VWWRXU1pOdzVNZkN2UEVpbi9paXk0dXplQnlvNTJhM3lh?=
 =?utf-8?B?Y2pvUURXVmxQMEw0Ykl0bXhUSUV0bHVPTEhrQ1F3RnVEb28wci9rd3d6azhV?=
 =?utf-8?B?enA2Q1E4OEMwRUd6VmJMdlY2cTVMeGpCM1BvUk5QUjlmM0w0MXUycU1mTlky?=
 =?utf-8?B?cmw3MnRqZ2JFOCs3RHJPaGhJNmtyNlNwR1lvV3BxY3hwbGR2MUhBNk4xNW1U?=
 =?utf-8?B?QS9vS09KU1VwUkN0OVloSjhoTElQTlFHdi9Kb1RwQmxwc3JMblU4THpHemZm?=
 =?utf-8?B?RFV2WjZ4MHZldlVlRWQzWkgvZG5XVk5KZ2RnSmV5dnl1MFp3OHcvd0Q3KzlE?=
 =?utf-8?B?SlBON29xMmhHRzJNQ0VXVS9paEY2WC9VTWlXTlBVNzhJdlF1M1Jwd1Y1TDhL?=
 =?utf-8?B?QjcySVV4ZHJTdWx1ZHBWeENYZkFYREM4czEwZGlrbjNEU2ZycDBRcFNJZ0dB?=
 =?utf-8?B?di9mZlJMTUR2YUdqczFJSzdRRGxlcHhOSTljQTd1RlpuNFdsYWRvNlNDTS9z?=
 =?utf-8?B?b2FzMFV3UFg3TjhCU1JkSThmNkZPNXJxVE9HOExZYjM5dXMvNkVuQlpoK3Q3?=
 =?utf-8?B?WnY5YVZiTHZzQVg2Sm10WG0vaFphZWNsblh4VmVUMCthRUx1UkpUT0lHdlk3?=
 =?utf-8?B?VVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 229ea689-3966-48aa-e39a-08da6ff7268a
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2022 17:40:52.2931 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 03jkik9N0Yb3DE6wD+iX01jqE/x6Q/J6iyhzhs/8NSc38MTnaBZi+d9H4YHjmifu8+x2CavvxmI1TF5Ku1W0JsyncpcZ2jy2UROo8OIf5+Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5922
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658943656; x=1690479656;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6q3/BHlHS0/ntbSviOxZvBVr7EbhY4btD3x7hPH1TbA=;
 b=SUz9n4+rUKBSsdLaJODi0BEY77SNKyrnyObm1iZRi+lLipAzDEkDfoiJ
 N5MEn+T84xOKFiplpOq1ttf8p+Fpxw+HqGbiCyNW78KG5DdlFLqXFNZgo
 ExYk5BhwihLMfACGHO1W8UAjlNqGup+LbvKuh0GODGMoEmubEDind/TcV
 gtt4kaJUBIjSho0tHQZnJ/Mvl8rSoBxPLBA+2EPrG1wmUvJi2Ld+eq3RB
 GTYas0lCgvwi142MvqQIz88K6F1cJ8FbCP5BJAgPBAlZcAAojOAboD/q3
 oeYb+pnM4IXta0y3B8i8OD3Sb+atvvdBDddNxZ2b9WmzPnqIzCuB3eOS8
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SUz9n4+r
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next 4/6] ice: track and warn when PHC
 update is late
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



On 7/26/2022 4:43 PM, Jacob Keller wrote:

<snip>

> @@ -507,17 +507,29 @@ ice_ptp_read_src_clk_reg(struct ice_pf *pf, struct ptp_system_timestamp *sts)
>    */
>   static int ice_ptp_update_cached_phctime(struct ice_pf *pf)
>   {
> +	struct device *dev = ice_pf_to_dev(pf);
> +	unsigned long update_before;
>   	u64 systime;
>   	int i;
>   
>   	if (test_and_set_bit(ICE_CFG_BUSY, pf->state))
>   		return -EAGAIN;
>   
> +	update_before = pf->ptp.cached_phc_jiffies + msecs_to_jiffies(2000);
> +	if (pf->ptp.cached_phc_time &&
> +	    time_is_before_jiffies(update_before)) {
> +		unsigned long time_taken = jiffies - pf->ptp.cached_phc_jiffies;
> +		dev_warn(dev, "%u msecs passed between update to cached PHC time\n",
> +			 jiffies_to_msecs(time_taken));
> +		pf->ptp.late_cached_phc_updates++;

One more thing... this got reported on the next patch, but problem 
originated here:

WARNING: Missing a blank line after declarations
#440: FILE: drivers/net/ethernet/intel/ice/ice_ptp.c:904:
+               unsigned long time_taken = jiffies - 
pf->ptp.cached_phc_jiffies;
+               dev_warn(dev, "%u msecs passed between update to cached 
PHC time\n",


> +	}
> +
>   	/* Read the current PHC time */
>   	systime = ice_ptp_read_src_clk_reg(pf, NULL);
>   
>   	/* Update the cached PHC time stored in the PF structure */
>   	WRITE_ONCE(pf->ptp.cached_phc_time, systime);
> +	WRITE_ONCE(pf->ptp.cached_phc_jiffies, jiffies);
>   
>   	ice_for_each_vsi(pf, i) {
>   		struct ice_vsi *vsi = pf->vsi[i];

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
