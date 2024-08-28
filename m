Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E1083963450
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Aug 2024 00:03:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B8DE81911;
	Wed, 28 Aug 2024 22:03:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JucKdabYa0UK; Wed, 28 Aug 2024 22:03:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1272381589
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724882607;
	bh=cuYs9qKSROBrpSIYpDOQL26szZ5CA3CjWlKNQT4qlj0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uuasNbsdk6fvmAnbKdz3BfJW2yIJpAFIji8baOVBv3nyLl2wSL7oEwqGpAgsOGB7j
	 2wZc+7HfN85pl+C8NdtRN2k2b4ZvD7jU0NwcCgFAkWNJCIDvkbYYCXnvkKrRx9AIv7
	 PRYWiHiHpJ5pVTyG6f6L4Fzea5ZfFcfYu/86kgg5UeCLcOeUQ0FKVIPAGt/JvIxikM
	 vQETxkdhM6tnhNZXyYhs0Yo6tTgV9MOQwblX3cvluJHve/g7atynLZ6Yj/pCarICR0
	 7ZQYoOysGD49tgQYukzCzncrWjZAOJycrtRKVyOJWezBoIgYEUs078GmGsju90ZIYy
	 +t3u8gFo8rH6g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1272381589;
	Wed, 28 Aug 2024 22:03:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5874C1BF28F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 22:03:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5198E40B47
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 22:03:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R5qeCIqB7S61 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Aug 2024 22:03:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 81F3A4078F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 81F3A4078F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 81F3A4078F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Aug 2024 22:03:23 +0000 (UTC)
X-CSE-ConnectionGUID: QeGt67tcTuCXEhUyyyTMZA==
X-CSE-MsgGUID: PWDaZGOmRTK+aoo6ucATkg==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="23249662"
X-IronPort-AV: E=Sophos;i="6.10,184,1719903600"; d="scan'208";a="23249662"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 15:03:23 -0700
X-CSE-ConnectionGUID: eInVnSLiQ2eu8lt/DDkAHA==
X-CSE-MsgGUID: d1sdUVBpQk6qDMRU1P4liQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,184,1719903600"; d="scan'208";a="63431659"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Aug 2024 15:03:22 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 15:03:21 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 15:03:21 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 28 Aug 2024 15:03:21 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 28 Aug 2024 15:02:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uhGd/Yk6aP5+xvk88iVfYxCB8mZajnclfvTUtn9v/cb84UNsaJkWsnOIAkNTJnDOrSHPH3aDyQXtFkW4M/zHSXcFAO6JRxBtMXvPozdQL8mDdjD0c2TI8IHOg3GMl4KIFi5Sx1S0lDC78S0VPMgKiJubndzqS/B17a6+gQdLXb7qHEOGbYHWMQ6GPRNmii2m6LZM7y/mWAn8e9FzSyG4k+3TbU4ugxId7fBbKN7e4ww8Gtrt8IlOZJ1lE8fPXa3oWX+THDoj082Y0QHQQIO5JvqNF8UMzZTG6YDyU5ulS6u9vBnb0PqJXVOx5+EQK6VJ5sgfzxBgKGIPPKLaKlvgcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cuYs9qKSROBrpSIYpDOQL26szZ5CA3CjWlKNQT4qlj0=;
 b=PIHEsmH9y3I25rSqoXc9wmr3ZEimm5WcZBdGsvTElwWO0vAzXh82vZIYB2IzUqG1tw+zlnBRECZ5+b+em0QxeHQsr8uJTsmjHUpQSUnwCCRD+zPQTCaZaGiR0uP8l3vAhJ2rlDwHFkH8TCxPTr+EJt7UQg08TZ2r4D7ITKITZflzEhp5AVcTadXqxxpZf81DtZpmisce84ergj3WWr2uxolFpRablct63SMZoWu+YvDQChQhWl2zjMegIBoTw9zGUG7Pa+57vIm8+67vEt11ojgdR+bnMJ4U60nbIv7n1NKwP2JFWFqEfoN8KZG2XI72MqS8koQwANmoMwbzXSi/lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by BL3PR11MB6386.namprd11.prod.outlook.com (2603:10b6:208:3b6::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.34; Wed, 28 Aug
 2024 22:02:39 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%2]) with mapi id 15.20.7897.021; Wed, 28 Aug 2024
 22:02:39 +0000
Message-ID: <ffe09847-b923-48ad-977d-28948cc2acd7@intel.com>
Date: Wed, 28 Aug 2024 15:02:36 -0700
User-Agent: Mozilla Thunderbird
To: Manoj Vishwanathan <manojvishy@google.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240826181032.3042222-1-manojvishy@google.com>
 <20240826181032.3042222-4-manojvishy@google.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240826181032.3042222-4-manojvishy@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0346.namprd03.prod.outlook.com
 (2603:10b6:303:dc::21) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|BL3PR11MB6386:EE_
X-MS-Office365-Filtering-Correlation-Id: c01dc0cd-858c-474b-8f0d-08dcc7ad21ae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZnhiMlk0VlYzYWNtc3puV2tjNmRQaVhhK1hRb3dwZGU4Zzhrd3ZadHJkV0RE?=
 =?utf-8?B?bURrd2hMVEJZYUxiMlp2Wk5uWjBUaWFjamN5MWFhWGtGblROY2N0VWNpSDR6?=
 =?utf-8?B?OTdTTEV0NEdSMktmb2RKdDB1K1k4R2pUUHJCNWtjK2VXNnZrRkE2SUxVVCtP?=
 =?utf-8?B?S09Od0hvK1hNUVdoa0Mrb1JjYVBvRTFEejFVc2puNGE1bWUrUjBLcStJN09k?=
 =?utf-8?B?NHNUUVJTNEpROURxcnlMaG5XREJlTnBEa3lZM3Y1TFFVcjBUdXdYdEdkYWdK?=
 =?utf-8?B?YVN0UzlwOFVPek5aTWZqVnhzK1ZPRWt4V08wYnZJZmpwN3dVTXVISVFXUkhM?=
 =?utf-8?B?OHg0SWVPUnZ6Z0oyL2FhY0c2OS9pbUl4MjBLNFZPZkxMc3lEWHJWaXJWTFQ4?=
 =?utf-8?B?RXI0YlRaK3lRL0FRMGZadFd5NUhsdEJ5SkxtMjZoMXpQa0M1YTkrU09GTmZ1?=
 =?utf-8?B?c3E0bVJNWW9WTUpFamZYQ0lwcUN6SHdVZWtEL1VrcVY3R2prdUxVWHlDREJn?=
 =?utf-8?B?YmNUTjE4L0FMQTM0WHc4SWlwSWY1dzZReTQrVGJxM2lVZWdDUlo2L0VrYUJv?=
 =?utf-8?B?aWk2MnJxbzY3UXlxcTd6WXBNY3U5VWwvTVBVYnN3TEU2NjJFZ0lKSkJwbkZ1?=
 =?utf-8?B?bXI3UmY3VXFnQU0rSEhqRHJ3eVRrUStvYUc1M0lBbGE0alptWWNpN2RFUEx0?=
 =?utf-8?B?SG1xVTUvcjZJajFrNHRwZUo2alNFV0VndzROQW5vc2lqeERQODBJR2QwWE9G?=
 =?utf-8?B?TFFmZzVMTU1mdkxwSTN6TUNwZGpkMThjSFJkUGV3d2xsaDdPWWFPNHE3UDF6?=
 =?utf-8?B?TEdvL1pONGp0cWowUW9mUGM2U0hGUU9IL2JGckcwbldoNHptbENZLzR0bnZJ?=
 =?utf-8?B?ME5BSXl2Sm9iWFkrT2VUdFg3Z25GUUpHUmZGa1lBeExHZHZrcW1KNXRUV0Rk?=
 =?utf-8?B?MWgvTS9nbXZFNDJiQWhHb3Y4d0REUWVZbjBpRzRleXFYV1ZoL0swSWhERTdX?=
 =?utf-8?B?a0FkVnRlSjNSMHY2a3ZBZkxxR0lqbmgzWTJTelliakljaG9lUm0zeFJiSWd4?=
 =?utf-8?B?R0RMT3Z3NjZYbTlBSFdTc2Y5WnkyK3krQ3RXVTRjMHo5Wk1oWFN2Z0szUkto?=
 =?utf-8?B?cDVORWJUSHRCN1hnSjF4akZzd05xSU5vNnExTk5FengwemZCYnJ5cGloU3Jr?=
 =?utf-8?B?VjNZSE03MGlncnZjY1MzdmxDZ0F2YkQzUmJBRmZwa0haR0JaanJocmU2SStv?=
 =?utf-8?B?SXgyQ0dmUC9CVGFHMkMvcHhUaW5jdjdkN2ZnN054Y2ovOUpRTWNCbDMxcklz?=
 =?utf-8?B?RnRhTk9ld01kL1NrNEI2SHFzUnFBY3Y5QkhEdXdVQk5zb3NWVG5IZ0JOWjc3?=
 =?utf-8?B?RFNQYjE0enRlMGZNVFFMdEZBcHNPbDk3RjFEZ0svc0FGV0J6U1gwZUxESEh3?=
 =?utf-8?B?eTB5SnJFZFVmOTRFYms2MTI0cnpGSitTcktLTDFKZzNnQloxblVSdkdmUWNP?=
 =?utf-8?B?M2lXOHk0amp2dndXVzV3R2NueUxwQ2VvbVpBMlFMV013UVBiZHFCQUlNL3d6?=
 =?utf-8?B?V1FUN21UdXc2aEs0QnVCSitPNitRUXA4WFFPaW8yQ0JqRE1qNFBqVnhsREh4?=
 =?utf-8?B?bUJvTHV6VVVTL2ZNckN6WTc2MGQyNndpZ3l2RXRqV05zVFp4UFBFeW43cXc2?=
 =?utf-8?B?a0RWREdJR3pXZW9DazQ4T3dQQU1rSVhicDVxU2kwRUl2c0twdnJkUU5SbFRF?=
 =?utf-8?B?Z1NJZGtqejU0clF4c2JuNlFLUjFXS1JaakRhcTdOOFdUOERnODhnTHRmV3FP?=
 =?utf-8?B?NVJkMG4xUWhSTXlxb0Z2UT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M3VlVlVUdENwS29NMjRsS25GRW1CSnJ1aTVzWWNxT1c4OXkwRlJxZW1wTFdS?=
 =?utf-8?B?WGtsZkk5eTdvM25XQ0xNSy9PMm9hZ2ZXQWlsRVA1bC9JSXhiYy93dTNJV00x?=
 =?utf-8?B?OVh0T28rTGJLbEJkWGduYWdvNnRZd0kxNHczT0cxZXVuNnRCVjlBcExZVzZS?=
 =?utf-8?B?QnU5Y0tBR3RyWXh2SUg1MUs3K1IvRHlqeVduaFFZa3E1VzNGTEVlMmNjNURT?=
 =?utf-8?B?Vzd0WUdsU1IzT2p0a25Teko4R0RjS3FmQzVSYlorcnMzNWdQaGRucFllQ1dk?=
 =?utf-8?B?MVZhbEd4c0ZPbDRkc2NJbGZBNmg0a3A1SmlwWTVJOUxhS2FCVkMrMlFVRHhm?=
 =?utf-8?B?OUo3dnpGUHJQVjM3T2RYNG5xODJreXhVZzMrVTV4RVJ2bFhCb0kwc2lqSjBE?=
 =?utf-8?B?bXJxeE1kUmNBMTB3U2g1bHJhWjk2SHV4Q3RQQ1YxZW5jZC91UDdmOFVtMVdr?=
 =?utf-8?B?NXp4TzJqK3hVMXdJc1lNWTAzZXYxMFBkVXl6dEpXUHRuS3F6Vjl4MnNnZFFi?=
 =?utf-8?B?MkNTTytDem1xKzAxQzdZUTErOXlkSXBReFBycWU2ZlBUMUtJSFRiZzQxanJW?=
 =?utf-8?B?UW42L0xtQ2UvUUwwU1VCY25rZzh5RjVQWkxIZmRTQk4yUm5sMEJVa2wyRXEv?=
 =?utf-8?B?dmJCZFNkdUYzZzBxVHQ2WDRwcXFuM0JjaDRKTEFDbEpaWDcwT2dab2tIdUlZ?=
 =?utf-8?B?enNNYkowb2JORmNxZExPUUJtM0pOYjM1djNRK01KZ1czSFM2Z3dkYnMwb29z?=
 =?utf-8?B?VnhxdHZPbE8wcTFrRVNBY3d4cHE1K3hvMTZvZkd3SndtZmIzeXJ2K05ydFZi?=
 =?utf-8?B?SllZc1h1dEl0R0lURzVsV0NVUWxkb2lNcTRFeXFhTXdHT01xK1VWNGtTNjR5?=
 =?utf-8?B?TzdHVUJkQ3BLc005NjVWdnRUOGh0dlZNNUJEd0cyTVpNRzZMM3J0Z2tkT3Y1?=
 =?utf-8?B?cGJqUDlZK0hJamNJMkJyWXlrcHc2RW90bE5VeG5vNk1HeUw2QkZuZDJENkF6?=
 =?utf-8?B?aEUvMjhveCtaNlppcVV6SElOdXdEOTFRT0JDUnhwRFNXWk1GS3BSejhaR3E5?=
 =?utf-8?B?bE55WExVSTdaRDNmZytiM2QrVEF1RFhjTXVsdWVZWjBKTDMvNTVncGpVNmQ2?=
 =?utf-8?B?YnZRWVQxQ3JaN1VNY25Id09ObzBSRitNMHZmcnRrVFk4L0hxMWFmNDF5ZGVJ?=
 =?utf-8?B?V0tXNTJhR1hoWEorZDZLb2tjckFrSFpRODZMTDVWRG1MNXdtbFd6M2QxL2hj?=
 =?utf-8?B?WW0wSVRCSkJvTzZVREtONCtMallJNzROOUtLM3ZXQXVUM0xrRFJVOEFtdjRu?=
 =?utf-8?B?MkJ5cmdoYTJGYjNXbkRSeFV2OC9EMWwvRG92cjNhdldNalJYZ1ZtWHFwQlVk?=
 =?utf-8?B?UVloWk1jbDBzWDBhV0xVblR5a1BXQno2NENsbHR1cXRoaHhvd0h1eWl3NDJa?=
 =?utf-8?B?NlRQZTJuL2NNVkZUQVU3WC9OQUpFVGJIaWtqZi95ejBpbHVQK3FtempzVmF0?=
 =?utf-8?B?UHJQU2ltMmY0RDV5UW94Y1Q3UXoyYW1CcG5yRXFUUEdJT1hPWldONUh6QnI0?=
 =?utf-8?B?T0pLQjQyRVFoZlRTUGtJRlpOajRRanNCSmtabnhOaWxtdXMwckc1azNXM2Vp?=
 =?utf-8?B?R01xQkx1Vjl3R0Z3QlUvUlV0V3pTc09NNXhSOStQaklaenUwYjdWTFhZazVw?=
 =?utf-8?B?MHZWV3QyMlAxa3RRcnczaGM3Y21BMVRTM09wN1AxRnkzT0dDY0QyM05GaWR1?=
 =?utf-8?B?NjVKb0svRmdBOFhRK2tGekhiVW1HSmFWSEtqNlJhRTBGZlc5Ujgyek93TXFv?=
 =?utf-8?B?YWtuc1pIYS9UUTZQTldPN3FQMUhLenBiczFRZCtvZVp4djI3bTJES3pkNnoz?=
 =?utf-8?B?b1JaaTdEbk41RkVQMGF2SWJpbDgzNVBRblNYUGh5eTY3dldzUkpkcWRtZnVR?=
 =?utf-8?B?VnF5djEwUCt4RUJmbWxiWEZDZTc1VFRJSU1ocXVuMWV4S2JFWmltTzFFZUhR?=
 =?utf-8?B?MlVEdHgram1HRUx1dVJkZVZCMWdVOVU4UTBjYTBsK2ZEcktKaWJRREl2S1BH?=
 =?utf-8?B?L3RYRjVxWFdYS21zMXh4Z09OYzdld0k2TERKSldWKzJtdGdySy9BRWdKeGVT?=
 =?utf-8?B?WmpIWjRCOXRyckVxdGhvZGVPbXZtK2gwNHFxV3lrYVhlYXpyK0JocmdqVWZR?=
 =?utf-8?B?Z0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c01dc0cd-858c-474b-8f0d-08dcc7ad21ae
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2024 22:02:38.9634 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EIj/COM9c01b2A3Khe+SXifrYD+AJww4eKQwvf+e3+0WRSnENQ5GFtjgZvX78gsYfQHtNmuTycDTUp5vYG5Pd2Bwst3i1N11XjR60oIy5tc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6386
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724882604; x=1756418604;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=l2irwTNT5RMWeyhTr1UrQ/oCR+L5i2DaT5mgVDeod1E=;
 b=TWHdzylRQoEycc0kjeK7qYpXj/0Hi881S4sOpvCWTqevt4C7dzl99fyK
 306Hb451H1k84zFChE7p68BxiWYLXYII2OLVn2vOd0AmOCReqLD3Pmsvk
 cMiOhm753L928MO1kBoq1a7BR4qWvgZgdG3P5RdsitQrz5XjnJEQpIUli
 +nyRdNOIIHM2XxEMzaZodaw+IS6AzUuircIt+WV95TX21Dj6reRskFHl/
 qRLttNbUIPe2IVjL758ijX6jDiJJ3AruQfm/dLQqowNVXcnDPaYzdERSp
 mgyZk+eFQp2+p3AI0e1lQqbXvxbAZMm7RjvNbx0dYnw0fNWXz859uG5P2
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TWHdzylR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [[PATCH v2 iwl-next] v2 3/4] idpf: convert
 workqueues to unbound
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 google-lan-reviews@googlegroups.com, Marco Leogrande <leogrande@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/26/2024 11:10 AM, Manoj Vishwanathan wrote:
> From: Marco Leogrande <leogrande@google.com>
> 
> When a workqueue is created with `WQ_UNBOUND`, its work items are
> served by special worker-pools, whose host workers are not bound to
> any specific CPU. In the default configuration (i.e. when
> `queue_delayed_work` and friends do not specify which CPU to run the
> work item on), `WQ_UNBOUND` allows the work item to be executed on any
> CPU in the same node of the CPU it was enqueued on. While this
> solution potentially sacrifices locality, it avoids contention with
> other processes that might dominate the CPU time of the processor the
> work item was scheduled on.
> 
> This is not just a theoretical problem: in a praticular scenario

Nit: s/praticular/particular/

> misconfigured process was hogging most of the time from CPU0, leaving
> less than 0.5% of its CPU time to the kworker. The IDPF workqueues
> that were using the kworker on CPU0 suffered large completion delays
> as a result, causing performance degradation, timeouts and eventual
> system crash.
> 

Curious how the delay could result in a full system crash. That seems
like some other concurrency issue. I guess something like a Tx timeout
could happen though.

> Tested:
> 
> * I have also run a manual test to gauge the performance
>   improvement. The test consists of an antagonist process
>   (`./stress --cpu 2`) consuming as much of CPU 0 as possible. This
>   process is run under `taskset 01` to bind it to CPU0, and its
>   priority is changed with `chrt -pQ 9900 10000 ${pid}` and
>   `renice -n -20 ${pid}` after start.
> 
>   Then, the IDPF driver is forced to prefer CPU0 by editing all calls
>   to `queue_delayed_work`, `mod_delayed_work`, etc... to use CPU 0.
> 
>   Finally, `ktraces` for the workqueue events are collected.
> 
>   Without the current patch, the antagonist process can force
>   arbitrary delays between `workqueue_queue_work` and
>   `workqueue_execute_start`, that in my tests were as high as
>   `30ms`. With the current patch applied, the workqueue can be
>   migrated to another unloaded CPU in the same node, and, keeping
>   everything else equal, the maximum delay I could see was `6us`.
> 

Hmm. I don't have a direct issue with using WQ_UNBOUND, and I can't
think of any reason these work queue tasks *need* to be CPU bound.

I do feel like there may be other solutions to managing the tasks on the
system such that this isn't necessary.

However, if using WQ_UNBOUND solves these problems and is simpler in
that system administrators are less likely to screw things up, I think
its a net positive.

I do not know if there are any other side effects of WQ_UNBOUND, so take
this with a grain of salt:
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>


> Fixes: 0fe45467a1041 (idpf: add create vport and netdev configuration)
> Signed-off-by: Marco Leogrande <leogrande@google.com>
> Signed-off-by: Manoj Vishwanathan <manojvishy@google.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_main.c | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
> index db476b3314c8..dfd56fc5ff65 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_main.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
> @@ -174,7 +174,8 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	pci_set_master(pdev);
>  	pci_set_drvdata(pdev, adapter);
>  
> -	adapter->init_wq = alloc_workqueue("%s-%s-init", 0, 0,
> +	adapter->init_wq = alloc_workqueue("%s-%s-init",
> +					   WQ_UNBOUND | WQ_MEM_RECLAIM, 0,
>  					   dev_driver_string(dev),
>  					   dev_name(dev));
>  	if (!adapter->init_wq) {
> @@ -183,7 +184,8 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  		goto err_free;
>  	}
>  
> -	adapter->serv_wq = alloc_workqueue("%s-%s-service", 0, 0,
> +	adapter->serv_wq = alloc_workqueue("%s-%s-service",
> +					   WQ_UNBOUND | WQ_MEM_RECLAIM, 0,
>  					   dev_driver_string(dev),
>  					   dev_name(dev));
>  	if (!adapter->serv_wq) {
> @@ -192,7 +194,8 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  		goto err_serv_wq_alloc;
>  	}
>  
> -	adapter->mbx_wq = alloc_workqueue("%s-%s-mbx", 0, 0,
> +	adapter->mbx_wq = alloc_workqueue("%s-%s-mbx",
> +					  WQ_UNBOUND | WQ_MEM_RECLAIM, 0,
>  					  dev_driver_string(dev),
>  					  dev_name(dev));
>  	if (!adapter->mbx_wq) {
> @@ -201,7 +204,8 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  		goto err_mbx_wq_alloc;
>  	}
>  
> -	adapter->stats_wq = alloc_workqueue("%s-%s-stats", 0, 0,
> +	adapter->stats_wq = alloc_workqueue("%s-%s-stats",
> +					    WQ_UNBOUND | WQ_MEM_RECLAIM, 0,
>  					    dev_driver_string(dev),
>  					    dev_name(dev));
>  	if (!adapter->stats_wq) {
> @@ -210,7 +214,8 @@ static int idpf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  		goto err_stats_wq_alloc;
>  	}
>  
> -	adapter->vc_event_wq = alloc_workqueue("%s-%s-vc_event", 0, 0,
> +	adapter->vc_event_wq = alloc_workqueue("%s-%s-vc_event",
> +					       WQ_UNBOUND | WQ_MEM_RECLAIM, 0,
>  					       dev_driver_string(dev),
>  					       dev_name(dev));
>  	if (!adapter->vc_event_wq) {

This seems like quite a lot of work queues for a driver :D
