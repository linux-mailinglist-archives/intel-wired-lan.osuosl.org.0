Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C573E770538
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Aug 2023 17:50:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62AF760E1D;
	Fri,  4 Aug 2023 15:50:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 62AF760E1D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691164213;
	bh=q32yZ3nhHE0Kd4rxSMWubOpAC8IWyjhWCzbHk5sOgBQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kcpbO0c+KU0kVkGLeA8FzZouhNUmQkPc9qYbI5DcBwBk444sFSp34Z+xjmYw1Sn4T
	 g24KlYps7n7dNqmIcQkXcvroeBjdv2YKwohewDCr8KFxV7hgfkN+cDRhIi01LvhAbq
	 1Mk563Ls9ralbl0xMKWc8yWjRck+AZ0flPtgrLxvBU1he2qerWMLI8/sGt5Y8sgqfd
	 AzIEpb50QUCERhvJvUdrcYE6ppv4UCkQfyc99UcaT6wdbF9NPIYJPiG+hZHeA++ORw
	 AP5tLL879i+UYmFaPQX6mlUzWnZrD/BNBgA1qsvgQ2Cv85nqjeRIxoASbu0Bf9k+DI
	 80piafTIlawhw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wPROCBCXFs51; Fri,  4 Aug 2023 15:50:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE11D60C0E;
	Fri,  4 Aug 2023 15:50:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE11D60C0E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4AA851BF267
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 15:50:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9D94580C0E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 15:49:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D94580C0E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NtwMEXIk_tFI for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 15:49:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DCE7680BB7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 15:49:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DCE7680BB7
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="456560782"
X-IronPort-AV: E=Sophos;i="6.01,255,1684825200"; d="scan'208";a="456560782"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 08:49:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="1060783185"
X-IronPort-AV: E=Sophos;i="6.01,255,1684825200"; d="scan'208";a="1060783185"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 04 Aug 2023 08:49:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 4 Aug 2023 08:49:09 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 4 Aug 2023 08:49:09 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 4 Aug 2023 08:49:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nd2SVWPr9LbhYXCSAnoyxd127MCkIePv/FPbtMmKYqwuHfBIMgaKSqFGg5uE8MUaLuX0HpEIW/B5YpPL1dvWlOnlFjxZcil41g9xs6JM0xMxYw3XAZJKuZ7cvU0ET2bv9SfNdyJYbPcNwy4P30uJCo66Cll9gFCH9aS78fSnONIUJ6SjW0W5JfNRcMK93PgvMPguwwwtNQYscKpLMLDwWjNIylNs+qqIn3YpROrecOxmaInifU7gJs0R00ZpFd2iZxXEwUBrDc45CrG7FaPXEdjbz8gKNVx0JZwcDLWTO9L7XkTddTLd3u+JFWFplb8nvgcu546pTD6OsX1gpAzzCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EZhMQusbwaz8f+p+9WTnBnNWQlh1qP2X7DA4qQswAeU=;
 b=DCfm7epkyVo+S6NFbR7ViN9rkHqdsst6s6iM3B2qB6oB93o6whDb73EEWh8mMHn0RDWbUB+PQaNEdQdLfbFkQBE8KVMeOFoRaoQfcmW/Pbtu0KonkFDZCzsXwtKC3RXBHLS0F4VACZPipPNSQ/PofBiYA6NrbocpWbaE7ILkiOm8m95cJN7PWJs/qjj6QxcM2f4In67JsSaNUgAHNZ1FzQ27fltFtykqXH3L3Vau2fC8qHxN/M6g+FcUyAkoaURH8c04gtb8DaY58KRg0eZUQyDkPqur5iMayldeJz8V8tv8rOnJGva5YyTDgcBDPlL/wcgcq/TNAefS7tlxbbzpmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3625.namprd11.prod.outlook.com (2603:10b6:5:13a::21)
 by MW5PR11MB5881.namprd11.prod.outlook.com (2603:10b6:303:19d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.20; Fri, 4 Aug
 2023 15:49:06 +0000
Received: from DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a]) by DM6PR11MB3625.namprd11.prod.outlook.com
 ([fe80::44ff:6a5:9aa4:124a%7]) with mapi id 15.20.6631.046; Fri, 4 Aug 2023
 15:49:06 +0000
Message-ID: <ec63946a-c28e-8b3d-0efe-47b2638b846b@intel.com>
Date: Fri, 4 Aug 2023 17:49:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Kees Cook
 <keescook@chromium.org>
References: <20230801111923.118268-1-przemyslaw.kitszel@intel.com>
 <20230801111923.118268-2-przemyslaw.kitszel@intel.com>
 <202308011403.E0A8D25CE@keescook>
 <d67257c3-6f3d-7b69-9689-6437f91a5858@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <d67257c3-6f3d-7b69-9689-6437f91a5858@intel.com>
X-ClientProxiedBy: BE1P281CA0221.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:88::14) To DM6PR11MB3625.namprd11.prod.outlook.com
 (2603:10b6:5:13a::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3625:EE_|MW5PR11MB5881:EE_
X-MS-Office365-Filtering-Correlation-Id: 57e6402d-d5b5-4ae7-cb01-08db9502557c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nmTMAQvYbJGg+1Re/kcTILCQEMaJmocnxDQ68dk9bTedUr3zcLoivLRDA604uqZDe6Q1Ni0sAukMtNn/hslR5o+nce0EMxnIumTDG6CVYWp+7Tf1ci1NSJH2tNItVv1aNMvS5uqhC79/21k7RtUEgwPxcIjB1ODdaT2efH5s4JJVJ2/BcQESFj728evWwQ4GDEFzv+BguGF1Wp0ScZBbv87/QaisaE7fgs9bqaRHUoFqFCx9HX3TpZGaEPUeLH27iGyzTM2OqLd8lVsZieHbY9i9NtpMTPBVtRlSfBi4gWRDl6XmspmbmMzBGDIdN3+LXOqANAd0wNL9nGfLrl/8D9tUh3uBBaUSm1wDY00YvpIIZh8eJ5m+jJH7YrH6EFU2Rl8vndJyQUrv3U9gD3t0n/PZHYtu1FcMysM31EzpNhzJHDVELgRMOZqX8Cbu37OjFEvq6BWtwodSTWTPCPtTb1hvORScERD8WRZB4GQSVtiRDCA0bBngcTlgm0PtNQ3rZ3Nfu3FAIOqAcp+0Cl0VBqnqE7BPn9DCd7d2UhIaslwLiVxrPilz8ttrqq8shDWb2pOKCE7J3/AOW70aPcC0ZQrrqRR7Nu8D0rqPjvj1/UtFkbGSyIbQ8ZGYbkjIutyzpCB/L8dDmecuomdw5Sj8aA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3625.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(39860400002)(396003)(366004)(376002)(451199021)(1800799003)(186006)(2616005)(83380400001)(53546011)(26005)(6506007)(8676002)(66556008)(2906002)(316002)(66946007)(5660300002)(66476007)(4326008)(41300700001)(8936002)(6486002)(6512007)(6666004)(478600001)(110136005)(38100700002)(82960400001)(31696002)(86362001)(36756003)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U3Z1eTNvZ3RReWsrTkp1SXdxbzNsNE9XVTlYd2twN3lpZDJCVVJyMzJxOFIy?=
 =?utf-8?B?NlpxOXlwbGxvSHVzQ2pNSVNQMlRRaGRUaWtsSm02TVpUeUZValFFTTFLeEd1?=
 =?utf-8?B?NFRkbjZTTGJ6U0xuZ0pRSmtkMzBGWWxJb2tkakVWejNRdi9YOG5tREk1RkNZ?=
 =?utf-8?B?ZWhEZENNcWRJaS9Od1FsOVBDdHRDZkxseTd2WHRGZEdOTExDeGppZjBOQzVR?=
 =?utf-8?B?RmdMalJndnlHL1JyVEtxKzNtVlRIUVdMSEJyVlVBY2trQ09STzIzUmhPcmZp?=
 =?utf-8?B?TlRNeThOcEd4azFiT3NrLzNuQzUvbVlIRzd2bWtUNEZ5bkQ4N3JPeEN3UnNx?=
 =?utf-8?B?c0xpZ0pwQlVEUHlEc1NZTFRzV3lkSk5vMFExNjkzZ3k3N3hGTWd0dHArTkx3?=
 =?utf-8?B?TUVEUnJYa21adEI5N3FFMVJ3cDIwNTJYRzd1amxKOWlUblB3SFZGeHFCQnAy?=
 =?utf-8?B?ZVlzcTBCTzBPeElXbjJJcEhqYWlzcVgwdmtKcTZSTnUxS3d6M0c2OVFqWHhn?=
 =?utf-8?B?d0lEU0Z0QUtFMzNRdENMTXk3L1oyZU1wT1g3L01uZzdrN0ZhSEdZbFRSaUs1?=
 =?utf-8?B?aC9GTHVBbkFpUFFPTGg5dG45SWVnY1RxR3Y1UTllSCtsNU5mNG5Wck9FamRs?=
 =?utf-8?B?dlZDUGJHdDBXRnNXOCsza0lseGtsN1dTNm5NVXMrSzVtR0hnS3N6NjdzRG11?=
 =?utf-8?B?a24rQnVnRnB2S1ZVeHlFdndvcjZyZ1g3dVZwajVIcnZIS2ZhUHVEK0NJMm5V?=
 =?utf-8?B?NHhsVkJoUUp0SFAzVDl3ZCs0MFFXc1lOdEtKc29Ucit5TWk4QXNmenZkcXhX?=
 =?utf-8?B?dnZ6T0RpYVdXUzFhN1lERzdPc0V2NkJkaVo2SnUraTZOKzc4Q2JXYStMT0FY?=
 =?utf-8?B?VWIybDI1Y04rcHpoUkdyM2JBTlpKZ2hmd2pHNy9yQjZuamJJeUNBc0Fjc2VF?=
 =?utf-8?B?Mml2MGhxbzNxT2pYb1FUcmlIdXFNa1BUR3lrd3pmK0dyTkQ2OFBWTitlYjFq?=
 =?utf-8?B?SHZ5Y0VEYXV0M0lCSTNscmFhbGl2NTk5aklUeGVsTUgvdC80aTZkai90Mlov?=
 =?utf-8?B?c0ZoUWczaCtDOHdNS3dVNUdOOVFNSnJhQ25seUNqQitKR1VDdkNkRnBvemto?=
 =?utf-8?B?OStleUZRUTk2THl5MjROc2dHRHM0Q2RqM2NlWThwSEozVGVYVi81eUlaWkRG?=
 =?utf-8?B?U0JhUEd4K2dFMnB2R3NtWTRFM2h2cFhDaCt0V1RBYTJSa2FKMmU3N2EvdTJR?=
 =?utf-8?B?YzU0TDgvTllvemtNZ1dpalZuZG8rYUhTdWEzMnJSQTJ4RzczUEpGcGdSOUhk?=
 =?utf-8?B?N3lqcXMzdmhWalRBbncwdkRSb3d6Ti9Qd1NNNEsyeTVUTmg4Q1l0N2pOcnpZ?=
 =?utf-8?B?MThpbVo4bktOUU0ybFpXYkZKZ293amhrbWxDTlFKVWlWQXRQdGtkTjY1R3Bi?=
 =?utf-8?B?akNlYytxZWtsc1VQR1ErMXU2Q0hqL3lmMkFDUWdVQnhadjU2ekNSdTRVakJm?=
 =?utf-8?B?aEc2WEE4WGxqNTNPR3J6MGQrRXpNbi9SRW1uZG5HZVN2SmhadHpjVXpaZkVF?=
 =?utf-8?B?cHZoTy82Ry80QnVHMjV0NmEvaWZZbXR2dXVPRlEzd1BaVWozbnNHRWFUQy9B?=
 =?utf-8?B?bWM3cm0vbENOQlhyNC9UVEhnODhCNHNqeFFWZ05VbXZ0NHN1YklQZSt3Nndn?=
 =?utf-8?B?MHk2STdOeEQ0UlY2SGNyOWRoYWxrbitpL1ZWZEhVbytoWnpLNHQyVXNyeTZQ?=
 =?utf-8?B?cFE3VGFsVWVVbkhwaUU2TlZYdGRoaU45YkZaOXNmN0x6cjJXemJLa0pHT0oy?=
 =?utf-8?B?c1BJZ2p1bkxaOVFnREk0ekxqV1lRa21KdlowRUF3aUhnUjJ4c1ZlWFJXcmtF?=
 =?utf-8?B?NnFHZ0I1cUF0Umd6bmROcjd3T3ZkYXB1bjNmVmlkOVp4ckYzaXNGb0FqcWQx?=
 =?utf-8?B?d3MvanV6SW9zbU1yQ0NJaE9TNU9LS092RFI2TytEdzA0bXZ5c2tKUXVFemFV?=
 =?utf-8?B?TnRGQVRDRlhVb3N0MnlpMUR1YU1CY3JPUWx5RXBOcDNMMDlWMEozdjBoaDgy?=
 =?utf-8?B?anVmc01BZXZXc0o2WXYzTnhnVGdET2REdlhoNTJOZVM3WGtvcTZ5U1VmZXBL?=
 =?utf-8?B?d1dCU2ZYcWx6REpRVGZRM3Z5MHVlOUd4L2NDL1lCN2h4eFU5UW9SdU1aTEdL?=
 =?utf-8?B?SkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 57e6402d-d5b5-4ae7-cb01-08db9502557c
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3625.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2023 15:49:06.2318 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8VSvP3iGUigISMaKiugizAiT5+PwRNYOOrYzuYEswWGh7X1ZovFpuPkXzfiA0QfJwF70NJhqDf9ZClD4ejPKS5L7/udKq+pMd+UjIdGnCGU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5881
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691164165; x=1722700165;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Wfc+MYdmLoipgJyCyoCZUAT8oi3mkS80zhAz7vOfjhI=;
 b=knhWhpDbzeeMJXC1nRrNRkFbqiyjTPMhJ/LQgM3ASGVtZHN0+Fht7gAh
 63vJTgtkjD/9wvnt35zPjo057fQjyU0oxm1tjlJWyLLTVixP3wuV1vP3C
 Zn9Rm7t0tbZty+EHwYaLqpd94jBh4tjdT0wLGDTJQrHZ7pfVV3InDQDz/
 PukUo8SpRgy+TGxQYfV1I1eVeWzUuFU4b+Ajr6XqiqTmCQhxRJ/nFluSW
 mgIn52xli03TEy0ghfkbCROmBiyikAWH1Bx+eoElq9RZU6Vbai2XfcRi3
 ucR5cQRu/QXgSfjZtCGAy5Hqkg06ThPkOkDwiguUBl7Px2ko2zAbkpw8I
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=knhWhpDb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC net-next 1/2] overflow: add
 DECLARE_FLEX() for on-stack allocs
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogUHJ6ZW1layBLaXRzemVsIDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPgpEYXRl
OiBGcmksIDQgQXVnIDIwMjMgMTI6NTk6MDggKzAyMDAKCj4gT24gOC8yLzIzIDAwOjMxLCBLZWVz
IENvb2sgd3JvdGU6Cj4+IE9uIFR1ZSwgQXVnIDAxLCAyMDIzIGF0IDAxOjE5OjIyUE0gKzAyMDAs
IFByemVtZWsgS2l0c3plbCB3cm90ZToKPj4+IEFkZCBERUNMQVJFX0ZMRVgoKSBtYWNybyBmb3Ig
b24tc3RhY2sgYWxsb2NhdGlvbnMgb2Ygc3RydWN0cyB3aXRoCj4+PiBmbGV4aWJsZSBhcnJheSBt
ZW1iZXIuCj4+Cj4+IEkgbGlrZSB0aGlzIGlkZWEhCj4+Cj4+IE9uZSB0ZXJtaW5vbG9neSBuaXQ6
IEkgdGhpbmsgdGhpcyBzaG91bGQgYmUgY2FsbGVkICJERUZJTkVfLi4uIiwgc2luY2UKPj4gaXQn
cyBhIHNwZWNpZmljIGluc3RhbnRpYXRpb24uIE90aGVyIG1hY3JvcyBpbiB0aGUga2VybmVsIHNl
ZW0gdG8gY29uZnVzZQo+PiB0aGlzIGEgbG90LCB0aG91Z2guIFlheSBuYW1pbmcuCj4gCj4gVGhh
bmtzLCBtYWtlcyBzZW5zZSEKPiAKPj4KPj4+IFVzaW5nIHVuZGVybHlpbmcgYXJyYXkgZm9yIG9u
LXN0YWNrIHN0b3JhZ2UgbGV0cyB1cyB0byBkZWNsYXJlIGtub3duCj4+PiBvbiBjb21waWxlLXRp
bWUgc3RydWN0dXJlcyB3aXRob3V0IGt6YWxsb2MoKS4KPj4KPj4gSG1wZiwgdGhpcyBhcHBlYXJz
IHRvIGltbWVkaWF0ZWx5IHRyaXAgb3ZlciBhbnkgKGZ1dHVyZSkgdXNlIG9mCj4+IF9fY291bnRl
ZF9ieSgpWzFdIGZvciB0aGVzZSAoc2luY2UgdGhlIGNvdW50ZWQtYnkgbWVtYmVyIHdvdWxkIGJl
Cj4+IGluaXRpYWxpemVkIHRvIHplcm8pLCBidXQgSSB0aGluayBJIGhhdmUgYSBzb2x1dGlvbi4g
KFNlZSBiZWxvdy4pCj4+Cj4+Pgo+Pj4gQWN0dWFsIHVzYWdlIGZvciBpY2UgZHJpdmVyIGlzIGlu
IG5leHQgcGF0Y2ggb2YgdGhlIHNlcmllcy4KPj4+Cj4+PiBOb3RlIHRoYXQgInN0cnVjdCIga3cg
YW5kICIqIiBjaGFyIGlzIG1vdmVkIHRvIHRoZSBjYWxsZXIsIHRvIGJvdGg6Cj4+PiBoYXZlIHNo
b3J0ZXIgbWFjcm8gbmFtZSwgYW5kIGhhdmUgbW9yZSBuYXR1cmFsIHR5cGUgc3BlY2lmaWNhdGlv
bgo+Pj4gaW4gdGhlIGRyaXZlciBjb2RlIChJT1cgbm90IGhpZGluZyBhbiBhY3R1YWwgdHlwZSBv
ZiB2YXIpLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFByemVtZWsgS2l0c3plbCA8cHJ6ZW15c2xh
dy5raXRzemVsQGludGVsLmNvbT4KPj4+IC0tLQo+Pj4gwqAgaW5jbHVkZS9saW51eC9vdmVyZmxv
dy5oIHwgMTQgKysrKysrKysrKysrKysKPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRp
b25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvb3ZlcmZsb3cuaCBiL2lu
Y2x1ZGUvbGludXgvb3ZlcmZsb3cuaAo+Pj4gaW5kZXggZjliNjAzMTNlYWVhLi40MDNiN2VjMTIw
YTIgMTAwNjQ0Cj4+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L292ZXJmbG93LmgKPj4+ICsrKyBiL2lu
Y2x1ZGUvbGludXgvb3ZlcmZsb3cuaAo+Pj4gQEAgLTMwOSw0ICszMDksMTggQEAgc3RhdGljIGlu
bGluZSBzaXplX3QgX19tdXN0X2NoZWNrCj4+PiBzaXplX3N1YihzaXplX3QgbWludWVuZCwgc2l6
ZV90IHN1YnRyYWhlbmQpCj4+PiDCoCAjZGVmaW5lIHN0cnVjdF9zaXplX3QodHlwZSwgbWVtYmVy
LCBjb3VudCnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBcCj4+PiDCoMKg
wqDCoMKgIHN0cnVjdF9zaXplKCh0eXBlICopTlVMTCwgbWVtYmVyLCBjb3VudCkKPj4+IMKgICsv
KioKPj4+ICsgKiBERUNMQVJFX0ZMRVgoKSAtIERlY2xhcmUgYW4gb24tc3RhY2sgaW5zdGFuY2Ug
b2Ygc3RydWN0dXJlIHdpdGgKPj4+IHRyYWlsaW5nCj4+PiArICogZmxleGlibGUgYXJyYXkuCj4+
PiArICogQHR5cGU6IFBvaW50ZXIgdG8gc3RydWN0dXJlIHR5cGUsIGluY2x1ZGluZyAic3RydWN0
IiBrZXl3b3JkIGFuZAo+Pj4gIioiIGNoYXIuCj4+PiArICogQG5hbWU6IE5hbWUgZm9yIGEgKHBv
aW50ZXIpIHZhcmlhYmxlIHRvIGNyZWF0ZS4KPj4+ICsgKiBAbWVtYmVyOiBOYW1lIG9mIHRoZSBh
cnJheSBtZW1iZXIuCj4+PiArICogQGNvdW50OiBOdW1iZXIgb2YgZWxlbWVudHMgaW4gdGhlIGFy
cmF5OyBtdXN0IGJlIGNvbXBpbGUtdGltZSBjb25zdC4KPj4+ICsgKgo+Pj4gKyAqIERlY2xhcmUg
YW4gaW5zdGFuY2Ugb2Ygc3RydWN0dXJlICpAdHlwZSB3aXRoIHRyYWlsaW5nIGZsZXhpYmxlCj4+
PiBhcnJheS4KPj4+ICsgKi8KPj4+ICsjZGVmaW5lIERFQ0xBUkVfRkxFWCh0eXBlLCBuYW1lLCBt
ZW1iZXIsIGNvdW50KcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFwKPj4+
ICvCoMKgwqAgdTggbmFtZSMjX2J1ZltzdHJ1Y3Rfc2l6ZSgodHlwZSlOVUxMLCBtZW1iZXIsIGNv
dW50KV0KPj4+IF9fYWxpZ25lZCg4KSA9IHt9O1wKPj4+ICvCoMKgwqAgdHlwZSBuYW1lID0gKHR5
cGUpJm5hbWUjI19idWYKPj4+ICsKPj4+IMKgICNlbmRpZiAvKiBfX0xJTlVYX09WRVJGTE9XX0gg
Ki8KPj4KPj4gSSB3YXMgZGlzYXBwb2ludGVkIHRvIGRpc2NvdmVyIHRoYXQgb25seSBnbG9iYWwg
KHN0YXRpYykgaW5pdGlhbGl6ZXJzCj4+IHdvdWxkIHdvcmsgZm9yIGEgZmxleCBhcnJheSBtZW1i
ZXIuIDooCj4+Cj4+IGkuZS4gdGhpcyB3b3JrczoKPj4KPj4gc3RydWN0IGZvbyB7Cj4+IMKgwqDC
oMKgIHVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4+IMKgwqDCoMKgIHVuc2lnbmVkIGNoYXIgY291bnQ7
Cj4gCj4gU28gYmFkIHRoYXQgaW4gdGhlIGljZSBkcml2ZXIgKHBlcmhhcHMgb3RoZXJzIHRvbyks
IHdlIGhhdmUgY2FzZXMgdGhhdAo+IHRoZXJlIGlzIG5vIGNvdW50ZXIgb3IgaXQgaGFzIGRpZmZl
cmVudCBtZWFuaW5nLgo+IChwb3RlbnRpYWxseSAiY29tcGxpY2F0ZWQiIG1lYW5pbmcgLSBpY2Un
IHN0cnVjdAo+IGljZV9hcWNfYWxsb2NfZnJlZV9yZXNfZWxlbSBoYXMgIl9fbGUxNiBudW1fZWxl
bXMiLCBzbyBjb3VsZCBub3QgYmUgdXNlZAo+IHZlcmJhdGltLCBhbmQgaXQncyBub3QgYWN0dWFs
IGNvdW50ZXIgZWl0aGVyIDovIChJIHdhcyBmb29sZWQgYnkgc3VjaAoKU3BlYWtpbmcgb2YgX19s
ZTE2ICh3ZSBhbHJlYWR5IGRpc2N1c3NlZCBpdCAxOjEpOiBpdCdzIG5vdCBhIHJhcmUgY2FzZQp0
byBkZWZpbmUgRW5kaWFubmVzcy1zZW5zaXRpdmUgc3RydWN0dXJlcyB3aXRoIGEgZmxleCBhcnJh
eSBhdCB0aGUgZW5kLApzbyBmb3IgdGhvc2Ugd2l0aCBfX3tiZSxsZX0qIHdlIGNvdWxkIGJlIGFk
ZGluZyBfX2NvdW50ZWRfYnkoKSBhdHRyaWJ1dGUKb25seSB3aGVuIHRoZSBob3N0IEVuZGlhbm5l
c3MgbWF0Y2hlcyB0aGUgc3RydWN0dXJlJ3MgdG8gaGF2ZSBhdCBsZWFzdApzb21lIGNvdmVyYWdl
LiBCeSAic29tZSIgSSBtZWFuIGFjdHVhbGx5IGEgbG90IHdoZW4gaXQgY29tZXMgdG8gTEUKc3Ry
dWN0dXJlcywgd2hpY2ggdXN1YWxseSBpcyB0aGUgY2FzZSA6KQoKPiBhc3N1bXB0aW9uIGhlcmUg
WzJdKS4gUGVyaGFwcyByZWNlbnQgc2VyaWVzIGJ5IE9sZWsgWzNdIGlzIGFsc28gZ29vZAo+IGls
bHVzdHJhdGlvbiBvZiBoYXJkIGNhc2VzIGZvciBfX2NvdW50ZWRfYnkoKQo+IAo+PiDCoMKgwqDC
oCBpbnQgYXJyYXlbXSBfX2NvdW50ZWRfYnkoY291bnQpOwo+PiB9OwoKVGhhbmtzLApPbGVrCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVk
LWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
