Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0892D772D12
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Aug 2023 19:34:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 31D896104F;
	Mon,  7 Aug 2023 17:34:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 31D896104F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691429643;
	bh=vVv2bUFyYx1tA02nPMvbuTBipyJz5Mt0HkTfGI7oCVo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=C4rPZmOZtc9y4DiPNedCXbUZsJprFupFE6XPdKEKGoRjKp1Pc3To69FMXjqD0gF1F
	 Fk868L3gqq155ITK6ZUrQ4yRoDRz59ldj6/FRfFuz7zMbTxKdV6lRPjULw5qtCAnqM
	 cMRaNSLXHPSOMcfC31sBQRqtAsaSl31zCQKN1RxETgjkQZuLRcotnbLUsMj+HBZc10
	 hvr5eCnXlOnMe5iAoQSyqIA1fTnL1Z/IF0C3k+IW6Od7qPOFe1MvR75cs99u38WmTB
	 hDGX2OGm8pnhKI7xZAHQV6V7GQVRuHwDFdE2ut9lBlqQPE2i8wa3AgNmZ95kK7kKOe
	 AzV9YP3vCZWbA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RhkiZUY-WGf2; Mon,  7 Aug 2023 17:34:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE8EC60C24;
	Mon,  7 Aug 2023 17:34:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE8EC60C24
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2087C1BF966
 for <intel-wired-lan@osuosl.org>; Mon,  7 Aug 2023 17:33:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 648B981D70
 for <intel-wired-lan@osuosl.org>; Mon,  7 Aug 2023 17:32:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 648B981D70
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2VTUeA0P1FC6 for <intel-wired-lan@osuosl.org>;
 Mon,  7 Aug 2023 17:32:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0A2BB80AF6
 for <intel-wired-lan@osuosl.org>; Mon,  7 Aug 2023 17:32:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A2BB80AF6
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="456993484"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="456993484"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 10:32:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="845118823"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="845118823"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 07 Aug 2023 10:32:06 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 7 Aug 2023 10:32:06 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 7 Aug 2023 10:32:06 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 7 Aug 2023 10:32:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HiRBSi5dU3FX/e/Gp75rFm5F77/EuRqLvCTefcNTwxo4Anzl2MLyA8CZTaSKGTpAX3HpRjtSTu1ah11bt0xrOb75EF2MXR2sighTVnQbIJYq64RtWPPXMc7SFSsQBNJN54X10h+vry9Hn90HTOP1OjzStxvV9U3i1cAaoVG3y1Ffjz5HzccLkEnPkMjIt/MhxMXB5ehdNgCr+/bYNpcd1xuByIKhnQi/rLIekQJ82oLpf1Gi64o0wXJUZQhq+bsLMZInmeTFgT1nbMcbUZxBW6J/d3G4t7W3hiNa3PNBuub97yK9eJ+wdCIMmnkheN73pTJtclL3jPdrj3IxQkXLuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XazSZAPU4RFDEmGofxP98qjG3seT9xYBwR736x4SbSo=;
 b=eVLj95P/uHsc0hGUAcwcNngcv+rl9KWJPea7U+rQnXMsyA3McOUafYuyox1wYzs8F8HLEvENW6KvImCWmMHIn3iOUNAtihI39ZxfGDeouy0OuGem49cUzRixGojAkN6dhlUPIK6Dnprez7eyXxApwhrghs4ddVPIO17Jxy8Z9C174qh7puYAC3YP8lTzacpcO6LNWaAbNUXxoYDgAXO+vlOJU0oj+nk/Y93VFqYEF+LetLhLf7e7RDypQN1I8LLCJfuIqHuNHYTpu/VxwYeOm5Q3pJDq1DmSZRnPn5Nxe8vNvW6raObw97QRvmaEmxZwVeWlV1NCu8SkCocRXaFm5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ0PR11MB4879.namprd11.prod.outlook.com (2603:10b6:a03:2da::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.26; Mon, 7 Aug
 2023 17:32:03 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::cb4c:eb85:42f6:e3ae]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::cb4c:eb85:42f6:e3ae%7]) with mapi id 15.20.6652.026; Mon, 7 Aug 2023
 17:32:03 +0000
Message-ID: <fd0a3660-f4e5-d540-4dd3-98e9aaf270cd@intel.com>
Date: Mon, 7 Aug 2023 10:32:01 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: <intel-wired-lan@osuosl.org>
References: <20230807103624.468230-1-karol.kolacinski@intel.com>
 <20230807103624.468230-3-karol.kolacinski@intel.com>
 <45567907-afad-635c-73d9-95860beefcf3@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <45567907-afad-635c-73d9-95860beefcf3@intel.com>
X-ClientProxiedBy: MW4PR04CA0200.namprd04.prod.outlook.com
 (2603:10b6:303:86::25) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ0PR11MB4879:EE_
X-MS-Office365-Filtering-Correlation-Id: 57345e9f-e623-4a83-6388-08db976c368d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8qTJ+IxXBJgpKHvcdvTsunns0wV+eb6gd+39gwWTX4ddGs0f/HpSFID8je52nLk7uX/TSru1uQvXx/HQAQYFFyq/nRWcBqMDZr3OT2e8ZcEWEDnDxWgt1fpEiZoBNLbfSY23VW4wzqBvGXfIfvoSZxDOQ/XpyNWCtokAHmrdqlu7KMesYmgrCwpzzWPF2DXbWqLgiDyu36MhI32PYF3DzORy1PkVaheyjGglsVKRhZACHAqolsCw8VSCQ3BHHqZYV2Rq/J/rooPwyDb335zZBZGHo96XUOgzdtixa6aclx5VLStSfNEBu1WBZmIuwrt8JQHlqHkIFrlZ/x9wr2TR0vRKYFVgnG6hrpDLfKX5//Yj1479kuRTzrfoF5Kq4zGj5mC9pmfiBvI4Ki56GeJlp1lHfoGg081h0Kk7FYX8JHOeY2qNKYWRF6NRQqFwPbicp/7FNqdkii0jUeMvn8+Tj/uVNH9Y/gh7P3h2jfK83MQ2wn8BbG/sBYMC9qY6rlUNQbLfVj4Rp6Jku7u9xkzHuLqVpvm1rumb9Oe8go0GsuXVMFK0f7YqwJvlohGMU1PUjpiy6QxUm5jhizBLV2B5RgJ8QTgQOl1hE9Mmse3lqkEbhCDxGbTfe5eqlvtRBaoMtgq36WvnCNpKZ07VWN4oCA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(346002)(396003)(366004)(39860400002)(451199021)(186006)(1800799003)(86362001)(31696002)(41300700001)(478600001)(53546011)(6506007)(8936002)(8676002)(26005)(38100700002)(6486002)(2616005)(5660300002)(83380400001)(36756003)(2906002)(31686004)(316002)(66556008)(66476007)(66946007)(6916009)(6512007)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UGI0NVdZSjhKaTNiWUlZajlDdmxVcHlnbGRGeklvN1RoY2pNTGJacFdVSm1p?=
 =?utf-8?B?Q055bHhodVpNSi9Gd1plS20vVkdQNmVJUm5JUWt1NFJqY242NDgxekFoWS8v?=
 =?utf-8?B?ZUFxVlhYZ3NoeUZaRVRPK2o2bGRHTVY1UkRZM3ZDd0VhNTVXaWxBK3U2elpB?=
 =?utf-8?B?czZ3QzZWUWhlYis3S1gxSVZQakJhWUR2c2VVT0N0OU1CZFk1RDlNQ3ZobExi?=
 =?utf-8?B?eEpLMnRyUm5DcG1oSVViWWNtYi90KzJFZHhXVHBJaWpMdmZWS0w4R1VSRFN0?=
 =?utf-8?B?Sjd0eE10WmY0bXdBWmRJdjhkUXBCTDFaY3V5ZGVpWlpKekJJeEU4a05jYzR4?=
 =?utf-8?B?TllpK1dCWFFIOC9CQzBlQkNjSzJCZzV1R3FZdjRsYmQyQWZqRWt2Z3dOTVhm?=
 =?utf-8?B?Sm1RcllySDFnQmZGaUNXWURUMFRRSy9uQzVFTFFJSjhLdU1MaFc3MW5vNzdJ?=
 =?utf-8?B?VXBHZ29qZksyVWVVZTV4WUVyZGtlRXdrZlQ1TXhGTHVBZmx1akN4Nnh6RHdz?=
 =?utf-8?B?Ly90cDFuQkE3VGFyemkvNEpQYkgwNnFvTVRTMDRqaHdNbjU0cWZTbGp4c2hw?=
 =?utf-8?B?VXd3MkhKOGFJdWZHenc3NFJYQ3libGVibjBHc1ArZUJTTDl5bmxZUWVvMEF4?=
 =?utf-8?B?ck1GN01oNXJzQ0V4OW9xazVZSDh6TFRPNmpVTGkremhCUnZRcUxlWVcwTVBV?=
 =?utf-8?B?RG1KSitSTldrOVJQWHE0TkxZd1FXTnhGdU5xTzFwNXo1NE40c2c2dzhNcWs3?=
 =?utf-8?B?aGtqWVk5d0tDYzRLMlZlQnZxd2lTTjU2RVZDMHMvNG5IN3BjdDJOSFlMMi9u?=
 =?utf-8?B?L0FsOVpueEptbVpYVFRsWTJCMzg2NnF3a3ptUWw4eUd6N1VUcHdvTDJnajNG?=
 =?utf-8?B?WWNXOS9EMDJ2YVM2azVaNXpINEZnS2tmZjJLRFBzKzNaTDd6ME41U3Z4OTJU?=
 =?utf-8?B?emsvZVVrMFZYVDU5S2xoVm40Z0h4a1Rld2xiWHpRZFJNMjNjcGZPZU5IQWFx?=
 =?utf-8?B?UkJOK2JJaXArUWRJSHpFWUlKMlBkWUhzc1YvVCt4THQ2MlR6QUVHQVRFZ3Ir?=
 =?utf-8?B?Z2VZelN3QVM5VWNDaE5oWlZITlovR0ZnR0JicDFTRklEYzBYdnRSdTFNdzk0?=
 =?utf-8?B?dUtpbCtia3BkdmVJaTJ2cmZoYi9ETEtQNHJDa0pMaXdxem1BdGROd0JlY3pi?=
 =?utf-8?B?ZnBvVm1HRUEwRVdQNWZqZ0tMSjc3TTZQUnJkOE94cmZvNklVZTdFeWFic2ll?=
 =?utf-8?B?SFhzV2xFeE5sRmpRS3FrbVdiNWwyWHlGbEN3UzNWMDdRd1BJaGx1Vk9MUi8w?=
 =?utf-8?B?V2d4NGFIUmZZOVJ1N1pwd25lK0wya2gzNk1rNHM3dVFJWFROSHVsZnlKQ2Q2?=
 =?utf-8?B?cGRxNU1IMHljTDNHVzJON0d0cnRuSS9OUWtqR1B0S0daRmpKR1dQUTA3TFpP?=
 =?utf-8?B?c0lCZHFaKzNlNVZUMm9OZm9tVHBocFRQZ1Z4RTBrNzNmdHU1M2JVSUVsaEZP?=
 =?utf-8?B?MGk2RnBvQnR1M3dsOHo5aGR1VWlBREV6TlZhLzg0VitpT01oVDFMajBnazVw?=
 =?utf-8?B?Ujdtb092T3dRQXVtSEoremNoQzhob29WOWNDeVA4dk81cllmV2lKMWtvdDhQ?=
 =?utf-8?B?cTUzZkJ4UjlwNDU0VmRGS3crZnRKaUNNNGZrZHhDWDZUaVJRSXAxYXNkWXRM?=
 =?utf-8?B?b1hEVHhLNTd6Rmxod3I1MGtOSS9NdDZYejhnaE9SYjlhSFdBVW8zQ1Y2WWxx?=
 =?utf-8?B?bmlFK3ZPNVZad2lOZmdyNWs0Y2FnZWF6TC9WQ2NyKzNsNXR6b05QSEU4QXdG?=
 =?utf-8?B?UklGT0kxRm1uNEExcVMrYjNGa0dCYm5DcG9pYzN4UWhOSUNwMWxHcXBQekVl?=
 =?utf-8?B?RU4vU0d2MXUybkcxcUlhR0IxUmVIZWxDUEZ1UTB0SU9uallNY0RyNlJSRHBr?=
 =?utf-8?B?c1pZS2VmMDVsNzVUNG5UZ2ZYQ2ZHWUlMZnBjOWN6alJFM25XUGxLd1RWRFBv?=
 =?utf-8?B?aEx5Ni9vYWREV3BqN3B0WUJFZWt2OWt4SWlxdmFBdURCWFVGUHBUT2g2c0Jl?=
 =?utf-8?B?bncwNm83MllocFRua1F4QVhxU2ZpY2ZkRmpGNWdPVkVJSjNnaVRLeFFrNU1V?=
 =?utf-8?B?MVpIdTcvS2M3SERGZTZWWVBobzBCd0dJU1g2b0hPZlF4bk5BOGFSMnlEQSs1?=
 =?utf-8?B?VEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 57345e9f-e623-4a83-6388-08db976c368d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2023 17:32:03.2244 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2S/ZknJiZbcuQ6kZPPPUnyoRR7nVu9sUxAn44tvFlnZ0AJ17teY6ue8UjAKbV6WfoPcNcy4ddwzf9F3CKY05Je2nhvcaOB02Mj8V2N25+rw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4879
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691429549; x=1722965549;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=xS1s6HtXZhvbBMjsjKqsGOsSr4vBaNHi4FPascnWyyw=;
 b=CvtFy1m2Tb5qB0czrlKsh5rvE/BhMqwgtFn5MGW+nGG2Mxz0kJJWu7fN
 0O6Bcn5/Xsj89OwOM+QdOZrjeSBld7eFER2v0Ued5dXIa1e+uMVNpV4r+
 UpF8VwmByggvt88QX5BONXikxFBO+Jxjw34dTY7OWs1S+IifbVLQCQMPL
 PD1FonYJwGojvM2y/77Gnqwe6Zq985slRL9wwrpStSwVFmgsrw8gXvwza
 7ix7sspg1Lob47SqyMHTbvZ4DOv05au95O21EVqYrmwpw130kw+UQ1CFx
 6BBSQXg4xy5M6og5WsR/wW113Q860ofmJ9W+f/a/j1sLdU/HGYwysqss6
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CvtFy1m2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 2/9] ice: introduce PTP state machine
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/7/2023 4:12 AM, Przemek Kitszel wrote:
> On 8/7/23 12:36, Karol Kolacinski wrote:
>> Add PTP state machine so that the driver can correctly identify PTP
>> state around resets.
>> When the driver got information about ungraceful reset, PTP was not
>> prepared for reset and it returned error. When this situation occurs,
>> prepare PTP before rebuilding its structures.
>>
>> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
>> ---
>>   drivers/net/ethernet/intel/ice/ice.h         |   1 -
>>   drivers/net/ethernet/intel/ice/ice_ethtool.c |   2 +-
>>   drivers/net/ethernet/intel/ice/ice_ptp.c     | 131 +++++++++++++------
>>   drivers/net/ethernet/intel/ice/ice_ptp.h     |  10 ++
>>   4 files changed, 99 insertions(+), 45 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
>> index 34be1cb1e28f..86f6f94da535 100644
>> --- a/drivers/net/ethernet/intel/ice/ice.h
>> +++ b/drivers/net/ethernet/intel/ice/ice.h
>> @@ -490,7 +490,6 @@ enum ice_pf_flags {
>>   	ICE_FLAG_DCB_ENA,
>>   	ICE_FLAG_FD_ENA,
>>   	ICE_FLAG_PTP_SUPPORTED,		/* PTP is supported by NVM */
>> -	ICE_FLAG_PTP,			/* PTP is enabled by software */
>>   	ICE_FLAG_ADV_FEATURES,
>>   	ICE_FLAG_TC_MQPRIO,		/* support for Multi queue TC */
>>   	ICE_FLAG_CLS_FLOWER,
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
>> index d3cb08e66dcb..7d57ecf48da0 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
>> @@ -3275,7 +3275,7 @@ ice_get_ts_info(struct net_device *dev, struct ethtool_ts_info *info)
>>   	struct ice_pf *pf = ice_netdev_to_pf(dev);
>>   
>>   	/* only report timestamping if PTP is enabled */
>> -	if (!test_bit(ICE_FLAG_PTP, pf->flags))
>> +	if (!test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags))
>>   		return ethtool_op_get_ts_info(dev, info);
>>   
>>   	info->so_timestamping = SOF_TIMESTAMPING_TX_SOFTWARE |
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
>> index 0669ca905c46..a6ea90b9461e 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
>> @@ -255,6 +255,31 @@ ice_verify_pin_e810t(struct ptp_clock_info *info, unsigned int pin,
>>   	return ice_ptp_set_sma_e810t(info, pin, func);
>>   }
>>   
>> +/**
>> + * ice_ptp_state_str - Convert PTP state to readable string
>> + * @state: PTP state to convert
>> + *
>> + * Returns: the human readable string representation of the provided PTP
>> + * state, used for printing error messages.
>> + */
>> +static const char *ice_ptp_state_str(enum ice_ptp_state state)
>> +{
>> +	switch (state) {
>> +	case ICE_PTP_UNINIT:
>> +		return "UNINITIALIZED";
>> +	case ICE_PTP_INITIALIZING:
>> +		return "INITIALIZING";
>> +	case ICE_PTP_READY:
>> +		return "READY";
>> +	case ICE_PTP_RESETTING:
>> +		return "RESETTING";
>> +	case ICE_PTP_ERROR:
>> +		return "ERROR";
>> +	}
>> +
>> +	return "UNKNOWN";
>> +}
>> +
>>   /**
>>    * ice_ptp_configure_tx_tstamp - Enable or disable Tx timestamp interrupt
>>    * @pf: The PF pointer to search in
>> @@ -1285,7 +1310,7 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 port, bool linkup)
>>   	struct ice_ptp_port *ptp_port;
>>   	struct ice_hw *hw = &pf->hw;
>>   
>> -	if (!test_bit(ICE_FLAG_PTP, pf->flags))
>> +	if (pf->ptp.state != ICE_PTP_READY)
> 
> test_bit() is atomic API, but "just reading/using variable" is rather not.
> Please extend commit message to say something about why transition  here 
> (here=whole commit) is safe.
> 

Just use of "test_bit()" doesn't really provide much more than
potentially some memory barriers. On its own, it doesn't actually
provide any synchronization mechanism. I guess this could be "READ_ONCE"
or use some barrier to make sure this doesn't re-order the read, but
otherwise its about as atomic as before. Either we see the value as
being ready or we don't. That's essentially no different than the bit flag.

Unless we were using something like "test_and_set" or "test_and_clear"
the use of atomic flags here isn't providing any actual protection or
synchronization beyond avoiding screwing up the flags variable itself.

I considered swapping to an atomic value like using atomic_set or
something but it really felt like overkill when writing it in the
out-of-tree driver. (Yes, the lack of proper synchronization primitives
in ice is rather annoying...)

In my understanding this should be no worse than before since the state
field is always either directly assigned or directly read. We're not
replacing something like "test_and_set_bit" so we aren't any worse than
before.

This could be clarified better in the commit message.  Note that
originally we kept the flag and introduced the state field, then later
removed the flag. Some of this detail was lost when squashing everything
together.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
