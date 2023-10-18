Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CEAC87CEAEB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Oct 2023 00:03:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C93983478;
	Wed, 18 Oct 2023 22:03:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C93983478
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697666615;
	bh=h6mRvsin/ak7Ek4VLUhiO4N12atuYy9eqeEhb/L4wKA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=X77zheSA3CBAFSUcE4UPoi6DFxxgZmQ0et+JJB/4wMhD97lHmg6S7JTFwJ53z7+6P
	 U02iIVao+2bUE1If8fl49Cgmi++jUjU+kh01WqmKz0f3pER2qFMO0Z7QmPRbzHOn3+
	 I7mVXu7ixyJFtWQQODB8Uf2Mkbpeq5r8PhoWtOZm5PpJTWY1rMMlrbuCnosffcyqpQ
	 nkk0/ncX5vtDguu3p4tRh2GPRTeTXy9ywJC0tExTn4Bhgs636FyJdF6N63f5h5kLkN
	 PQhwko6l8me+cp5XePu6X0XR9ffg5oHCW1rbBDrpBD7ubZnK8wZLAbXw98z9AYLfOk
	 RGQMutv9kaEJw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u7FZAbYmegZv; Wed, 18 Oct 2023 22:03:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9C5D783459;
	Wed, 18 Oct 2023 22:03:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C5D783459
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D32951BF39F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 22:03:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A9F2161392
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 22:03:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9F2161392
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AchPjKVC5qhk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 22:03:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 66D2F60EF9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 22:03:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 66D2F60EF9
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="390001571"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="390001571"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 15:03:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="930361670"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="930361670"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2023 15:03:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 18 Oct 2023 15:03:25 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 18 Oct 2023 15:03:25 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 18 Oct 2023 15:03:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZqQeQBCP+qgt6dTJ7QfbBSuuqk50TSJHdLL6mosz/Wb1j1qNGRpIe8tGLuQYUXtrQfLQCYuyfRxZuEHRBDc0ak7NhNcW7Rj8zb5gUUqmCdh+evhv9t8fvPiWKUWti43oZz+w6/hEUzv2ZWXzosN+FT+4/P0slpojIveD1Vr4WfALp9y6BZxfnKf57avRWe1Gy+swXdCQ1EHhUCf21nBT9QND6/P6hIErO3GDXYkmowhP8VKFOCu+7wGeRd/XyaTTE3IGphDRkkXiazh9Nfrp27WEfKMkIrTK/pouWsAMk1K2/AKKFW8e3Amyo+sgI1sZix677fWsjxgVvem55w1hIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KunKOg8lSplx+a70QrNY85e1nZUsX5VbRH5PKKYIUMI=;
 b=M+KH6id+KvI/46IH9ONAudnlEn+5HVROf7AqqLnek0JVQjp6R9VW11Vskp62s+vmlgSK4TDOY8RI4jh0e/aMDQon14nN3rwWf7DyzpO7ojH4lvC+BNjXcTAJ5tUimvib/9F8J3KCWgv8T+id+ivnVg3EQXfh8OzcZhSEfTDUemzLuethyOR0daWtrMqyyjcXRGlsBgZMiaQ2LUDyZt9IYyuciiWCpAqLwOhZ8f5HmpUMDRtepymSC9PoXjWYftNJS5+N5dFlE02jUI1BXWQ46teWbp9lKBKjfSM7AMmGsiert34wb5/x7ZXUMc3whbK0onbE8+bYJUBEMu3j9h9mHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MN0PR11MB6301.namprd11.prod.outlook.com (2603:10b6:208:3c3::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.35; Wed, 18 Oct
 2023 22:03:16 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::34a7:52c3:3b8b:75f4%4]) with mapi id 15.20.6907.022; Wed, 18 Oct 2023
 22:03:16 +0000
Message-ID: <17b4725f-b81f-4760-bb90-ac8fa9467227@intel.com>
Date: Wed, 18 Oct 2023 15:03:13 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20231018163908.40841-1-maciej.fijalkowski@intel.com>
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20231018163908.40841-1-maciej.fijalkowski@intel.com>
X-ClientProxiedBy: MW4PR04CA0070.namprd04.prod.outlook.com
 (2603:10b6:303:6b::15) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MN0PR11MB6301:EE_
X-MS-Office365-Filtering-Correlation-Id: 9cb114b0-869d-44fd-a7c9-08dbd026076c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wUrz5Ig0lNSPLgnZdQnpFXM5r9jVtS0ovXV9dz8onaII+ia0aaeK8HJyACv6kIrJS8egUbWxiJfLFU4qB3Hou+pHym98P+9RGEWNNCQ3hde0V0GC09xGDMKinbypna5rBKpuZ8S7DGz4pziVwww9rJs3z9LF3kpkoPRstPpOOdoXdCW3qXTxgBZ+IrjCxVkHuvylTuKLiceo1MoDcLXdmvHLrvAk+xc0pUEyHkuuQce0f0ZijET8cUh6th4WgZl6shcwuj7n3G0hHZZahohxlXKuoiQqUPAwe2ck73o23D9OkvmbAXCLohoo2dLVQVrnnnP0c/OOxH5/6pPx/5hXMmQel0mS2DEYGxgAyMEMokiBCt7Af4iDexFOyGz2aZkEhnLbsy5viuo/bItuLhR2yUcc6oBNWtGPeO9/zKmuZUvj0wcfs/Up3T7Fon+llbusykf0/RNGQLCN74+YUSmS6wnIYVBeC81kmKksvXLi5Qv5FC9tiXyQLr24ZTcxY8kpy3t3yTXCIKTGEgWilzc8d9YZVeSAS/euUvMN+slk2GFcDNfa3OQf5R+QtTYbht1k7CfDyCFahabrI6v1h0jJj+ZFM+ENNuNg12nDIcpuoGbzLHmWXv2YK63ECFzMCxLC9zLMhfs/mimt9LWXgv5DAg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(346002)(376002)(136003)(366004)(230922051799003)(1800799009)(64100799003)(186009)(451199024)(6486002)(316002)(2616005)(31696002)(107886003)(478600001)(2906002)(66476007)(6506007)(66556008)(66946007)(5660300002)(4326008)(8676002)(26005)(41300700001)(8936002)(86362001)(6512007)(36756003)(38100700002)(83380400001)(6666004)(82960400001)(53546011)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V3J5THVvRGloUmlmNDUrcmJwSXlZbXhjUjU2MGg0L25icVBNSW5MT0M5NUlI?=
 =?utf-8?B?WEtmTXlIVEdxcmFCNjF5Q3g0c0E5TDF0VWIvVU5aUEpReis4dFhtMUpwWSs0?=
 =?utf-8?B?NG9Obi9zWFlSVEVMV2xtT0ZCaU1sVXl3eEU2aW40UzNVWHROM1ZqS0x6M204?=
 =?utf-8?B?d29OZi9NYUVYMk9kdHYvL3AzTjRXbXJTY0pZMmpMcnBTeW5vVjFDNVpuWG5m?=
 =?utf-8?B?T0RlS2tKYWtNZmNEYVJjYmxwaDZMQm1WNFVOWEQ5cTJHdW9TTmJmSXAvaVJk?=
 =?utf-8?B?THZxWjN6RTkxVWtxQnFHRnJzVkR2Q1M2dExoZVFCZVUxQW5LT2xFdzRpM2VI?=
 =?utf-8?B?L0VqOHJNWmhBRVJOam0wakNua1ExRVpTc0ZrZUxkcVlTTHA5Mk9Jci9VV080?=
 =?utf-8?B?NWJYb2t0TUlTa1JIcTJleTBKZEVFTHQxNFR6TnBHaFFTYWJxaUJGNGoybU5t?=
 =?utf-8?B?NEpxb3k4Uis3ZDhBR2Y1RThQLzhmRXUzakt2aVIzNm9HR2hhOEdxbkcvWmxJ?=
 =?utf-8?B?L2JrelplRk82VXdaT3cveVN6a3NuVzJnUFlPTVZyV0s1djl4aFViVk5FOTNm?=
 =?utf-8?B?ZEt1c0hRbW9FRlZXM3RZamFldC9HVkJhNVpPYklxYi9tblVkRkphZXNBcmJj?=
 =?utf-8?B?WktOTlp4WG54ZTNJeVp2Mk9GazRNU3RVdnA3dGdJb0hEVG9hNFJhRTY1bFJp?=
 =?utf-8?B?RWxaaWhKbGdmOCtTRVN2TVRMQ25tWjBvSFZiWjJ4U3BueENsYXVRWUJHMmNh?=
 =?utf-8?B?WXJ0R01zMDVDRTh4Vlc5cGNiSng2emZuNXZwNzZ0anpIN0JJNXgwZ1M2QlUv?=
 =?utf-8?B?K0ZpbllUbjhNYUlqUXVicWhOcjQ5dEdxbnltdERuVHVsaVkzdnp2SHdRQjVq?=
 =?utf-8?B?TG9NQjd6d3BzU1dtaTN3OUpiS0ErUmY0NDVaSDJ3V3BFWFI0WTc3OGlnZnJH?=
 =?utf-8?B?b1hLdGRoUTAxK2NUSFpmUzdycmJsZ3VwUmw2ekRITitrZ2xtMHJoeE9PL1E5?=
 =?utf-8?B?VUtHMHRIMjlzQ3p1YVVONXh2MnRkK3FFU2RCZmlCd09URjlldE9oVUFvUHUy?=
 =?utf-8?B?MWUvRk1hUVJKOHpCSDB6bU5NZjcwaUdpN0U1bERUN0N5U0VaOE9UUVBQaFdD?=
 =?utf-8?B?NWRncXlBK0M3VERrRlIvUDdBajh5aWY1RWF6VW4ybjVobVVGY095ZnlJb25C?=
 =?utf-8?B?bGU2bU42WWhNZEZJNEE3MUdIaXd0bDJqRzZ6VVlUcklpejhqeVJxcVZQVHQx?=
 =?utf-8?B?cE9DSFYxZ2ZWN0ZoL0pYczlHb2cyQjVSRFhQb2dwTi9UdlJHY1l4VGRTWWxr?=
 =?utf-8?B?MEhXSE53TGp0OHJGN2NYc1pCK0J3V2xSSFVqS3IvTUdHOWR3Y1JwY2xzb0lR?=
 =?utf-8?B?aGVvMTUxMjZYVTVxSzA1Qk1Vdy9jQ1BsTlR5VWM3TUVZL0UwV21CcFE1SWdC?=
 =?utf-8?B?RWtTdy81WlhCdUpUU0RndnFNUXM4aXJoNStteWRlRGRKWEY2Ry9lRlk5R3lz?=
 =?utf-8?B?TkZ4QzRnc21jNFhZQWd1cHZodWprV1EvMnM2d1NMd0RSQU4wQmpSVmcwNGhl?=
 =?utf-8?B?VmlZY09ldTVYcDRzMTg2Nm5ldVFqRmdybWtEZWxBbjlLai9ZU3NQVG9GNkZT?=
 =?utf-8?B?VmlJMWtsOXNqQmhvUHdRTUZudUJoRThZNkZWcklaSGVoVklyWUh3MCtHWXJs?=
 =?utf-8?B?aHdCZWFOK2RhcEZ6R1FVS01xdG00KzdFNzIxblVCOW95RDJ6K2FqZTQrdDE5?=
 =?utf-8?B?dlR6T1FlRDlUYjB0bEdxT1NsMHA0d0dNNmNtck91Nk9FNmdOdXVNSlRERFNt?=
 =?utf-8?B?QVIvZnR5Y1Znc3kyYWs0dUc5UzNiU1g5TDZoT0VsdXM4Zzk1V3VYbnhkT3c2?=
 =?utf-8?B?bkpOYW9zZjdBMTN2MmVBZm9KVlI2TlZ6SjZZdUtEaDNsRUJTM2lrU0JXeGNS?=
 =?utf-8?B?NFRqZGlXMm8wTkV6SE4xbzNQRkVrNzhtQ1hTc25MMTZ3S2RlYXpkMTY2S1pv?=
 =?utf-8?B?L3BPNUc4UUhxNkZ6QUp0dDhGMk5CZzJpcWppMkI0V0I0TEZNRGdYMC91WEgv?=
 =?utf-8?B?QWF5YWtPMXorTUVad2lFdmtRR0I5Wmdtb20yMTB5NFY3RVQ3by9jV01MaTlP?=
 =?utf-8?B?M25iUjNmcnJmb0JXVVZJZ3N5YkdMOWN6S3NNMVBTZlU0RW0wVC8ySlAyZ0NX?=
 =?utf-8?B?bFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cb114b0-869d-44fd-a7c9-08dbd026076c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2023 22:03:15.6405 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aMoVC+vhXlVM/qOuOsa4Ukv/8Dt25GcdRNA4OOiewMZV/jSkkK44u9xpUeHrZ8jIheetoWB7LjRperNz1MqWeLdxDbpUiy8dthJotsuB+8o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6301
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697666606; x=1729202606;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vM5BaJvNkxWZ573SY/of50k3EYXnxQbEa5Z3wDeHRi8=;
 b=f9G5GNGP1s9bkOFiGQbgWOVTaAcE0ihk+pzau3JmTXUQA2AczEeZndmm
 Vf1dIfHOlnAVplnUPUVSTRUwvWxj8MQTgA8ArhZ1JdYwq9FinJLwsugQ0
 u8rJ03tRAsRVDsdZP1M56ykKzisoUjb87hN4GHOKR0bA4YjNJMPznfC45
 GV7rktqDwknxC5eYFzTGwEIlx4CxBn+eQWoZzOjwUKpN74tEG0QbDAEBA
 Nj07CDNNn2DHHvFhfl1rOyJaUO4A9b7+D9SBZqCl1or1BWwThn6tRWB0L
 sKKQo7iK4fcuctbihOrEpjJxIsBTPPBUMyimUW3FfIKuP5j+ve2mWy1Wh
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f9G5GNGP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: xsk: remove count_mask
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 Tushar Vyavahare <tushar.vyavahare@intel.com>, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/18/2023 9:39 AM, Maciej Fijalkowski wrote:
> Cited commit introduced a neat way of updating next_to_clean that does
> not require boundary checks on each increment. This was done by masking
> the new value with (ring length - 1) mask. Problem is that this is
> applicable only for power of 2 ring sizes, for every other size this
> assumption can not be made. In turn, it leads to cleaning descriptors
> out of order as well as splats:
> 

I assume that since ring size isn't a constant it isn't worth trying to
check if power of 2 and then use the shortcut?

What about just enforcing ring size is a power of 2? Any reason not to
do that?

Thanks,
Jake

> [ 1388.411915] Workqueue: events xp_release_deferred
> [ 1388.411919] RIP: 0010:xp_free+0x1a/0x50
> [ 1388.411921] Code: 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 f3 0f 1e fa 0f 1f 44 00 00 55 48 8b 57 70 48 8d 47 70 48 89 e5 48 39 d0 74 06 <5d> c3 cc cc cc cc 48 8b 57 60 83 82 b8 00 00 00 01 48 8b 57 60 48
> [ 1388.411922] RSP: 0018:ffa0000000a83cb0 EFLAGS: 00000206
> [ 1388.411923] RAX: ff11000119aa5030 RBX: 000000000000001d RCX: ff110001129b6e50
> [ 1388.411924] RDX: ff11000119aa4fa0 RSI: 0000000055555554 RDI: ff11000119aa4fc0
> [ 1388.411925] RBP: ffa0000000a83cb0 R08: 0000000000000000 R09: 0000000000000000
> [ 1388.411926] R10: 0000000000000001 R11: 0000000000000000 R12: ff11000115829b80
> [ 1388.411927] R13: 000000000000005f R14: 0000000000000000 R15: ff11000119aa4fc0
> [ 1388.411928] FS:  0000000000000000(0000) GS:ff11000277e00000(0000) knlGS:0000000000000000
> [ 1388.411929] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [ 1388.411930] CR2: 00007f1f564e6c14 CR3: 000000000783c005 CR4: 0000000000771ef0
> [ 1388.411931] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [ 1388.411931] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [ 1388.411932] PKRU: 55555554
> [ 1388.411933] Call Trace:
> [ 1388.411934]  <IRQ>
> [ 1388.411935]  ? show_regs+0x6e/0x80
> [ 1388.411937]  ? watchdog_timer_fn+0x1d2/0x240
> [ 1388.411939]  ? __pfx_watchdog_timer_fn+0x10/0x10
> [ 1388.411941]  ? __hrtimer_run_queues+0x10e/0x290
> [ 1388.411945]  ? clockevents_program_event+0xae/0x130
> [ 1388.411947]  ? hrtimer_interrupt+0x105/0x240
> [ 1388.411949]  ? __sysvec_apic_timer_interrupt+0x54/0x150
> [ 1388.411952]  ? sysvec_apic_timer_interrupt+0x7f/0x90
> [ 1388.411955]  </IRQ>
> [ 1388.411955]  <TASK>
> [ 1388.411956]  ? asm_sysvec_apic_timer_interrupt+0x1f/0x30
> [ 1388.411958]  ? xp_free+0x1a/0x50
> [ 1388.411960]  i40e_xsk_clean_rx_ring+0x5d/0x100 [i40e]
> [ 1388.411968]  i40e_clean_rx_ring+0x14c/0x170 [i40e]
> [ 1388.411977]  i40e_queue_pair_disable+0xda/0x260 [i40e]
> [ 1388.411986]  i40e_xsk_pool_setup+0x192/0x1d0 [i40e]
> [ 1388.411993]  i40e_reconfig_rss_queues+0x1f0/0x1450 [i40e]
> [ 1388.412002]  xp_disable_drv_zc+0x73/0xf0
> [ 1388.412004]  ? mutex_lock+0x17/0x50
> [ 1388.412007]  xp_release_deferred+0x2b/0xc0
> [ 1388.412010]  process_one_work+0x178/0x350
> [ 1388.412011]  ? __pfx_worker_thread+0x10/0x10
> [ 1388.412012]  worker_thread+0x2f7/0x420
> [ 1388.412014]  ? __pfx_worker_thread+0x10/0x10
> [ 1388.412015]  kthread+0xf8/0x130
> [ 1388.412017]  ? __pfx_kthread+0x10/0x10
> [ 1388.412019]  ret_from_fork+0x3d/0x60
> [ 1388.412021]  ? __pfx_kthread+0x10/0x10
> [ 1388.412023]  ret_from_fork_asm+0x1b/0x30
> [ 1388.412026]  </TASK>
> 
> It comes from picking wrong ring entries when cleaning xsk buffers
> during pool detach.
> 
> Remove the count_mask logic and use they boundary check when updating
> next_to_process (which used to be a next_to_clean).
> 
> Fixes: c8a8ca3408dc ("i40e: remove unnecessary memory writes of the next to clean pointer")
> Reported-by: Tushar Vyavahare <tushar.vyavahare@intel.com>
> Tested-by: Tushar Vyavahare <tushar.vyavahare@intel.com>
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c | 22 +++++++++++++---------
>  1 file changed, 13 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> index 37f41c8a682f..7d991e4d9b89 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> @@ -437,12 +437,12 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
>  	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
>  	u16 next_to_process = rx_ring->next_to_process;
>  	u16 next_to_clean = rx_ring->next_to_clean;
> -	u16 count_mask = rx_ring->count - 1;
>  	unsigned int xdp_res, xdp_xmit = 0;
>  	struct xdp_buff *first = NULL;
> +	u32 count = rx_ring->count;
>  	struct bpf_prog *xdp_prog;
> +	u32 entries_to_alloc;
>  	bool failure = false;
> -	u16 cleaned_count;
>  
>  	if (next_to_process != next_to_clean)
>  		first = *i40e_rx_bi(rx_ring, next_to_clean);
> @@ -475,7 +475,8 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
>  						      qword);
>  			bi = *i40e_rx_bi(rx_ring, next_to_process);
>  			xsk_buff_free(bi);
> -			next_to_process = (next_to_process + 1) & count_mask;
> +			if (++next_to_process == count)
> +				next_to_process = 0;
>  			continue;
>  		}
>  
> @@ -493,7 +494,8 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
>  		else if (i40e_add_xsk_frag(rx_ring, first, bi, size))
>  			break;
>  
> -		next_to_process = (next_to_process + 1) & count_mask;
> +		if (++next_to_process == count)
> +			next_to_process = 0;
>  
>  		if (i40e_is_non_eop(rx_ring, rx_desc))
>  			continue;
> @@ -513,10 +515,10 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring, int budget)
>  
>  	rx_ring->next_to_clean = next_to_clean;
>  	rx_ring->next_to_process = next_to_process;
> -	cleaned_count = (next_to_clean - rx_ring->next_to_use - 1) & count_mask;
>  
> -	if (cleaned_count >= I40E_RX_BUFFER_WRITE)
> -		failure |= !i40e_alloc_rx_buffers_zc(rx_ring, cleaned_count);
> +	entries_to_alloc = I40E_DESC_UNUSED(rx_ring);
> +	if (entries_to_alloc >= I40E_RX_BUFFER_WRITE)
> +		failure |= !i40e_alloc_rx_buffers_zc(rx_ring, entries_to_alloc);
>  
>  	i40e_finalize_xdp_rx(rx_ring, xdp_xmit);
>  	i40e_update_rx_stats(rx_ring, total_rx_bytes, total_rx_packets);
> @@ -752,14 +754,16 @@ int i40e_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)
>  
>  void i40e_xsk_clean_rx_ring(struct i40e_ring *rx_ring)
>  {
> -	u16 count_mask = rx_ring->count - 1;
>  	u16 ntc = rx_ring->next_to_clean;
>  	u16 ntu = rx_ring->next_to_use;
>  
> -	for ( ; ntc != ntu; ntc = (ntc + 1)  & count_mask) {
> +	while (ntc != ntu) {
>  		struct xdp_buff *rx_bi = *i40e_rx_bi(rx_ring, ntc);
>  
>  		xsk_buff_free(rx_bi);
> +		ntc++;
> +		if (ntc >= rx_ring->count)
> +			ntc = 0;
>  	}
>  }
>  
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
