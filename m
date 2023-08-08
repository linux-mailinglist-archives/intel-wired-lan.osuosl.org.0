Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2BA774BCA
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Aug 2023 22:55:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C40DE4174F;
	Tue,  8 Aug 2023 20:55:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C40DE4174F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691528120;
	bh=nLfhbje3FQdy1E/y32GtoHAx1CSBA7VxhNMKU/RSjwM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m7oZCEPA2v5JnHMK3r+MDY/ybCxDA44joCnyxRDodN002h37lOcfhBKvQ0N8Zkmf+
	 9xGWWkJDrSsEe0NOWC9hWgPwMfXyJlbLUR3h3cC08yrLMDRx7G6+PxCWiAjHV2zoke
	 4vweGZfpT2yuzCi9y0qBkVNmCLKxbYassW60a7YD/3wxcw50jUgJSddQG9w6TqIZeW
	 Q6LvhJx3mHZfDtw+dJzW5mv+jIr5hR2qSurr3Mi4cBk8nKb2GXEi+uLmHX+9ckYnJT
	 CkKuSkrNDshM9kDLS3RglDTMLvlEDHBVqHy7wrOiwnGBBajLJFp2/iS7XncfDlRKBb
	 MKknOxn21PXvA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bdn3RidEoeTD; Tue,  8 Aug 2023 20:55:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E17CA41761;
	Tue,  8 Aug 2023 20:55:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E17CA41761
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D2B231BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 20:55:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A6E0E408EB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 20:55:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6E0E408EB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Iw7xPP3hXTv for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Aug 2023 20:55:12 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2CF5E41748
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 20:55:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2CF5E41748
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="351260356"
X-IronPort-AV: E=Sophos;i="6.01,157,1684825200"; d="scan'208";a="351260356"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 13:55:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="801472101"
X-IronPort-AV: E=Sophos;i="6.01,157,1684825200"; d="scan'208";a="801472101"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 08 Aug 2023 13:55:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 8 Aug 2023 13:55:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 8 Aug 2023 13:55:08 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 8 Aug 2023 13:55:08 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 8 Aug 2023 13:55:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nltswD6y2gpdPPYLQWpOubh4cktZZhZsbeDsdGEns6U8+V0hsuVHKSR8/r1+M1VN3M8IjDfATh9+gtZgtXNmT1HOY+MBV2l7fD3nVG5wgfjbnxA74t3dj+KenAwFLpEFz23oMLd+jsS06+MaGzdzEhzz8CH3xkzacwjLE42zGkU1YrOFa7o+qx+GpQG54x0s92S0DEDY0GM0vw0LbH9BZiAOi/tiTYuCcNw+1CQOGBUWoZpjx4BNxDDyKbSqBE4vkxi6Kf+IPHEmsICOkAzFJ2B8fMJHJKTmsjFy0l7y+sg3PudEY24OTj/cBOB91DO/VPtJIGdefBxqF9hqY2zYyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3zMyz2/nzWIOsu7qzewAbMuRPRFkCqSCEjHdHesulJo=;
 b=RTveazuVx+hOa+oMGnCeseG0NDv7Lxb4PaBZ79n4+2tpDmCDdZUJFo0samLqIZWeBxMSWZA4FoxurSTlTPQXLkRtyQoXR8VMUVTSyiuI28KnwmImoqeolK2xhAxIvliumsmuoO48c45272Ap0KNBtqyKl/eTsSH3fbI6gPjy827keo95Ame6oVHkzMOVp549vkSvZs2mmMiPVDzuAWkfW9hz1JPVSMHntTYbLoDVBZx1r7ovS4lcdkc1Tq2gxySvWd2bz+jaqDfPunub3l/aBWohZsYHXR1g7vcYuaCCzUN1uhAEosZIxEsz8zda7htk7XTEqVwLEDYl17HmhQxz1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by IA1PR11MB6393.namprd11.prod.outlook.com (2603:10b6:208:3ae::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.26; Tue, 8 Aug
 2023 20:55:05 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::cc0d:5933:ecba:1df3]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::cc0d:5933:ecba:1df3%6]) with mapi id 15.20.6652.026; Tue, 8 Aug 2023
 20:55:05 +0000
Message-ID: <7cf9f840-f47c-bc79-6c14-9f1997a21c5a@intel.com>
Date: Tue, 8 Aug 2023 22:54:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Petr Oros <poros@redhat.com>, <netdev@vger.kernel.org>
References: <20230807094831.696626-1-poros@redhat.com>
 <20230807094831.696626-3-poros@redhat.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230807094831.696626-3-poros@redhat.com>
X-ClientProxiedBy: FRYP281CA0011.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::21)
 To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|IA1PR11MB6393:EE_
X-MS-Office365-Filtering-Correlation-Id: 81303107-2284-4542-c3c0-08db9851bdfd
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PXKuGymJl5xxmTCVEMYuNxCr+i+zHFWipzwCUH9Izc6lh5NKJHFXczN9j88wvbvnGKfqg8laIl3o4xD/rqkAJgBTsCcb+K1qXa/4DJUxKKGI7WrTL7J5BQ+bJl+DRAF82Yy8jaSlwKYCaE2l/kEB2GzSdqqP6xIyE+Fz8fzPXMrFtjNJgO8M3kjSZRw95nWzq4H0yvLrlWWwSpq6CC2J4LV+cmm3S2HA8c6tZRP7OZrxZeVaaIOoL1tSclvzLHiHl+3qXxO7+B2lW2cy34U2VAvh8p+uzxW+iA7lcmAXVMr9BlSktzSVmxyeHzam1TMCyjfZUbuZ5ieIeEQI0sAt2uyFft0cLatWC6xOCkvXzjnXIRnJd5BlKShdXxnS5e+5qvZvp+grPuKODx3UuS5utXoL2xbYsv7BSL1WWbaBk0TOMYiFRjvgu7vzzLYkIQ6A7psVN4a05TzvW+vwXmA70JLukbfChPK1aRZTbPpbuhLnE5nzuE2rMb1qShbdEBNBKGtrWAPL4Qfmt/uSRFqowHv07TbJ5V4FcHq/aAReTt7cEpzB8bLylV8FB0NoVG/8fiJ/7246f/8Re4UWOEu0qWR1Qa4qxcuQT+VKGkmAsdIiGZsKab94QNxkla+LxbyqWCYRlvwEuhm5E4ZesuoImw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(346002)(39860400002)(366004)(396003)(451199021)(186006)(1800799003)(2616005)(6486002)(6666004)(6512007)(478600001)(82960400001)(31696002)(45080400002)(26005)(6506007)(36756003)(53546011)(86362001)(41300700001)(316002)(8936002)(8676002)(2906002)(4326008)(66556008)(66946007)(38100700002)(5660300002)(66476007)(83380400001)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R0xrNWZwbkEzUmVVcHcrUkJsUFdxSlVXUG03UGM3Z3VaWFBJeVJEdWwybzJG?=
 =?utf-8?B?dG4yM2EvWmIzaEltZDU4Y0p1dHQ5bWFHQzRCTk00WnFHbTVRSTBBcDE4Skto?=
 =?utf-8?B?RHhWWld6RWlsazF3djlkdHRTQWYxbUo1WVhWTlVWZ0NlSmNlSTI5NXVwNVFp?=
 =?utf-8?B?QVlmWHhaRi9rclIraktqaVlwdWdiZnRmRElsTXhaVWl3NGxuOFhLdklGd3cz?=
 =?utf-8?B?V3NMN3plSk9iUndMK29LSTY4MjZ2SDhtWWdBNEdDTjc3ZEVDcHAvYmhpbUhy?=
 =?utf-8?B?UlVNdFBWa2h0VmF4T0hHVGZyREZJZjFEZTZadVQ4bzFzd3I0dWZ0bk90dnFW?=
 =?utf-8?B?UiswdEI1bFdQMUM0S3JiSjVFcVJhK2cvdDF6OEFqMU1yb0tsNUZHUnJGM1h2?=
 =?utf-8?B?UU1NcEdrdVpKU29ad3ZUdW0xNFBCb0JrZmVBdS8wOW9Ha3dwM2NtcXA1eFh5?=
 =?utf-8?B?eW5xcThLNUR3YVRGMVFFd0Y4VkU5bFNwdHRrdUxXZ1UvN0dMVk5rSnRqdUpr?=
 =?utf-8?B?ZEd0bG4yaTNmN1d5MFRUYjk0MlNiYmVVdTFFSTVwUVh1YzZMZFpOdVBlQUF0?=
 =?utf-8?B?azJYWUIyWHVvSExjbzZZbGI4QXVSc2dZU0VXbDd5TDl2TndvYWNWOFFEZlVi?=
 =?utf-8?B?TnZxa3NvNTZnZWxHdHlWL0JoQVRrM3RRY0NOOE4xUmIyVyticDZjbXh3VUtQ?=
 =?utf-8?B?M1FMMEF6dGRrZ3BYeXJISWs5V0VJNFdSRTJwenY5ZkVNM2pkQXBWcTY0cFhh?=
 =?utf-8?B?Sy9RR05xUU5FZ3haQlBLS1E4bmFmaE55T2tRcm1xb0tMZ04rUG9HWkJ0UzVL?=
 =?utf-8?B?M2p0Uk0zMUlIcEQ1NkdWaDE5MFZ5ZlFORStxc0pDaXpCU2dpdzhiNkorWGRX?=
 =?utf-8?B?Tmt6dnlUK0ZIaFRxYjhQaDFvSkdNam0vTWV3MXk2MHlwZ1JpN3ZnaVpQU2Ru?=
 =?utf-8?B?UVA2em1oaEZRbUFwMzBMc1haS1V2Z2krTXpKMzlFMGpGMFNwM1JtNWM5L0pY?=
 =?utf-8?B?UWhWRmpjQlYrY1IrQytEL1JHTFZYblBiK0tOc2VrZFFFd1g1aEdWUWppRy96?=
 =?utf-8?B?dXR5ZjMyOWxVNnFnUVZZdG1tL21iaU82ZkZOREEzRXlvUGR1SFdzMENxN0l5?=
 =?utf-8?B?YUU1QzNReTZCb2t6VWlIaTNZRDlEQ2NqWkR2amFIWmNjYldjejIzNU1MWVhy?=
 =?utf-8?B?aDBhVmhUdkFyUTVDM2JNTzc5Z2NjN3EzMS9aTmNmWi9WWHNPUXM4YU9oUitz?=
 =?utf-8?B?VmlyVEtDeER0QXd1Qmt1MHZBODV2YVVzRDc4bDRGNDhsVlgxcFR5dTZDdVJU?=
 =?utf-8?B?dEY4VXJJSlFJODI2aVh2NCtJeCtlbUpXMHhtOFQwNWQrMkFOSFE0RDI0aVpQ?=
 =?utf-8?B?QXZNSS9zd1V5bE9PZ2ZUQW5nUU1JdDd0L0IrYVlvNlcvd3R2cTUrMDQ4WlI0?=
 =?utf-8?B?S2xBRjRqeC9EMDJHT2ZSR0tJQTNMbVJqWU5MVGd5a1ZmZ1RSSWF0eFI1c25x?=
 =?utf-8?B?SWc4bEY0YzBzdjZiVkduTnJqS244SDdKeFV0UmQrZ0NRQm1uNkFKcThoSEg5?=
 =?utf-8?B?YVNmck8rcFBkSjAzTW1HYjFTdG15MUF3NmZVa2Yrb242VmRBUW0wVUVmcXF3?=
 =?utf-8?B?akRhenJIR2l6Mi9paDFBQ2IwVmR5c3M2ajNJS09oVkFrWk1lODR0bEN2T05t?=
 =?utf-8?B?ZUt5b01Td01DSkNSdk1ybTQ1OWE2ZlE1S1lRekN0M01VVzlna3dLMC9adHJZ?=
 =?utf-8?B?bVYyVnFacE5RWWNpd0dzbkhwZTdsYi8xOVJTYnpuVjMvYTRtZkhnTzB2QzR4?=
 =?utf-8?B?Mk9tMVdsQ1MxKzZlbks0dnBXQVhyVDllQkhkYzhQU3NKWGlCbWRHNVpzaVM0?=
 =?utf-8?B?aXhsTUpTVlBLNUt3cGRhSUt6L3VCaWdGQmZ6TXN3NllLQUticVRYdkRqRE93?=
 =?utf-8?B?SzZhNDhzU1VwSTA2OUVYUW03ektzTXBxRCtZM1hFUEZRd1BnSHZPQUZqSXRN?=
 =?utf-8?B?bmI4NTJYeEJwZklFNW5uYmtKcE8zNGdaaWlmS2xEZlllcGc5K1RmTVhvbUgv?=
 =?utf-8?B?cUgyMGd1Y3MwVTBBKzA3Q09Vbk5WVDc3U1I0NmpDQkhxU0Rta01yMS9Qdko4?=
 =?utf-8?B?bThLSnlGS05BeFRUaHBIeDh2bVBQMy9mblFGd0RpelMyTkhaT0Ewb282NDRJ?=
 =?utf-8?B?NHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 81303107-2284-4542-c3c0-08db9851bdfd
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2023 20:55:05.3158 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SXMTyKbbUgHNnFu2HxzPFSfuJvZpmN9BxavMYTcIvvGk8+vJKxofZBVXPWLKK9rMTBAnFEkjzFil+HtIxxiK0mXwe77//MuNHEzp9MbcRcM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6393
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691528112; x=1723064112;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3zMyz2/nzWIOsu7qzewAbMuRPRFkCqSCEjHdHesulJo=;
 b=KOJFAzPy2+yhdTRadvdPog9pHlyXExm3XxBAHFerrRGR3zwT90cciOdX
 /OelpnYDdn1OebHmVaQKHvpl8J0UD/ljeU6lv63r0aIot2MPFaUYIPDPX
 qFqR/nwkiT2PfoJu7INsmo/5R1W/8byrB+c4TRZ7Y+lNgOpjdEgwNh7WJ
 QTwFpruw911KrsOLaIUgpjcHgiAC/0B5kPIkRC8rebnbJe80XIu6ttwgE
 2KTQxZojxpfOAG1wzoSo7z3wZ2DAHEPzJo+9HIQsszAdlJxy054jh0Pzk
 CCx1F2/cXOoIEBk7CaZo9DM8qa6EbSlnURQum5LaLgUwSO2xcVws5BUSv
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KOJFAzPy
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 2/2] ice: Fix NULL pointer deref
 during VF reset
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
Cc: slawomirx.laba@intel.com, przemyslawx.patynowski@intel.com,
 kamil.maziarz@intel.com, linux-kernel@vger.kernel.org,
 jesse.brandeburg@intel.com, norbertx.zulinski@intel.com, edumazet@google.com,
 anthony.l.nguyen@intel.com, kuba@kernel.org, dawidx.wesierski@intel.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/7/23 11:48, Petr Oros wrote:
> During stress test with attaching and detaching VF from KVM and
> simultaneously changing VFs spoofcheck and trust there was a
> NULL pointer dereference in ice_reset_vf that VF's VSI is null.
> 
> More than one instance of ice_reset_vf() can be running at a given
> time. When we rebuild the VSI in ice_reset_vf, another reset can be
> triaged from ice_service_task. In this case we can access the currently
> uninitialized VSI and couse panic. The window for this racing condition
> has been around for a long time but it's much worse after commit
> 227bf4500aaa ("ice: move VSI delete outside deconfig") because
> the reset runs faster. ice_reset_vf() using vf->cfg_lock and when
> we move this lock before accessing to the VF VSI, we can fix
> BUG for all cases.
> 
> Panic occurs sometimes in ice_vsi_is_rx_queue_active() and sometimes
> in ice_vsi_stop_all_rx_rings()
> 
> With our reproducer, we can hint BUG:

s/hint/hit/

> ~8h before commit 227bf4500aaa ("ice: move VSI delete outside deconfig").
> ~20m after commit 227bf4500aaa ("ice: move VSI delete outside deconfig").
> After this fix we are not able to reproduce it after ~48h
> 
> There was commit cf90b74341ee ("ice: Fix call trace with null VSI during
> VF reset") which also tried to fix this issue, but it was only
> partially resolved and the bug still exists.
> 
> [ 6420.658415] BUG: kernel NULL pointer dereference, address: 0000000000000000
> [ 6420.665382] #PF: supervisor read access in kernel mode
> [ 6420.670521] #PF: error_code(0x0000) - not-present page
> [ 6420.675659] PGD 0
> [ 6420.677679] Oops: 0000 [#1] PREEMPT SMP NOPTI
> [ 6420.682038] CPU: 53 PID: 326472 Comm: kworker/53:0 Kdump: loaded Not tainted 5.14.0-317.el9.x86_64 #1
> [ 6420.691250] Hardware name: Dell Inc. PowerEdge R750/04V528, BIOS 1.6.5 04/15/2022
> [ 6420.698729] Workqueue: ice ice_service_task [ice]
> [ 6420.703462] RIP: 0010:ice_vsi_is_rx_queue_active+0x2d/0x60 [ice]
> [ 6420.705860] ice 0000:ca:00.0: VF 0 is now untrusted
> [ 6420.709494] Code: 00 00 66 83 bf 76 04 00 00 00 48 8b 77 10 74 3e 31 c0 eb 0f 0f b7 97 76 04 00 00 48 83 c0 01 39 c2 7e 2b 48 8b 97 68 04 00 00 <0f> b7 0c 42 48 8b 96 20 13 00 00 48 8d 94 8a 00 00 12 00 8b 12 83
> [ 6420.714426] ice 0000:ca:00.0 ens7f0: Setting MAC 22:22:22:22:22:00 on VF 0. VF driver will be reinitialized
> [ 6420.733120] RSP: 0018:ff778d2ff383fdd8 EFLAGS: 00010246
> [ 6420.733123] RAX: 0000000000000000 RBX: ff2acf1916294000 RCX: 0000000000000000
> [ 6420.733125] RDX: 0000000000000000 RSI: ff2acf1f2c6401a0 RDI: ff2acf1a27301828
> [ 6420.762346] RBP: ff2acf1a27301828 R08: 0000000000000010 R09: 0000000000001000
> [ 6420.769476] R10: ff2acf1916286000 R11: 00000000019eba3f R12: ff2acf19066460d0
> [ 6420.776611] R13: ff2acf1f2c6401a0 R14: ff2acf1f2c6401a0 R15: 00000000ffffffff
> [ 6420.783742] FS:  0000000000000000(0000) GS:ff2acf28ffa80000(0000) knlGS:0000000000000000
> [ 6420.791829] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [ 6420.797575] CR2: 0000000000000000 CR3: 00000016ad410003 CR4: 0000000000773ee0
> [ 6420.804708] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [ 6420.811034] vfio-pci 0000:ca:01.0: enabling device (0000 -> 0002)
> [ 6420.811840] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [ 6420.811841] PKRU: 55555554
> [ 6420.811842] Call Trace:
> [ 6420.811843]  <TASK>
> [ 6420.811844]  ice_reset_vf+0x9a/0x450 [ice]
> [ 6420.811876]  ice_process_vflr_event+0x8f/0xc0 [ice]
> [ 6420.841343]  ice_service_task+0x23b/0x600 [ice]
> [ 6420.845884]  ? __schedule+0x212/0x550
> [ 6420.849550]  process_one_work+0x1e2/0x3b0
> [ 6420.853563]  ? rescuer_thread+0x390/0x390
> [ 6420.857577]  worker_thread+0x50/0x3a0
> [ 6420.861242]  ? rescuer_thread+0x390/0x390
> [ 6420.865253]  kthread+0xdd/0x100
> [ 6420.868400]  ? kthread_complete_and_exit+0x20/0x20
> [ 6420.873194]  ret_from_fork+0x1f/0x30
> [ 6420.876774]  </TASK>
> [ 6420.878967] Modules linked in: vfio_pci vfio_pci_core vfio_iommu_type1 vfio iavf vhost_net vhost vhost_iotlb tap tun xt_CHECKSUM xt_MASQUERADE xt_conntrack ipt_REJECT nf_reject_ipv4 nft_compat nft_chain_nat nf_nat nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 nft_counter nf_tables bridge stp llc sctp ip6_udp_tunnel udp_tunnel nfp tls nfnetlink bluetooth mlx4_en mlx4_core rpcsec_gss_krb5 auth_rpcgss nfsv4 dns_resolver nfs lockd grace fscache netfs rfkill sunrpc intel_rapl_msr intel_rapl_common i10nm_edac nfit libnvdimm ipmi_ssif x86_pkg_temp_thermal intel_powerclamp coretemp irdma kvm_intel i40e kvm iTCO_wdt dcdbas ib_uverbs irqbypass iTCO_vendor_support mgag200 mei_me ib_core dell_smbios isst_if_mmio isst_if_mbox_pci rapl i2c_algo_bit drm_shmem_helper intel_cstate drm_kms_helper syscopyarea sysfillrect isst_if_common sysimgblt intel_uncore fb_sys_fops dell_wmi_descriptor wmi_bmof intel_vsec mei i2c_i801 acpi_ipmi ipmi_si i2c_smbus ipmi_devintf intel_pch_thermal acpi_power_meter pcs
 pk
>   r
> 
> Fixes: efe41860008e ("ice: Fix memory corruption in VF driver")
> Fixes: f23df5220d2b ("ice: Fix spurious interrupt during removal of trusted VF")
> Signed-off-by: Petr Oros <poros@redhat.com>

Thank you for all of your testing efforts, detailed explanation,
and the fix!

Is there anything interesting about your setup/methodology?
(Asking rather to explore and extend our tests, no doubts here :)

> ---
>   drivers/net/ethernet/intel/ice/ice_vf_lib.c | 15 ++++++++-------
>   1 file changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index 294e91c3453ccd..ea3310be8354cf 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> @@ -612,11 +612,17 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
>   		return 0;
>   	}
>   
> +	if (flags & ICE_VF_RESET_LOCK)
> +		mutex_lock(&vf->cfg_lock);
> +	else
> +		lockdep_assert_held(&vf->cfg_lock);
> +
>   	if (ice_is_vf_disabled(vf)) {
>   		vsi = ice_get_vf_vsi(vf);
>   		if (!vsi) {
>   			dev_dbg(dev, "VF is already removed\n");
> -			return -EINVAL;
> +			err = -EINVAL;
> +			goto out_unlock;
>   		}
>   		ice_vsi_stop_lan_tx_rings(vsi, ICE_NO_RESET, vf->vf_id);
>   
> @@ -625,14 +631,9 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
>   
>   		dev_dbg(dev, "VF is already disabled, there is no need for resetting it, telling VM, all is fine %d\n",
>   			vf->vf_id);
> -		return 0;
> +		goto out_unlock;
>   	}
>   
> -	if (flags & ICE_VF_RESET_LOCK)
> -		mutex_lock(&vf->cfg_lock);
> -	else
> -		lockdep_assert_held(&vf->cfg_lock);
> -
>   	/* Set VF disable bit state here, before triggering reset */
>   	set_bit(ICE_VF_STATE_DIS, vf->vf_states);
>   	ice_trigger_vf_reset(vf, flags & ICE_VF_RESET_VFLR, false);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
