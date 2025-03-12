Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BBADA5E7F6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Mar 2025 00:03:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1763081ECE;
	Wed, 12 Mar 2025 23:03:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fLzBwRt9nRw4; Wed, 12 Mar 2025 23:03:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D6968118B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741820600;
	bh=bMcSnFLrFi/cZBeIG8tv+vvdRkeoEhtY6IDnunIzLFk=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JjgJy3vC43QVE3fhHM4dOV9cT+vjMICodJd8Ysyqfpw0kq3E99YzoHxrR+1N5tOiA
	 MUSaLQrRo/9mlFPLLDgELOyb2fyMvJfs1AIRSQiimql3orcOi1lUDjwHCCB7GLoJAG
	 Xry1spGEJsTGg6YPKfRNpJaE/BfhOzPLxLf2/ygMW/0tjNJmpplAZFWVdGkJMKVDcb
	 Q3mqlORcnaeAKMQaL9NITBis0hZ8sqCm/OVhcIRXFyu6sA+xaAa6FlGiaBf7jhNetM
	 /RqhxAzuzrz/qDmuwBDNQxhTxmCzA9H+UXY9VvTwwy+FfkyyA0NLUPf47M8xW2rySE
	 jr6cL3o/5cYIg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D6968118B;
	Wed, 12 Mar 2025 23:03:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 095EC1DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 23:03:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DE51F40166
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 23:03:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XmSg93mNNb7H for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 23:03:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E24414037C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E24414037C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E24414037C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 23:03:16 +0000 (UTC)
X-CSE-ConnectionGUID: Zuqbuy1TQB2GIGsvR0ajXQ==
X-CSE-MsgGUID: MxgBldoUS8qUMsq3jgSSLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="45695709"
X-IronPort-AV: E=Sophos;i="6.14,243,1736841600"; d="scan'208";a="45695709"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 16:03:16 -0700
X-CSE-ConnectionGUID: aHMeU+3lR/OgbrpS+mNNAQ==
X-CSE-MsgGUID: Rjr1jJR4Tu+kqOFatRR3Pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,243,1736841600"; d="scan'208";a="120761875"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Mar 2025 16:03:17 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Mar 2025 16:03:15 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Mar 2025 16:03:15 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Mar 2025 16:03:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y86CmduV3NCs2dD9otHUQU8yhxGlAi+BVqk1DdRvjHWCpehQBhgo0iK40cg9szyURmNR/2xdPnqB9x8uTr8++8/nOIe814whGese05LaUqoLh/l3kobOeYQdGEMOem8lcfZHsb2KV24T0KiqO70zaJMumgmgWmCHklKaNai6jxvgjKQTbrOEo/2RG6dQF5vqhCiR//UvNU5kVO0F3tIWh9WZsDMRbDKWIRHLsotl+anW1xXz6pQZRbTIn28f91ca2v9rI7OJ1eePynihGYhQjhy/fmLM4jj38rUucydyNnbEFT/1Sva/RGdiYXKW432nOpGxm+QfV9AcHcSbfdHJEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bMcSnFLrFi/cZBeIG8tv+vvdRkeoEhtY6IDnunIzLFk=;
 b=X+op/XWVtdTpD1yNuZC4AL4ixbFaHdziJ67uW9kHECGGphvNDS7Q0sYm9nlkz7/YNhao2scue3tvcjSTs2qZX/rSQFDy1807klEK1jT1HWO4GDt1yt8n5k5XW8SUURkeXayCF0JnCSHTLHGwwWSB0Wobqu7ifVETDZZi28FMnpqAGGpcIFlejDUqFi/SNp6tlcy+1R7YmL/3713lCS5R8pK32d6WK+Msk4iXGpTKpsPxjKUx/uVQjyy9+UWLVe5SI2U5XiUTtPGvziBej3cpLvG+J49EtEgPWQPNLyshXUcLYbhqVaGvt5Ixr9tNW9wKRg0rtXecn/foLlIBqL4gsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SN7PR11MB7466.namprd11.prod.outlook.com (2603:10b6:806:34c::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Wed, 12 Mar
 2025 23:03:13 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%5]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 23:03:13 +0000
Message-ID: <8c4db2d2-d6b6-47cb-8646-cecc38c27d13@intel.com>
Date: Wed, 12 Mar 2025 16:03:09 -0700
User-Agent: Mozilla Thunderbird
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <przemyslaw.kitszel@intel.com>, Michal Kubiak
 <michal.kubiak@intel.com>, Milena Olech <milena.olech@intel.com>
References: <20250310111357.1238454-12-karol.kolacinski@intel.com>
 <20250310111357.1238454-13-karol.kolacinski@intel.com>
 <a95dfb14-45d4-429f-8687-177c74428db1@intel.com>
Content-Language: en-US
In-Reply-To: <a95dfb14-45d4-429f-8687-177c74428db1@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR16CA0040.namprd16.prod.outlook.com
 (2603:10b6:907:1::17) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SN7PR11MB7466:EE_
X-MS-Office365-Filtering-Correlation-Id: 16a28a4d-98de-4c3d-401a-08dd61ba10aa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QnZRVVIxYUMzOWNxbTFZSFRGK3MwTEZncHdDd2I0NWVyTVFKSWdsVVV0V2U2?=
 =?utf-8?B?UzF3RzJhYXU1aFBzODFvTHQxT3pnWVdWNFBtZzlqdmo3bmhHUmUwZXlKb2FD?=
 =?utf-8?B?VHBMVURkS0JRTjIzV1Jla2hyeUJISzl4UGpWMW1uMlNWM2luMWJKbWYrblNk?=
 =?utf-8?B?aWhwalRwM3EyMkV6b25LakZneStIbTBYQ0M4aTBVUWpHeHFSbitQN2Njd2du?=
 =?utf-8?B?MmtaUzAyRjJlQnJIaEY2L3F1VHhtL3YwM09qVkpwdW8wSUJoYkFhSU5ZUlBB?=
 =?utf-8?B?SndEZ0hhNHFzK05jUDNpbVpIYVR6NnZlckFoU2tHLzJMQVFnSWZBWU1yTHhq?=
 =?utf-8?B?S0ZWQ3ZhRHdrK2VqUEVRaGdTZTgwRjNwb0E1aWMxSHc4Wi91UGh3Q0ZSWEtI?=
 =?utf-8?B?YzAvZzIzQUp6WmplR25GbWt5UFRCaUV4SWVZcU9JWUZ2Wk5kVG1GMzhMcVZn?=
 =?utf-8?B?SjBidmNtTEd4MElucVg2ZGdVYzVublUvT3BmZFlQSzBrZFUxcTBBQ1ZPSi9Z?=
 =?utf-8?B?MVNnRTB1UXR4REFhNU9BbVpYWE1IeHh3bElSWUtSSWs4RkFYV1pRMUwyVWRP?=
 =?utf-8?B?S1N4T2tHZ3ljY2NsR3BERlprZmdxMC9vNFRueHE3ZWx3WlREQWtSSDZKMTdp?=
 =?utf-8?B?VGpFRXUybFZxeUZlUzNvZ1NBVVEzS0N4VVZRWVB3OS83dG9HNis0SHhGMFQv?=
 =?utf-8?B?L0hOazNpZWRRRG95dHpzWk96UnJvb21BeXU1aWNycjM1VlRTdGU2SVVxeGhk?=
 =?utf-8?B?ZTFyWTNSTFA0YnhJdnhqLzIrZ3JNOEthMnIvZUpuWUh4MVAzQTZaOVJic3No?=
 =?utf-8?B?WkhGaFFvME9MYzI4VHdleCsyVWdpd3pyTE44V2lUc08rNlhkY21WSVI3bHJF?=
 =?utf-8?B?eE5qSjR1TmR3NHlUUFdTSXlnNGZEdDJqSkp1QmJnajFsL3FjSjdmL3JSN2Rt?=
 =?utf-8?B?TzRscmRVc1lGRTFiaFZpdHVSdG5lWTUrem9MZHpMWmFud1gycERydk4rb3pL?=
 =?utf-8?B?UHJBTFhqRWpVNm5EWUFTRDVuMkI0VlJvWVltNGRCdzl4Mi95U3FUSFliOVc5?=
 =?utf-8?B?L3hvZDMrRXpuYWhQcHZCNm9uMTdQRXBwdVhuWFNiUFZpZCs0MkRoS3NhMFY3?=
 =?utf-8?B?Qm9zeVZxMUZvMXpOQnNteERhcjVHL1dKaFJaeVlIM1RybEJ0c01QR2pwajM4?=
 =?utf-8?B?MU0xVlloWjF6TDhOMDdGcXczR2h1d1oyTXlneEd3WFBlMURrQ3Fad1pJb3pR?=
 =?utf-8?B?M0RWTEhWZWRGK3lIMmNrMDVuZTN1VW1pZElwSXNpd3lBMTNYekl1TDhXajZj?=
 =?utf-8?B?bDlnaEdLcVN3NkhsSGdCdmRLL1VzK1J0VS9zeVBQMHRRNDBsUWpIRHFBZ3FI?=
 =?utf-8?B?MnJjZGV5eW16SDdnbWFsZjVJOUxFZVZjUE5DNUozYS9VREdvTVRUUHJ4Wkkr?=
 =?utf-8?B?SThiZDB5WjRGdEl6N1hZdFluOFBpNDF0Q1I2RDJid2ZTS1VXU25oaXY1UC9B?=
 =?utf-8?B?dmJZM29jV0NpZmphY2ZMY29jWHlkVmFqSHZUbUgzQU5LQ0ZDcWZScEdNY3E1?=
 =?utf-8?B?RituMmtmQ3kybkNHYjhQVFQreEZKWThTRVFmRVRRaUtqYWVJK0EwN1A5Y1Bm?=
 =?utf-8?B?bWlZcUdRRG9lOEFCRXRRM3pQdlA3SGd2Y1ZGQlhueEpNNmdJME0yM2VYcGtY?=
 =?utf-8?B?YytYSXkvUWZObXlOSkRLNk9qNWJ6MzNHNnVnV05oWEprUkFDdmYwNXBDMldx?=
 =?utf-8?B?QnFtS3B3d3hsclVsWkxYVUpBNkpoVzNpOCtDeDJPUERlTjZvZ2t1dEVxUFl1?=
 =?utf-8?B?NFlRUlp1OGJLWFo5OXlIMGxuWUxpK2VybnBZM21jT2ZsZ0NOYk9kUUIvSXFS?=
 =?utf-8?Q?9++iFPk+pD/Z6?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N2Z5Q3JKdGJpOFZQekpGU1BFTEpJU3JnVUVsczlzRFZ5N1VDbGJlVkU2OFlh?=
 =?utf-8?B?MGxQaWZVWER6NGRGQktxNXpXRWFteVFxSU9mNi9JSEdxd2kvaXkzR0ZRRjNQ?=
 =?utf-8?B?NlkveFJWV25SUE9LNmVqRjN1QTRWbHpLVnNKd2tnTXZTVEg0WjNPeHp1dU9N?=
 =?utf-8?B?dDZwWnM5bDE0RXBya2o5Y0c2VFNuZVZFMUlJL0lnZHVkSTZQRDZMK1hsYTBs?=
 =?utf-8?B?aFJPcnNSUEYrS1k1WUpidUluUEVGL3ZiQzFOVkx1a1BncFFJMHUwa0xDK0Y4?=
 =?utf-8?B?SFA3bzREQ0wyRE55U2xNcjZHZzRJV1RPTE9rQk05N3I5M1lsWVBLUnltTitW?=
 =?utf-8?B?ZElOUkRFUHhabk5EdFZnODRvTDQ3dnF2ZjZsd0trUDJVQ0RVRlVBM2kraGpm?=
 =?utf-8?B?aHhtTFhjbmFWT2ZQUHVnR1BTbXJSaXdBZGJyYjhnTGJWcXJZc1JRTEx1clgw?=
 =?utf-8?B?bUw3aW9RVTlyNTY4QUpxQ3pQSFZNZ0dSZktDWHZTbEhCL2pnWDk0QlZ5bkpl?=
 =?utf-8?B?SFpHY0RETGZUakc4ZzVGU081ejRpL2dUMU1OaXoxRGUvN1JZaXB2a1RtL09S?=
 =?utf-8?B?cWgwbkVXcGRhdXAyaEZxYTg3ZjZ5QUFYRzd5aW1tZGNLOVBnZDFjcFVITXU3?=
 =?utf-8?B?YTNKWlFJSlBCNXJRL0hHQVcxV2JxdXU0SkVHVTRLWW5COVpOVGw5R3hZZWZD?=
 =?utf-8?B?ZzVwVm44RGZ3NXltY3BnN3FXMytiYkFxQUdJRVI2SkhwQ2ZsSzljT0pNNmdQ?=
 =?utf-8?B?NVNyT0QwSHRFUGFlblQ0ODRKNGYraDA5VTNKdTVUZytCVldFc21VZkEzc0Nh?=
 =?utf-8?B?YXB1eGl0NHJmcWlESllmdjZCV3ZGdnI5OFV5and0Qkkya3JnaHBIRXRvT0o0?=
 =?utf-8?B?VHh4S0lkM3JmV1gyaFJWWEtBU3pZZE1DSVQ4OXVnUWl3SzZLR3RWMkhsU25D?=
 =?utf-8?B?S3dMbWl5TFdGWXF4bWJiMUpOWUY2MEl5Ukp4a0pSaDEyWjJuT3pEd3NYdWdH?=
 =?utf-8?B?STFyOHNYTmF1YXFMNWFRU1ErT0Y3cC9DS2VUYzZtN21LaURCaHFDZjRWWGVr?=
 =?utf-8?B?aHFXNUVnRkd2TUttSkhjTHdWemVBVDBzcnVRUE1lVGsvckVhZ1NST2lrVjdE?=
 =?utf-8?B?aDRyK1hmYXBDaUJEcW52a3RNZ1JuekZmSjdKMXl0eUxZSURuNVAxUkpZQmts?=
 =?utf-8?B?VEVrWUw0cDd0TWVCTm9kR2JRM1F3c3VoeTU5Ty8wUitSOU1hV0JOZVlzbDN4?=
 =?utf-8?B?WUhYVXh4SWdTS0cxNDFSWG90N09ZZmNwV09EVkxCcXdyaUJIenhXdVMrZlgz?=
 =?utf-8?B?RiszWXZpc0hhOW1xVGNCOGp0NHE3bXdqWE5ZUWo0dmVtVk5jdnp2WXZQQmtD?=
 =?utf-8?B?djBrdGx6dCtlSEZuTnBFeldDNkMzOGdZRkl0TEFHOUNuaDJISzJRQkxqRElW?=
 =?utf-8?B?VTFxRVBkcXdGMjlUMXk0M3JPWkpSWVh4OWdWUzBSWXppWFNqNXAvdVNxVDlP?=
 =?utf-8?B?cDZTZk5hTFMyemVkajJFeWhrc0hSUGIrSElXZGovNHMwYzNEYS9hRDJZRWY4?=
 =?utf-8?B?QTk1SXlPWlZ0bjQrcDlBUkV1SWZ5OE85ZUdvbGR1bGtRVERmTGJlOXVNYUlU?=
 =?utf-8?B?eTlBWHM0V0FYYVNuNlNoMmZkbFJ3SWFCZkxVQ3MwSWovbmErbU0zUFFvYnFa?=
 =?utf-8?B?eDhhak9WT0JsVzZIVENOdnUwblNRU25tM2Y0Vlg3K3FBbyt2ekhBUFUreW5W?=
 =?utf-8?B?WHFrK0xVdmc3ZnM5dHRZODUrNzQrZUJJcDhDRkFzcXBOVGVWRXNyZGpENVZH?=
 =?utf-8?B?dkYwaXRCc2IySHh6R2x1dnlrc1I4WVVpdzh6Z1hsVW9uVm9MSTJkSFhXRFZw?=
 =?utf-8?B?cWd4ZnE3Qnk1bzZrQ1JnYTlTeitkWEFaNDgvRnBNUkJsTTMwL1kwVm5HWm5r?=
 =?utf-8?B?Z3ZVWEdiTUQxakN4cmw2cWN5dHlROHpZWHRBOU9aaG53c1IyQTVTMGF5YXJw?=
 =?utf-8?B?YmVIQy90RjBFc29TTG16TjYxeGFYNFFSbE9uTFVVdXlQZGszL2lFQWtScGVI?=
 =?utf-8?B?alVZdDNGQXhzYllVYkZQNnR1ZUt5Mis1VTlnSzBqZVFwRVB1bzNHeGNtVHJL?=
 =?utf-8?B?bEZ4MTNoK2h0Y2JiYmhKMWw0QWRrNXl0OHBEVUV0a3REUjlDL3BXRHhwck5X?=
 =?utf-8?B?bkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 16a28a4d-98de-4c3d-401a-08dd61ba10aa
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2025 23:03:13.0210 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D6EcY2RWZYMt5D6KitDkKrSApFWAWDOgIhaxI6AEcme2XxyOMNjEsv+e96ax2iFPIXvyd7bokFzmUfnNrPOQQXW5Rw84Aa8nUgaFkz+kGPo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7466
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741820597; x=1773356597;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bMcSnFLrFi/cZBeIG8tv+vvdRkeoEhtY6IDnunIzLFk=;
 b=CpjZsIhOz6GnTfbYXhNv02EAn+Ffzfn/EEEYCPMH+/QD7BooVfej46DG
 tmfQZsXdTLp8O70LWTHMR4YF9eLe8l1wj97G9kEL4LNzbQ1yKmFFAT0sm
 4UqooL9lxMqOf23u+IGLbbBv8oYsIQ6hRqW2AX/hyYQWAkkaW66bFnrry
 9HvC8MiBuy1Hg769Zk5KPBfQi3gBymKQeFTgRp0Gkhfd6pukBKF8feFEM
 dWjwJbgc4CQw0jcMsy1VHuHXtZ4YYE+nKQ7a6nt3HDDOrdZClFGLY0XmY
 gT9MaCJdl+GOMiDZQe0FFMnVrKJ3Ab7eYSzMJO7t1B/HTZRMf6uNRDLPf
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CpjZsIhO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 01/10] ice: move TSPLL
 functions to a separate file
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 3/12/2025 3:58 PM, Tony Nguyen wrote:
> On 3/10/2025 4:12 AM, Karol Kolacinski wrote:

...

>> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
>> Reviewed-by: Milena Olech <milena-olech@intel.com>

Milena's address is wrong, should be: milena.olech@intel.com

>> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
