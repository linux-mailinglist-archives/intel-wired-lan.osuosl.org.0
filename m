Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4A66761CB
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Jan 2023 00:58:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AAFA3416FB;
	Fri, 20 Jan 2023 23:58:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AAFA3416FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674259114;
	bh=N70DobNzX704UnrDE+SGr1pET7eHIUemY0R2GZAAb9M=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wzykyPJky7RR5jKarWzNsIp+RS+yKjKsIqR/HrvgIt5IAaZrKbfLHN/+FKdVJ5H/k
	 7x2/p+pW4ZYYB43ZymE1OhZPrFCiN4gfJCQ36jz2W9CqIgDHwiWUZ/CM0t+oBjA/yI
	 G7xWzDtMk/LX8v87bMijOHCggVLVe+4k4WZXKAoLW+EQlbkdnvH+567R8YvDNjbQ06
	 dSuSMEh7a9vNGovIm8Y8KmRvPE9SidDZS7mwPGgrliADVoyxxen2Arwk2kj5WZ4spS
	 zSPuB63K+quZROnAXXYWITjOjs6ItiB9l8vBOUbofZddCiOK419GcGmW9N8nYXcuIa
	 lCnodZ5K/OIew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HMTxziA2-3Ss; Fri, 20 Jan 2023 23:58:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0C6E9409E9;
	Fri, 20 Jan 2023 23:58:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C6E9409E9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BD8901BF4D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 23:58:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 95B6B415EF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 23:58:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95B6B415EF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id apwT6z4v8-8q for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Jan 2023 23:58:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2ACDD414E4
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2ACDD414E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 23:58:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="327002147"
X-IronPort-AV: E=Sophos;i="5.97,233,1669104000"; d="scan'208";a="327002147"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 15:58:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="768873532"
X-IronPort-AV: E=Sophos;i="5.97,233,1669104000"; d="scan'208";a="768873532"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 20 Jan 2023 15:58:23 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 20 Jan 2023 15:58:22 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 20 Jan 2023 15:58:22 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 20 Jan 2023 15:58:22 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 20 Jan 2023 15:58:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aDK8W+HQKNmXcmnEgsgDJO35MNZnmi7D8zu2u8pYCahTN2Ds1vckidSV6nBYKEA8qzIOZlPKXu28yUvBrKSyzDl8NqT94YpASQPACmVQTrU7ia0IC14rH4hfDZMt9thAqShtUWewNeegkZ8Ygt7SPElUBhL/SLB48kWuX4M1wPkZsTNajkt6lKAHryDbkguWKdlcJsGqhzhKK8wSMTwQTdhgc9r9xSxuzVXdOdKx+uzOHqNBu9Uy1GKKRn5yl3I5LOvv6W1Olta671IMZP5O1jnUMhRpIlyL48R8By8MkjbuzcVo+dFj/BS59+FvWSwhHdPoreBiIoixLeg4j0lA6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=amzQ3UYdj7KtX/NeN5ClpwJttQPnCSUi4i4Eg6xLxLU=;
 b=bzPuDEJOnhV8L8xwXJvlZWHdyBf5f1H5sm9v1kIYEMBkL22gRHNI2y0BvF2E/6UDyCNAgv7lx0NX5WPRkAyxRcZZRPAd34H5cSNnCHjAeYPrfYWpc2rmPU2mFm4pB/aFxBmsqo19UqJKxMDE0MSWa1gfcDrHjGXYdrKHfm9v6JzNRDcLKa4N/Ijx9UqhEsmRe9uEDu0zmlTi0JrLEemNJXcOjqunTdcigYxqbZw5T0LNot0+hMvGLOPPGbpmVP54aTwqMnRt2i9/hgaCq1kTvO+fGt2FVQ3qI6yXMeUoFLpCRNxYtjkVY7jK+eIVlj1MSQM49hukq9SAdFXONxDkPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by PH7PR11MB6956.namprd11.prod.outlook.com (2603:10b6:510:207::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.26; Fri, 20 Jan
 2023 23:58:20 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c743:ed9a:85d0:262e]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::c743:ed9a:85d0:262e%5]) with mapi id 15.20.6002.027; Fri, 20 Jan 2023
 23:58:19 +0000
Message-ID: <5e117b82-cd75-07ec-97b2-5526bfe6f1fb@intel.com>
Date: Fri, 20 Jan 2023 15:58:17 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230120233511.131-1-paul.m.stillwell.jr@intel.com>
 <20230120233511.131-4-paul.m.stillwell.jr@intel.com>
Content-Language: en-US
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20230120233511.131-4-paul.m.stillwell.jr@intel.com>
X-ClientProxiedBy: SJ0P220CA0006.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::29) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4914:EE_|PH7PR11MB6956:EE_
X-MS-Office365-Filtering-Correlation-Id: cce9ea60-6d25-4800-b5d3-08dafb42348b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8wHITNy9FFjanDXtzp2uH/JwT0Qyab+1jr1GJUS2QnCw0UPBoBaWEfNgP6yiy5VNmByBWjmGVa5tcqm/VYTMxUajQM7mjOP16U7Dmvjga9KtFnS+T6PN7wJR/ZwgfKSpdvySdWAN9x9JETnkf8dw2YnYjrOrDmWsjes066AjnPhwfPv7GBZ+J6LndnS+LmF0eXpSRbK7HhdaBmTdjOwMCqIHm9EDa3FS68kY6sKYpWYVRxsWJzMUQFtUAHKwW/pLRqg++Ew9hgsgH+vev/0BFJ4g+iyNoyYuhC/O6kLfOu7PTBwSnr9YSeNlpsLGi8KmFmbZKXwa+9Djimvq1SFKiZ2MaPO1fq/CgnP+h5kXJeDeZiY5MZCzhIOvSdvu2p3crd+Ikk48A/lzQW6LSvUTF8WHV2LsJVHGNxCpStJ0UMp2qhxnnsOh2NJBc+caezyhbTfbjZxqVduVWwYIHkgFlOX4XUX7h0FMKyGOIvC9pWEfXJsfkh5WJoaLJMwEy3PLNm/e3V2PmPhzByy4PsOCWmKeoTvssNG+mn+Jv9CAO65Qwets8tLaydWzF28dML51gP3F2d+4ogTuyXb4Mx/z2xFKlyzHnCKplI6Ezk+E3GDAz42SiE3w1yt4r0sM89fvqSaaRPDQA4hiO184bTYZSUVn+J8BXatMTP65BtIXgiFvhM7Z5trbl6LR7wojz+UTP4QklahZSkGqKWFl2Ey0A+irLEYhdbnoGhjcCggq4sc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(376002)(346002)(39860400002)(136003)(451199015)(66946007)(38100700002)(66476007)(316002)(2616005)(5660300002)(82960400001)(8936002)(41300700001)(26005)(36756003)(6512007)(186003)(8676002)(83380400001)(44832011)(66556008)(30864003)(31686004)(31696002)(86362001)(2906002)(6486002)(6506007)(478600001)(53546011)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bkFlbUJBcC9MRWgya3hjV0xLTjUrWXpSWjdHWmhwbnpTRGVXSWdNbklsTmZ1?=
 =?utf-8?B?SkIwdFRXRlprbUp2OFdIMFpta0s0UjJlUVJPSzZ3OWVuc0tqWm9OK0piR1J6?=
 =?utf-8?B?S21HMjRId0UzOXJBOUg2cGtLc2R2QklTZTZvU3huaTlVOHg3dXFBalBCdEg0?=
 =?utf-8?B?QlVJSkNqZS84SnFLZ1ZFK1BycXF2M0tlUkVGaTl2bmJsVG1kdG0zT05zUktm?=
 =?utf-8?B?ZUhLSWtGRFZZN1pUK2R2cmpqVjZ3TUQvNC92eFZnK0lDbytYQW9JNkRZemxB?=
 =?utf-8?B?eTVlQlpWTjI1bVBsbmtUSmpRbVJzREpUR0JPQytmZXhLenVkUE5ZaGM2WjRU?=
 =?utf-8?B?c1pGaEJybGthZTFWQnpLUDh6OUkxY0pjSWx6VzJNeW5yTmsxbW1VTEtkeGpP?=
 =?utf-8?B?N3RwbHhaTjZJZnJQSDhkTEhCTXQyNk1pZnhCS3U1dWs4azZGRkl6b1BPekV3?=
 =?utf-8?B?MktCQVdtUklQZlZyMkNiUnR2NDVLZGozRGRwa09DZUhpNzdhV0FlMlE1d3ZP?=
 =?utf-8?B?M0lZUWVra25hNkYvL3JMRmFSUjcxbXlWREZaWHUvT3B4SGljSVhXbHNDeEQ4?=
 =?utf-8?B?K0RDVUIzcE9sN3drbTF2Ty9jTUhCcXYwckV5cnp3eC8zY0VpekpxWE4wdzJW?=
 =?utf-8?B?c3pCRjRpSFZPbHl5RVpIWWRVRGpINlRkRWNaaGFCUUFCeXMvSFY0cCtjcDYw?=
 =?utf-8?B?V2YrRUhHYUR3cWwzMDBpVjd4cnlTeERQeUx0WEUvOWxrNDJPSEp6YVFNQXN6?=
 =?utf-8?B?K1Q4L0M2UDNuT1JNNHRURTlkc2RKVk00NjNPNCtLUEsxMWFDVDJUaEI1TVNI?=
 =?utf-8?B?TW5lc1R0T0hhZzNicENKNVpGZEJzTlZWdlZOMHV6aG5GY21CRjZlMzdUZHFQ?=
 =?utf-8?B?VHUva3BnbmV3KzJKeGcya0FZR1c3N1BMdVZCcVBCRXcvRUdDTXd6WTRaVzVR?=
 =?utf-8?B?RlY3S2NzQ09aekljZm1BTXIxNGdtVGdrN0ZZVmYxTS9JQnI4cEgra2ZRVGND?=
 =?utf-8?B?ckZsbTNrcnFZbFJpTlVRSTR6QUhkWXhiQ1Y3eDFES0N6M29KTGRYeTI3eUl0?=
 =?utf-8?B?NnZOcUx0ODhHQzM3V2o4cExZL0hHeURJaDdFaWhZU21RRVVuTHNLWTJCK1R2?=
 =?utf-8?B?dW5UcUYwTkc0NHljRHRkejlCUzB6WFFuaGVCTDg0dmVOWG1CdFJjbjZCVklX?=
 =?utf-8?B?MW9ZcEllSFo5NGhYdjZTeUFGS1RlYStWL3NVUGl3b0Z2RFE0Yk5VQXhuNnJQ?=
 =?utf-8?B?aTUzYzBmS04wTUhhS3QyV2VFKzFBMTNXeG5IcVBPSnlDOGJBK2ZVUjcrMWgw?=
 =?utf-8?B?MEZQVkdkMlpJYnF6eDU2c3dqYVlpbmNXOHpZbGVaTXVwVWtVS010Rjc4TGRi?=
 =?utf-8?B?Z1NmVkR5QjBHc0FqV1RTSzA1NTd3bmpRVEFFY2RrQ1dlNjlDbENWYUt2QTZh?=
 =?utf-8?B?eWJsZTEwWTlzdWxNR2QwOXVLUHV2V3BtelloN0IyWi9sTTBTWXBzTmRUd0hV?=
 =?utf-8?B?R2dIaEhXLzdUMTJJU1MvSGM4ZEdZYnF3UFZxVU9XcnpZbTJPZ1NaY2J2dGlm?=
 =?utf-8?B?OC9GS2UzTzNOdExTai84NldxWTk2MGxybnJXSjZOODMyN2xLekFScHVEUHRB?=
 =?utf-8?B?RStzeWNhNHpwMEJxU1ZtclVadU4wMTZpQ1lLVDd1RG1zVVlscHZhbDE0MCtH?=
 =?utf-8?B?ZWVkWC9Sbk1jL2tFUUxkSDgrZGs1YnZnekQ5bGs2eXdPUVpYL3d3OWdCaGhF?=
 =?utf-8?B?aE0wWHNFUGtqL0dwMmtoaU12SnZGUzU0QU5KRTBORTJDT1ExNU8rdzBYRWRt?=
 =?utf-8?B?cG4zSmdhOU9NVHVaTUpvamVPcC9GdmFhU2dCdGJKbWNGWlZlSTEwNlFQN2k3?=
 =?utf-8?B?Y2dCVW5Db3d0T2ZkMy9TMENsTlZsSmZwUVptRE0zY0ZmNG5IanRIb2trQ1pL?=
 =?utf-8?B?MmxqTWQzNHJWSWhJWnBUdENUeHFnVHQ5MzZ0Nm0yc3J5UFZIQnZ3NVBVbkps?=
 =?utf-8?B?Wm1QQmFrK2ZxdU41TzN6VlppbEtqVGNvOWovQnFLOFE5bEc1dmpETmEzQXNT?=
 =?utf-8?B?bDR5dkUwNTlDR1F5cmoxQnY5Vm9XK1U1YUhLY0VmL285VmxTVzVjbWhwRkZW?=
 =?utf-8?B?NkYrSTFhNTdkcVQ4cHRwV3JIZklUYzFCL3ZqbmdqZFhLb21FaE1rUUNxcGV4?=
 =?utf-8?B?d0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cce9ea60-6d25-4800-b5d3-08dafb42348b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2023 23:58:19.6361 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c/FZq3wcBFimcR1UnXiuFec2XK1oM3wq5DXPo+BcT26RVhOUWDR8/lCmaOrUIzzJBBbFm0uOr33xIgLrf0J/B4OJ7v1sdYHfr2LLNO1xQsg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6956
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674259106; x=1705795106;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=IOBSlItknrxftKze28mU+MsFwd15/eqS8dEDzPjmxEU=;
 b=MUNWDPUHFZf5iVOiYrWOjnxWP0cTQvm4GZzu+A4ME1z92LIAiw1U44nS
 inknQOAbeMSqHme5navKiG/fkBnfpGp5tBwy+ZMmqbX+y3dbe00sYxESq
 InUeEQXIJAgdXO9+nYy7tMWQXqVfephTZORshcKlIJINDxIljPtdnmHms
 qjNfsxsxQF2XDAztlbjtG6NhfpJo7XwC2PY++8gJcBhzbkHtsxBo97SOv
 9mA2Zw/HQhnuMyJwNUCie9lZMgD2rrLlcPaFu4aDBUEowgrNC7pLTq/+u
 chtVZPHrbvvuvZ+oRct6NvTX2X2d8COEgjmIk2ifYW6G+zDpGSCo33b2C
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MUNWDPUH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v7 3/5] ice: add ability to
 query/set FW log level and resolution
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

On 1/20/2023 3:35 PM, Paul M Stillwell Jr wrote:
> The E8xx has the ability to change the FW log level and
> the granularity at which the logs get output. Enable
> the ability to see what the current values are and to
> change them.
> 
> The following devlink commands are now supported:
> 
> devlink dev param set <pci dev> name fwlog_enabled value <true/false> cmode runtime
> devlink dev param set <pci dev> name fwlog_level value <0-4> cmode runtime
> devlink dev param set <pci dev> name fwlog_resolution value <1-128> cmode runtime
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> ---
>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
>   drivers/net/ethernet/intel/ice/ice_common.c   |   4 +-
>   drivers/net/ethernet/intel/ice/ice_devlink.c  | 131 ++++++++-
>   drivers/net/ethernet/intel/ice/ice_fwlog.c    | 260 +++++++++++++++++-
>   drivers/net/ethernet/intel/ice/ice_fwlog.h    |   5 +
>   drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>   6 files changed, 395 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> index 0d560287ec23..1af036beeb45 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
> @@ -2374,6 +2374,8 @@ enum ice_adminq_opc {
>   	ice_aqc_opc_event_lan_overflow			= 0x1001,
>   
>   	/* FW Logging Commands */
> +	ice_aqc_opc_fw_logs_config			= 0xFF30,
> +	ice_aqc_opc_fw_logs_register			= 0xFF31,
>   	ice_aqc_opc_fw_logs_query			= 0xFF32,
>   };
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index ef7e5d7c18f2..da55db0170dd 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -879,7 +879,9 @@ int ice_init_hw(struct ice_hw *hw)
>   	if (status)
>   		goto err_unroll_cqinit;
>   
> -	ice_fwlog_set_supported(hw);
> +	status = ice_fwlog_init(hw);
> +	if (status)
> +		ice_debug(hw, ICE_DBG_FW_LOG, "Error initializing FW logging: %d\n", status);
>   
>   	status = ice_clear_pf_cfg(hw);
>   	if (status)
> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> index 0e76fd19b61a..307ae6be2b8c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> @@ -374,6 +374,8 @@ enum ice_devlink_param_id {
>   	ICE_DEVLINK_PARAM_ID_TX_BALANCE,
>   	ICE_DEVLINK_PARAM_ID_FWLOG_SUPPORTED,
>   	ICE_DEVLINK_PARAM_ID_FWLOG_ENABLED,
> +	ICE_DEVLINK_PARAM_ID_FWLOG_LEVEL,
> +	ICE_DEVLINK_PARAM_ID_FWLOG_RESOLUTION,
>   };
>   
>   /**
> @@ -1430,8 +1432,111 @@ static int
>   ice_devlink_fwlog_enabled_set(struct devlink *devlink, u32 id,
>   			      struct devlink_param_gset_ctx *ctx)
>   {
> -	/* set operation is unsupported at this time */
> -	return -EOPNOTSUPP;
> +	struct ice_pf *pf = devlink_priv(devlink);
> +	struct ice_hw *hw = &pf->hw;
> +	int status;
> +
> +	/* only support fw log commands on PF 0 */
> +	if (hw->bus.func)
> +		return -EOPNOTSUPP;
> +
> +	if (hw->fwlog_ena == ctx->val.vbool)
> +		return 0;
> +
> +	hw->fwlog_ena = ctx->val.vbool;
> +
> +	if (hw->fwlog_ena)
> +		hw->fwlog_cfg.options |= ICE_FWLOG_OPTION_ARQ_ENA;
> +	else
> +		hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_ARQ_ENA;
> +
> +	/* send the cfg to FW and register for events */
> +	status = ice_fwlog_set(hw, &hw->fwlog_cfg);
> +	if (status)
> +		return status;
> +
> +	return hw->fwlog_ena ? ice_fwlog_register(hw) : ice_fwlog_unregister(hw);
> +}
> +
> +static int
> +ice_devlink_fwlog_level_get(struct devlink *devlink, u32 id,
> +			    struct devlink_param_gset_ctx *ctx)
> +{
> +	struct ice_pf *pf = devlink_priv(devlink);
> +
> +	/* only support fw log commands on PF 0 */
> +	if (pf->hw.bus.func)
> +		return -EOPNOTSUPP;
> +
> +	/* all the log levels are the same so pick the first one */
> +	ctx->val.vu8 = pf->hw.fwlog_cfg.module_entries[0].log_level;
> +
> +	return 0;
> +}
> +
> +static int
> +ice_devlink_fwlog_level_set(struct devlink *devlink, u32 id,
> +			    struct devlink_param_gset_ctx *ctx)
> +{
> +	struct ice_pf *pf = devlink_priv(devlink);
> +	struct ice_fwlog_cfg *cfg;
> +	int i;
> +
> +	if (pf->hw.bus.func)
> +		return -EOPNOTSUPP;
> +
> +	if (ctx->val.vu8 >= ICE_FWLOG_LEVEL_INVALID) {
> +		dev_err(ice_pf_to_dev(pf), "Log level is greater than allowed! %d\n",
> +			ctx->val.vu8);
> +		return -EINVAL;
> +	}
> +
> +	cfg = &pf->hw.fwlog_cfg;
> +
> +	/* update the log level for all modules to the same thing. this gets
> +	 * written to the FW when the user says enable logging
> +	 */
> +	for (i = 0; i < ICE_AQC_FW_LOG_ID_MAX; i++)
> +		cfg->module_entries[i].log_level = ctx->val.vu8;
> +
> +	return 0;
> +}
> +
> +static int
> +ice_devlink_fwlog_resolution_get(struct devlink *devlink, u32 id,
> +				 struct devlink_param_gset_ctx *ctx)
> +{
> +	struct ice_pf *pf = devlink_priv(devlink);
> +
> +	/* only support fw log commands on PF 0 */
> +	if (pf->hw.bus.func)
> +		return -EOPNOTSUPP;
> +
> +	ctx->val.vu8 = pf->hw.fwlog_cfg.log_resolution;
> +
> +	return 0;
> +}
> +
> +static int
> +ice_devlink_fwlog_resolution_set(struct devlink *devlink, u32 id,
> +				 struct devlink_param_gset_ctx *ctx)
> +{
> +	struct ice_pf *pf = devlink_priv(devlink);
> +
> +	/* only support fw log commands on PF 0 */
> +	if (pf->hw.bus.func)
> +		return -EOPNOTSUPP;
> +
> +	if (ctx->val.vu8 < ICE_AQC_FW_LOG_MIN_RESOLUTION ||
> +	    ctx->val.vu8 > ICE_AQC_FW_LOG_MAX_RESOLUTION) {
> +		dev_err(ice_pf_to_dev(pf), "Log resolution is out of range. Should be between 1 - 128: %d\n",
> +			ctx->val.vu8);
> +		return -EINVAL;
> +	}
> +
> +	pf->hw.fwlog_cfg.log_resolution = ctx->val.vu8;
> +
> +	return 0;
>   }
>   
>   static const struct devlink_param ice_devlink_params[] = {
> @@ -1455,6 +1560,18 @@ static const struct devlink_param ice_devlink_params[] = {
>   			     ice_devlink_fwlog_enabled_get,
>   			     ice_devlink_fwlog_enabled_set,
>   			     NULL),
> +	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_FWLOG_LEVEL,
> +			     "fwlog_level", DEVLINK_PARAM_TYPE_U8,
> +			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
> +			     ice_devlink_fwlog_level_get,
> +			     ice_devlink_fwlog_level_set,
> +			     NULL),
> +	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_FWLOG_RESOLUTION,
> +			     "fwlog_resolution", DEVLINK_PARAM_TYPE_U8,
> +			     BIT(DEVLINK_PARAM_CMODE_RUNTIME),
> +			     ice_devlink_fwlog_resolution_get,
> +			     ice_devlink_fwlog_resolution_set,
> +			     NULL),
>   };
>   
>   static void ice_devlink_free(void *devlink_ptr)
> @@ -1559,6 +1676,16 @@ int ice_devlink_register_params(struct ice_pf *pf)
>   					   ICE_DEVLINK_PARAM_ID_FWLOG_ENABLED,
>   					   value);
>   
> +	value.vu8 = ICE_FWLOG_LEVEL_NORMAL;
> +	devlink_param_driverinit_value_set(devlink,
> +					   ICE_DEVLINK_PARAM_ID_FWLOG_LEVEL,
> +					   value);
> +
> +	/* set the default value for the FW to pack 10 messages per AQ event */
> +	value.vu8 = 10;
> +	devlink_param_driverinit_value_set(devlink,
> +					   ICE_DEVLINK_PARAM_ID_FWLOG_RESOLUTION,
> +					   value);
>   	return 0;
>   }
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> index fac970f03dd0..22c3c249824a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
> +++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> @@ -4,6 +4,146 @@
>   #include "ice_common.h"
>   #include "ice_fwlog.h"
>   
> +/**
> + * valid_module_entries - validate all the module entry IDs and log levels
> + * @hw: pointer to the HW structure
> + * @entries: entries to validate
> + * @num_entries: number of entries to validate
> + */
> +static bool
> +valid_module_entries(struct ice_hw *hw, struct ice_fwlog_module_entry *entries,
> +		     u16 num_entries)
> +{
> +	int i;
> +
> +	if (!entries) {
> +		ice_debug(hw, ICE_DBG_FW_LOG, "Null ice_fwlog_module_entry array\n");
> +		return false;
> +	}
> +
> +	if (!num_entries) {
> +		ice_debug(hw, ICE_DBG_FW_LOG, "num_entries must be non-zero\n");
> +		return false;
> +	}
> +
> +	for (i = 0; i < num_entries; i++) {
> +		struct ice_fwlog_module_entry *entry = &entries[i];
> +
> +		if (entry->module_id >= ICE_AQC_FW_LOG_ID_MAX) {
> +			ice_debug(hw, ICE_DBG_FW_LOG, "Invalid module_id %u, max valid module_id is %u\n",
> +				  entry->module_id, ICE_AQC_FW_LOG_ID_MAX - 1);
> +			return false;
> +		}
> +
> +		if (entry->log_level >= ICE_FWLOG_LEVEL_INVALID) {
> +			ice_debug(hw, ICE_DBG_FW_LOG, "Invalid log_level %u, max valid log_level is %u\n",
> +				  entry->log_level,
> +				  ICE_AQC_FW_LOG_ID_MAX - 1);
> +			return false;
> +		}
> +	}
> +
> +	return true;
> +}
> +
> +/**
> + * valid_cfg - validate entire configuration
> + * @hw: pointer to the HW structure
> + * @cfg: config to validate
> + */
> +static bool valid_cfg(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
> +{
> +	if (!cfg) {
> +		ice_debug(hw, ICE_DBG_FW_LOG, "Null ice_fwlog_cfg\n");
> +		return false;
> +	}
> +
> +	if (cfg->log_resolution < ICE_AQC_FW_LOG_MIN_RESOLUTION ||
> +	    cfg->log_resolution > ICE_AQC_FW_LOG_MAX_RESOLUTION) {
> +		ice_debug(hw, ICE_DBG_FW_LOG, "Unsupported log_resolution %u, must be between %u and %u\n",
> +			  cfg->log_resolution, ICE_AQC_FW_LOG_MIN_RESOLUTION,
> +			  ICE_AQC_FW_LOG_MAX_RESOLUTION);
> +		return false;
> +	}
> +
> +	return valid_module_entries(hw, cfg->module_entries,
> +				    ICE_AQC_FW_LOG_ID_MAX))
                                                          ^^^^
missing semi-colon? -------------------------------------|


Then it's fixed in 5/5.

I like to use
git rebase -x 'make W=1 C=1 M=`pwd`/drivers/net/ethernet/intel/ice'

to test each patch compiles.

> +}
> +
> +/**
> + * ice_fwlog_init - Initialize FW logging configuration
> + * @hw: pointer to the HW structure
> + *
> + * This function should be called on driver initialization during
> + * ice_init_hw().
> + */
> +int ice_fwlog_init(struct ice_hw *hw)
> +{
> +	int status;
> +
> +	ice_fwlog_set_supported(hw);
> +
> +	if (ice_fwlog_supported(hw)) {
> +		/* read the current config from the FW and store it */
> +		status = ice_fwlog_get(hw, &hw->fwlog_cfg);
> +		if (status)
> +			return status;
> +	}
> +
> +	return 0;
> +}
> +
> +/**
> + * ice_aq_fwlog_set - Set FW logging configuration AQ command (0xFF30)
> + * @hw: pointer to the HW structure
> + * @entries: entries to configure
> + * @num_entries: number of @entries
> + * @options: options from ice_fwlog_cfg->options structure
> + * @log_resolution: logging resolution
> + */
> +static int
> +ice_aq_fwlog_set(struct ice_hw *hw, struct ice_fwlog_module_entry *entries,
> +		 u16 num_entries, u16 options, u16 log_resolution)
> +{
> +	struct ice_aqc_fw_log_cfg_resp *fw_modules;
> +	struct ice_aqc_fw_log *cmd;
> +	struct ice_aq_desc desc;
> +	int status;
> +	int i;
> +
> +	fw_modules = kcalloc(num_entries, sizeof(*fw_modules), GFP_KERNEL);
> +	if (!fw_modules)
> +		return -ENOMEM;
> +
> +	for (i = 0; i < num_entries; i++) {
> +		fw_modules[i].module_identifier =
> +			cpu_to_le16(entries[i].module_id);
> +		fw_modules[i].log_level = entries[i].log_level;
> +	}
> +
> +	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_fw_logs_config);
> +	desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
> +
> +	cmd = &desc.params.fw_log;
> +
> +	cmd->cmd_flags = ICE_AQC_FW_LOG_CONF_SET_VALID;
> +	cmd->ops.cfg.log_resolution = cpu_to_le16(log_resolution);
> +	cmd->ops.cfg.mdl_cnt = cpu_to_le16(num_entries);
> +
> +	if (options & ICE_FWLOG_OPTION_ARQ_ENA)
> +		cmd->cmd_flags |= ICE_AQC_FW_LOG_CONF_AQ_EN;
> +	if (options & ICE_FWLOG_OPTION_UART_ENA)
> +		cmd->cmd_flags |= ICE_AQC_FW_LOG_CONF_UART_EN;
> +
> +	status = ice_aq_send_cmd(hw, &desc, fw_modules,
> +				 sizeof(*fw_modules) * num_entries,
> +				 NULL);
> +
> +	kfree(fw_modules);
> +
> +	return status;
> +}
> +
>   /**
>    * ice_fwlog_supported - Cached for whether FW supports FW logging or not
>    * @hw: pointer to the HW structure
> @@ -16,13 +156,102 @@ bool ice_fwlog_supported(struct ice_hw *hw)
>   	return hw->fwlog_supported;
>   }
>   
> +/**
> + * ice_fwlog_set - Set the firmware logging settings
> + * @hw: pointer to the HW structure
> + * @cfg: config used to set firmware logging
> + *
> + * This function should be called whenever the driver needs to set the firmware
> + * logging configuration. It can be called on initialization, reset, or during
> + * runtime.
> + *
> + * If the PF wishes to receive FW logging then it must register via
> + * ice_fwlog_register. Note, that ice_fwlog_register does not need to be called
> + * for init.
> + */
> +int ice_fwlog_set(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
> +{
> +	int status;
> +
> +	if (!ice_fwlog_supported(hw))
> +		return -EOPNOTSUPP;
> +
> +	if (!valid_cfg(hw, cfg))
> +		return -EINVAL;
> +
> +	status = ice_aq_fwlog_set(hw, cfg->module_entries,
> +				  ICE_AQC_FW_LOG_ID_MAX, cfg->options,
> +				  cfg->log_resolution);
> +
> +	return status;
> +}
> +
> +/**
> + * ice_aq_fwlog_register - Register PF for firmware logging events (0xFF31)
> + * @hw: pointer to the HW structure
> + * @reg: true to register and false to unregister
> + */
> +static int ice_aq_fwlog_register(struct ice_hw *hw, bool reg)
> +{
> +	struct ice_aq_desc desc;
> +
> +	ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_fw_logs_register);
> +
> +	if (reg)
> +		desc.params.fw_log.cmd_flags = ICE_AQC_FW_LOG_AQ_REGISTER;
> +
> +	return ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
> +}
> +
> +/**
> + * ice_fwlog_register - Register the PF for firmware logging
> + * @hw: pointer to the HW structure
> + *
> + * After this call the PF will start to receive firmware logging based on the
> + * configuration set in ice_fwlog_set.
> + */
> +int ice_fwlog_register(struct ice_hw *hw)
> +{
> +	int status;
> +
> +	if (!ice_fwlog_supported(hw))
> +		return -EOPNOTSUPP;
> +
> +	status = ice_aq_fwlog_register(hw, true);
> +	if (status)
> +		ice_debug(hw, ICE_DBG_FW_LOG, "Failed to register for firmware logging events over ARQ\n");
> +	else
> +		hw->fwlog_cfg.options |= ICE_FWLOG_OPTION_IS_REGISTERED;
> +
> +	return status;
> +}
> +
> +/**
> + * ice_fwlog_unregister - Unregister the PF from firmware logging
> + * @hw: pointer to the HW structure
> + */
> +int ice_fwlog_unregister(struct ice_hw *hw)
> +{
> +	int status;
> +
> +	if (!ice_fwlog_supported(hw))
> +		return -EOPNOTSUPP;
> +
> +	status = ice_aq_fwlog_register(hw, false);
> +	if (status)
> +		ice_debug(hw, ICE_DBG_FW_LOG, "Failed to unregister from firmware logging events over ARQ\n");
> +	else
> +		hw->fwlog_cfg.options &= ~ICE_FWLOG_OPTION_IS_REGISTERED;
> +
> +	return status;
> +}
> +
>   /**
>    * ice_aq_fwlog_get - Get the current firmware logging configuration (0xFF32)
>    * @hw: pointer to the HW structure
>    * @cfg: firmware logging configuration to populate
>    */
> -static int
> -ice_aq_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
> +static int ice_aq_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
>   {
>   	struct ice_aqc_fw_log_cfg_resp *fw_modules;
>   	struct ice_aqc_fw_log *cmd;
> @@ -102,9 +331,8 @@ void ice_fwlog_set_supported(struct ice_hw *hw)
>   	if (!cfg)
>   		return;
>   
> -	/* don't call ice_fwlog_get() because that would overwrite the cached
> -	 * configuration from the call to ice_fwlog_init(), which is expected to
> -	 * be called prior to this function
> +	/* don't call ice_fwlog_get() because that would check to see if FW
> +	 * logging is supported which is what the driver is determining now
>   	 */
>   	status = ice_aq_fwlog_get(hw, cfg);
>   	if (status)
> @@ -115,3 +343,25 @@ void ice_fwlog_set_supported(struct ice_hw *hw)
>   
>   	kfree(cfg);
>   }
> +
> +/**
> + * ice_fwlog_get - Get the firmware logging settings
> + * @hw: pointer to the HW structure
> + * @cfg: config to populate based on current firmware logging settings
> + */
> +int ice_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg)
> +{
> +	int status;
> +
> +	if (!ice_fwlog_supported(hw))
> +		return -EOPNOTSUPP;
> +
> +	if (!cfg)
> +		return -EINVAL;
> +
> +	status = ice_aq_fwlog_get(hw, cfg);
> +	if (status)
> +		return status;
> +
> +	return 0;
> +}
> diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.h b/drivers/net/ethernet/intel/ice/ice_fwlog.h
> index 3a2c83502763..fcfceb9f6ec2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fwlog.h
> +++ b/drivers/net/ethernet/intel/ice/ice_fwlog.h
> @@ -49,4 +49,9 @@ struct ice_fwlog_cfg {
>   
>   void ice_fwlog_set_supported(struct ice_hw *hw);
>   bool ice_fwlog_supported(struct ice_hw *hw);
> +int ice_fwlog_init(struct ice_hw *hw);
> +int ice_fwlog_set(struct ice_hw *hw, struct ice_fwlog_cfg *cfg);
> +int ice_fwlog_get(struct ice_hw *hw, struct ice_fwlog_cfg *cfg);
> +int ice_fwlog_register(struct ice_hw *hw);
> +int ice_fwlog_unregister(struct ice_hw *hw);
>   #endif /* _ICE_FWLOG_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
> index 476b85e0a0ee..5aa3415f22d4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_type.h
> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> @@ -860,6 +860,7 @@ struct ice_hw {
>   	u8 fw_patch;		/* firmware patch version */
>   	u32 fw_build;		/* firmware build number */
>   
> +	struct ice_fwlog_cfg fwlog_cfg;
>   	bool fwlog_supported; /* does hardware support FW logging? */
>   	bool fwlog_ena; /* currently logging? */
>   

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
