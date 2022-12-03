Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84DEA6411CD
	for <lists+intel-wired-lan@lfdr.de>; Sat,  3 Dec 2022 01:06:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E6ABF40498;
	Sat,  3 Dec 2022 00:06:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E6ABF40498
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670026009;
	bh=OHgMzOMW2JAeGGiPTehFYXBz/Z1ggp8D7NyvZcpyOaQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=m8d3UWeWb9ntVknPhTX17I+jgekPvCtetdJUpRKFQww1HuiolopMxcNHwaWnPakU5
	 z+QtPtOn72tdZ74invcrIxB7b4CTcudc21U10w/Bye1gtLIyUSzMe8soOXPIv1QYfZ
	 cfZquyxvHISM6grODR5pwW8Uyg2RA+acaZFfDRo04jPbrf93fIX2YcMbwyCvJle/Dk
	 nfMKsMLh8XJ2QA1e17TDJPvKbFnLhoLgs/Tr9fY7/VXpfH2cgEdh9eO9Fz5KEEvadl
	 uCPw7yBZL7hEjECEIBoxOX+j5qMKJ1pKw5B7WhYtnUwVHHKJ5K+MpN24FotqafXQmL
	 6cuuoJlMIxglw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d61EcSW103h1; Sat,  3 Dec 2022 00:06:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ED9B7405DD;
	Sat,  3 Dec 2022 00:06:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED9B7405DD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CC2501BF37F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Dec 2022 00:06:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B0A0B41946
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Dec 2022 00:06:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B0A0B41946
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7jv6hQupsuTT for <intel-wired-lan@lists.osuosl.org>;
 Sat,  3 Dec 2022 00:06:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA26A41939
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BA26A41939
 for <intel-wired-lan@lists.osuosl.org>; Sat,  3 Dec 2022 00:06:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10549"; a="402350672"
X-IronPort-AV: E=Sophos;i="5.96,213,1665471600"; d="scan'208";a="402350672"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 16:06:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10549"; a="733991262"
X-IronPort-AV: E=Sophos;i="5.96,213,1665471600"; d="scan'208";a="733991262"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Dec 2022 16:06:40 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 2 Dec 2022 16:06:40 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 2 Dec 2022 16:06:39 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 2 Dec 2022 16:06:39 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 2 Dec 2022 16:06:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gWlrF9PL0mtrxWirgBdshtlyOaitqXrTc31+MpCmcbadv4svzqdONGjb90NvEU5MF8in1Q2tSd+v5jBIPPqp8aKo24UQYT2Gx89kknke3IilZunWSLMpX22HRjfNl6/YpTlQcSkHQ79Vahf3HSx/IFzFlFzal3jNw7uDs/9RPwkZ60TyjRJKZHt6KKUpXW5YO9xmez19T+gJeL+wtJgo6N4XWqlbduw9C9eOwMgmD0H7d4Oe2B6A7EL8GvWAkgeMaAs8EepSvAxpSqDfO5TZRl5mkCBry1YFRiKuCnvsUuw5kBYNffikjUzjm0Ydcw/RlSZHxNWFDiYT+4m5SqFE0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bITHSbGo7qLPmqmxb1NBJorX2N2FTSMLUJze8w8FrLw=;
 b=Hq/L16hDpzw5Ube0f7Db6I1h8VGMhKiUXAYtJBdcjDrytKdltPuoFw/xw0cxUK5FCwZ79zoHuz796LlpvCxyUVidE78rOk1I9iGkV5yG2sSbFOMxRDaLr3RyulhZJjckv7uPNUZ6Dcv76FvmnIPGsRrn1gDPxRWRiIsn9ANrZt4TcBg6+6dPebADbMYKa6ZO4viCrItNN8E2CfifBj7h2rwds2Csa8I6tCgqmnDay0GtJwkA6nPdeShAX7ptRb9wceGxr8EWU2Vcz0KrrNLA33CIhYSWKRGlAuPujbIP+EDBfWn8DEVkGVYMTWwvRQDjrPwyPOWlYJourTXg1FqXPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by DM4PR11MB5294.namprd11.prod.outlook.com (2603:10b6:5:391::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.10; Sat, 3 Dec
 2022 00:06:33 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::933:90f8:7128:f1c5%5]) with mapi id 15.20.5857.023; Sat, 3 Dec 2022
 00:06:33 +0000
Message-ID: <de9ebca5-3740-d8f8-dd43-ac257d25e32e@intel.com>
Date: Fri, 2 Dec 2022 16:06:30 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Jan Sokolowski <jan.sokolowski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20221130124651.3246167-1-jan.sokolowski@intel.com>
 <20221130124651.3246167-5-jan.sokolowski@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20221130124651.3246167-5-jan.sokolowski@intel.com>
X-ClientProxiedBy: SJ0PR13CA0194.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::19) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|DM4PR11MB5294:EE_
X-MS-Office365-Filtering-Correlation-Id: e2a75359-dd55-4381-9cfd-08dad4c23c4f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tFHdKzoEjbFXsAE7qzouROujd1EpAu4gTWCrIts8C3zwWNP0Mnt1aNYMn46nEhBWghM83bJvGfHF4wl/7xyNNSj4Bdx5+6FAfCElnl01hCXmk4CFzQR5RMasfwHmp6DyHuY/LWjK/4LSqdzmG6FT+dpgh44Hf7WdSG+4PQpHRCwm6utFcXZBFEZZCkAL+r5jOe6mtxTp+AXfdDI7U0y9Juaf0KaY0slvoKoEZBpK7dTE9VdINrlMMCCnO9pnPz8rnPcNXrCZlBJHPePrcsBL5/0pWgSCqK5cc27x5c3MUP/gyCJUC8MGh6PJnWso8K19aAERU1PZfraYOE9auFWI2aNuw7kVATijvJIgR+axKp4ojDgY1WjkSHU+MrfDp0Ug3bjW44T3f07XqBCVdr2MJGAK9SPvAD8LJKOenIDAgum9vvGK8GgHxFERlMEbMTC9+dZqF5TS6cxfTwZC0Hz3v4Qvq9jlgYma5sCQBTBsmNXhC4c6nmPkItU76QG1v1vcw5G/exf1L7ZVJoVriH7xokjqlYcKaY2EVa2w3iiJXHgL8itu9sEguLGDIwkC8oufVBLKd3rNdQKpYvS7tDxNmZceO0pdO7QlSaem3jfIoDqkIRi2+nJL/w898CGRkxIF7s6g7u9/hS03DN5SZECVBZkmWbD39gFKPHf9yMRNhYLUZe5vk5PbELBUTFoJc10S4l0pCZ8/BFbVPLqWTwz+Yep0AGeQ5GYKuGmgzdsPOVU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(366004)(396003)(39860400002)(376002)(451199015)(6506007)(31686004)(6486002)(2906002)(478600001)(26005)(6512007)(53546011)(66556008)(66476007)(8676002)(8936002)(36756003)(186003)(2616005)(316002)(31696002)(66946007)(4744005)(41300700001)(83380400001)(5660300002)(82960400001)(86362001)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VlJINCtOS2Y4RG5ZVG0wQlMvdWcycDJsL29kRWRvclkzazFuTUFKN0N6UUhL?=
 =?utf-8?B?bm9aREtBZnFkUStWbE9WbU5FRFZQWXYwbGZqdUlhdUwwbnJzb3RaN29zVjhz?=
 =?utf-8?B?aGUvNFNtQ0tmU0x6V3I4QWttVXZENk1VeVhFUmZyVEQwZnRvMmxmWDlybStX?=
 =?utf-8?B?YTFNV1VucytMbjl2ek9BNnJpVlNlWlpQQWZkb2N1dHJXYnpJSmozUm9TOTBR?=
 =?utf-8?B?NHB6V2lrREQ3OGNsRnA0UTJBRVE0RFRoNDRrUG1KT2N3WCtzWHhtYXdTcjR3?=
 =?utf-8?B?d0FVcDFDb05lQWZ6UHVqa3ZWMTlJR3BnQVVEZEVTNjZhVjJtNUE0V3lxRGQz?=
 =?utf-8?B?eStYN0p3Z1hqZDVpYUVPaStxLzBPWXJDREtCMmlpUWUzekpMMTFyN2UycVF4?=
 =?utf-8?B?SG8xMnNEdFRhSVUxbS9XSFlSZk11RktnbkU0U1VKaVk2SzUzUzZVblBEczVn?=
 =?utf-8?B?eFlHYU1DZGZOZkNCcmF2eXFPN0ZHcGdybFo0V1JqelBoQzhUNFJsQy8vRDlC?=
 =?utf-8?B?SW1NT0duRDJrOWd2UUpiNkVraWljU3pYdUQ2cDNMSFVxK0N2OXZ2RFozYjdE?=
 =?utf-8?B?VDkwM3NTU1NNdjVRai81N0JzM20xMzU4cEFFUFgxb3ZUNGI1YUg0L0N2TlpJ?=
 =?utf-8?B?ZVdaK3FhZHJaSHhmeVhCY1JvTDdPenhkYWkxaHFOSXY0Rm9LRUo1VGw2dlpy?=
 =?utf-8?B?RHMwRU1oYzF0aEsxaHhqT2J1WHpvZ2RseHhYM25mbjNFM2g0K2hFTFc3M1Rj?=
 =?utf-8?B?d2I0b09nV3lFdWhLWUJhNWIxYTlGR1ViUDJweTJ0bnhOTjlVb3NyKzRiUGp1?=
 =?utf-8?B?eTFGSTZxSU9iM2VSSHhoS2lYK0N2eDNaN1czODdvS2FYeUp6ZjJqL3RkK0tp?=
 =?utf-8?B?WUFwQzVoU0pCRzBwcXdKUHJCVjZoR2htOHRXcXF1MHNUbHErRGgwYWtocFp2?=
 =?utf-8?B?ampmdmpXN0owcmZXdmpteC9JNE55VEM5VldYZ2t2QlBUeHJtWTVONDY1N1Fi?=
 =?utf-8?B?ZmhlM3ZKZlRuNjByN2psc1g3elc1aHk1UW1xTlFVRmp6RG5aT3djeTFYayt1?=
 =?utf-8?B?VHdhRHBSVFFoSG1TTGVtbnBWQXMwZ09sdE1FNnp2QWU2NzdIZGw2Z2l5UWJX?=
 =?utf-8?B?Q0lkZmpJUUV0K1JYV25Vc1ByY1JEVXpabm50TDY4aENkcm84dDlQSGoydWNX?=
 =?utf-8?B?RjlGaVJycnZxWmdDT1FFY0lxNSszaEtoYlVNYzBKZWJWUE1xb2RSK25XVVdv?=
 =?utf-8?B?bmd6LzVsODkrNU9HR1d6RVRtR2RWSEgya3BXczUxU1pya3A0L1p1RWoyeERw?=
 =?utf-8?B?ZmZvakd3QkltZ05iMnF3ejVSTkhuSVBORWNBaTkrUFRKeXJleEpvOWdPU2Zy?=
 =?utf-8?B?Q2I4YVF6c2pxMklWODVWczlCa3NmdEZVcWJTYVpuTmJHaVBMODFHbkFaYXRX?=
 =?utf-8?B?NkQyMUxtY3AyMGUwb0lvVWZURjRQRmx6eFlPQVZoSXlYT1ZQc3dTNGt1NGpq?=
 =?utf-8?B?QVZyRy9oVnRvd0Y1bS9BcGJaVFJXdEdwVVY3dkppcEs1b0xLTHAwNEsyWDNw?=
 =?utf-8?B?cjBITWhQT3FqS3hGbDhuZFRRT0tiN0xRakxHaGpyL2Z5a3RWb0ZKQ3ZjT1FZ?=
 =?utf-8?B?NHNxckFyVWhWdmJ2NjFJczhCOHJ6WGpzQUFhTHdGMWtkd3U4ZDdyYWxFUVJY?=
 =?utf-8?B?L05oK1h4cklpT1dEeXZCUjJJbDBoR2xldjYySmxKYnlDUHA4S281bmNadHkw?=
 =?utf-8?B?eWR0TGZsN095dkFwSjhzMVQ0bFZnUSs1R3kzSVpYWEcrM2FjZ3V3Q2NrbGFU?=
 =?utf-8?B?TENlQkFTMS9FV2dPR3VwN0FVeTR0cDkvN1ZxSzJrMnBFd0pBS0RHTG14RFRQ?=
 =?utf-8?B?cGJBdGV6YllZdVZQcGdoS3padTVPY1hIWGdwcGJHdk82TVYxd3A3SVlBWUo2?=
 =?utf-8?B?TnNCZkdNVHFXQ01FdEN5d3VFa3hLd2VOak53ZmpzZ0pnZGhkeDR4RkJNN2Vs?=
 =?utf-8?B?RkdQNi9zS3pEbEVKdzRJcEtiWVE1WDQyNCtYMGJkYzh3Sm1qV1dTRU81dmRq?=
 =?utf-8?B?enBBcjRxVFZrVGFqT01VUVNGbHgwVldTYmtybERCMlBQVXpnRjlmVjQ0TlE5?=
 =?utf-8?B?KzV1dTV4Q2pWNW5qVGhnL3oxNXFUQmFROVErWVBKcjNObUVHTlhWZXljYnhq?=
 =?utf-8?B?cUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e2a75359-dd55-4381-9cfd-08dad4c23c4f
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2022 00:06:32.9440 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J3Dy6TCUMPRJICrcVgkgGoOXocIe0aoMImSkkWQXsBNBYS6VI3im3zSIwqqkYIPe+Xdxyx5DTTdK8JWxDzELiWocPftLwEs2UaTwcxBUK7k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5294
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670026001; x=1701562001;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0RoROzQnrUTlvPIjxMRl3YMMTCHdPMizsZtIgj6FFPA=;
 b=a0OWix3HniVhjEwucOW4PiOPvZexK7jV9t35fWHzjSt+tZ8yv6o02wlt
 N+i5ELMRpKPHL77c+h+L4kfdxudCeE3GGB98ggyYdOx7wtNJpfX9IR9GC
 Psu0q69hOk2jRD2FAmGOFipJVC7rlFWE3cStAwDrFAufIlpJ6jTkOnFxs
 bkZb8jc+V4Fl/h+vizOu4+hk7FbgXGNWUKGhO8oLlLjszfHyWqz2xbwAN
 VOOoDHcZBEoyGEFZBNUSwn6k5dqrUwtYPMIcdTuBHIG6RHzY91MciU+95
 Pz/dbx5UpNzBiTsTSV2Km0r5QhZQCHY2SJ4aOrG5faLcIyK1FV+nIgle/
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=a0OWix3H
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 4/4] i40e: remove
 i40e_status
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

On 11/30/2022 4:46 AM, Jan Sokolowski wrote:
> Replace uses of i40e_status to as equivalent as possible error codes.
> Remove enum i40e_status as it is no longer needed

Checkpatch warning:
WARNING: return of an errno should typically be negative (ie: return 
-ENOMEM)
#1725: FILE: drivers/net/ethernet/intel/i40e/i40e_ptp.c:1135:
+               return ENOMEM;

> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
