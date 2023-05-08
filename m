Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7376FB13C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 May 2023 15:18:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB8A76146F;
	Mon,  8 May 2023 13:18:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB8A76146F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683551885;
	bh=FdYzCfnudpMVecn0mLhhwbQK0Q4YZoxcFi7vmm5fl1g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=R3zvn7tIpKp4Yvu/5BPBVACDrN1tgqI0CBRYOz0lEfwbqnbJ/3EJ2C3xrPwIguNVu
	 HwtYDFXz35iBXRhWp/Ci7oJPYA0YpJkQPtr+WFaOTSYIgvJTRAq3bfyU4rDgaUwDEq
	 hk7vfoEhm8ZaH+SPZXD2FMoy8nZH2/ZOSCBxQM7MRO0wjZuul0aENc9toGRBUnb9UT
	 FcFRDIRpita9TdjPNAExM1Tu0V9L3hWg41kESKORamC3xCanVCm+yK5GC5Weup9l1A
	 1HBE0V3LejoGnk13Tgt9zBSanqbB8g6tW2GsZRdaxsOLJCQbxx9ivniIntMtRTomyL
	 SjRdmVmjLDRmA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I98X8FNAPGtc; Mon,  8 May 2023 13:18:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9861A6146C;
	Mon,  8 May 2023 13:18:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9861A6146C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0C24C1BF275
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 13:18:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D128184306
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 13:17:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D128184306
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Hmc7E-TA7x9R for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 May 2023 13:17:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F18484305
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5F18484305
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 May 2023 13:17:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="435960364"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="435960364"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 06:17:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="729082326"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="729082326"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 08 May 2023 06:17:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 8 May 2023 06:17:57 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 8 May 2023 06:17:56 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 8 May 2023 06:17:56 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 8 May 2023 06:17:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aYps3x1vAwIHpvMFyx31wnzNpkxRt1dUUTeu506BjZemC+eW3ewtbux4kcabdVn3/06RQVTboMlHq2D9x9mknRG3wDYR8zJBKuD8FI4xgRb55EeShfXhQsM8Rlam6fuC4r5yd7zBZBB/X4Ct9UEA3oWQ8UxFi8lQNAaRQEankJ7Usu0bQuANfWztYvyn0/KrlZI+0a7AW5rOcUaikHGOhY1v+i3yA04YF59MNYanr2kQBFxt9NM/o1mxvh9irYUc2gRKYkgXyNBFdTn+ZYDasvwnP7RDAAr7yTe4MChWT/ErZH7YbcQeTjzlJWSQsG3PSloTSk9AauheOyFGEyifOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6FUsmAPVLe5R88PB9xuV9MvYmbjZRa8V4NskpI0+9lo=;
 b=i6Ur+DLN6aO0XDaOzrwbTCgEexxqRMgwDjwf1VjXvKYTAQsy1UZhf2htzHCj/usPl6tnBFCcr/UePDBe/uTcaVzAIkXe2qId2p/aFysBPGol4T1eseLTeVklRDJ4wLR03ik4yqbIcHvKseAbu0+CaC2lYGX6E+0GTHhdKYTDwN6Q+2OT27fRs9W+3/a3Rfx+U/hxd2hkCeU/J7r+tNsiXC8rpcUhOPuxG1SR9HT9hR7zTupILgIM1gTA6s0w0V3AyY6eOR2u2jc8Y1x4XXfXVGy+pXN3Aw3vZAOdbKZNA5MunMJ64/Bt3n8rNtxtZQdVXt5vdZiJBdYZk/tSJbXKNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by DM4PR11MB5373.namprd11.prod.outlook.com (2603:10b6:5:394::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.32; Mon, 8 May
 2023 13:17:52 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::5194:555b:c468:f14f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::5194:555b:c468:f14f%7]) with mapi id 15.20.6363.032; Mon, 8 May 2023
 13:17:52 +0000
Message-ID: <e6ead49c-13bc-9848-5d8a-bb435d6086fb@intel.com>
Date: Mon, 8 May 2023 07:17:45 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Kamil Maziarz <kamil.maziarz@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230505093749.218839-1-kamil.maziarz@intel.com>
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20230505093749.218839-1-kamil.maziarz@intel.com>
X-ClientProxiedBy: FR2P281CA0001.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a::11) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|DM4PR11MB5373:EE_
X-MS-Office365-Filtering-Correlation-Id: 85274716-3086-4a51-6c70-08db4fc6a0a6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RGCTeRX+/H4TLiIV4vlnNmv9KcpVSGuU6cV0QSRGAOtTzkSAS/nlmV8GiNCiA83YWhDtvw05lpdAENP1DDa1zjdgiOjR4l/oVxNyAaf6e+OzfyUE3G08PbNfXi9XEmSRyanUKU419BkVOSO1HqDLft+6K4yq0a4+eCSi2YPswgHSsJOBJmX9/T1w0G3F+KPM4b3UCwcZDbc0EWxmL69oeULNAlyflOziTp86Ts8GS7+12x+O1sagZ9UFoITjkCYpOvZJejFB545Y+tOyLzzB4u93IBFAuj5d05auwt6aeA3MfpJF56VeU8fhAQGcwNJyDo/s4JOk7JAJ7DrwwiqJJehm7TPCUPWBODJ4f9sUb8FsDSR2FbDwpxljBgQwxI7/EDn1JpQEuK9/rBZWN4afTpq4fRx+ju2/OhO3dIwdoFL4nWWLXymWXspfyEYgYXR9DAKwa4a1zl4lER7DKhZbNa4WG2prYD0jKpa8vsvmq3H7wUItekerNX7VAGs0g3nWWHB8Ih07H5fDblwQfqQ6yyNCBohItmfeBQqkk1P7afv1AqLkm2ol/Q8y0w0YGI4fzaXZFBBIY1X2w26DysjG7MD65DjGGt31opwmKPMs12z0T2jHJmfF/Ym/y/8fze96hl7UKgnSTc01aY0cudsRNw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(346002)(396003)(366004)(39860400002)(451199021)(31686004)(2906002)(8936002)(8676002)(316002)(478600001)(66476007)(5660300002)(66556008)(41300700001)(6666004)(45080400002)(44832011)(66946007)(6486002)(966005)(6512007)(53546011)(26005)(6506007)(186003)(82960400001)(36756003)(2616005)(83380400001)(38100700002)(86362001)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OEFIQjlPUTVYa0xZRVZ0Rm1ZbTY3SmlLUnFmOWpQQnU2M25Pei81WUoyZmpt?=
 =?utf-8?B?N2wvZUpKR1lsSjNKUHBvREx0UGEyZTl5QkNrRkNSdEYyQmZqenF5NU9YRW1F?=
 =?utf-8?B?TTQzVEY3dHhuZTg5NnRNWkcrWERlK1B3Tk1VZWhZQlFwMDg3TUVaSlppUHUr?=
 =?utf-8?B?d2x5S0dBbldGR1RkWFRaSnJJREdIZmJzRTM3SCthNnA1L3hXdWIwSGlyOTdQ?=
 =?utf-8?B?RzVmRXpvWjdmQjFXQUtEZ1A1SHh2OUgzYVZSNTVIMDRJTzRYMmJwSVY2bnlt?=
 =?utf-8?B?OXlZcnBBVGliY0EwOGM4cjZzQ0VHMzQxUm1qbVhlZmt0ckxBbTFSOG4vRExQ?=
 =?utf-8?B?STFNTXJvU0thR3c2V2k0dG5tak1NOGg3UkJMdVFOYWllOWlzRGtSR00wS0tv?=
 =?utf-8?B?Y3M3VkZIbTREb0d6RFUyRWk0L2lGWUdsdlZIYjBuWTdxZ08yMzQxTzFvOHJv?=
 =?utf-8?B?aVY5S2NtZnlmRkxSVUlHOGRIc1hGQTVFcDlBZDNqVG9Cd3lLN3RNdUMwaWtk?=
 =?utf-8?B?REhiOExjNFc1RjJ6Y3JTTm5JeEw4bitGVkJzQzZUbXgzZUxmWTFFd28zMldn?=
 =?utf-8?B?VkZEVngyQ0FNVCtzRml2WjhUVGxGSnNCcDJISmRqV3QwaVUydThBdUc4K3o1?=
 =?utf-8?B?bGsrby9yWWNpQUZLUWEweC9nVEtiN2Q3YXJUdnZaNE5ZZDlwMGRXTXYrS01S?=
 =?utf-8?B?QmRBN1RhNFZGZVB5ck1iSm9Pd1NJWWUrYm0vUUhFUnNqbmdFa2h5KzdEK0pD?=
 =?utf-8?B?SVpmRFh2OU5oOHBlYldOcTVYMkRrdjFCRXBNRVpBWFRMdTMrSGVaUW5TUWNn?=
 =?utf-8?B?RUZTbVpmb3MyWDRJWEJVUUpYbmo2dXQ2Tkxxa3ZtSVdHUlV1TElFcWVjZmN1?=
 =?utf-8?B?RTZ5UFRvYjFONGR0SDRocXRuYW5IajI1OWV3YkpnMkdRclBwSFFFRWJmWXpV?=
 =?utf-8?B?UTlCSE5QbUZ3QjVraUZIbHQ4ZjBmZElPcXRTdUVlaTlQdDEzUFBCN0c2UmNs?=
 =?utf-8?B?d2VIdFpaczFmOEJsZC9qWWtadEJiWlJDMTVIMW1TOC82bzJhQ1BIRUw2eFhR?=
 =?utf-8?B?c3haaEkvWnJEenJJQk5IeG1nMDFudVdmZUpVTzAxNzNsbk04L3JVQ2sxRHhE?=
 =?utf-8?B?USt2c2VUZzRycXR6SUplSXlRSDdBV1JnVWtsMzVUTnNiRmU5TnRpem5FT21D?=
 =?utf-8?B?SjJxUzd6S3ptVUNWMDJVMFZhc1B0bmhRZTFhY2VndnpvUmZPMEZxd0VaUzJu?=
 =?utf-8?B?WDcrZHg5b0JrUzRqT05CWUcvcnZVYXUvM25tYnZySDNnMnJKVkF2RFNQcS8w?=
 =?utf-8?B?MGtHWWhzeTRaT2Ixb3N1WXdOcEplY28yMlNMTDQ5M0N3Nkt1ckIrTGYwWjFD?=
 =?utf-8?B?ZHRxQ2hzVjZqVlN5YXVmR0FzZy9hajdTTi8vYy9abmQ2ZVY4bVZrdzYwV3NS?=
 =?utf-8?B?VFErY3NHY3h5YnJMZm1wZ1VkZ1pXUFEyTjlUdkFMUGxSeDJOdlhoZFBPcUsr?=
 =?utf-8?B?cm1jNkgxbDIwekw5ZW1KdUFScmdONHQvMDBwaGQ4ZmNZZC9Va2VRa3RzVmI2?=
 =?utf-8?B?NFcwZlExRkpBTUV3UUFuS0wyejVsWUNVSzA2YmY3dG92c0FZQTlsSG1Gb0dx?=
 =?utf-8?B?TERmYnlZWG1QY3NsVU9Nb092R1dUSmErL0IzZVBzb05TU1JoQVRYd2RnU2Yw?=
 =?utf-8?B?NmlaVU5sa2JMYVhDVTc5WXM3VzREcnhUcUJCMXVsQnFLWGJ0Z0VKZE9rSE1I?=
 =?utf-8?B?czBhUzlEbTNBd1M1ZDFyQzJLVUE4YVM1cG5WMmh0bzNaMXBYMmhscFFRbGhD?=
 =?utf-8?B?WTREanBkZlJ5TEMzTElBWllWVmxJM2pyd0RkaGRVSG1qdDZjc1U4d2dkT3Zo?=
 =?utf-8?B?THlicE5jUlhVT1VhRnlzNzJoL3RBVE9hVmpTai9UUmF4MnJGeXMvQi91WHVK?=
 =?utf-8?B?NEZWamNFcDFDZmJOV3Q5NElJaFFKSTZBZGxVQXBWZVQ5YzdzamVYaXhYUjQr?=
 =?utf-8?B?WUZxTWI0VkNlYnNlbnlxZy9TZWVzTkY2VHdDMDAvbEVXNTJ3UDlzd0JvSEJF?=
 =?utf-8?B?ZU1TWktPQ29XZjVVa095Vk1aRStRdzUxYnQvdVdrY2dGN1dmTSszWkJaVkJU?=
 =?utf-8?Q?0fZX8fo6CBnOx3BdwAg+oIN6u?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 85274716-3086-4a51-6c70-08db4fc6a0a6
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2023 13:17:52.3919 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UZk+c2B/rQXnaXTcXnR3msWeD7NnNHFVb7EL5EmOYhIJt67bTN1v0DOIGkuOTgbkdQHE3gDovudh8DSPqlIawQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5373
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683551878; x=1715087878;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=WvDHHAG7o9Re86f3lzozxgPtnfXYLaPfmy+Ehv6zBAM=;
 b=S1ycHljbqe1D6YKhQFT7oLHfUp7JLTBrKCYQog7+qSafsIMHKQOCoMEJ
 ZGdo7yBibxhY5nBnCDZWelX94uoqN3wyjfSrntlEyqbqxE9uewQMp64sh
 5GqcUuONUinXnhfS1gcsTtuJVVNiCOcmBluGhs+BX7nu+wnXcgsFA9fG3
 BJ3q6aUdQSmhAoyGmmSrGNhKNmKkQOIouglJXs7NbeUswEnN805TmROJD
 18aX8bivVc+SzjnizOU2ZqpP2RxewvNiqJCWgCD0ffK0V4JmybNf35Kth
 n+h3XyKNe/oKZK+87mUnDNYdXY2k35zoVg3USGZ4vxQL2kygo4F0wDABq
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S1ycHljb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5 0/4] iavf: fix reset task
 deadlock
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

Ck9uIDIwMjMtMDUtMDUgMDM6MzcsIEthbWlsIE1hemlhcnogd3JvdGU6Cj4gQ2hhbmdpbmcgdGhl
IHdheSB3ZSBoYW5kbGUgcmVzZXRzIHNvIHRoYXQgdGhlIGNhbGxiYWNrIG9wZXJhdGluZyB1bmRl
ciB0aGUgUlROTCBsb2NrIHdpbGwgd2FpdCBmb3IgdGhlIHJlc2V0IHRvCj4gZmluaXNoLCB0aGUg
cnRubF9sb2NrIHNlbnNpdGl2ZSBmdW5jdGlvbnMgaW4gcmVzZXQgZmxvdyB3aWxsIHNjaGVkdWxl
IHRoZSBuZXRkZXYgdXBkYXRlIGZvciBsYXRlci4KPiBUaGlzIHdpbGwgZWxpbWluYXRlIGNpcmN1
bGFyIGRlcGVuZGVuY3kgd2l0aCB0aGUgY3JpdGljYWwgbG9jay4KPgo+IE1hcmNpbiBTenljaWsg
KDQpOgo+ICAgIGlhdmY6IFdhaXQgZm9yIHJlc2V0IGluIGNhbGxiYWNrcyB3aGljaCB0cmlnZ2Vy
IGl0Cj4gICAgaWF2ZjogRG9uJ3QgbG9jayBydG5sX2xvY2sgdHdpY2UgaW4gcmVzZXQKPiAgICBS
ZXZlcnQgImlhdmY6IERldGFjaCBkZXZpY2UgZHVyaW5nIHJlc2V0IHRhc2siCj4gICAgUmV2ZXJ0
ICJpYXZmOiBEbyBub3QgcmVzdGFydCBUeCBxdWV1ZXMgYWZ0ZXIgcmVzZXQgdGFzayBmYWlsdXJl
Igo+Cj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmYuaCAgICAgICAgfCAg
IDMgKwo+ICAgLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfZXRodG9vbC5jICAgIHwg
IDMxICsrKy0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5j
ICAgfCAxMTIgKysrKysrKysrKysrKy0tLS0tCj4gICAuLi4vbmV0L2V0aGVybmV0L2ludGVsL2lh
dmYvaWF2Zl92aXJ0Y2hubC5jICAgfCAgIDEgKwo+ICAgNCBmaWxlcyBjaGFuZ2VkLCAxMDAgaW5z
ZXJ0aW9ucygrKSwgNDcgZGVsZXRpb25zKC0pCj4KClRoaXMgc2VyaWVzIGlzIGdlbmVyYXRpbmcg
dGhlIGZvbGxvd2luZyBlcnJvcnMgd2hlbiB0ZXN0ZWQgd2l0aCB0aGUgCnNjcmlwdCAocmVwcm8u
c2gpIGZyb206CgpodHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYvMjAyMzA1MDMwMzE1NDEu
Mjc4NTUtMS1kaW5naHVpQHNhbmdmb3IuY29tLmNuLwoKClszMjU3MzkuODcxOTA1XSAtLS0tLS0t
LS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0KWzMyNTczOS44NzE5MTFdIE5ldyBxdWV1ZXMg
Y2FuJ3QgYmUgcmVnaXN0ZXJlZCBhZnRlciBkZXZpY2UgdW5yZWdpc3RyYXRpb24uClszMjU3Mzku
ODcxOTYwXSBXQVJOSU5HOiBDUFU6IDYyIFBJRDogMzY3NjQgYXQgbmV0L2NvcmUvbmV0LXN5c2Zz
LmM6MTcxNCAKbmV0ZGV2X3F1ZXVlX3VwZGF0ZV9rb2JqZWN0cysweDE1ZC8weDE3MApbMzI1NzM5
Ljg3MTk4MV0gTW9kdWxlcyBsaW5rZWQgaW46IGlhdmYoT0UpIHRscyA4MDIxcSBnYXJwIG1ycCBz
dHAgbGxjIAp2ZmlvX3BjaSB2ZmlvX3BjaV9jb3JlIHZmaW9faW9tbXVfdHlwZTEgdmZpbyBpb21t
dWZkIHFydHIgcmZraWxsIHN1bnJwYyAKdmZhdCBmYXQgaW50ZWxfcmFwbF9tc3IgaW50ZWxfcmFw
bF9jb21tb24gaW50ZWxfdW5jb3JlX2ZyZXF1ZW5jeSAKaW50ZWxfdW5jb3JlX2ZyZXF1ZW5jeV9j
b21tb24gaXNzdF9pZl9jb21tb24gc2t4X2VkYWMgbmZpdCBsaWJudmRpbW0gCng4Nl9wa2dfdGVt
cF90aGVybWFsIGludGVsX3Bvd2VyY2xhbXAgY29yZXRlbXAga3ZtX2ludGVsIGt2bSByYWlkMSAK
aXJxYnlwYXNzIHJhcGwgaW50ZWxfY3N0YXRlIGlwbWlfc3NpZiBpVENPX3dkdCBpbnRlbF9wbWNf
Ynh0IAppVENPX3ZlbmRvcl9zdXBwb3J0IGludGVsX3VuY29yZSBpYl91dmVyYnMgbWVpX21lIGFj
cGlfaXBtaSBzZXMgaTJjX2k4MDEgCmliX2NvcmUgZW5jbG9zdXJlIGlvYXRkbWEgaXBtaV9zaSBt
ZWkgam95ZGV2IGludGVsX3BjaF90aGVybWFsIGkyY19zbWJ1cyAKbHBjX2ljaCBkY2EgaXBtaV9k
ZXZpbnRmIGlwbWlfbXNnaGFuZGxlciBhY3BpX3Bvd2VyX21ldGVyIGFjcGlfcGFkIGZ1c2UgCnpy
YW0geGZzIGNyY3QxMGRpZl9wY2xtdWwgY3JjMzJfcGNsbXVsIGNyYzMyY19pbnRlbCBwb2x5dmFs
X2NsbXVsbmkgaWNlIAptcHQzc2FzIHBvbHl2YWxfZ2VuZXJpYyBudm1lIGdoYXNoX2NsbXVsbmlf
aW50ZWwgcmFpZF9jbGFzcyBzaGE1MTJfc3NzZTMgCm52bWVfY29yZSBzY3NpX3RyYW5zcG9ydF9z
YXMgbnZtZV9jb21tb24gYXN0IGk0MGUoT0UpIHdtaQpbMzI1NzM5Ljg3MjE0M10gVW5sb2FkZWQg
dGFpbnRlZCBtb2R1bGVzOiBpYXZmKE9FKToxIFtsYXN0IHVubG9hZGVkOiAKaWF2ZihPRSldClsz
MjU3MzkuODcyMTU1XSBDUFU6IDYyIFBJRDogMzY3NjQgQ29tbToga3dvcmtlci82MjowIFRhaW50
ZWQ6IApHwqDCoMKgwqDCoMKgwqDCoMKgwqAgT0XCoMKgwqDCoMKgIDYuMi44LTEwMC5mYzM2Lng4
Nl82NCAjMQpbMzI1NzM5Ljg3MjE2Ml0gSGFyZHdhcmUgbmFtZTogSW50ZWwgQ29ycG9yYXRpb24g
UzI2MDBXRlQvUzI2MDBXRlQsIEJJT1MgClNFNUM2MjAuODZCLjAyLjAxLjAwMTIuMDcwNzIwMjAw
MjE4IDA3LzA3LzIwMjAKWzMyNTczOS44NzIxNjddIFdvcmtxdWV1ZTogZXZlbnRzIGlhdmZfZGVs
YXllZF9zZXRfaW50ZXJydXB0X2NhcGFiaWxpdHkgCltpYXZmXQpbMzI1NzM5Ljg3MjIwM10gUklQ
OiAwMDEwOm5ldGRldl9xdWV1ZV91cGRhdGVfa29iamVjdHMrMHgxNWQvMHgxNzAKWzMyNTczOS44
NzIyMTRdIENvZGU6IDg5IDc0IDFmIDAwIDhkIDQ1IDAxIDM5IDQ0IDI0IDA0IDc0IDA3IDg5IGM1
IGU5IDBjIApmZiBmZiBmZiA0NCA4YiA3NCAyNCAwNCBlOSA3MCBmZiBmZiBmZiA0OCBjNyBjNyBl
MCA1OSA5NyA4OCBlOCBjMyAxNCAzZCAKZmYgPDBmPiAwYiBlOSBlMSBmZSBmZiBmZiA2NiA2NiAy
ZSAwZiAxZiA4NCAwMCAwMCAwMCAwMCAwMCA5MCA5MCA5MCA5MApbMzI1NzM5Ljg3MjIxOV0gUlNQ
OiAwMDE4OmZmZmZhYWJhNjVhNjNlMTAgRUZMQUdTOiAwMDAxMDI4NgpbMzI1NzM5Ljg3MjIyNV0g
UkFYOiAwMDAwMDAwMDAwMDAwMDAwIFJCWDogZmZmZjg4ZGJiZGZlYzAwMCBSQ1g6IAowMDAwMDAw
MDAwMDAwMDAwClszMjU3MzkuODcyMjMwXSBSRFg6IDAwMDAwMDAwMDAwMDAwMDIgUlNJOiBmZmZm
ZmZmZjg4OGMxMzg2IFJESTogCjAwMDAwMDAwZmZmZmZmZmYKWzMyNTczOS44NzIyMzVdIFJCUDog
MDAwMDAwMDAwMDAwMDAwMSBSMDg6IDAwMDAwMDAwMDAwMDAwMDAgUjA5OiAKZmZmZmFhYmE2NWE2
M2NhMApbMzI1NzM5Ljg3MjIzOF0gUjEwOiAwMDAwMDAwMDAwMDAwMDAzIFIxMTogZmZmZjg5M2Fi
ZmYyMTRhOCBSMTI6IApmZmZmODkzOWZmZGI3OTAwClszMjU3MzkuODcyMjQyXSBSMTM6IGZmZmY4
OGRiYmRmZWMwMDAgUjE0OiAwMDAwMDAwMDAwMDAwMDAwIFIxNTogCmZmZmY4OGRiYmRmZWNhMTAK
WzMyNTczOS44NzIyNDZdIEZTOsKgIDAwMDAwMDAwMDAwMDAwMDAoMDAwMCkgR1M6ZmZmZjg5Mzlm
ZmQ4MDAwMCgwMDAwKSAKa25sR1M6MDAwMDAwMDAwMDAwMDAwMApbMzI1NzM5Ljg3MjI1MV0gQ1M6
wqAgMDAxMCBEUzogMDAwMCBFUzogMDAwMCBDUjA6IDAwMDAwMDAwODAwNTAwMzMKWzMyNTczOS44
NzIyNTddIENSMjogMDAwMDU1YjZlNjQxMDBjOCBDUjM6IDAwMDAwMDIxZDkwMTAwMDMgQ1I0OiAK
MDAwMDAwMDAwMDc3MDZlMApbMzI1NzM5Ljg3MjI2Ml0gUEtSVTogNTU1NTU1NTQKWzMyNTczOS44
NzIyNjVdIENhbGwgVHJhY2U6ClszMjU3MzkuODcyMjY5XcKgIDxUQVNLPgpbMzI1NzM5Ljg3MjI3
Nl3CoCBuZXRpZl9zZXRfcmVhbF9udW1fdHhfcXVldWVzKzB4NmQvMHgxZjAKWzMyNTczOS44NzIy
ODldwqAgaWF2Zl9kZWxheWVkX3NldF9pbnRlcnJ1cHRfY2FwYWJpbGl0eSsweDMxLzB4NDAgW2lh
dmZdClszMjU3MzkuODcyMzE5XcKgIHByb2Nlc3Nfb25lX3dvcmsrMHgxYzUvMHgzYzAKWzMyNTcz
OS44NzIzMzFdwqAgd29ya2VyX3RocmVhZCsweDRkLzB4MzgwClszMjU3MzkuODcyMzM2XcKgID8g
X3Jhd19zcGluX2xvY2tfaXJxc2F2ZSsweDIzLzB4NTAKWzMyNTczOS44NzIzNDddwqAgPyBfX3Bm
eF93b3JrZXJfdGhyZWFkKzB4MTAvMHgxMApbMzI1NzM5Ljg3MjM1Ml3CoCBrdGhyZWFkKzB4ZTYv
MHgxMTAKWzMyNTczOS44NzIzNjBdwqAgPyBfX3BmeF9rdGhyZWFkKzB4MTAvMHgxMApbMzI1NzM5
Ljg3MjM2OV3CoCByZXRfZnJvbV9mb3JrKzB4MjkvMHg1MApbMzI1NzM5Ljg3MjM4N13CoCA8L1RB
U0s+ClszMjU3MzkuODcyMzg5XSAtLS1bIGVuZCB0cmFjZSAwMDAwMDAwMDAwMDAwMDAwIF0tLS0K
WzMyNTczOS44NzIzOTddIC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQoKClRo
ZXJlIGFyZSBvdGhlciB3YXJuaW5ncyBhbmQgZXJyb3JzIGJ1dCB0aGV5IHNlZW0gY29uc2VxdWVu
Y2VzIG9mIHRoZSAKYWJvdmUuIEkgdGhpbmsgeW91IG5lZWQgdG8gcHV0IHNvbWUgc3RhdGUgY2hl
Y2tzIG9yIGd1YXJkcyBpbiAKaWF2Zl9kZWxheWVkX3NldF9pbnRlcnJ1cHRfY2FwYWJpbGl0eSgp
IHRvIG1ha2Ugc3VyZSBzZXR0aW5nIHJlYWxfbnVtIG9mIApxdWV1ZXMgaXMgc3RpbGwgdmFsaWQu
CgoKVGhhbmtzLAoKQWhtZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9z
dW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
d2lyZWQtbGFuCg==
