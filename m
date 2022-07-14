Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1113575661
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Jul 2022 22:32:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 969BE40B87;
	Thu, 14 Jul 2022 20:32:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 969BE40B87
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1657830727;
	bh=2K7QqRH3m5tWebvlziRSzwE0wT9a5RPbjj8W4Cx5lhU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RC6+2PfslZg/u/Tbekt9ki8CZUkTtAvjz84Qbe0gExDpac61RHF8itKnk1O1kK/Wx
	 Uza1/kPyFt9z7G+EGjSchDQVo0RQ2M4GLpHOsIENDVSAYoEcVgDnpVs3JdfbExQ9Fo
	 he6YXOgGZcLU0cufpPMHhrzIrxd9aMVFbHY58maPeHfr7beIaPNEEA5bwuZdJNrzSc
	 Txxc7VdIz13AkuTXWFpbqQAok/IqBDAbadar3n2BJPLK71d5/9BSnbguC1QOa70HF6
	 Px2ALH3Brmy9MpTLCirX+73c05uJlnNPEFaQCyYgmn8ih5YodhvXZ7P+/v4uJGw1C0
	 N2vbwNwMuLo5A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vJQM1G1AyPGP; Thu, 14 Jul 2022 20:32:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 84B77405DD;
	Thu, 14 Jul 2022 20:32:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 84B77405DD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CB64E1BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 20:32:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A251D405DD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 20:32:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A251D405DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vjPn0EtQk8GO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Jul 2022 20:32:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C0CD7400BB
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C0CD7400BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jul 2022 20:32:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10408"; a="286364128"
X-IronPort-AV: E=Sophos;i="5.92,272,1650956400"; d="scan'208";a="286364128"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2022 13:31:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,272,1650956400"; d="scan'208";a="596225071"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 14 Jul 2022 13:31:59 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Jul 2022 13:31:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 14 Jul 2022 13:31:59 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 14 Jul 2022 13:31:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EyxiqEUGjPErtBoFtV2YO9KpN+wSOeBN/0Jb1VujenUD+PIgYfiidQFQSnggtghir1aBqJLHSSaPDDRmObBYyiZjkfUcVE6v6AY93tiMibRiHScEkqDANbjX8y92KuZ25zqsdWSADX+ooQEnE+2oliDQqJeL8zl8vfiUTca99kSR8spspMO9bSdqbn1ghF33Is1p0FRmx8mno4WGGgz8ekz2TPh5Qdy7UdE5WOpyBaRBySyTWdbGFJR8dgiFN5A1xJklc2fyJ5o3j8mbOQVZOZ2UVOhdjry1b5LQo+scyiZtaKQuDZKcev6FshLqDOxXdvXixHAxSOm3mrGwVeg1Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qEjGjhq/MimAViCuMsomRH4+qPrNHqkrHlZimamq9+A=;
 b=a2sudSjJEAesxVY37XzhgIY+5GoprQWr6tmt1R/pKlG3coMi1wWefp+WkZ1bbWvC7U7iEKpdpOJlZnKHe6xmdxP+syENZTHhgaukgl6qXrEKUhxnrxT1wtIb/9FIUfVLTqf/LKmkXq0AA7c4PskNeEdL7HFnlXPxm7gfOAr9K5JLgPIYVrkCAUI+UIOqZUmPaIedsVLJwl4J6AyJ84VUCHCEFythqrjf1DAwvE6mFLAu7u1tY4wDqHB9nOUPHjVXMtrLWWDtB++3IElWZFaC/VaZJFDeGzbKP6v0MDVOE2pZkxi7zrsdt+oFdsrGNL7De0bSPz/Tl9fHEeTDMwRS/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MWHPR1101MB2176.namprd11.prod.outlook.com (2603:10b6:301:4f::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.25; Thu, 14 Jul
 2022 20:31:57 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f864:3e02:f509:5783]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::f864:3e02:f509:5783%6]) with mapi id 15.20.5417.026; Thu, 14 Jul 2022
 20:31:57 +0000
Message-ID: <4cc6a468-1ff9-a894-543a-7baa29500aa2@intel.com>
Date: Thu, 14 Jul 2022 13:31:54 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: "Wilczynski, Michal" <michal.wilczynski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20220704123252.2962020-1-michal.wilczynski@intel.com>
 <20220704123252.2962020-4-michal.wilczynski@intel.com>
 <5b566477-85d5-d319-a81b-4b7cb064f9d5@intel.com>
 <beb3878b-df7a-2925-9a88-39e806b9eade@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <beb3878b-df7a-2925-9a88-39e806b9eade@intel.com>
X-ClientProxiedBy: BYAPR01CA0012.prod.exchangelabs.com (2603:10b6:a02:80::25)
 To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ada1835f-4750-4a82-ced4-08da65d7e584
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2176:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7WD39BS1YxfFfoXvGgoRL6efOqsApc/tnQCU4tOHTOnuL129PZKvlsICZblFitC9xnXL3yda2fA/gl3lmrNuQh6nROqnaQM1Z5Rbb+s/anpQFXaYV/7zEMbNUSYX5X7RWs4TDXnmEBmHCH8ati9Rq9lQV3QI5dsGNZ8+VuZ17UW13vY4mXIMThyvZvmM1Kbhm6OHJqI6IKo+MgYy681WXgg6r3BrCzRoeSbtgdHxf6xMRHLdCtNDt/W5e+HSA4H6OnfcMwx1W7w5dAmGHwtofCMU8zyiG4ZXU6RTY00eRo4cmp2pjPyKaepgLF3JL3z9SleAKaOio+MfMniLnBc0o8zB+Siqt2lsrO2ob99m0uTFwvHoAIlonuG2extvTiuciMzxchxyQOcp1qDN3p1DsVMZixjCclO6X9vU1R3tKfiJIuV0Ob3Vl1+sJzxH13iVMEYShYox8WxYRUiU3qFqUBTWIldEzbCjhMpesvE1tDqAAANszWn9eQ4kD7qlhZoWiS4DtxJS8vQQgCrEFOZU1hbXtLo5clNmae3Y0NbztGAmq/7ygjfTP7myL4cckcJ7lmXEpuAvqZUFYlLb6pF9ZSAhi+8KAvlLVOCrNQ7AQrnP6DqC2o2VEDHhD71toc4ecnDU0GPo8QHNwrIACLc3UnQe9HGML2r/AR3jz5jHBa6ZLZkb+qHPi/Dbk9P7BbeTUXaN7EKdSsPc5fCtwruXXSryZjPyUXQZITImLEhBOzfVmCzoq+0369J+Lcv2uVmEonkdSwiMlLEViEQFvvrW/iIKgOdA8OCP8wXT7fosF6zgImSQNskqomo08J8pmU3dE9bHaQGKqL8vGmiELq2L1uoTVtz3/qJB4vFyyncu3v0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(346002)(396003)(366004)(39860400002)(6512007)(41300700001)(8676002)(66556008)(186003)(66946007)(6666004)(82960400001)(2616005)(66476007)(478600001)(26005)(53546011)(6486002)(31696002)(316002)(83380400001)(36756003)(2906002)(31686004)(86362001)(38100700002)(6506007)(5660300002)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SC84TzJwU2owYldGckFucERzb3RhQUhmcXVDNXc1TlRpSTd1R2tmcitBdk1X?=
 =?utf-8?B?ZFdFMDZ5d0V4NDhFU3VlcnRxaUF0eGVaeTlJQUIrUVdWM3F5MzU5MzlmWC9C?=
 =?utf-8?B?MDhucjBFU2o3TVlSREVNNWdSSWpFdG5mK1NMYW1sSmFxT09zWmQ0bDh2TVFh?=
 =?utf-8?B?cm5RWFNPOHBrRVRKVnkxQnNJdzJhZDJ0eE5CaktHRGFUaFBueU9CZC80TWNV?=
 =?utf-8?B?dTJxQ0lmZzZCTWdzTmxYZ3NiVEVHYTRQV3RLVHNHNFFFdFJNSG1xTnJIdUtV?=
 =?utf-8?B?UHlIT2lUOURRc1V2RHVFL2RHa2lpblc5RUNocE53MEVzVFVGTWxvL3FEdWF0?=
 =?utf-8?B?T29wcHJWdWxibDdLazRHT1RqakJLQmJDZGVZM1RmMkFadW9YU0NMVEhzbDUr?=
 =?utf-8?B?U0dXWFg2RXZvSEhLa294SW0yaERlcm1weTg4VWg2dm5OWDJZcEtiS2p0VEFE?=
 =?utf-8?B?UHp0UzM0UmFtVWV1K0ozUkpIV2Z2cytIKzlIVnhLVkVGSXpmUVBONlA4WGRj?=
 =?utf-8?B?K1AvS0YzbGlQVzJSdkhtUXY2aDNEdk94T0tFWThNLzZNQmhDcTRHVm1FVXZx?=
 =?utf-8?B?aStIN0U2S0tGLzZjT2VzNGRRMTdJaGVRYlVYdG0yd3RoUU1kMXRuUWFrWno5?=
 =?utf-8?B?MXBWTnZ4SXhsRmhzNVNmMmpYZUFSaktHSjN0dTZhYTRaRFJFY3p5Q1hYV2gv?=
 =?utf-8?B?TU5WUTZkYTNOZDhRZE52b2ZUbVVjMWRGNFBvWUJhMzExRGlLK0tEZDkvQjJJ?=
 =?utf-8?B?NXdQczNEUDRJdFlnY3c2Mlp0RE5TL2Z4bHRwVndzUm1YS1hsTDN4WkR6Ky9u?=
 =?utf-8?B?REVZK1hGZmV5V1ZMc0cwMkh6dTdPSlZ4MjNlWGlqQ0lLd2Q0dDJ1VG1RYkgv?=
 =?utf-8?B?Y1FneWhXTEtFOGhObE5jejBZYWF6RTZrNlVSTXpZRldGQkhyNVhzWS94T2Ey?=
 =?utf-8?B?dzhzc3FTM1RaOEt6WEloTmtoUWdIdTl5VDc3ZExJWCtDczRyMHp2SWdVNjc2?=
 =?utf-8?B?Qm50TEl4TUZYRERpTUNGR3AyT1ZZK3lHejQ3MGpTYkUxSkl4ZU95VHc0YmFM?=
 =?utf-8?B?elBKNlp1dTdUMXhPZUNqc24xV0t5Y082a1RNVGVrOFEwdWdqd2pseGk4YXZN?=
 =?utf-8?B?Zm9XY3p6bzZHVnlTV0tzako2eEl1Sk94SUNSMWRzVElEUk1OUnZ2eUN6eVMv?=
 =?utf-8?B?VndKZ1BYVFN5M293OHFaT2Flby9IYXVySUVEbWxzQW53RUkxM3BMV1R3ZlhX?=
 =?utf-8?B?alNpWXVoSk0rdHc2MWtvc0JwSEwxWlE4RUFkR0xYRzYza012WElrTllsb2N3?=
 =?utf-8?B?RlhEYUFVakplRGNxWXdmbVpVYlNDYkkxaFZHNjNSdk1mc3pIWlJJMmFJQWtm?=
 =?utf-8?B?QSthc2FhamxqNEF4RzVnMm5LcWVMV0NoV2lNeFZqRUpFeHY1Nkc3Wmthb0xL?=
 =?utf-8?B?R2xZZWdpRS9KeG5kMnA1MXJMK2lkcVhNMUxRU1QxTU8wWVpkK3haM3JjNUo3?=
 =?utf-8?B?elhITFZCNGNCeFMxYndLRjdYTSsrY0dMZytaMlE3YnpmVmFST3ZsWnUraTE0?=
 =?utf-8?B?SWdmbjR2dWpKSTg0dzd5WEFZM215b3JZTnhoRmFoQmEwL0plYUNmN2x3S3k1?=
 =?utf-8?B?NGVlODhFWlpWSXorMW5HcDMxaFRhRjFTZ0NSZHdETEhFRDN1d3dwTFlBREJD?=
 =?utf-8?B?R2RaQ0RiZEFrN0pPYTd0MGY2a1JZeEs4alg0MTdRcVVoK0RYVVdIV0xsRWhP?=
 =?utf-8?B?dk5iNXI3VS9DV1V5K2lra1prcXM3L3FxYUppSzY0SDhCWlN0OHdEeVo2WUty?=
 =?utf-8?B?dE9lYnhpSWJlc2VOMGUrKzZZWUhJc2FPTXh6Q3pRdVZxam9LS3liM1RWdlJD?=
 =?utf-8?B?cHl0NnJBMS9ycWU2eEtvYWREUUtKOXFUd1Nud0laczczeFEyWGNoMlYxUHov?=
 =?utf-8?B?dElJK2NiNUJVSGFRVWRCYVdYa1ZvTkdxRUh6SURrcTBZSWdqeFF3QUQ0RDVR?=
 =?utf-8?B?aVNrbkhyT2h3R0xyTUlzK1N5NXE4TEhSMUcrZXN4V3kwUFF6UXdnQStLTjlv?=
 =?utf-8?B?bGtwTlhiQitLT3R4TzZmQnZESHcyb256NTk5RUlYUmJDSXBUcmNYeFhqMDFx?=
 =?utf-8?B?eTZSRjlHazRONEcrQ2V2QWxJU0NLdEFKWnFHSnMzQjRlODdmeU1wMU1xaDZ2?=
 =?utf-8?B?RGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ada1835f-4750-4a82-ced4-08da65d7e584
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2022 20:31:57.1125 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iFhKKZhDC3ZdX1nkYYUqGmhSnKgf25sCgFBSPwzp86EWvoSzMDIgSPt3SKZGf2TH5hwN5r04cKLBS65yggKR79TnTC9bykkTOTOT2FXoF0M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2176
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657830720; x=1689366720;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=XdsDaNX4jfIFmapBmKtQNPo3pzuKaD1Jw9hj7KmvWWE=;
 b=ikzgtnOaBI1ItylnfUWreJoLklw3R/WDUuhTYXN72RIK6tCxdlLMnmZN
 lRXHXDIOI28z6xAqZgiPp9GSa75jA6ZMb0ievbn/W15F5Tebup5gBj/G7
 Jz3t6LxAoy5VZu4PqBej9+gD+s43uLQ7cP3P6RoSnhyPYZ3WEqASFnMBW
 v7nCagS2jPn14ItkR7iL2xLBi0yQkEoRv4seTMDEhh+7VCJ+ZitV6vBXR
 eIm/eE6pKN14BqeOHBEdZHVlE3qrnkaF6RT3rvVE01GyuP4gJU6SdHjcM
 n2SN8oIV7ZSaeEF4Yco4dO6MeYMhdBOLDIy+ofpvYBOOTEpQLNDbr8Dw6
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ikzgtnOa
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

CgpPbiA3LzEyLzIwMjIgMTI6NTEgQU0sIFdpbGN6eW5za2ksIE1pY2hhbCB3cm90ZToKPiAKPiAK
PiBPbiA3LzEyLzIwMjIgMjoyNSBBTSwgVG9ueSBOZ3V5ZW4gd3JvdGU6Cj4+Cj4+Cj4+IE9uIDcv
NC8yMDIyIDU6MzIgQU0sIE1pY2hhbCBXaWxjenluc2tpIHdyb3RlOgo+Pj4gSW50cm9kdWNlIHN1
cHBvcnQgZm9yIHR4IHNjaGVkdWxlciB0b3BvbG9neSBjaGFuZ2UsIGJhc2VkIG9uIHVzZXIKPj4+
IHNlbGVjdGlvbiwgZnJvbSBkZWZhdWx0IDktbGF5ZXIgdG8gNS1sYXllci4gSW4gb3JkZXIgZm9y
IHN3aXRjaCB0byBiZQo+Pj4gc3VjY2Vzc2Z1bCB0aGVyZSBpcyBhIG5ldyBOVk0odmVyc2lvbiAz
LjIwIG9yIG9sZGVyKSBhbmQgRERQIHBhY2thZ2UoT1MKPj4+IFBhY2thZ2UgMS4zLjI5IG9yIG9s
ZGVyKS4KPj4+Cj4+PiBFbmFibGUgNS1sYXllciB0b3BvbG9neSBzd2l0Y2ggaW4gaW5pdCBwYXRo
IG9mIHRoZSBkcml2ZXIuIFRvIGFjY29tcGxpc2gKPj4+IHRoYXQgdXBsb2FkIG9mIHRoZSBERFAg
cGFja2FnZSBuZWVkcyB0byBiZSBkZWxheWVkLCB1bnRpbCBjaGFuZ2UgaW4gVHgKPj4+IHRvcG9s
b2d5IGlzIGZpbmlzaGVkLiBUbyB0cmlnZ2VyIHRoZSBUeCBjaGFuZ2UgdXNlciBzZWxlY3Rpb24g
c2hvdWxkIGJlCj4+PiBjaGFuZ2VkIGluIE5WTSB1c2luZyBkZXZsaW5rLiBUaGVuIHRoZSBwbGF0
Zm9ybSBzaG91bGQgYmUgcmVib290ZWQuCj4+Pgo+Pj4gRXhhbXBsZSB3YXkgb2Ygc3dpdGNoaW5n
IE5WTSBzZXR0aW5ncyBpbiBkZXZsaW5rOgo+Pj4KPj4+IFNob3c6Cj4+PiBkZXZsaW5rIGRldiBw
YXJhbSBzaG93IHBjaS8wMDAwOjRiOjAwLjAKPj4+IMKgwqAgbmFtZSB0eGJhbGFuY2luZyB0eXBl
IGRyaXZlci1zcGVjaWZpYwo+Pj4gwqDCoMKgwqAgdmFsdWVzOgo+Pj4gwqDCoMKgwqDCoMKgIGNt
b2RlIHBlcm1hbmVudCB2YWx1ZSB0cnVlCj4+Pgo+Pj4gU2V0Ogo+Pj4gZGV2bGluayBkZXYgcGFy
YW0gc2V0IHBjaS8wMDAwOjRiOjAwLjAgbmFtZSB0eGJhbGFuY2luZyB2YWx1ZSB0cnVlIGNtb2Rl
Cj4+PiBwZXJtYW5lbnQKPj4KPj4gRGlkIEkgbWlzcyB0aGUgZGV2bGluayBpbXBsZW1lbnRhdGlv
bj8KPiAKPiBJdCdzIG5vdCB1cHN0cmVhbWVkIHlldCwgaG93ZXZlciBJIGhhZCB0byBwcm92aWRl
IHNvbWUgZXhhbXBsZSBvbiBob3cgCj4gdGhpcyBtaWdodCBiZQo+IGNvbmZpZ3VyZWQuIFRoZXJl
IHdhcyBhIHJldmlldyBjb21tZW50IGFib3V0IHRoYXQuIEkgdGVzdGVkIGl0IGJ5IHVzaW5nIAo+
IGVwY3Qgd2l0aCBPT1QKPiBkcml2ZXIgZmlyc3QuIE9idmlvdXNseSBJIGNhbid0IHByb3ZpZGUg
dGhpcyBtZXRob2QgZm9yIHVwc3RyZWFtIGNvbW11bml0eS4KCkFzIHRoZXJlIGlzIGEgcGxhbiB0
byBzZW5kIHRoZSBkZXZsaW5rIGltcGxlbWVudGF0aW9uIHNvb24sIHRoZXNlIHNob3VsZCAKYWxs
IGJlIHB1dCB0b2dldGhlciBpbnRvIGEgc2VyaWVzIHRoYXQgaGFzIHRoZSBmdW5jdGlvbmFsaXR5
IGFzIHdlbGwgYXMgCnRoZSBhYmlsaXR5IHRvIGdldC9zZXQgaXQuIElmIGl0IGlzIHRvbyBsYXJn
ZSBmb3IgYSBzZXJpZXMsIHByb3ZpZGUgc29tZSAKbWV0aG9kIHRvIHZpZXcgdGhlIG90aGVyIHBv
cnRpb25zIG9mIGNvZGUgc3VjaCBhcyBSRkMgcGF0Y2hlcyBvciBwb2ludCAKdG8gYSByZXBvIHRo
YXQgY29udGFpbnMgaXQuCgpJIGRvbid0IGJlbGlldmUgZnVuY3Rpb25hbGl0eSB0aGF0IHdvdWxk
LCBjdXJyZW50bHksIHJlcXVpcmUgaW5zdGFsbGluZyAKdGhlIE9PVCBkcml2ZXIgdG8gY2hhbmdl
IG1vZGVzIGlzIGFjY2VwdGFibGUuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFu
QG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtd2lyZWQtbGFuCg==
