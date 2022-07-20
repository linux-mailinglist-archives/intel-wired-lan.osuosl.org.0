Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 557E357C0C0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jul 2022 01:17:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5DBA6612E6;
	Wed, 20 Jul 2022 23:17:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DBA6612E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658359059;
	bh=/q0aQBSR/OMcOTaoiLqfXHgOI4qONDgl3c627mGiCR4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=K9bfQ9F89qOB1O3CG5/06he0UxqiwWZP8DhMJVxest5J+91Yw0XqOqshYdqzJqDfd
	 KOiPZrvtDbg1FtYk7iIASNM4iOhHPLOUfQEUrxWzKtQWA4NgC+C5akn8Qi+6xIYgnH
	 FzRraknmxSV0Qj/eGpgI02hgog5kk1Vd30Ketb6r8KWLCeJ3HUn4QCn7DyOwDcvv59
	 PaCuljKbgi74mZwTNDPtwT01S/VLgE3Ef8IahajD0ShL8PzzTNSUo7rKR0Rkx7rF7m
	 TnfOCkuKKmsDfpXkIIYZdB1PrvjzVXm25XXQOKnCJNZrKd0NpTbZvwCh/cHTe+lQEP
	 HMfDE11NorDtg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oQSUcXdboxjK; Wed, 20 Jul 2022 23:17:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A46760E7C;
	Wed, 20 Jul 2022 23:17:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A46760E7C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D1E451BF3EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 23:17:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AA15B81865
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 23:17:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA15B81865
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4vslCNjaWhWe for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Jul 2022 23:17:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8636B81494
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8636B81494
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jul 2022 23:17:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="273747515"
X-IronPort-AV: E=Sophos;i="5.92,287,1650956400"; d="scan'208";a="273747515"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 16:17:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,287,1650956400"; d="scan'208";a="595409267"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga007.jf.intel.com with ESMTP; 20 Jul 2022 16:17:29 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 20 Jul 2022 16:17:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 20 Jul 2022 16:17:29 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 20 Jul 2022 16:17:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QQqAjTNp8a2/QrwHywyl6Cff8fXtAX5LGX6fD6MK2GW4aaLsdzZKKaKISC7MyuVvf82UUUjXJhzlNVfJfK6Q9ECNyBTcmqHChG/zUSIj9tRthW0C7xm+LuKKsHd3BvCe9Kgs40HKOVq9nb396t5Yzfd15frfzHB9IcbSiBV2b6XZo+qHQqnfdWAHY+zYTifrP4PauRLKDUmuhy9UVnG5GovYqMV2Q5Dyxd0GLLr/7fLpxlJmm+OSPMUrgA9l/kCYKNi0ymy8d92zfAOgPfYq9MQqFpRC7Q7BGTwyOI5IM4kE4+0s1XwOAL3+o+KvbImZ+WVscKlCcjkQvHxix2axFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8Ck68GD2/BhSe6E8oO/j7/m3TGbrkP26nX9YJu8QyZ0=;
 b=K4aospZUY1zNjkZCvwr3yog4d678Ytoj7MDGdBhsrMzOS4OxzRD4r6RiY6dfBm1WQA1zeQnywTsRy0IRnfXyJo1+d3Pb7yhZRoZioYL44dfa7DQ1BWkDfzAoYuNbqL2IABj6teafy+58wCxCgbDP1B0WbODyiKu7nuSjkgBa3uyKsS7bmhpaDcNue50ysDm+fxqqLngmEMO3zHNRwxf0dQcOi2wleCVJ9B2geAgTry5BGUnJTNCiLNTXBPJw/72ZUGWp7OV5zPr90VWjaL30Kbf6aV05Gla1TMYnUuqvsG+uq7gbnG3QeQm1cEOFw61tnnpSVFFIk6r65+F9kCMLNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BN8PR11MB3794.namprd11.prod.outlook.com (2603:10b6:408:8f::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.18; Wed, 20 Jul
 2022 23:17:26 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb%7]) with mapi id 15.20.5438.023; Wed, 20 Jul 2022
 23:17:26 +0000
Message-ID: <e25c8680-b194-5a87-9e67-744e3337288c@intel.com>
Date: Wed, 20 Jul 2022 16:17:23 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Michal Wilczynski <michal.wilczynski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220720144004.14250-1-michal.wilczynski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220720144004.14250-1-michal.wilczynski@intel.com>
X-ClientProxiedBy: SJ0PR03CA0350.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::25) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4cc511a7-aa3d-4d61-611b-08da6aa6021d
X-MS-TrafficTypeDiagnostic: BN8PR11MB3794:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qpf4FIXq1rFftdy8Ab9KkdDaCqWVlYG3lUvffDMDA2y0XMKpDSBdkUoMpNFH16EQCc6uYztEEfvFFL7VxDMYzzDjLi6/ztqu4UE6uqFjHH0TfyViE6UUlUSvcoQpno+OpUCqwtQto7UKi1uJnnOi0ecofMZkCZtKMDysedL4vRWXEyERqlGvdd7f42ljTz3gwXTKUQ+UABNMSDdMrPUTUlBadCkk09Isq647ehmIqMjSxj3E1DIDF/7MyjsyUDHkROztXyo0FBgf+rLzpyfBq4OlnLY+5NxCw53UhnsK2onBH0WshXDXS1StLMMAeOLF9nd5Ppj/Hl60DcDo0Xp/vbe2dbwIn0uwCn4PuvKV8pxo1Y/nh7GCHkNybrh4x++XJ5Zbs0DRKOt3dppxs7TiN05DpzqEZ8W7z0iY/MVpzoYSMYSAJGTT3oWYnhY5AnUZSrmsAFNO8VPWpwukd/CMstTiup6+gyAMMguvCbbA52crdejsDTxkDBYzKeXduKWEL53lJHW7+P+epcaTdB+GzPX/QkN33fynyu82mePqsl8ZsYWRLqoUAzFnMXL3wLF44/Z8S2yZOQMGytxb1kfcBgiwLczjVjeDMeWopyb5L/YOXpLbrgQE9mUQyDZxIHGOrf7u6Atw0cv++EHRVJNagR9RAaz5WtZ31rzyTgWcUiQtz0y0rdCmN6gIEmt1JqojcXOQeTztTmDE8fMOEurtUz/2Zb10Zs4ZcMzYJxIUAscUmaYQTtFCbOsUDPg8BQKxtVz12OK+H6IsveFmj3brN/YY3kYK2+1bjBNoZGLGzW7Gw3rwcXeDnKuXukU3+6YQDbwzD/6czV5QqEAxJyzh6gMhMOLJna2ligb/7tGn1f896IfQx05JpqzFfHavcwSo/3FT9mBa8bUDe171CXVOWw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(39860400002)(396003)(346002)(376002)(136003)(38100700002)(6506007)(5660300002)(53546011)(6666004)(8936002)(966005)(6486002)(41300700001)(82960400001)(4744005)(478600001)(2616005)(8676002)(66476007)(66946007)(6512007)(66556008)(31686004)(316002)(26005)(31696002)(2906002)(36756003)(186003)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3NwNFErZTNGWVN6NjdObUorTUpMSzVnTE1zd1EzcUtxSWhESXdwSGp5NkUr?=
 =?utf-8?B?Qy9rMFI3WTZxNlE5Nm9tZ0ZsSjlDK0MzQUJhem1IMWc3T3ZFWHRRZlpicWpC?=
 =?utf-8?B?bE9VL2tzTElOWi9lMzVVNFd1emlsWnZmcTN6TE1WTi82L0hCam1SNkwvNVFx?=
 =?utf-8?B?bHdzbTJEbWNlL2VGeW5yQjFTL3BrZFoyS1FIVzhocjhlUjdRTDl0VlRhajlV?=
 =?utf-8?B?elRINXpBWFVCeDZDbFpaVkg2RGdYbFIxRitVei9LYm93VElZejk4TVVkbzZv?=
 =?utf-8?B?b1dxUWxPcFE4eXpJZFdFb1BpSmxHNlpDeWppNCtjSkNRanFJcCtUVUdoTVFC?=
 =?utf-8?B?Z2wzdWMrVjdEQ05DYVRtcjZiQlFCSXJvV2VZNzNFd3NkSmMzMmhvVzRJNC9P?=
 =?utf-8?B?N3VuNFBVTGFzR2poMVV2T0xCeitDNndiWG44WGJzdXBUUHpJZmkrOU0rbUhL?=
 =?utf-8?B?VGZzUXpkQjdnQnNnUjNWdGVlTklTSEVndDY2dkVVTFBZd1VnNGgyUVRsQUJ5?=
 =?utf-8?B?M0xBTmxtNjh0RWFqYkdlTnVKU2hVU2Z4bndZZ00zRnBEMGZlTlVVRmpZN0p5?=
 =?utf-8?B?YVIwb0UrMFo3eVFocTRrUFhMYkZmM2dWcjBLaEIvd1J1YmZ2U3oxVE9rb2Fx?=
 =?utf-8?B?SUxBUXBmNmRTeUtKQVJraFpvOUJDbHFGbW1ualR0cFVaNFhCRTBaZ3lSU2d0?=
 =?utf-8?B?c2hHMnkzOXV2VW1ub2ZNNk9xMHV4eXdGVGZDMVkxTUxPRDMvbTVCdjdYejJq?=
 =?utf-8?B?N3hsbjF6NHMwQVRPZURXdEdTazdKWnB0QlhlSHhKc3EwbTFWeXFyMTYzSFlH?=
 =?utf-8?B?bkRPWlRJcDlHaVpkL2J1ek93WUxhMEo5VFpPQk42UFVwRkg4T1B1ZGRVejlu?=
 =?utf-8?B?d1ZncmQrNHN5Y0d0bzhBdHU1SE4zZGltRUI4ejQxMWJLOVBWc1dGTXVGQWFK?=
 =?utf-8?B?dzZPT3JrVktzUTJGc0Ezb2hLV09pTy9ORjBiakE5YWdlMDdXUFZscFExb0Rr?=
 =?utf-8?B?WjdxMDZCUVk4ZjlxZWF2N2NOQ3VvVGIxRmM5ZDlyaHhpMDV4RC96UEkzT1Vy?=
 =?utf-8?B?aktDNkpjY3poRmlwUUxBUWZ1Q29EeURmSTF4ZUozZ01IY3g5eHovWVl1V0FF?=
 =?utf-8?B?VVU4Ty9DZWVBRWVYbTg3K2xLaTVtZHdzQmluM3dnT0dYNndVbW9nZ2lPeVhO?=
 =?utf-8?B?endsUEN0OEI3bVZ3eGMxa2Jra0hqNGF6ZjI1dkRrTHk5cC8vMHE1dy9zVThv?=
 =?utf-8?B?TUs2K3RHb1V1NVNad2FERFRtS2JSeWt2RExhdjZuSUt0b3ZMcFNVWHFuQXRa?=
 =?utf-8?B?b1hiK25jNFpCKzkveFBiNHAvdVh3YzB6T203bkNoNWppQlZxVlIxYUxWY0h1?=
 =?utf-8?B?clAvTkptdmd1YnV3Z0FLa29qTVFMV2pTQ0xZNXNEMzNiMld3MlhYeUxzaDJI?=
 =?utf-8?B?KzZwRTgwQmJQaXhYUUM4TkFUaU5qeVRuc1pxcU5uUktnSmh1TFRvOU1EaEli?=
 =?utf-8?B?M1hzK2tnN25NbWZEaFhFSGI0SEZXOGNJNVVKWmJJdEc2U0VjQk9yS05ibDAv?=
 =?utf-8?B?b0Q2am5SV3Fyb2c1ZVFUT041VEJhZmFlWEtHNjJuUGdHVzJnNUZ2Qysya1Ns?=
 =?utf-8?B?bkUzVlV2NWJ1eGtyYVQySzYzQU83ek8rb1VWdStRVlBFbmFCK00yYkUzQXNV?=
 =?utf-8?B?ekU2MDNqYUtxMG8wdVRMTWVFTkRvRlBrOW5Rb3oxQUJpejczRjJiZ04zdkxQ?=
 =?utf-8?B?UkdxMDNGMURBRVEyYkhKenZtSWh2bGNEWk85VEZScVNjZzM5eFh3Ukg1QUlw?=
 =?utf-8?B?bURnUytIL1p5emVYWVVtOFdPeXY4ZTJwOHp6bE1YbHBzSVJ6dkpmaWYyQkdP?=
 =?utf-8?B?c1BQd1lpekVWWTB6SWpKemVTelUrSmltVUpBK0dZZmo2d01Xc0hOUzJhcThO?=
 =?utf-8?B?Szh0Q201Qm9kOUEzZi9GNHArVG9tN0grVHd5eXN0T2JFdEx2RWVPL3hwUS9z?=
 =?utf-8?B?aXlLY3F0ZjcxTll6OHBObHFOUEpMMlJzMlZPNmo5cVdFNkhTNVRRKzRsQlZK?=
 =?utf-8?B?RzNac2FzZE9vbTEra3hVb0c1YTlFSi83bm9PRjdLNnFmQjdvTjhjcHNxWUho?=
 =?utf-8?B?d05KK2E5UStpcXVyRjFYN2hLRjJlcGVkZ1BLMlpEdnMyNm1ybUIyL2FmbGxh?=
 =?utf-8?B?QVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cc511a7-aa3d-4d61-611b-08da6aa6021d
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jul 2022 23:17:25.9879 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cBWtTwN+e8G+k7hJyxNVpjl00pT5YDAOxtbE+M/vqhdBtWMKmV9gRv366azKs4pJobFNlVYdcOqibUcCZ5ebLpbkQ1/8ZnXQuUDklkX6xM0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3794
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658359050; x=1689895050;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=MrCvJTuBAe/TqkpNrfumxuHTc7dyuxEFEoWXULeuCP4=;
 b=HhsxINmITXpVaPUtX5MV50fpH0KmOYxlDPbBQkcHoWDqw5vMLTAvsXWC
 Q+0c3otHwraVMZfB2Y2LYFCF0Xw37yis5VcwoDwv/+CeYIROSefPKdJQd
 ApARi8F4kplWW4ogyTv+4Z8jFc1ST+eIQh4/DQJW8nmYQsZOEUCPndVJY
 /6txjp7jGNlp/bLV7RbwXcTqqTuLD/LA6xTujQpiOCr4rgWg24un3fyGf
 9X/QWoEahJgv1btKAM+2dnbp2t6xgm/kNou4b4x6ayF5WuzBaX1J1kO5a
 I70DGH57bBaqfTbKwMAUEM7H9fglSNdNI3odeuNm8P7wKPPXdvYtcXy+G
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HhsxINmI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 0/4] ice: Support 5 layer
 tx scheduler topology
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



On 7/20/2022 7:40 AM, Michal Wilczynski wrote:
> For performance reasons there is a need to have support for selectable
> tx scheduler topology. Currently firmware supports only the default
> 9-layer and 5-layer topology. This patch series enables switch from
> default to 5-layer topology, if user decides to opt-in.

Are you using next-queue/dev-queue[1] to base these patches on? These 
are not applying, however, they do appear to apply to net-next as lkp is 
able to apply them to that tree[2]. Please use net-queue or next-queue 
if you are sending patches for IWL.

[1] 
https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git/log/?h=dev-queue
[2] 
https://lore.kernel.org/intel-wired-lan/202207210108.7ZpVcgDQ-lkp@intel.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
