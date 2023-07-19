Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 941FB759436
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jul 2023 13:34:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A918415A9;
	Wed, 19 Jul 2023 11:34:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A918415A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689766462;
	bh=39r4kWiddoSI5gQTD53Bnzc/pifE2LuXAM7/fjWIpoI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XOVInEV7xv6u1MzxO/rfRgMfyy2cEb7/RFlNmX20OKrSWAX5+mU2aOA77AQptQeZm
	 ALUO7n5sSa7KNeLjuMKaa9q/ry5vQ81rxH+Z0wYRJbJ3MsYh4ZgNHKdTjRtcbrse6Z
	 15uH971cwrIJinnrsd72dMh2Tn2Wq58pndjRUJnB384ad4F1g7ySJ9v2uqFq+TPaKY
	 2gIXl37lJoEpX6Zq7FFbcPgxqSvUAq2I5UpWgkS//zqqoOWoP++m895Lb9E1Rp+RV6
	 rDcZDVcFh3o7B1F2E9Mr4fBZscTPGXEQOGcUaTxY6rO6LssScWV6iKO+H7WsjSY3Ql
	 wmwsgK3D3zd2g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hlhtcLijsq5z; Wed, 19 Jul 2023 11:34:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C4A840184;
	Wed, 19 Jul 2023 11:34:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C4A840184
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3AE941BF5F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 11:34:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1D522401E8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 11:34:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1D522401E8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2eUMPkyUxvvz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jul 2023 11:34:13 +0000 (UTC)
X-Greylist: delayed 425 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 19 Jul 2023 11:34:13 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8BC6140184
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8BC6140184
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 11:34:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="369995031"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="369995031"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 04:27:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10775"; a="701256877"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="701256877"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 19 Jul 2023 04:27:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 04:27:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 04:27:06 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 19 Jul 2023 04:27:06 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 19 Jul 2023 04:27:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dsJCzPbsSgSdbIre5XLqkqQwzEdQH/yVIoA/iCCBhhuagKGOW1woVSI782VK9ZOCRmyXiXlht3V3gZ66VLWcr7VbaKKZvjm9VD+xl0KUcbMH7goVyOFDKZacWdf5lGFYJTbbr60SyEJ5knzafGWHBchsmfd3PXilKk3KRWBv0L/sq8SvLYm3p7//qinKbTzwERWM96E9OHRZdEW8gbaGCQAx85LhKh4fLiFO6WdahWJBTkpwnQ5mICHnrNjQxT21tP/GPdMoqVua5TgeHwe9JGGM6EXbrm0C8Mbq3Py61JGdzI1fv5kW1cBAzJRsckmwVsQPpFF05YnE3rAb2554LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rHeHWI31TwOuM0N5Wkl5CHAGzoLLHaI5XNGbn/j6ShM=;
 b=YCuqxIDHppnhBAtk3Jx/RPWJ93ysWR8/jM2IzFGAXxrM2sOknfnLlPn2v98GOuFMlbnqlQ+Of0puHDotgOVU98cCttlb2fGkTMKg0PDzZGwMfJ/FTtN5Z+n92cjx3aIowLMFpqhP9HCPwJc+EMkj/tSYufYLkupltZiDT7qHPCjsURI7C1M+3dIrnGJAgqOyyyRdWr13GNbOGqEC8EpYcRDMfAXQ6NX7ife0t2ENbCCPBpj+WBlShZO0bNpLGRzNfGAe/irxyplWwRMoyXpq8tcytcSFZO7x65PGGzCCoVsFASf6W0UsYgUWwKmmrXIurpVYfB7MYSQTUgOpTmYFew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6738.namprd11.prod.outlook.com (2603:10b6:303:20c::13)
 by SA2PR11MB5194.namprd11.prod.outlook.com (2603:10b6:806:118::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.32; Wed, 19 Jul
 2023 11:27:04 +0000
Received: from MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::3d4e:c4ae:f083:de21]) by MW4PR11MB6738.namprd11.prod.outlook.com
 ([fe80::3d4e:c4ae:f083:de21%7]) with mapi id 15.20.6588.031; Wed, 19 Jul 2023
 11:27:04 +0000
Message-ID: <5d38c220-1aaa-b91c-f3cd-1baae851184f@intel.com>
Date: Wed, 19 Jul 2023 14:26:58 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.13.0
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20230718162857.3566306-1-sasha.neftin@intel.com>
 <b90a0c53-b68f-9cb9-df92-1b48556d5f1b@molgen.mpg.de>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
In-Reply-To: <b90a0c53-b68f-9cb9-df92-1b48556d5f1b@molgen.mpg.de>
X-ClientProxiedBy: FR2P281CA0073.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9a::15) To MW4PR11MB6738.namprd11.prod.outlook.com
 (2603:10b6:303:20c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6738:EE_|SA2PR11MB5194:EE_
X-MS-Office365-Filtering-Correlation-Id: 36d194ed-b172-497e-18f1-08db884b13ca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yo/f2IgsF9nZKUGmvwCnSghrlCfKgIuwieMMT+ADXYv6/8zQ4zrwHisja+csTxsCRvovmMkgVRBJAFivCCquFFP+i3mQf8s0uPhOKDb3r/t0yhOMg9k6UhVI6MvnymuOrkSc8F4Y6t3FayMfQytc+1a3yu+oE4o0VXrY2CDvrjlMKcKBaZ6hYo92v81T32JQ6wwv53eFNWLg+hRxs+nvF9aSR6o0ocyfmW5RNn8JPQgD2cDbs6Hd+8YsaiRiAdntK8N890S4sKb07cKUFqB0TmRLtwFPX0dPSxOI/Lp6TlVNXSEIlpr0fC7rEs3o02Rdwae6tBrcPfr7jj+Zihvzs0LeUHT4qO7RfGSKqMEAPQondbIVe9JAvWli2Th4H8ENOwQQaYbLwjD4Cf7IKJ9BCepWtOfg3UrfsRytnw6a//BOHFD4hpG83yXJXdPjEV9PirPHbpGtqykEVk9OErvQG8M9zV2nF/dF8+qoeJdkdbseOnVbFDDXmTwbc3n/tMv5SXwDxcC1u7LYeK4lk9lQ1MQ2CFDLY4hlNUPRHlHZWh0aeidtNwiXRhgX8XiKXeiwNC8tA721CCV8ciWhj9D1tVxxtKe168UtUYSEUCvZr2OP2oTRMl6foY2VMRMwIUJqQWDspiuZk/HPjd4PSmRCNQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(396003)(39860400002)(366004)(346002)(451199021)(6916009)(66946007)(4326008)(316002)(86362001)(31686004)(38100700002)(31696002)(82960400001)(6512007)(6666004)(107886003)(478600001)(2616005)(8936002)(41300700001)(66556008)(8676002)(66476007)(5660300002)(53546011)(26005)(6506007)(186003)(2906002)(83380400001)(6486002)(36756003)(558084003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?alV5TEpWRkhRbEpyVm10aXovOTVYYzRiNlRsZlduSGNYZTJlRjBXTUlPODBy?=
 =?utf-8?B?Yk10ZHNzQk9KZHRQOHVUUGFiWnF1TTZqcGVyb1FzTzJHcnhURDJwejIyY0RV?=
 =?utf-8?B?aEQrY0NRdlBJUmQyM08zVFgwWkNJbDRMSWhINmtSSzkrTzdwSWE3Z210MWFj?=
 =?utf-8?B?UlZMY05kL2RwM3dxaTNzcVRpSU5EVHRXREdvei9nZG9HUEUzYldoOEtnZWpG?=
 =?utf-8?B?ZWtQL1paaUJiaVY2Rmp1aDNWb3RxWW1NYS8vTkg4UWVHMUl6eFhYc3VqZXhB?=
 =?utf-8?B?YTRJVE1UVnNBRVJQNStDSG5ZeWN6clZiZXhJd3pMeVhXdHVRUHZZTnVyLzlG?=
 =?utf-8?B?TzlNajY3NjBaeWJzMHNpcjI2dXFrWHl3SWJOak8xeTRjbUlqbFZHRWdmUzRJ?=
 =?utf-8?B?VHVYZGNuWDU0VkgyT1d1cnBaaDNvN2c3VUM1T05kU3pwL3VWRmhDT2p3dC9E?=
 =?utf-8?B?UW5LdzdiSVhhQ0tPZFVpNHovdUwwQ2RscjJDMGJXVXRscjluZXhiSFlKT3ZQ?=
 =?utf-8?B?UmVMTlRBMGFPSFRGS2JVeE1XdWV2NERFSlRjTnF5aDBzNDdibHpBMjhDSThr?=
 =?utf-8?B?Vk1WLzlZUmNkSkttcmhvRnNXU3RoMFd2aE5VVnNXS3hGeUhDWG9xQTM1WWRX?=
 =?utf-8?B?ZzZwN3pUdEdwSURtU0Z1NlpkbFVCcCtmYWV0dHpMOThLQW1HWUJMbUowZ3BZ?=
 =?utf-8?B?eW5XOXNQSkFsVnBIMVhWb3JtRHZMNm1uT0VDa3lHTEt4VUduRndTbjVSNmUz?=
 =?utf-8?B?ZEIwQVRqSTBFcWxJdkgycEhkSFg0QzI4ZlF6RlJGa3RLM1dLNktFZytmODBj?=
 =?utf-8?B?amgwa05OSERwMUhiU2dhM1VkaStFdU0xdjZ2VHZoakcvWXR3Zmw2VzZMS0JL?=
 =?utf-8?B?YWllV1Jxa0dITVJFTGN0YmdUR2JPK1RzMDlPVVFrKy95bDF6ZEliNXZRMzY0?=
 =?utf-8?B?VHZrQU5UWGIveDFScWVUWkZ3dHZuMjA4TVk4WDkyYko5K2RpMkovZXVrSFgr?=
 =?utf-8?B?WFhkQTVaRmNnd1JTSzl1L0lLTVozMXhlTmZDdTVOTlBiWlRyS0NjaWt6dU5G?=
 =?utf-8?B?Z1crT1dEYTc0L3dUcTg5QmZ2SFQwNGhWcVJPSis2TDFTSWdMTmxMZlhFRDNE?=
 =?utf-8?B?MUM1ZFQyYm9xTG13MzJNYXBQeklWQ0Z5ZFdseFNkdlROOTEwMGFFeTdvMFRK?=
 =?utf-8?B?YlJrd25NOWhuQUtZdytoVnViTy96Z0JIWXYzNEdSdEhzZjM4ZC9XZGIrVkY1?=
 =?utf-8?B?OWRuRWZKWWVnbWVrMjArMFR3ODIwMzcybVdONkRJU3ZhdDkwR2hwc3JoV05v?=
 =?utf-8?B?YUJNc0lMWmJHVjZJTDg5M0ZJdDBZQkpkUW1sQ1JKeTg5dzAvdzRsaE9hMjl3?=
 =?utf-8?B?NGtNUjNEOXI2L0VtMmtWR1BteVNGZm5xdUtSY3FVZVZCKzdLR09zK2IyUXlw?=
 =?utf-8?B?TC81ZS8xT2huYXQzUlFaR0ZvOHVlQURVOTVvUSsxQldLRnlRQVkraFpvcTZ2?=
 =?utf-8?B?OFRGOUFjdjljY0dVL3NPUEQ4a0p4WlNmdWlPSTFSaDdrSzFvZ3RYWmFwaSt0?=
 =?utf-8?B?enBJYWFDSnptejg3ZEFDb1dJNVhKSUJDblk4YVNja1p5S0drWnhnTXVLMHgw?=
 =?utf-8?B?Z2F4ZXc4NHE4TFMrN21GVnRXVXNkVk5rbTNaQlQ5WUxRTTFqVkJXaUU0clNk?=
 =?utf-8?B?OVdvak1qM2xPOEEyb0lpVHQ2aGJ4blVZc0h5ejhkSi9PRkxVQ0xVN2ZGUHZG?=
 =?utf-8?B?TDFqd2JTV3JpL3hScWhxM3I5dWk4Sm5MZjRCbDZqZUw2VXc2R2Z2RWtIT29l?=
 =?utf-8?B?aUNXYWUyMk5WdEg2dlRqS0JIcnQ1NXR4MW1KSmJidytkeHRtMVhVbDBSWDly?=
 =?utf-8?B?d0hPNkxzaUNHMWNpZHgwQUlsZTYvZ2hrN2taOW9uNmgyRUxYZzROS01zdGpG?=
 =?utf-8?B?S1M5V0F0ZU1tU3Q4RVl4SDVRVjBIdzVxVnpTdkkxcytUSXNEa05IbGwrV1Ry?=
 =?utf-8?B?VURVbmt6TzNHWmRib0FkcnNHSHZ4cktqU21JaldzM2dSdnZFK2NDWkhvMWt0?=
 =?utf-8?B?UVpnVHp6RFdFbDZyL3ZYK3JNM2NRbmlyUVNoSVNiaVV1WUV3Z2NZVjBOdWdp?=
 =?utf-8?B?U013ZU8yUnNVM0N4c1Z1Umtrc0Q1bWQzMHc2dmJNNE10OGFMbGFnQ1Q2Z2l1?=
 =?utf-8?B?Z2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 36d194ed-b172-497e-18f1-08db884b13ca
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2023 11:27:04.2012 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tAUTYAdD4yuf+MMkJxoSxc3OsSC2hTxKEAhSQO3xwJPwHYp7HEOUgW2CJ+/AregjIbHx5zlyTyPeuuJMTfyVig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5194
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689766453; x=1721302453;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oHc6LV0Z7HhASaGVzTX9n9i+/7Y5um1zACXcQ4/Gijc=;
 b=bDyFcMREbOpkzm3XrpQNTPAcHF5w2hqbNVu/6ARkGVOOTdKyPVy3oSTS
 c1MD0mqSRKk8z9uUpVWHnfK5ktscfIPgdy5gVaQ4kKjcHJk+X3ctoChC+
 Us/ZHrsNej/Gs26cAzgqIRK5G+9abHO9sSK1YrE2ZPk+zNaR1FywUFivu
 pK6YwYj2Dp+HgPiy2yrKB4ALH3aFdyoGSWE1mY3q4vHzmIEymtCi6KVqC
 0cCro4FqHRN4lqMgyMlDAS62u67gJxDeiiZCOAokzIi3vUIsCb0Tj1cyZ
 hfMzhh0jsqRxFs5aHMQ3YqegP06YF5LoDSt3VF3kVv9N1ZjCTHxcS/cqw
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bDyFcMRE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: Add support
 for the next LOM generation
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNy8xOC8yMDIzIDE5OjMzLCBQYXVsIE1lbnplbCB3cm90ZToKPiBUaGFuayB5b3UgZm9yIHRo
ZSBwYXRjaC4gSXTigJlkIGJlIGdyZWF0IGlmIHlvdSBtZW50aW9uZWQgTlZMIGluIHRoZSAKPiBj
b21taXQgbWVzc2FnZSB0aXRsZS4KV2UgcHJlZmVyIHRvIHN0YXkgYWxpZ25lZCB3aXRoIHRoZSBz
YW1lIGZvcm1hdCBhcyB3ZSBhZGRlZCBuZXcgZGV2aWNlIApJRHMgaW4gdGhlIHBhc3QuCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxh
biBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
