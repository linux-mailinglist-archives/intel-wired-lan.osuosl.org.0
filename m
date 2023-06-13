Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 538DE72E712
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 17:24:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7693882001;
	Tue, 13 Jun 2023 15:24:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7693882001
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686669880;
	bh=stfHU/Qkub2I9WZEPPjWxZKaLlZHZnZdky9EGONlDgI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YBirU6KRwX8gqZMxGhes6pi71upy26L4DZtqtJHhrzMQmQAwzrKuDIGOmvY4FXqYz
	 VwXP9HtYQxfD6b8ux8gW3eHxfg6jUuSQqS4jBBPeRlzkZll4JTzGycjeR0XP+mnJRl
	 MeaPWFo0ThZDIZnxt1MW66XEBrP4HsqbnvBRLa9GlT613ZC6Xb3FpqxMC5+oUO9eK4
	 iUykj+wjMkySJj0wPVt0vKdZgb3IzTxretK5LpGCfMYakLhFVBBskypcga/xr9lb9l
	 FXLaJ8T3N2kv3JwfyWiscb97dcDHxBS0g+MWKJR5TLSvAS8Lqi6J0DD2CbMj8+LXe2
	 2fs8nD1ld51bw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FH-hQ-KS1WM6; Tue, 13 Jun 2023 15:24:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E960781FF9;
	Tue, 13 Jun 2023 15:24:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E960781FF9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 757E51BF34B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 15:24:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4C1A081FF9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 15:24:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C1A081FF9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IfmJy_LAtfra for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 15:24:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E51F81FC9
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3E51F81FC9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 15:24:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="343054936"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="343054936"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 08:24:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="781721402"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="781721402"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 13 Jun 2023 08:24:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 13 Jun 2023 08:24:23 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 13 Jun 2023 08:24:23 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 13 Jun 2023 08:24:23 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 13 Jun 2023 08:24:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ePsaG3A6foBn/radmYuVR/FtzeiSQWzJ+ahgg0+FV/yLpVQUE+wrSTbVX4tuQpKHleeKe3/YOZjdosGFJF69YfH//3du1ybeapQZJIM1I+I7Gj4D3txYob4SM5+t7Fol+Sve2QTETjL9YvmEPMd4aftJCIbF73N1SlVkjb5OYjQYhkbGAa3we+rAvy2pFCEdJOuzeNVesxn/f7PwjN7nifvsQO4m5QGk2/V4sZ6G0gcVE5KtG72URp2wnzezFx4UveXdpp11h0oBR0d8RNUzP8BPMAPDvBtcCuAJUVrLw2ph/+NE8L/w1nZd2o6k1u+P6+iAaTaSnVycrEmST0513Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WTjKZAodWDvqCxGgcASfmEMnwCTGDCbJ+QbDpIDk9ck=;
 b=A4rVpFce5oHkE0/elPdDGZbHQTuWw0GnoG3UpYzIQ64Abi6/8nz7Q43fCWNA2b35zdpHGx479kk0aS0eYpZHVVCV9yc6XU0ndXg7A5CqHczYTv3b0GpS5EI/DPK8WAL9rC+sNNK34+HaaGbxjmjhMyLAgSNGA6jd+KR6k2KI9zaNERVHUFTudPk8aZBLuCp237brddgbKDrpuquo1aWyLEj1qvRg7kQwUkUxJ7+qo5s/hxKTq4Xszbd2wlQAHre0Z+E10Xz0xJikjXGb/bdlpzi89fDFPIDqduT2mHShUfSAgChS2tz8OWNSnyStrq2ugGQgSZ9J27eNtZPEpZOZhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3672.namprd11.prod.outlook.com (2603:10b6:a03:fa::30)
 by DS0PR11MB7530.namprd11.prod.outlook.com (2603:10b6:8:146::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.44; Tue, 13 Jun
 2023 15:24:21 +0000
Received: from BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299]) by BYAPR11MB3672.namprd11.prod.outlook.com
 ([fe80::87ad:6b1:f9f4:9299%4]) with mapi id 15.20.6455.030; Tue, 13 Jun 2023
 15:24:21 +0000
Message-ID: <08b11944-984f-eeeb-4b03-777faaa3ce01@intel.com>
Date: Tue, 13 Jun 2023 17:24:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Piotr Gardocki <piotrx.gardocki@intel.com>, <netdev@vger.kernel.org>
References: <20230613122420.855486-1-piotrx.gardocki@intel.com>
 <20230613122420.855486-4-piotrx.gardocki@intel.com>
 <4db2d627-782c-90c2-4826-76b9779149ce@intel.com>
 <c9f819da-61a6-ea8f-5e16-d9aad6634127@intel.com>
 <837ccaeb-a77d-5570-1363-e5e344528f97@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <837ccaeb-a77d-5570-1363-e5e344528f97@intel.com>
X-ClientProxiedBy: ZR0P278CA0076.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:22::9) To BYAPR11MB3672.namprd11.prod.outlook.com
 (2603:10b6:a03:fa::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3672:EE_|DS0PR11MB7530:EE_
X-MS-Office365-Filtering-Correlation-Id: 49c528ef-ab8b-4b10-2dd1-08db6c2242f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: i0AtdcWvBIkdKkzypWalovP+nWqPBk8XLIACVCTXVOJ73hL/1JaA/wr84w99BcaiaIdyEhbw2e0F8fSV9p3ARl2f+gqvq8oBhXWch3SaeFuOqPF7vdVpmEE9iufyJbiO9uJQwmSZg2S68+ThwXDefR9sTTomQt6L7WdBaO+wZZo6hVyRKO2KlIrsOc7KWJtf6EQ7KY64SmfPcwkxnW7D1p10tfYQm6StbFFdL8pmgGDIZbzCfoXHxjENPk3YmkWt/JvbvGb7NdbQLyZMKk8auHbsz/kJRbJF1EjMocjvBsbyXdze8h83SnWIwl/vPbHYnpe6oCF5JShDw+JGM+ikPO8USdrY+ziU8ZrdlO8KcIP+L6polXA7iI6nxK23xd2SexVAXnDO1s1K+h5K8am1/doPvbzk9O2VwOlS7Mx1g9GWw7GhSCeAoWrmgw8oN4OYai5obQDkPHpvrsoD2buyqxr+act6TMRVOcXQ4lKcf2wxjg2U3RV5TCrPN1+GI3Jae/VSLWPVy0lDGQkT2pdimc9EF/g7WMu0fDC533rIm0OOT8Zc2l7HutkIqHwMBOX92z6QlmtofIt2L9ZuiY2W6GERPOwQ0dml0ItuWCedoeRbddoLLcyvtvJVSaOPCp2eo/1jH7k3NG9LS62twF9fzA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3672.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(376002)(39860400002)(346002)(136003)(451199021)(82960400001)(86362001)(31696002)(36756003)(38100700002)(6486002)(2906002)(6666004)(186003)(53546011)(6512007)(6506007)(26005)(316002)(66946007)(4326008)(66556008)(8936002)(8676002)(478600001)(5660300002)(41300700001)(66476007)(31686004)(83380400001)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YU9TdHVJUkE0eW53RXpwTjdiYllsQ1JBSTdPZWxuNTVENmhTanBKRUh5aW5R?=
 =?utf-8?B?OFNJWGwrREFzOEZHZC9SeklLOHJOUXJUdUZ3Tkk2ZzBLTlFqNXBxdi9naGpr?=
 =?utf-8?B?ZmxsN3F6NzlRZG9vRXF6NzJQMHlLT2xsTjM0R2swbTRlSkZqU0RLTjFCLys1?=
 =?utf-8?B?Sko0OUJIcXNlL3V1MlcyQk9kZThNZGhZKzV6Q0lXdVJEYmM3cEd2Zjc1b1Rj?=
 =?utf-8?B?VWxrVkhQYnpVU3lOMUtiNDBqMWl4RnFPQ3FvYkJzamF0S3llb2RJTXBpRVVi?=
 =?utf-8?B?S0g3RnNBQng1b3JEeEowRFQ1YjhvWExaNXVlUW9xK0xheHJMOHlhQmRYT2Zu?=
 =?utf-8?B?cWc5U05NR3VuZFJDVWY0TTRGWVpnaE03cU5rd25jakZNU3g3V0hJS081R2ZP?=
 =?utf-8?B?WlhuM2E2K1hHYUdPSUN5amx4SktmWEtqU2E3SGlsK3JDV0RNblVzWnNDbWlv?=
 =?utf-8?B?aC9IQzFxWVozaUVWekMwajJTaElSWTBpMU85aEMwMXA1QkU4cC9ZR04ySUhG?=
 =?utf-8?B?WkE4bmJnNHE3NGIyZkFLVUk5dldVNUd1MDFaZTZnV1ZhWjFVZEpyRjZPeGVv?=
 =?utf-8?B?VmYxYnVHMmhPa3JONVc2RTNrb1E2d1o0SU96ZWhCb042NkE2ekNjS0tBbzlh?=
 =?utf-8?B?SnVvRkpxVThBTm1udkpQY1R4NFRyd0xxRmd0UUQzQ3I3T2tmK2ZJYWhFVlA0?=
 =?utf-8?B?MEcrNkdmV1ExVy80ZXdsR3Z4SmRVOU9WWjNYSVl3YmRmT29IUUcwZDcvb214?=
 =?utf-8?B?a1NwV3hITWpjZG5OcERjUy9SaDQzM21CZmN5eHRZbkQ1T1ozejBYakhkeWNF?=
 =?utf-8?B?STM0dmkvTytRamVmNjM3SmpWNFBFaWdQMUxJTUc5M0RFZXdJeXNpNWRrSm54?=
 =?utf-8?B?MmZPc1FJc2lPNzR1dWpNemdVVnJkYVZHcEt3VnVBdTFZUlZHcllvdHZZVmpW?=
 =?utf-8?B?b2UzNmJqdDIvcC80clR3dzZoRGpGVUxNcFUvTjNQRmdoY3BmU3g2eG8vbWpW?=
 =?utf-8?B?aGZwdEtpQnpsZGlLbWxzdnNlRkVUTzlFRld2N0NqNVR3OFhzaEJmRHVoMGFw?=
 =?utf-8?B?WTlLVFdZN1JnTUY1c0phUERvek01amlEeHNGYTBOUGxjOVM0YnZkZ0EvSzdt?=
 =?utf-8?B?OEJtYlZEcVMzZm9VcDdoMGt3ajZncFZ6QTMxc1VoQ2pPVmhnZFlGbFFCdENV?=
 =?utf-8?B?bmFOU2RGWDd6WGpmU2RTTStzeDhDMVdwaGRDL2c4VU5tUnQ3T0cwN1ZLRkx3?=
 =?utf-8?B?RGlFc25Cbml3RWl4QzJIUVAzY0w0dFBNVjdoUmhMMFhZdXdHckRZM2VCaS9j?=
 =?utf-8?B?SlNKY1ZPbE9uS2RKTzVITXl3VHM5YlpMZFUrbWxsT3NRNTAwSXBOdG1iU0JI?=
 =?utf-8?B?a2N2RFdjS0xJNG53bHBVYzR5ekNmcS9Jd2pkNktjbElYUmJ4SkNTWm91SGFP?=
 =?utf-8?B?bFE2OFdnK1BtS1BjanErbktxZTh0VFVPWW1pZWlhbmhZcGhYdGxJQyt1SWNz?=
 =?utf-8?B?L1RvWTBPTUM1anJlQ1FucGhqbHp1ckZZTERQam5kQlM1djU5OHpHM1Q1dS82?=
 =?utf-8?B?UkpBSDByVHp6bUQrcnhMbTZZcnBzcjYwQTd3M2lxT0J1eWorZmd1VDRWZUdD?=
 =?utf-8?B?THdXbzRNanEwYVg3dE94elgyN29vemsvdGlkVERseWw2WWxwUE9vTFFJL0lE?=
 =?utf-8?B?SUQzRW1EUjZZWFQ0RGNTWjdreERaYytQOWE3WVpZOVhvUE0vVjJnYnYvQVU3?=
 =?utf-8?B?SnI2VC9hRDdhQTNRYnkxWndwVDZXTGltMFYwSlNpSFFXMTNVNTVQRGprSmdp?=
 =?utf-8?B?Vm1SZEpURTR2czJNU3dpRjJONDlUZ2pDMjlXSnRJUDgrSzNwb0ZWTGo0T29q?=
 =?utf-8?B?Q0pZcFJVL1BFaDU5TGdnTS9SRndHWnZUMjBIbDBjZjdybXdTNmxBSkRLdkdD?=
 =?utf-8?B?Tmg1aXpVZjNKSE0zZklYWnJZemRReWxhdlRzU05pMjU5MFZZTlYxdmUyTnlt?=
 =?utf-8?B?MVB5ei9RbHViVmR1VzJFNE1sUFBlcHo1d05nSjFnQ0FpUEw2N1ZmeUJRQjd1?=
 =?utf-8?B?aFYzM09pR2RyYnFhc1RUVEJsZlAyVTN0TjlnczkrMmgyUlBUbGtZWFY3UU5B?=
 =?utf-8?B?ZWFQQmVyMXhjaDdtTERGNUtwcHNIMUxyRVBCQUs0anJtdmRDaS94RVRsNkJj?=
 =?utf-8?B?L1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 49c528ef-ab8b-4b10-2dd1-08db6c2242f5
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3672.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2023 15:24:21.3432 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aeSyyf+OGPNkP/3E4MnSWGfbBes/Fo0I8XM59lhriA3pxySIeCg66xT+TVMYtTf2C+sdz2wcjffiwNo7C9ohaCzjAlVeR5P2L7fTVYOgdI4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7530
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686669872; x=1718205872;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZcSJUWc0sk1v9+sHv/arc+amI0uK9iruJVjHs9hXEio=;
 b=TbYkEDwkCbMpDXMXoadJmeEfZGn/9BsUM6r5fHBvjSM03VDuvYc6KVgH
 5wvNkgX5gOktKCs8kK9nY0uL8HdX83QmrCDuQIPfGMm2O2DT8ud8D6kN8
 How/m/QYLgeZ+2w7ati8o2zL6mIN8183/NMNmWjqN63znG0DZ+SSJSVY+
 hjYu9PfQ5bjfX0tHSFuJq0IY+SssZDmbEhQD65H0nia0Q/q1t1WI1L25I
 05zwT/sMamxPdNnZfP6RPai+ZmUj5ksHypGDhLceVb1FVhbN/mNKVGM1v
 3QXjRFZOrpxMrER8Vsv7c8PrEhGzggYMxQajAtkFHv6SHIqtM2cK0Jj+C
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TbYkEDwk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 3/3] ice: remove
 unnecessary check for old MAC == new MAC
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
Cc: pmenzel@molgen.mpg.de, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, kuba@kernel.org, simon.horman@corigine.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gNi8xMy8yMyAxNzoxNiwgUGlvdHIgR2FyZG9ja2kgd3JvdGU6Cj4gT24gMTMuMDYuMjAyMyAx
NzoxMCwgUHJ6ZW1layBLaXRzemVsIHdyb3RlOgo+IFsuLi5dCj4+Pgo+Pj4gSSB3b3VsZCBleHBl
Y3Qgb25lIHBhdGNoIHRoYXQgYWRkcyBjaGVjayBpbiB0aGUgY29yZSwgdGhlbiBvbmUgcGF0Y2gg
dGhhdCByZW1vdmVzIGl0IGluIGFsbCwgaW5jbCBub24taW50ZWwsIGRyaXZlcnM7IHdpdGggQ0Mg
dG8gdGhlaXIgcmVzcGVjdGl2ZSBtYWludGFpbmVycyAobGlrZSBUb255IGZvciBpbnRlbCwgLi9z
Y3JpcHRzL2dldF9tYWludGFpbmVyLnBsIHdpbGwgaGVscCkKPj4KPj4gSSBoYXZlIGNoZWNrZWQs
IGl0J3MgYWxtb3N0IDIwMCBoYW5kbGVycywgd2hpY2ggYW1vdW50cyB0byBvdmVyIDM1MDAgbGlu
ZXMgb2YgY29kZSAoc2hvcnQtY3V0dGluZyBhbmFseXNpcyBvbiBldGhfaHdfYWRkcl9zZXQoKSks
IHdoYXQgcHJvYmFibHkgY291bGQgd2FycmFudCBtb3JlIHRoYW4gb25lIHBhdGNoL3BlcnNvbiB0
byBzcHJlYWQgdGhlIHdvcmsKPj4KPj4gYW55Ym9keSB3aWxsaW5nIHRvIHNlZSB0aGUgYWJvdmUg
Y29kZS10by1sb29rLWF0LCBvciB3YW50cyB0byByZS1ydW4gaXQgZm9yIHRoZWlyIGRpcmVjdG9y
eSBvZiBpbnRlcmVzdHMsIGhlcmUgaXMgZGlydHkgYmFzaCBzY3JpcHQgKHdoaWNoIGp1c3QgYXBw
cm94aW1hdGVzIHdoYXQncyB0byBiZSBkb25lLCBidXQgcmF0aGVyIGNsb3NlbHkgdG8gcmVhbGl0
eSk6Cj4+Cj4+ICDCoGdyZXAgLUluckUgJ1wuJ25kb19zZXRfbWFjX2FkZHJlc3MnXHMrPScgfAo+
PiAgwqBhd2sgJyEvTlVMTC8ge2dzdWIoLywkLywgIiIpOyBwcmludCAkTkZ9JyB8Cj4+ICDCoHNv
cnQgLXUgfAo+PiAgwqB4YXJncyAtSSUgYmFzaCAtYyAnZ3JlcCAtRVJ3SWwgJSciJyInXChzdHJ1
Y3QgbmV0X2RldmljZS4rXCkkJyInIicgfAo+PiAgwqDCoCB4YXJncyAtSSBAwqAgYXdrICciJyIn
LyVcKHN0cnVjdCBuZXRfZGV2aWNlLitcKSQvLCAvXn18ZXRoX2h3X2FkZHJfc2V0XCgvIHsgcHJp
bnTCoCAiQDoiIE5SICQwIH0nIiciJyBAJyB8Cj4+IGNhdCAtbgo+Pgo+PiBAUGlvdHIsIHBlcmhh
cHMgcmVzb2x2ZSBhbGwgaW50ZWwgZHJpdmVycyBpbiB5b3VyIHNlcmllcz8KPiAKPiBUaGFua3Mg
Zm9yIHNjcmlwdCwgbG9va3MgaW1wcmVzc2l2ZSA6KS4gU29tZW9uZSBtaWdodCByZWFsbHkKPiB1
c2UgaXQgdG8gZGV0ZWN0IGFsbCBvY2N1cnJlbmNlcy4gQXMgeW91IHNhaWQgdGhlcmUgYXJlIGEg
bG90Cj4gb2YgY2FsbGJhY2tzIGluIGtlcm5lbCwgc28gdW5mb3J0dW5hdGVseSBJIGNhbid0IGZp
eCBhbGwgb2YgdGhlbS4KPiBJIGZpeGVkIGl0IGZvciBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bCBkaXJlY3RvcnksCj4gb25seSBpNDBlIGFuZCBpY2UgaGFkIHRoZXNlIGNoZWNrcy4gSWYgeW91
IHdhbnQgbWUgdG8gY2hlY2sgYW55Cj4gb3RoZXIgaW50ZWwgZGlyZWN0b3J5IG9yIGlmIEkgbWlz
c2VkIHNvbWV0aGluZyBoZXJlLCBwbGVhc2UgbGV0Cj4gbWUga25vdy4KCnRoZXJlIGlzIGV0aGVy
X2FkZHJfZXF1YWwoKSBjYWxsIGluIGlhdmZfc2V0X21hYygpLCBldmVuIGlmIG5vdCBleGFjdGx5
IApiZWZvcmUgZXRoX2h3X2FkZHJfc2V0KCksIGl0IHN0aWxsIHNob3VsZCBiZSByZW1vdmVkIDsp
CgpBbnl3YXksIEkgd291bGQgZml4IGFsbCAzIGRyaXZlcnMgd2l0aCBvbmUgcGF0Y2guCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxh
biBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
