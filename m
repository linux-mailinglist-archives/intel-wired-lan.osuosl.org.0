Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0B876B477
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 14:14:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7940C40A00;
	Tue,  1 Aug 2023 12:14:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7940C40A00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690892050;
	bh=BOXq3mP3ipAeXsTHBk4kh/JHbSf4SeGE0V9CpRzYHCs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zJowqxpAAjcPc1HB1VT3R5wfKrQnz7ZGLaUQAY8SaKjZYg/cO8t6qLrNG6s+W/Tul
	 Nk8rgMsNRmT45fUUURHbt85B3lrPfjHdBgOW0e7TNoIwPmrG6fNnZg9HvCv9JAwC+F
	 tTh4cDWI/oeijtRXRcctcFqc6/Qv9YBCXd1nEzqY8+fYKCai39mT1UAK7aPbKzz0Mu
	 7BNNc6PbvKfDXDxEhIfqKOTbge1Uf/i3ehODHDqueQf1ZO9N6zVyHF85OPvpdFyl4a
	 yfM4J3stVt068GwFEjXCwlbid8lxLxrEH3dWR5c0zkiN6aA7etX7Edr+zaSrRVVYKX
	 W1yrn0IxH3D3A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eBVkE--Bf9IE; Tue,  1 Aug 2023 12:14:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 908B8417D3;
	Tue,  1 Aug 2023 12:14:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 908B8417D3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 446CE1BF964
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 12:14:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5D67781442
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 12:14:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D67781442
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4R6ZR8HNJKJE for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 12:14:00 +0000 (UTC)
X-Greylist: delayed 424 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 01 Aug 2023 12:14:00 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 803EF81453
Received: from mgamail.intel.com (unknown [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 803EF81453
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 12:14:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="354208375"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="354208375"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 05:06:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="1059375946"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="1059375946"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 01 Aug 2023 05:06:35 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 1 Aug 2023 05:06:34 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 1 Aug 2023 05:06:34 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 1 Aug 2023 05:06:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IrSL/RGo4vXbzUumMv6eUsCroRO8KzNxzmZ6vSRKv19b30AxpoeilL4d7zCY2SdsJNEYgR1QWSkrxjXHhOuGPieacv2/OjaO5N+5vGUqzyJyK0Fq+jwI4vZcebC5rRh4ZME54rO5CKZNh0ekDrzzLXbjEy3C/gz3hX+ohr+D/f5QTsCX+Oc4SBmCEETatf9zmVvFBhBPwI7tesd0elDcVbk2ott7hvCCbRXR4zBCxvBAGBxetDwl+oFOJofIGi2Zx3jI9snS/K9ovqMNJyX8mefJWGjQerGUUwofMdqqxsLwSIr9YcxNdWA1JdEtL3EI0aaDcYAQvjwldpRrPeQdBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tkudpX37bOe329WNE8LkkHTXw8DKWWjKuHhMtaB2sIk=;
 b=dAbS/mbKJVJmGfwZWeYGLnYIsBrYCsl7dl5mdGwBt8kD+X3ulcvTiMrRxi7Cz4tYFrKAx508dmZnq6jJJe5HXzLMO9FXP2fEGvhT9b4B1jm/nj9d659nD1oaw17tX4/LGwLXg41m3u+v0CdpiwnOKwGTXkB6i3OcFMe780ii4svQV6GyzWA0FqFgfhINTD9V1Czlf6wGdcWagY59f6Ydj2l9H7VjSYArZhnxrChIavvAHqAJwKeL21BS+fB83RpFnyfhw9dZRx/zHKJM7C0+8ht9pc1ijlOt+fHz2SMaCf1h9U6lRA1o5AlNqlM7LLSw7TIZnXSH9bISBv99DTigsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3674.namprd11.prod.outlook.com (2603:10b6:5:13d::11)
 by IA0PR11MB8333.namprd11.prod.outlook.com (2603:10b6:208:491::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Tue, 1 Aug
 2023 12:06:33 +0000
Received: from DM6PR11MB3674.namprd11.prod.outlook.com
 ([fe80::7f4:c05b:358b:79c4]) by DM6PR11MB3674.namprd11.prod.outlook.com
 ([fe80::7f4:c05b:358b:79c4%7]) with mapi id 15.20.6631.034; Tue, 1 Aug 2023
 12:06:33 +0000
Message-ID: <ddbc01d5-34c9-eea6-2c8f-6c8758a92792@intel.com>
Date: Tue, 1 Aug 2023 14:06:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230801115235.67343-1-marcin.szycik@linux.intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20230801115235.67343-1-marcin.szycik@linux.intel.com>
X-ClientProxiedBy: FR3P281CA0141.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:95::14) To DM6PR11MB3674.namprd11.prod.outlook.com
 (2603:10b6:5:13d::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3674:EE_|IA0PR11MB8333:EE_
X-MS-Office365-Filtering-Correlation-Id: c0147229-e328-4019-2d6c-08db9287bf1b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9xDC/qLagiCgpaYvNdNFa6DNbni9w33cW+VDn13jdIfGFindTJoBMPHQPd94hcEQr8BY19DCZjLGO4Al05W3FQykHFhlAeVcBHevgbxHr0HfAwbJ7JxBanBhS5Dnr8ZgPvSwXH3i/t1PenhSlJ+QhfqN5uU65ZnpS1TbR/+leq8zsM4FBbRMYQuxZhve4v8SX7H1XjQCUcpqcaipdyRuSPTFUcbTKJloSHnmIOzWeAOWfSvWeLiRnBimClhlnfPy7mGECpTvdcQcYxhcaWJ2F2nA7HV9kJsesxyxGo4YdxxJeO/CYQhiZbbyKFov3wkMy9jzaEcWHlGFXtsTrJqlcHQGscQnm1p43vC4atcTQxbKCNUs2dFuzsWoJw2hEDs44kuH20QS2iVxbymABY3UYJ7rtFrIML4eOTfTkvwEiIPkNrE5td/ShMBzeSv4yXzp3BxHm7Yxyj4MnjxlsMm6OlBdYvU0cTVqHGlp17HJWMyjkXxCoTzhIpdNN66Xhplz6e76RmBEtkPJzIsOw3yrnwqFN4DWpe23AU14Otf484oFYfEFZme3dY1spzyDbhsqEkFRRpOBSt/2EUmYCvJ0j4eFJnolniaYYLi7cOovUq9T5cflTJSwlTqVJtiQyglomkuxuQcaFmNvhYN6qrcPSQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3674.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(396003)(366004)(346002)(376002)(451199021)(8676002)(8936002)(26005)(31686004)(41300700001)(82960400001)(316002)(6512007)(4326008)(5660300002)(186003)(6506007)(66476007)(6666004)(6486002)(478600001)(66946007)(66556008)(53546011)(86362001)(31696002)(2616005)(4744005)(2906002)(36756003)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NldFc245cnZ2Q2I3bzNBYnQvMnFEYnRXRllaRGg4dDZGaVFIbjFPd2tSY2tJ?=
 =?utf-8?B?TGt4VkFid29hR1V1MHFLL0wyWXJSQlVpV1hRVkxnWG5ZYlIzOXZSOVQ2cjc3?=
 =?utf-8?B?UDV4Y1UxQ0tUa2t2OU5uZ2VuTVo3MXltcEcyaHJmNHVTRHMzTm5DbTExVVJ1?=
 =?utf-8?B?cTNZY2dzQzNzRC9oMDZOY2JBZGVHRE9pNjhidHMvNjR0M3BneHA1VVFxaStw?=
 =?utf-8?B?d2dISDYwdVViOVBPS2ZRQW9EZ2M2S2NSQ3QzQzBLc3lOQ2xFQ2tobzFOaTZt?=
 =?utf-8?B?MkZBbmVVM2lEREwvbVQza2lVMWlrUkhvRStURk9reHJXSTl3T3JCbm5ram9Z?=
 =?utf-8?B?OXZSVTZYbkRhQlBZdk1RdzVGZEYxcUZLMmtkZEs2MHV1ZWEvbFZJbnU3YzBp?=
 =?utf-8?B?NTZTUHVFbmxtODBHa21SaWM4eHRPblc5Njhsa3FibERxaVNWVTJJanY5OXBJ?=
 =?utf-8?B?Zjl6Z3k5UkhYUTlzUm12bk1HdHovNGdEQ0tPQVNQYUV6ZmUvTjFhMDIvaE56?=
 =?utf-8?B?V09vd0F5Zmt1RnF5Ui9jcVFkNllZcWovTlRnM2s4ZjRWQzM5RUdacUVWM3RU?=
 =?utf-8?B?Njg2cVNFUXVvK0hrNEtuODBPSUdiekRvQWppMmJLbkNadWx5SkEwNkduaDF2?=
 =?utf-8?B?WDlLdTJVMzZXbkVIWUVSRHNtL2NGWEZuRTBTK0xacC9jYkpGSUQzeCtHYlVY?=
 =?utf-8?B?ZjV4MnBTaVZWN3pvcDFqNzV5YkwzUkFrcy9XcE5WNFI0bnZzNG4zbEdJVlZW?=
 =?utf-8?B?NGdKQ2ptQk5wc2ptVjYrWUhhMVZRN2hLL051dk50aE5XcEVGUURuLzZNSnFl?=
 =?utf-8?B?cTlaeUhkdk4vUUVJTDZqY0tZVElaSm54TlVuZGhNbGRaa1dpbHlXdlgrdUYx?=
 =?utf-8?B?MlFkVTdwcW5JeUdxaHRBZE55RjhFUHNGMWNqWmFUVEc5N3BTcHNQbnM1aWtX?=
 =?utf-8?B?ZytTSm1nTmZHalJHT1d0cSt3ek1Pb20wVEdEM0xGNTc1bjYyaSttTm5wMG9N?=
 =?utf-8?B?V2R6ZFJ3OUc5SEZONnNFUGJ2eVRiRVJuVTdZdXdGZEErVm9weDZMUDJzaXJp?=
 =?utf-8?B?V1dsUXdRQnhGUTZMakZVdWhORVN4ZmtMeHJLU0c1ZFRTQWN0OVhYTWpnVVRE?=
 =?utf-8?B?T2FuV1RmN1daVURkb25MN1hVcnFjVzdnVk9DdWw4eTREc2hjdWxLd1NtTnk2?=
 =?utf-8?B?ZW5jU0JTdjZaYVpWZUtFY3laVUhiRjJJSkZGQXcyOGtUN3BadkFYTDViM3RO?=
 =?utf-8?B?MUJvV1RUTkxIVXdMdFF6TTByTWsxaGVHdXhvbFdTcW5BOUpxellhcEx2RjJO?=
 =?utf-8?B?TGdZT0RFcThacEdGMFdVNTRHdXMxb2ZWanZNWENtYUR5MFBXMWZFOUNzbWxx?=
 =?utf-8?B?ZC9lZjUyQkh3RFg4YVlNRUYrcmREUFpqcWJwYUtuVFBSZlIyV0pyZVRENjRp?=
 =?utf-8?B?ZjFiV1UvRkZmUUF4cnJpa3ppRXJ1L0orWU14QmJVdnZWNDd6N3k1MlY0cmsz?=
 =?utf-8?B?N3VKTVIwTG9xMjRSL1ZFaDlrbGhYYTRUbmxiL2V2eHRrc2tyWTFsWWEvNkUx?=
 =?utf-8?B?MVY3dU8zL0pBT3ZVNStpamFLTEpRWDBmODVRTThNSThOemxXNVlONVgxOUpl?=
 =?utf-8?B?Zk95TUlOR00zUW5RaUpkc1VWWGwwRU5NbFVBNmc3dk5rVG5kcU9oKzBnQlgv?=
 =?utf-8?B?Z1ZhVkJhQU5Ga2JrdVJVdGxXYkc1ZkhPUnVsYXdsaDJaNkFXUXdhTEtlREps?=
 =?utf-8?B?Y3QzNWFiRW5JZVFzOUpOUHEzakFOUHYvYjdRcGFhQzhiNUZkZUVhQ0pOdFcz?=
 =?utf-8?B?YjEvZlpwR0lGL3VwL2FxZS9yUFlSQW5IQnFZZ0RPS2c5azFtaW9QZnB3Vjdj?=
 =?utf-8?B?YXk1NWtxSVl2eEx4aUlLYlNVbFhyTTI2NW1KMlVYOVJwMWY2TUhwdXgwcEJ3?=
 =?utf-8?B?cWxTdWFaK2VwdDRmeXYwZ3NocDBKWE9EanN6NE14TkFWa01hbEJVQXM2NVE1?=
 =?utf-8?B?UGJROEpEN0c3RHFkcWJYQVhUZ2JjaWlGTHMybWladnkrMWt5b2ZaaUp5U0R2?=
 =?utf-8?B?UUx5dzFMRzBVQW0zNGxqeDZvU2hsZHA0cjVVRDBCblptdWFmaitsYTdpUStT?=
 =?utf-8?B?emxPNFBQUTBDZU52eXBhWDgwL1pZT2txbytsTE9jQ1ZWb3hlYWFNTVh6cTlv?=
 =?utf-8?B?Qmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c0147229-e328-4019-2d6c-08db9287bf1b
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3674.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2023 12:06:32.9536 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rBuZD3FQwCfxT3IUcP3WPeJ1zBGY4cndomb1mSHT8AwElVOiTVfBS22+iNR1ZdiPEw9hyWKgKp6Bx62BY/yPqTWe6a0fbkBmkO8UA1MlVoM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8333
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690892040; x=1722428040;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F14AWfYJmupfTDyX5b/jFgha5HpRy+foUU2P0g0xMAU=;
 b=fKC8z3y0hDOEtQ4sKxKlJZQVXsdZAfV66tKEjgNjLjzxYKG5itm9GX/H
 1FTdPx8AOw/vfxNvDrgbfsY+WMPuG9vQD/Z+TTFQ5Wr1bJBZdTcqfg7Uz
 g64c66E8uwP00L/NGu+XwHZ5LF+5tCpEJvu58tp9RYV91XZr87BrPHCh6
 TX301QfA5VX7gTCFzy08a2DidutrrkHDyrHjmnxCpJlbwW/xDKWgs7yxo
 ZsxnR23XWZUSgAmbpQEv6nVPp64iAWZg2NO6UWEobBGSDSrPvC6zF9s83
 tU9fBn/aj1l6/kboutEkpfuIvZjfeEW8BZs9llLQxw4JaUwREG2/dP6Ng
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fKC8z3y0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Block switchdev mode
 when ADQ is acvite and vice versa
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
Cc: netdev@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/1/23 13:52, Marcin Szycik wrote:
> ADQ and switchdev are not supported simultaneously. Enabling both at the
> same time can result in nullptr dereference.
> 
> To prevent this, check if ADQ is active when changing devlink mode to
> switchdev mode, and check if switchdev is active when enabling ADQ.
> 
> Fixes: fbc7b27af0f9 ("ice: enable ndo_setup_tc support for mqprio_qdisc")
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_eswitch.c | 5 +++++
>   drivers/net/ethernet/intel/ice/ice_main.c    | 6 ++++++
>   2 files changed, 11 insertions(+)
> 

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
