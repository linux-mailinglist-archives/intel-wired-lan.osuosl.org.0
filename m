Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0BD7782B9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Aug 2023 23:32:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8777C417DC;
	Thu, 10 Aug 2023 21:32:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8777C417DC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691703136;
	bh=qu6EvyM+keSa6si8ZdP06JAnQo4OFBxWd7BvjMQR/lU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=d1iu/q7u5N4bdueSO+dUkYX3tWvyMuqEP3JF1+fxD52oLIGTcmNH4Y4pTdaj/XaWU
	 k7rc+ro75gpAT16fX0S8j8cqd5Ze81qcJdoj32UphpMPbfnMFYzgKdKXypNvDwqBvg
	 Azsa5bigCDJ/Iyku7MCV1cVa/Lx+wQMLsFynOEADrPHP+3OJnpMZb15T3qkHmqBp6A
	 pup03dmk6jO34H/N9rP5uB+STaL1ObA4nwKNK062fYIFcM8Y71Na2MejznToX6oeib
	 3UIA4d6M3EDSsOTMQypMIknBtuAcYINzxWX0oKpnKhlpF+gdsean2fi9P52QzTrcSQ
	 Lez7BQ8wvcz1g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G5JW70TZtryq; Thu, 10 Aug 2023 21:32:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6E17B400DC;
	Thu, 10 Aug 2023 21:32:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E17B400DC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B244E1BF379
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 21:32:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8A74283F32
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 21:32:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A74283F32
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qLLjU7lXVZEc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Aug 2023 21:32:06 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 296D483F00
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 21:32:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 296D483F00
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="351132913"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="351132913"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 14:31:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="761945710"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="761945710"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 10 Aug 2023 14:31:51 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 14:31:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 14:31:50 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 10 Aug 2023 14:31:50 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 10 Aug 2023 14:31:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hKEgBI5GQWGtNJr3V84aGBFGNx6EcYJ4pY87dvU4zj6iqmbwjl9whOhBWeGuVS78eUDoqXzaqUbz4poh5A0iXsBR9VTvivea1z+X0DkYDj32snM92aRvx2W9jX2nHOps/0qqQ0gB0Xxj59Dpkqeq/3wHox4JKg2BMIdLtyp1Ta++8qUYdvnYrGi+QJeFyWb7t/q9uXkzMEciGPc13ZNtRbsthgspMOVwGC4QJuDovbPv/D+DWdC3ZcS71r/N/vLr6i9cmtVqeVqzOkulhA38BN6wQMu91nGneeIYJuM8xALHjUal5sWukUJVmu8nq80/qk8byW9PPbZ3GSy+tXHNeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gwH/CeK5u4RgA4poqMU8I6qlhSwC062D4AIEoGjhdaw=;
 b=PwiBWcnunvIyOwxHEy8AzRUmTDiRic441BZBkhnwf4w93CsGjqeRF6BvNezelxiAv1XLPTyzuE4hWI34UjXC00/SEuaiIgJQbQKhXtSFEoBRqWl/n9KWnrIux/29WKst93gFTFV1ADkNPSt0eBtKcNJ+6m0G6UbdfLbEw/dNgjGiUU8B1AIHndBNDTE7+i6VWUyH39EPO7wgyTg1TVnPcwm0Dt2t0TABdjcV1GjqI8q5u59N6CXifQUfF/hLroLS6+5j+mqk7L5dpVJZi48MP+l1XedtnM4lUhTAQzY12f494sQb46UeJaGKmV+J8vS7zXnv3/2f4YCKTJleO2QVmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA1PR11MB7062.namprd11.prod.outlook.com (2603:10b6:806:2b3::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.30; Thu, 10 Aug
 2023 21:31:48 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c09:3f09:aae8:6468%6]) with mapi id 15.20.6652.029; Thu, 10 Aug 2023
 21:31:48 +0000
Message-ID: <c39fa717-48c4-bf3a-a752-cd3ae3b327be@intel.com>
Date: Thu, 10 Aug 2023 14:31:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Andrii Staikov <andrii.staikov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20230809121701.1109782-1-andrii.staikov@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230809121701.1109782-1-andrii.staikov@intel.com>
X-ClientProxiedBy: MW2PR2101CA0022.namprd21.prod.outlook.com
 (2603:10b6:302:1::35) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SA1PR11MB7062:EE_
X-MS-Office365-Filtering-Correlation-Id: d37e38fb-087e-4100-be10-08db99e9340d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I+qiYNMRk+N3v5PDREfDDilD4UgbW357EUuMW0YtaYClngdrwfJsvLjoeNMQm2Pw/p4LDWquIwPZxlyRRucNdldTcbu0KyIQjLmY0wWR/5BflnrQ4p30U8kWNhH8suPMUQyHcXDYyksc5JR3b8M+f9cWFiYIK9PzoCSCk7t4kRrcwc3dGDqrvNV246gfuR3nv77JWT9x5/Rx/wZmoJ2Hhfxw8EZGVmc6G63DOZoAUko/V1BbOmb3FQtbJZID5e4EN4fxcupyHX6s5w3HEEgsLK1E1Uz1oSbbeqFEIsDeczl+lMDthRwwrcmbiwilsVVc6wCGN4rDSvWxb0v9IvWH02ZDckWqperdZSxbDYZ08SJ9NV5xOnvY/YZmTkN+6gdFSUxrQXa6lE2/rrXv+n2YNuvNrSdEiUHE3aba3poWhHNsOFW81MJtX21rbdhe3+Ly6fMQPD4bQ2kMoKHPq9molIlihqdS64i4gPDAWAK4YDhqsi2K4ectAxp6rgG0eYxmJfMm/TafBBkD7qR4ngi20y6YnstGbOXQ3WsmxuUqAGSx91hFAkWyK7nDilLRTHcNVR7efCItuLnb5jQn5VWU2LGAHcyQDcxFqQyNpYBA7zulQUVWwkJHHOEqAvouilENEpGEHZte8ys7ZYq75E4iDQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(136003)(376002)(39860400002)(366004)(186006)(1800799006)(451199021)(5660300002)(8936002)(8676002)(66476007)(316002)(4326008)(41300700001)(66946007)(31686004)(66556008)(478600001)(6506007)(53546011)(83380400001)(38100700002)(36756003)(82960400001)(26005)(6512007)(31696002)(107886003)(2616005)(86362001)(6666004)(2906002)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VCsxSXVhYUxJMC9CbmhtZTJ3bXJpc0c5U0lCWkI5b0tkK2djZ3l5VU50TnJO?=
 =?utf-8?B?OG9ldERmMFlXa2g2Ui9iYTRib1FBZ0JmYkpnSktpWFFSOHdGWUcwNUhPenlR?=
 =?utf-8?B?WXZKbFhONS9VcVRCbkpIWnpjRE42TGFSWTk5YjlzYjJrbEs0NG44WTBkYWlV?=
 =?utf-8?B?d1pueVNxQnd0RWljY3hrZ2NJcUtrdTB1WStWMVgzYUplQzlaYSs0TjR1b1ll?=
 =?utf-8?B?SytDRXU2MFhuM2NyNFBUOFlmS0NmT2laMnFZTTlOMGxOSFlaa3FDZ2drOEVU?=
 =?utf-8?B?Rm5iZk00dlVBVTZKa2FiRFRRamR3SUpFdFRqbndsWGxCa2U0cXZNVnFZZG9z?=
 =?utf-8?B?V2hvREJJbHBLOHNxRGwreW5ES1VvRU43Rndqa0dHOEVCQTVFVzQxREgrQ05W?=
 =?utf-8?B?bkxSTEx2Q21Xc2dIa1dpdVdvNFMrVmlrdFpLV29wRnR1QnZ6OHIrS0RSWW5V?=
 =?utf-8?B?WUR5a1hPMVVXSUt2NUdBL2NUM3hKbEZDQUpxejVGdjFWYjAxNHNZZnhVRUVM?=
 =?utf-8?B?SlduWG1kUGJxTXlub2crTkhURzFmVjY2WmI5d3JuVjl3d3FOemt2N0tzeVYw?=
 =?utf-8?B?NWF1eTFiSVg1L2JVRUNFMWQ3dnFKQ1lBV0hKZW9VUDUxVVVQeWptaVJoSk9B?=
 =?utf-8?B?RDRWWVFtdHBlTE9FOGswOFgxdXVYSXg1L0R0QjNzZ2F0ZWxsdFJlQnBTUUo5?=
 =?utf-8?B?TzN3ZC8yK1crL2NjY0hxWmc5dzh2V2xMbm8rU2pDbTNPRkNmRjZzQVhHeVl4?=
 =?utf-8?B?c1d2dUw3TjJ6enU4TUt0YmFoYnVSMG1aTkI5RVl2QTQzVFR4UXZEZVZVUW5s?=
 =?utf-8?B?UTZydVJqYU0rMzU2QjNqeW9mRHFXditEMjlLMFdUUjByQjFVV2QzRWNiT2FG?=
 =?utf-8?B?WXdPZjgyTUorbGQ2aWI4c2VkaWJHOGtuZHM3Y01QTFErMnJ3V2lkVmNlRHAw?=
 =?utf-8?B?VHpUcERPcGJ0R3JLN09FQ3JWektJZGk5WCtWVVl3NnUycFhIUm1BOWFTZFNl?=
 =?utf-8?B?L0UxdzNzK1llWkZGZXpFVXlpMWpXRFpmQ1FNR2FxWHg0dHlpampEczFRdGhj?=
 =?utf-8?B?MlhxSHcxTWdNUFl2TTFha3FnT1dTSVRrakh6MEV5QythYlRkREM0cDNJQXpN?=
 =?utf-8?B?a0pQSkdKbDdVT1A4MVJJV1pzT3pyQWJWeVFPVC9mK1FFNU9JZkRJbk9nVWZE?=
 =?utf-8?B?MHUreGpkMENzVktQcmhQM1FCMU0vTHNVa0xnWTdYa0U4ZVRnRy9LZW1SMHRq?=
 =?utf-8?B?VmsxVHNmaEVmNHpWc25nTENKN1dwM0RNY1hBTWlrOVg3bDVEZEY4dUtDdFlI?=
 =?utf-8?B?TlNocHIwU21oWCtGT1duNFBUSTVZNU8wK0VYbWM0RDhhL3N6SkhtNDlFTW9G?=
 =?utf-8?B?b2VwVjA0QU5IcU9uNlcwa1E1RGRpYU5UUU56aGs5Z0pjSjdBcEY2bmZiQmVR?=
 =?utf-8?B?ZE40bnlIdm0xNzdmMTJkMDIzUTluMEw2RkRkRUpIQ3NteEFjMWY0Zk5NckZ0?=
 =?utf-8?B?K292MU8wQ2djODVjdTNFQ3g2N0xsbTJGY3JERXFNbEhTZUM4ZGlsa0lwWGVm?=
 =?utf-8?B?TXZSSTRmRXFkQ3RRRmFBNUIrZkhjc2J4WEoxcFNDV2tVWHV0ZjhXMHVQdmQy?=
 =?utf-8?B?NTc5dHo3V0VTdTJOZXkzaThuUFhSN0ZoVlh2d3BIV3NIc0M0REFmWFhYYlJO?=
 =?utf-8?B?eWNkR0hpYnFiOWNVKzh3TDJmVTVQYmZsTG9GY2FncGdkd0pjTkI0TGYwVytD?=
 =?utf-8?B?MEZZakVqVWFXcGd0MEZlLzBwcy9LcTl1aUM5L2NGenFOZXRVZUxHamlBRlFQ?=
 =?utf-8?B?ckxBRS9oSEF5SU5hNC9QWTVoV0ttMWxUNkp2dEtYZ2VWVTBuNzBFMW5WN0Vj?=
 =?utf-8?B?VG0xUng0UXFGTkU4cDBVRTJGcTh2VDh3REYrTGo4UnF2ZFlCM2J6ekorRHZk?=
 =?utf-8?B?NXl5Mk4zTm13aXZRMTZVVEZsWkdVbjIrZ0JDcXJWTkdPaWY5bWh4bkFkTG1E?=
 =?utf-8?B?cHRjMGlMektEYWR6OEFqTFVZNDBxcUI0Qm5IbU01REFMZ2pid2hLUHZZZzBL?=
 =?utf-8?B?bThwT1Zpd2d6dW1zdTdqRFhwV1d1bG1TWkdQLzBPZmlTSXJoMW5PWElCamZt?=
 =?utf-8?B?cFFqelBtYXVBUm5QTGcrMm02czBUck0yRGNCV3M2SW9zY2ZnY1FEWFpKdktD?=
 =?utf-8?B?WGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d37e38fb-087e-4100-be10-08db99e9340d
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2023 21:31:48.5924 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 644b2hIIXWkKpzvXj+nwgjZ9QTCoHdJMOGqhIoOHC7eWL8wubZpJI0BE7g6tAqQCExkjbIw0RaJDcGRHSKUEQEEfUZ2ZVrTwO/dpeKBniPs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7062
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691703126; x=1723239126;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kcv/1gAXNidwEI54o8D+7KljuJYfnwAvIO+csJqnpg4=;
 b=hthYlbEMBUUw86/BnY361BoHB5h+MkSaFgUI5XuA9RbzUelUrLvpr4fq
 TUZ1KpBQkf5SVONZeQSVGbWPyIVirebx3+1yYBuXLCs3qdq9dtQTbfD0+
 /8VYsRJvkC5EIdvj06ZOhwW87SUWT2iRQqbDhsdM6j0anSKlD2wDlWd6/
 9Aka8WhkXA8/ss/zVZ7Dpn+nXdkfMIjXTe4aVOUct3Gqt3vXOg8sqcOP/
 oMGlls/dIoQJw0NCOE5yuk2N6ZeGmI2b4LXUiBm02C3Kt9/yNnfrM3r6l
 UlS6pRqYLYfQ/5N+/nmOMbdAGKrMPMlh69yS1ydXTj+2Gsevj8/+y4zmH
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hthYlbEM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] i40e: fix potential NULL
 pointer dereferencing of pf->vf i40e_sync_vsi_filters()
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/9/2023 5:17 AM, Andrii Staikov wrote:
> Add  check for pf->vf not being NULL before dereferencing
      ^ two spaces here

> pf->vf[vsi->vf_id] in updating VSI filter sync.
> Add a similar check before dereferencing !pf->vf[vsi->vf_id].trusted
> in the condition for clearing promis mode bit.

s/promis/promisc

> 
> Fixes: c87c938f62d8 ("i40e: Add VF VLAN pruning")
> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1 -> v2: Changed title and commit message.
> ---
>   drivers/net/ethernet/intel/i40e/i40e_main.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 29ad1797adce..a86bfa3bba74 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -2609,7 +2609,7 @@ int i40e_sync_vsi_filters(struct i40e_vsi *vsi)
>   			retval = i40e_correct_mac_vlan_filters
>   				(vsi, &tmp_add_list, &tmp_del_list,
>   				 vlan_filters);
> -		else
> +		else if (pf->vf)
>   			retval = i40e_correct_vf_mac_vlan_filters
>   				(vsi, &tmp_add_list, &tmp_del_list,
>   				 vlan_filters, pf->vf[vsi->vf_id].trusted);
> @@ -2782,7 +2782,8 @@ int i40e_sync_vsi_filters(struct i40e_vsi *vsi)
>   	}
>   
>   	/* if the VF is not trusted do not do promisc */
> -	if ((vsi->type == I40E_VSI_SRIOV) && !pf->vf[vsi->vf_id].trusted) {
> +	if (vsi->type == I40E_VSI_SRIOV && pf->vf &&
> +	    !pf->vf[vsi->vf_id].trusted) {
>   		clear_bit(__I40E_VSI_OVERFLOW_PROMISC, vsi->state);
>   		goto out;
>   	}
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
