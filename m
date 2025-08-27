Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1006DB387A3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Aug 2025 18:18:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 94E8481759;
	Wed, 27 Aug 2025 16:18:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7AekpFTnSsGy; Wed, 27 Aug 2025 16:18:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6158C81769
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756311519;
	bh=aAwjKwt1HU25VhvUahmjLuew39/Mx8tLfqjhPDHjhDU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KA2SyzNWFA0GszaOMym5gtv6fRexD3uG/OhSIsc4qo5aTZnrQaIaRrUp4jHy7cqLN
	 XYWa7Q627946uV5S7rSFHMgPCfVAAXV/3Oh2e85zlUaHhzZirNq4reR8sslRXtR3E/
	 ifM14NHqTY4l7LLpzntZFAjDzcwqnFJDMk8hwZ+8z9O761CQHxvc0G7Du3f1YtfG9t
	 ctQAZjmzShV49tqAdNoWiOcfDveLej27lK4Aa+Z2dwWA80DPWKzF6gcf64OaTo1je1
	 /OQaGV7qKGjI7NESKoNZbvlVZsZxj9U3R5pBJ8aJGXi15EaDSt/uHkYeDKtdFaaWI0
	 O7XpGjHO1zMbA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6158C81769;
	Wed, 27 Aug 2025 16:18:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id DE44DB8C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 16:18:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D01F560BD6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 16:18:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SYEaEL3sr1Rc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Aug 2025 16:18:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B30BF607E3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B30BF607E3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B30BF607E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 16:18:36 +0000 (UTC)
X-CSE-ConnectionGUID: 79NE013eQh+yAn6CTVgN2g==
X-CSE-MsgGUID: 0lizQVy2Q6i5ae36d9f+zw==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="58419808"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; 
 d="asc'?scan'208";a="58419808"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 09:18:35 -0700
X-CSE-ConnectionGUID: W5VbmwykSJKYtseIOB1ovg==
X-CSE-MsgGUID: zrBjS+OaQNy1xCC+4M41eQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; 
 d="asc'?scan'208";a="169811776"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 09:18:35 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 27 Aug 2025 09:18:34 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 27 Aug 2025 09:18:34 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.40)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 27 Aug 2025 09:18:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TRFsGGjx69eM8OtMGzB9ZZcFwD/6axayyxp0FRc4o+5w6NsyqK32lZQ6Ziq83t3G/8vxwMA7kDydDu76GF/y4CZ2YHzLW8mLxIwe9o2sfXW65zya33i2l13r0k0ZblWHUerDpl8RdYGYv6nT9WBgJmxsxFFgq79iKMjsSBo1hGav0TWwehaYELTYTRFbyqRc+I+Doa+PpcYYA5NLCm8eVzY7BEuWegG2uNfjnLqwhCUsRMvSfNjXrRUza9GGZ0yaKn5tfKGf0llxlmPkiM+sN1MMQXI5Bj+NRsVMRw4+r1MO0LkCEW5N0Xknp0Z4zZI9EwMM/aNJHW5u95H0skYV8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aAwjKwt1HU25VhvUahmjLuew39/Mx8tLfqjhPDHjhDU=;
 b=NKxZfJNFRUSD+Yi33xZcCJWCDbyLfKZOmoM4+6bDwejlvtCPP781XDTG0YplsRgJKzvuadC9exhN4FgB2VCcsEYFTRbtV1E3gsufyik9g/iyzqmU2rH09tiX1iaj3FZfc/Qi4i74yMMtSHmJ3LSfCYMF9flW4Eg4qcVjZR1yMz4W+Teeravhw8ScseWVHr6OhukHMDNtwgGddrkVDA0C4k9rAAdQHQWEqcDs4QmUcUB/p+yfBnYwBBpuxIQEtEjuykT+xCpyxo7AHZMN2p4rYf0sWbHT+HHLbz+65ggO2D122sZF54FNXOolQsWtfPdEupSafMFcDzM9Y43g9XzQTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM4PR11MB5229.namprd11.prod.outlook.com (2603:10b6:5:39f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.18; Wed, 27 Aug
 2025 16:18:32 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.9052.019; Wed, 27 Aug 2025
 16:18:32 +0000
Message-ID: <e98d2126-df54-4a75-896a-fc5915f94894@intel.com>
Date: Wed, 27 Aug 2025 09:18:31 -0700
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
CC: <kheib@redhat.com>, Paul Menzel <pmenzel@molgen.mpg.de>, Anthony Nguyen
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, <netdev@vger.kernel.org>
References: <20250815-jk-fix-i40e-ice-pxe-9k-mtu-v2-1-ce857cdc6488@intel.com>
 <20250827103707.GA18629@horms.kernel.org>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <20250827103707.GA18629@horms.kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------AMHFkUKZsMX77oHNHchDQgZ4"
X-ClientProxiedBy: MW3PR05CA0023.namprd05.prod.outlook.com
 (2603:10b6:303:2b::28) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM4PR11MB5229:EE_
X-MS-Office365-Filtering-Correlation-Id: 282484e2-ce1d-4e2e-dbed-08dde5855db3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OFo4Wkoycjhaa0w1V3lITTlvdWk4YW5XNjdoU3ROam5EczVqcUo3eTZ0ajNz?=
 =?utf-8?B?Q0hlcUJlMUQrQWxFSDc3ZklMLzBKUXVqVE9CVHVIOUNsK0NiVnRTWmU5enN1?=
 =?utf-8?B?THc0cXFUTUI5VjZITWJ2TTlDWTUybERqTXlMRmdaVGVqK3BGaGJFZ3ZWcHo5?=
 =?utf-8?B?bnFmMWRKc1B5bmZOV1hUQXpKZ2FMZURvUUxWTVZOV3RSWjQ2Qkk3UnhOdTVI?=
 =?utf-8?B?SkFSVFdXNTBySklLejlHaXBQc3Z0aE1samRFTVQ4djZkQmNPU2xNZDhaYmFU?=
 =?utf-8?B?Szh1V3VydW5MenN3Q2RmUGZPdFBPYmt5UjMyWmNVMSt6R0RCL21UdHpwK3Iz?=
 =?utf-8?B?bGpPNjZZdHM5NmYvMFk4ODNJdXlhdWp5VVlDVkZmWElubytIQzhEdVltM1c1?=
 =?utf-8?B?amF4dlBjWjIxVGZuWkpQdzU4ZThjYnZ0NHdsYXZZMGJOWFVwNzdJYzdvbGN2?=
 =?utf-8?B?QS81SG9TQ1NLaVZVTUgvc25xQnRWN2tTUmtqYSsrN2IxQy9OUlI2U042ZlIy?=
 =?utf-8?B?ckVXaGZUWG4vNkRQazZnOHhocSs5eCtuQk1lTnhVekhaZGZSQ2hOSnJrR3FT?=
 =?utf-8?B?enpWTDZmZDlGL2RDYlIwM2hWSmFiRFVKVWg3Vm9OWTk4M2FWVnZHOFg4d0VW?=
 =?utf-8?B?NUFBdUJ5V2RWMGZuSWlYamY2aHVoZFEzSFpYWmJGOHJXTmpOSEw4RnhraUVL?=
 =?utf-8?B?OEZJNUtJNGNkdmpmYnIrZEtENFAwcWhhN1Y1TVhlckpJbExpanJJYStjMDhh?=
 =?utf-8?B?ZXAwSzJJVDF1SHdEZ3hDS3Q0MVk2ZmxYUEF0Zkh5eDl2UCsweUZaTnVpR2Rs?=
 =?utf-8?B?bEJVMUgxK2lGVFk5Yk5ESU1uY1hrUm1MVm9pTDVNTVNZMS9lTVNmMnpzQklF?=
 =?utf-8?B?OWRxTmF3SmRYakUxSENrRFhDYkRTSFQzUmIxYUNNMGJaaDd3L2l4eTBGOXha?=
 =?utf-8?B?eTFjbk9VNncwOXlGOVFvQUpYMlJHZElLblI4eTIzbEJ2b3NsSXhBenprbFFs?=
 =?utf-8?B?YlF0MWQ0dDMvZHppaUZDK0pDRWRuRzhjcWRzU2picE5YMUNvS0JRb01Nd3J6?=
 =?utf-8?B?MXpCNk4wWUJ1ZDRDa1I0bTV2N2F0WmZOQnlvbnFGMHhSNG8xY2wrZFFaQVAw?=
 =?utf-8?B?c0VtejNuY2ZNR2xvZGZ5L3lIYUx6Vk9tSWE5VDY0WEN1eGk1dnluOHQvUm1T?=
 =?utf-8?B?Q1FEZ3N1Nk1CdEM2YVhBT2d1dC95cWZDbzRqYTVxRmFsTm5GRXpUeTNGeC9n?=
 =?utf-8?B?ZzhOdHl1c0hoemtZOTRDbHhMUzUzZUtMTlVLMEl3eFNHNUNTWURqWXMyRkNJ?=
 =?utf-8?B?S1hCb1lneXJNSGc4a29HcnFBMFdyOTV1Z2RGTkZRcEt3ejlpRDNjdzR6SzdU?=
 =?utf-8?B?OUlYcG01Sk45SWtpamw0N2RmLzE5YkZLMFk3RVE0Z1FsT09TSnpaQS8vU3c0?=
 =?utf-8?B?WFphbXRzazBsRDI5aVZuKzFmbEFBS1JmM3BsUW1UMVdYMTJEK3RDbDlrSXVO?=
 =?utf-8?B?YTBSNEJLaDRveFhicndTdHlOS3kyYldaWWdxSS9nL1pmZ2pVb3NQMFJ3cTNs?=
 =?utf-8?B?Ly9ZcE9jdkd2T1ovQnFUSXZDa1VaYnN1bklGdjZNTGpqeFV1a0NHV3d4S2hU?=
 =?utf-8?B?SURSQ0hack1qMThwaE04WWpCWkZjd3p5S3p1OXd0UGJxR0dNcDFsU09UWGl6?=
 =?utf-8?B?OWRXZVNvdi9LeDhiOFV5dGNVdnNzY0hBVEsvaEVBSzhaNEVORjNRNmpmaUNY?=
 =?utf-8?B?ZWJKOWI4NU1wOE14Y0UzbTY5UXZzcjdvTklHOEZBTzd4NjlVU3NrVTdFNDA5?=
 =?utf-8?Q?gHT18uHvUvxlUwd7UXPja7aGWVuw/bwSM+uk4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WCtjUG56dUFXSzZ2MWJSSVF5L3BkdEp3QmJaampkdjFwWkFuTWkrSXU4OTYw?=
 =?utf-8?B?a1VFc1hXamhacmNFVE9hRDhvRWZIZk5DakovSHdZMG0zQTFmMnAxSWxHc0hv?=
 =?utf-8?B?d0ZLeWZCbWNOKzNzNzY4QXZpQmR3SXVhUHdPSXhjUGlLZW5hL2tCUlEwNTVS?=
 =?utf-8?B?M3VtWXRCMmU4YSsvM1FRMGRzd1FRekh2WEU3RXJkODhIVGJIZTZNbWQ0LzNa?=
 =?utf-8?B?N1dUTHZ5SEgxRkEyR0VqcHRHbFVNTXZTQzVXSWFXUXVVTlUxbGpKcVFjSi9r?=
 =?utf-8?B?aERldGNoZ3Z5UmRiZFhBSDJTb0hLRXZrRWkyL1N5MXJoOHlRUlh3eWQvRkFB?=
 =?utf-8?B?MHA0ZUtGYzlYMTQ1RzJYYWR4K0hWekZMNGNHbm8zSHpiRHF5Zko1UjRPbzRt?=
 =?utf-8?B?ZmZnK1YyeEY4VkcvUU9GTHNnZ3JLeFN6NzE4OEg3VWFxVTE4bVJzZ3N6Ympo?=
 =?utf-8?B?SjR0WlJmNWJJUTNZYnBIZE5ra21wWVExNWk5M0pnbm1EODNKS0xqWGM5VU8r?=
 =?utf-8?B?aStjcDRLSnpoK0Fsalh3d1hUSHFqcmo5Z3ZyMzVISFF6cWt1NnRVeGJwUGFw?=
 =?utf-8?B?NXUxWCtHQ3kwOTE5K09KeHNpK3U2bmo0dzRDalNTZDFJdURuQ3VWTmhDd2tK?=
 =?utf-8?B?NWdJcmFCYll3TW1qUTVCZ3lubitabm4xNmp4ZkFzSDlFY000QUFRVS96bVpk?=
 =?utf-8?B?K0N3L0pONE55VUtWa0hiMUdtUDcweHlDTzVZdFVEZWVZVWdmNjJkcktnLzBT?=
 =?utf-8?B?di9tNmFPMTc4TWxWNE12Wkk0dTlYWDRBc0RobWo0Ly82SUgvd1ZEVWh1NDE0?=
 =?utf-8?B?UjYvTWptTDhOQ2JnRnd6Q3ZIRDdLSzYzcjVWZWtOcjNCWHplSXBSclhDZTBY?=
 =?utf-8?B?aWVrZHdQTHZIdXJTS0FwME41d3dyOUVtQSttYUdQZ2FGTFFPUnpxcmJCUHA1?=
 =?utf-8?B?TnlrWTRyVUhJaHpqNHg4TFRhUmZQdzNPQjE3eG0wd0tYMVlkd2FQaG5hQkw2?=
 =?utf-8?B?eTUyZlhWUmN2UXcwK0RWWnlvR043TzVFOU1pKzRmeW9BY1FyeUdtZ0dCMW4w?=
 =?utf-8?B?ZGcwcjMxOER5UCtjazZsTUN5L1pENlE4TWFuSTBCZ2wzTTQ5ZVNSSDd5L3Ir?=
 =?utf-8?B?cXBPRHAwbjJ5MmpDWnFtQzZqSGJQRmlDcXluaWR1MEowWk1GTHhsTnQyVFVO?=
 =?utf-8?B?eFRCNnpuRjNZWlg5V05yK2VKWDZVNHdFNy9hNkQrZ21tVDdVZmJETnJrQmlR?=
 =?utf-8?B?cWZuZFZRK3BOaU5JTXhaNXFGL2VBek51Mm9uZmQwdVlyOHJyL1RMeVVRQy9p?=
 =?utf-8?B?eGo0b0pUMllpN0ExMXZMcFhVWkp5NVFDdmZrRzFLSkx5WldxdjdzTUlpN05D?=
 =?utf-8?B?MEk4YStscURUblR4NGlZSTgxWVZiS3pxb05XaDlVUE1Qb3lzTEhEdC9GZFhy?=
 =?utf-8?B?d1hKQUpzczBOWDR4ZGljTXMrRlVqdjNVd2p0YkpKVHE1RkR2K0R1VklOVXhV?=
 =?utf-8?B?Y3VuRWxRK1V4cnZtVkUwbFJTOVdad0dHemduV2hUd2hRdHgzQjRTdVQ4QUEx?=
 =?utf-8?B?OG9JZDJWdEJGZ2F0aVpxbFVpN254emI2aFRENVp0cVVHRURPRFExTWR2VXdQ?=
 =?utf-8?B?ZHNiN3pZNmRBakladmtNMnJYQ2lCbzR6bEx4MitLUEpNc0VVazRmeTZTNEtV?=
 =?utf-8?B?clZ3WVN0NlFveUZCZXlLaWhKSk9LUGhrL1BjaUhzV25OWFloa1NqN2ZPdFJl?=
 =?utf-8?B?cWNEZ1Fzc0JaKzhHdUplMWlxOUZ1QmtlVzRVMnNZQWoya3JmckJzM3VrU05L?=
 =?utf-8?B?ZnJYc1JoNWdQVndYOXlUQ3pxMlY1QStJY0xXM1dqbzdHNTFyazB4VGNuUE1n?=
 =?utf-8?B?TXErazU2UUo3dm92bmlOb0MvTE1hSkZvTGNvY0RpTUtaVVM2QmJPdzdtTkZV?=
 =?utf-8?B?cUtuNmZ4MXFsaWhQUTM0aWRsVitwTXhvaUFoL1o2Z3EreDNOK2R1RXJJeE8y?=
 =?utf-8?B?R2M2Snk5aE5uc2ZuWTBlTFZVUk11clE2Uzh3ZnVPYUExWXFveGpPa3I4UEpO?=
 =?utf-8?B?Q21UMkQzTm8xM2xyUHIzd0NNcVZ6MURjNFN5YjNZVjNXTld4S0N2UzJIS2x5?=
 =?utf-8?B?eCtmdDAzSzZrUzJSQW95ZTVLSHFhdVE5U1JwOGNvQ0czTk80bVd5ci9aMGYx?=
 =?utf-8?B?K3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 282484e2-ce1d-4e2e-dbed-08dde5855db3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2025 16:18:32.3437 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1M8U+GEwC9EhzGEvTGSVCc7IBYIbkwrORMvEZ0aV0ltTDPx3jQl5mXI8zyMwRXHAaGHbf0bZqOgfb02+zeyf4QrtcjUDY3pe2zpJ9rZ9TyQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5229
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756311517; x=1787847517;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=aAwjKwt1HU25VhvUahmjLuew39/Mx8tLfqjhPDHjhDU=;
 b=CMPikFNz7OkKuLysp/EcBTizIbPuhJPapEErSLG8A18g2HRMqH8+CWpr
 6HAJgtA5sVy64K3zZiwbCPQH+4vChbg8YwIwfnv/4iGCB7Lhj3KAbRRGr
 EyMhcPyYZaY2z62Y9tikSxI2Ox1LMHmb2qPiWq9pZa411Q5dzeappRsEv
 4knzytggBNTmdpjBUG3Wv8kruO82OyCVqUnB4Nd2EdjQ1ptjBM/u4xW8Z
 ClTWUbrYw9Xokmse2Trs8md1xtKajeYZtSBmjnXBLDu988d2DAYwLKppk
 HhHRkASeADMRYIYrtOw3/48sd1adsSLEcSVh4qLTAhLf4esg6U/ChdS53
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CMPikFNz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] i40e: fix Jumbo Frame
 support after iPXE boot
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

--------------AMHFkUKZsMX77oHNHchDQgZ4
Content-Type: multipart/mixed; boundary="------------w0qLRj0r77gJ0uQx0r0BSGyH";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Simon Horman <horms@kernel.org>
Cc: kheib@redhat.com, Paul Menzel <pmenzel@molgen.mpg.de>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org
Message-ID: <e98d2126-df54-4a75-896a-fc5915f94894@intel.com>
Subject: Re: [PATCH iwl-net v2] i40e: fix Jumbo Frame support after iPXE boot
References: <20250815-jk-fix-i40e-ice-pxe-9k-mtu-v2-1-ce857cdc6488@intel.com>
 <20250827103707.GA18629@horms.kernel.org>
In-Reply-To: <20250827103707.GA18629@horms.kernel.org>

--------------w0qLRj0r77gJ0uQx0r0BSGyH
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 8/27/2025 3:37 AM, Simon Horman wrote:
> On Fri, Aug 15, 2025 at 05:20:39PM -0700, Jacob Keller wrote:
>> The i40e hardware has multiple hardware settings which define the Maxi=
mum
>> Frame Size (MFS) of the physical port. The firmware has an AdminQ comm=
and
>> (0x0603) to configure the MFS, but the i40e Linux driver never issues =
this
>> command.
>>
>> In most cases this is no problem, as the NVM default value has the dev=
ice
>> configured for its maximum value of 9728. Unfortunately, recent versio=
ns of
>> the iPXE intelxl driver now issue the 0x0603 Set Mac Config command,
>> modifying the MFS and reducing it from its default value of 9728.
>>
>> This occurred as part of iPXE commit 6871a7de705b ("[intelxl] Use admi=
n
>> queue to set port MAC address and maximum frame size"), a prerequisite=

>> change for supporting the E800 series hardware in iPXE. Both the E700 =
and
>> E800 firmware support the AdminQ command, and the iPXE code shares muc=
h of
>> the logic between the two device drivers.
>>
>> The ice E800 Linux driver already issues the 0x0603 Set Mac Config com=
mand
>> early during probe, and is thus unaffected by the iPXE change.
>>
>> Since commit 3a2c6ced90e1 ("i40e: Add a check to see if MFS is set"), =
the
>> i40e driver does check the I40E_PRTGL_SAH register, but it only logs a=

>> warning message if its value is below the 9728 default. This register =
also
>> only covers received packets and not transmitted packets. A warning ca=
n
>> inform system administrators, but does not correct the issue. No
>> interactions from userspace cause the driver to write to PRTGL_SAH or =
issue
>> the 0x0603 AdminQ command. Only a GLOBR reset will restore the value t=
o its
>> default value. There is no obvious method to trigger a GLOBR reset fro=
m
>> user space.
>>
>> To fix this, introduce the i40e_aq_set_mac_config() function, similar =
to
>> the one from the ice driver. Call this during early probe to ensure th=
at
>> the device configuration matches driver expectation.
>>
>> In addition, instead of just checking the I40E_PRTGL_SAH register, upd=
ate
>> its value to the 9728 default and write it back. This ensures that the=

>> hardware is in the expected state, regardless of whether the iPXE (or =
any
>> other early boot driver) has modified this state.
>>
>> This is a better user experience, as we now fix the issues with larger=
 MTU
>> instead of merely warning. It also aligns with the way the ice E800 se=
ries
>> driver works.
>>
>> A final note: The Fixes tag provided here is not strictly accurate. Th=
e
>> issue occurs as a result of an external entity (the iPXE intelxl drive=
r),
>> and this is not a regression specifically caused by the mentioned chan=
ge.
>> However, I believe the original change to just warn about PRTGL_SAH be=
ing
>> too low was an insufficient fix.
>>
>> Fixes: 3a2c6ced90e1 ("i40e: Add a check to see if MFS is set")
>> Link: https://github.com/ipxe/ipxe/commit/6871a7de705b6f6a4046f0d19da9=
bcd689c3bc8e
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>
>=20

Unfortunately, we recently discovered that this has causes a regression
in some cases for Tx traffic. Still investigating, but Tony dropped it
from his tree. Will try to figure out what is wrong here and submit a v3.=



--------------w0qLRj0r77gJ0uQx0r0BSGyH--

--------------AMHFkUKZsMX77oHNHchDQgZ4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaK8v1wUDAAAAAAAKCRBqll0+bw8o6NJe
AP4ltjy+4nrGtEQNSjfRlo3Z4CHxKP6YssnZgsaWVHZAJQD/eg9e5jmu+YNvJDfvSpNi/74qeglw
MvwgU+9eHamhpQM=
=FeSJ
-----END PGP SIGNATURE-----

--------------AMHFkUKZsMX77oHNHchDQgZ4--
