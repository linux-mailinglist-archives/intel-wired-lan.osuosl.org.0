Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 19AC472E73D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 17:33:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A81738201E;
	Tue, 13 Jun 2023 15:33:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A81738201E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686670394;
	bh=WT9VGLSBAkXxcLhDSZkZFrYQW5NsCik+ZObPGt5KEOc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=u7kDp/G7NUej7vZeeY48nmoPJuaDYk/rjk6lwvDoFi+po5v8NZ7ANFmM4yt1jtibI
	 7vh9ntRgBxtSO/T1zviAdvjU0wCZGCfDV8WcQCIdXqzqILjSk3ZeubZnW3g2BJU7Ds
	 ajdl+wiMQnY7n7gTlmL1a8ZYl3P1LRHxfXMm2hwmwAsSzdwlwyXmhnt+RXpviWv6jF
	 83XryrkRlnmtzfEepG8CQr8ajGhAsBKDEBP7KMfJfX/CVuOfPFamsTLbM5EU1xLkwQ
	 PWJBj+ZzJLPjS5xSICu/GQsbzkJ2rqDt3I5yhvR8+y6p6jz9Gw8oycSJn2i/MnXnNk
	 psO6QysMSsCqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jEpk5uUeNIHZ; Tue, 13 Jun 2023 15:33:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1DE568203D;
	Tue, 13 Jun 2023 15:33:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1DE568203D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D343C1BF3A3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 15:33:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A8C4960675
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 15:33:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A8C4960675
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BGHLvPCUlaEy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 15:33:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F30B605B7
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8F30B605B7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 15:33:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="361738488"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="361738488"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 08:33:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="741475819"
X-IronPort-AV: E=Sophos;i="6.00,240,1681196400"; d="scan'208";a="741475819"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 13 Jun 2023 08:33:03 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 13 Jun 2023 08:33:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 13 Jun 2023 08:33:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 13 Jun 2023 08:33:02 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 13 Jun 2023 08:32:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lzH3BYArTOB7F24t0DXOnvUUz1UYQ1e/hTWdx89jbqQNTeOneaJkM9Fdqjf21IJqO/Un8J2nL8X2ldNQVaHG5vDPuN/U35RSG6/fikyPAhpFw94ymnDWW/NwnSRlDdwpdOhEtKCLJ6m24wc12azHObghGKK55NOqAgw/E16FGS5SO5s0is1zUzNzXlJ/lHM9UPCDFcctkyURUnesBBJNce9A3cmP4Py2XqCp/8lfro0Dwm5r2J7F8dTxhPEtWEs7uhJshKK1Jf4kb1zLDSmbPH43ZcNK9TD5fKeoS0WB+gcrXwpDwI5d6OEwcjM0X4zvyRWUipAy9wQaIqQJz0t+Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=prwdxLpbPhe79R8Yy60Wctj0v6SGeT/2L1hEbKc14dY=;
 b=LaIjZ1I8UW/RQsEERqqn2fr9J8RUDBcSpZUVRePSRhd1eOUftaSgJMghjV2jXushPDcXvqqFt8MdghcljN7h2a8og8vTegD61lP+a0TpaYCZt4I9v0s6ivJ8n2DqDWb77kDkGaxNZg9rJJDHh+mZ4vCqNh2D4AhJlxrcyAPPLWPhbpbpbZ2YqwFluqSKU5hQQJFcQE0fyrBR74lpYCi7eV2+Otbt0qfp+gwJUoUMR3CyTDEdH44joTUC0iKxCRbBSD7uabj+3/ziCDVQGKMmNr+rtXTAN2176mSddTp2f/D8kJqaolClIyluwb6SFYs8VGKOYA29yNEsood0rhfTQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BY5PR11MB4451.namprd11.prod.outlook.com (2603:10b6:a03:1cb::30)
 by PH7PR11MB5818.namprd11.prod.outlook.com (2603:10b6:510:132::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Tue, 13 Jun
 2023 15:32:57 +0000
Received: from BY5PR11MB4451.namprd11.prod.outlook.com
 ([fe80::c5b8:6699:99fa:fbeb]) by BY5PR11MB4451.namprd11.prod.outlook.com
 ([fe80::c5b8:6699:99fa:fbeb%5]) with mapi id 15.20.6477.028; Tue, 13 Jun 2023
 15:32:57 +0000
Message-ID: <9ea8a985-923d-62ec-5a34-ef7eeb056f05@intel.com>
Date: Tue, 13 Jun 2023 17:32:50 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, <netdev@vger.kernel.org>
References: <20230613122420.855486-1-piotrx.gardocki@intel.com>
 <20230613122420.855486-4-piotrx.gardocki@intel.com>
 <4db2d627-782c-90c2-4826-76b9779149ce@intel.com>
 <c9f819da-61a6-ea8f-5e16-d9aad6634127@intel.com>
 <837ccaeb-a77d-5570-1363-e5e344528f97@intel.com>
 <08b11944-984f-eeeb-4b03-777faaa3ce01@intel.com>
From: Piotr Gardocki <piotrx.gardocki@intel.com>
In-Reply-To: <08b11944-984f-eeeb-4b03-777faaa3ce01@intel.com>
X-ClientProxiedBy: FR3P281CA0064.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4b::12) To BY5PR11MB4451.namprd11.prod.outlook.com
 (2603:10b6:a03:1cb::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4451:EE_|PH7PR11MB5818:EE_
X-MS-Office365-Filtering-Correlation-Id: 61a55e12-5c1a-4d0c-ef90-08db6c23763e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CZ8fz3QqHWVUEQrpDqLBXZlyxzautDZwsbGus5czqBshGFESCciORCK7scMCegAh39NHSwIY8YICleZ5tRtXmHIXLSD7rn4yDdtBBYBqUtUDYR0CQiWz8Os7DtvWyUgP8OMQb1Gj+XxG9Mm5wt0E/HwBbsMypuvQSNgi99xSFlEwP9wpAkEys/qqr08YvVV8o91DYRifp5sLPn7KKVbKdomyeCEedgA5NhkTwnGpv/UbPmxUbuImZbTBlXtt+wYqq8Bthcv0c/gq62hbf0p/tc0IEVJJ5i4SFaD7GHcs0qnfHRThzkz3BL5XxruafsuAlj9nuJqfZ9owUVhiBP8y8eNHVsX6PLBt1gcPKrLjA0TSFf2CKVOiX08nsznAIPl84auwxlsp1Sm8WHDBajqV8GicdtW7sqZr8Rr63CLNNVw95BY5z8OIYTR57xX6WbrvQ9ItpH78bywPzzTZj519ITj7jxrm9XXbDPD1NXkSPWyvGcXWYX2qouqdj3IrjUiXDLszUUKME++n/ZwXB8cI5J4/Qk2ghkCoJUsG7ujluhuRgg0X0MCW11L7rCawuCvOJBhnYtWtN+O2ZUcKQM+obMOOBwnfTXcbwdgHAp6r9GrrtwcN72TgexQiccE0+aXqqrzHEsis+0qXxC1CYzve1g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4451.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(396003)(376002)(366004)(39860400002)(451199021)(2906002)(36756003)(38100700002)(82960400001)(186003)(66556008)(478600001)(31696002)(4326008)(6486002)(8936002)(66476007)(2616005)(316002)(8676002)(83380400001)(41300700001)(6666004)(66946007)(6512007)(86362001)(53546011)(26005)(6506007)(5660300002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N0h2cm1qbHMyenBBZXVpNmcrbDliTVhTVTNwTzVHRVlyTU1CK1Y3WC9tWHY1?=
 =?utf-8?B?WWtlZjB1a0J4WFdXVnVNUVFud1RBVlMzS1lPa1Q2N2lWUE5HVDlyU1lDU3NH?=
 =?utf-8?B?Zk1oRjJOSlEwbUVWZmJqZ0txR0JKc3psYnAvK2R0aHNhN2tlSFM0ZG4zSk5v?=
 =?utf-8?B?MXZTOEF3UUNkZFYrcVluMTJpYW9mbC8vdjN5dk10TGt1YUlhQ213dnRCY3JK?=
 =?utf-8?B?SnN4a1M3Qm1SWmc5dEc1SStxbzNndlhOeEVpY3NsM2hWUG1YZmV2Ympqb016?=
 =?utf-8?B?anUwbEZrOGozQnYxemwxSERoYlh0YW85ejdPMVE4ZVcwOCtZdHIxK2Q2aVVs?=
 =?utf-8?B?Q1BKaTZLRHdXNTBhbktVWGJNRkxjV1pWcTZDRVhYclAxZzFFdWRxTjJpVWE3?=
 =?utf-8?B?cjcra0RwWlJNcmIwanNxVVlsL2E5Ulk1bWlPUktQTWxsNjFGUjFKV0J6aXJP?=
 =?utf-8?B?NlNFNm5iUHlVcUpoVndVNzIxRVBoOFhTdUdqemI3cFZFb1J5SFAyT0VHREhk?=
 =?utf-8?B?M1N3NmdlUnhUMm5HSFpxL3AzMWxWdzhjaGZocERoOFRjWmpJOG5pR1ZZd0lF?=
 =?utf-8?B?Sm54UHBrSkFuOVNLRFM3RTNxaGVnSm4vYzlQdFM2bHFSa2NMNktIaGkvZDJU?=
 =?utf-8?B?MnJvc1lBdktTZ3pMSjhMc1BuVENHcjFtTkJjeThjcWhFSTlScGY3WWFHU1Fs?=
 =?utf-8?B?NzM3U0daSWFyeGdYK0Z1V1liSnRqWjZ5cUxIbEViUWZWL3ZOMkVqQW5ia1Jo?=
 =?utf-8?B?MGhzL1NsK1NRRm4xaUY3SGM1UU9EalhJZzJBdzFPOU45d28xNE5XTkNvSFF5?=
 =?utf-8?B?b1RDTUl6MlVqcVNzclNIbHVPdlAzK1hEYlBDRk1ObXAxamUrWUgvL1ZwOWZJ?=
 =?utf-8?B?aTFLQ1hGQ1p2SlJvUG1JVjlEYno5MzVtb3RGQ0MxWENhVHQwa0VZVGJaaGth?=
 =?utf-8?B?OHdDRXp5Y2FJbGZvMzdCcGRJZzFGQTZlVG5qL3VHN05wNkhOWW16cjM4aVYz?=
 =?utf-8?B?bXo5eHVIb3FjVWVuYVZUTHV6aStLeU9JZlBVQ1pWNElUd3crUVowRm5XR0pS?=
 =?utf-8?B?K1Q3cmxzWlZKODRyZk4yZXJRaGxGR2I4U1hQZHBqV2FEZ3BteXZ0ZkNBUXcx?=
 =?utf-8?B?bmZLQnpDSWFDbU9jQng5OGdlNWQ1QjhWdGE3N2VpK1lMY04rSUk0RFFObkpw?=
 =?utf-8?B?WGt5MzBWT3VPdEJ1c1dzY25XcmJsV1lOTlRmZFJ0Y3o0d0Qxd1o0dlMraG13?=
 =?utf-8?B?SGVqUkUyT2U3cnlJbWVLbFlhUXZHSTc0MGEwQWV0bURyek03K1BCRjEvTTl4?=
 =?utf-8?B?Z1NqQytobHVteldtNDQvaU9CSGlMUzkrQ2MxVzA5K2tzK0RNdFJFKzFDd1NR?=
 =?utf-8?B?UEN6STlUWVp3WnpPb2I5eW9xNjh2Q2FYc3FBdUllRmhFOXc3eVVrUVpxK2py?=
 =?utf-8?B?TEU0MVdySkZjdEI0cUFMdGJ0NHlzNGpqbTlRbzJidzk2M2c0Rm5qQjFkOFJ2?=
 =?utf-8?B?RmNqOC8vdkh3dnhiaUYxcXp3NkcyZFk1dDJXRkFWV2JCdUZTeEpSWlVJVUds?=
 =?utf-8?B?RU5wREMyUTdvMVdJSmFXcE54SU1HYi96bCtPR1ZBU2JBcCtSZFBGa2loZTVS?=
 =?utf-8?B?YnFLOW1NemdOajVFUXlCYWlLVnNsSE5tenpiNFlKaE5Yb1p2NW90MG90c2Nj?=
 =?utf-8?B?TG9Pc3JQYTZnRGo0Nk00MjhiMmZ0TGxpMFFxNnRvdEE1SFhBb1VVNDgwZU1Y?=
 =?utf-8?B?VWU3TWlWMWhVenR3bTVlQmw0dDRZaVlnTU9weTk1MHArRDA3L3BqR3NaZDBq?=
 =?utf-8?B?SEFWZW1SNk1BK3puWW1YV0RLMHBGa2J6S1BZZHIvd21kOGZ0SGI4ZTlaTHBU?=
 =?utf-8?B?cGRTZmU2VnFTeEZZMVNYTU1NWW1BQnJveHRiSFdjNmh0ajV3RTNDUnZHeVVi?=
 =?utf-8?B?MFZpSVlUWWNla2tVaHFKVGJ2U25kQmJ4cit4QVUxZ3ZJN1FsR3g4MmwwODZr?=
 =?utf-8?B?MVh5a0JkL2RmOWwyeEF4QmJrSE5YYjZoWHBZYTN4VDBodE93ZU9MenpySUo1?=
 =?utf-8?B?TnNGV1RjMVV3cjh4YW1QUTdCOE9Gdm0zL0VONzBYa3pqbmdlZ2JISzdpYXpF?=
 =?utf-8?B?NERwOEg2NDJOL0JITDExS0lxaDl0UWg3YzFseFhqaTJnSDkvQkdreDRDdVZ0?=
 =?utf-8?B?c2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 61a55e12-5c1a-4d0c-ef90-08db6c23763e
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4451.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2023 15:32:56.9052 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YnaQV4RqL/OYepFWzGaMST4v3W5ywyH8j40LqgGde69qvUljAQZOdFLh/xsUnpJjH++AxK4+BhRNvvJ92t8An8uTrfIKSPLFdVgKrmxmk4Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5818
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686670385; x=1718206385;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rjV+J49fuxq6j5HcwBObcio5VUToHZrwz++TyGGMBuE=;
 b=hJjHCzt6m7A7gKqK/vpO2VGpsBQT8vCmisskRqwOTEYbuKDFwjs1mHT8
 /8dfQUr71guBTTRDi3EMqJQ3bSM600HfB6fcy29xpMG/v+PMMhu/lVZEe
 H4uCbpUmr9dGJLLOzizVJ7y5cheOJaAd3XAI5vgKtKfHVDnrejdBe1u7n
 etnhwRslrwPqMWRKXQB9cvAgOrUgtq9kzOO5LmCtW7tBFpTtveePQnDtf
 TvFvC9EzyneZLJmbnodrbVkMvVA40TThZI1uw2IDhtXDaP6to4zpmVphD
 gwjThqDPr4gVrdOcyyJuil0QJhRfb08qyz/W+85O27W3D4TvXvl/uUBdC
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hJjHCzt6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 3/3] ice: remove
 unnecessary check for old MAC == new MAC
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
Cc: pmenzel@molgen.mpg.de, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, kuba@kernel.org, simon.horman@corigine.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTMuMDYuMjAyMyAxNzoyNCwgUHJ6ZW1layBLaXRzemVsIHdyb3RlOgo+IE9uIDYvMTMvMjMg
MTc6MTYsIFBpb3RyIEdhcmRvY2tpIHdyb3RlOgo+PiBPbiAxMy4wNi4yMDIzIDE3OjEwLCBQcnpl
bWVrIEtpdHN6ZWwgd3JvdGU6Cj4+IFsuLi5dCj4+Pj4KPj4+PiBJIHdvdWxkIGV4cGVjdCBvbmUg
cGF0Y2ggdGhhdCBhZGRzIGNoZWNrIGluIHRoZSBjb3JlLCB0aGVuIG9uZSBwYXRjaCB0aGF0IHJl
bW92ZXMgaXQgaW4gYWxsLCBpbmNsIG5vbi1pbnRlbCwgZHJpdmVyczsgd2l0aCBDQyB0byB0aGVp
ciByZXNwZWN0aXZlIG1haW50YWluZXJzIChsaWtlIFRvbnkgZm9yIGludGVsLCAuL3NjcmlwdHMv
Z2V0X21haW50YWluZXIucGwgd2lsbCBoZWxwKQo+Pj4KPj4+IEkgaGF2ZSBjaGVja2VkLCBpdCdz
IGFsbW9zdCAyMDAgaGFuZGxlcnMsIHdoaWNoIGFtb3VudHMgdG8gb3ZlciAzNTAwIGxpbmVzIG9m
IGNvZGUgKHNob3J0LWN1dHRpbmcgYW5hbHlzaXMgb24gZXRoX2h3X2FkZHJfc2V0KCkpLCB3aGF0
IHByb2JhYmx5IGNvdWxkIHdhcnJhbnQgbW9yZSB0aGFuIG9uZSBwYXRjaC9wZXJzb24gdG8gc3By
ZWFkIHRoZSB3b3JrCj4+Pgo+Pj4gYW55Ym9keSB3aWxsaW5nIHRvIHNlZSB0aGUgYWJvdmUgY29k
ZS10by1sb29rLWF0LCBvciB3YW50cyB0byByZS1ydW4gaXQgZm9yIHRoZWlyIGRpcmVjdG9yeSBv
ZiBpbnRlcmVzdHMsIGhlcmUgaXMgZGlydHkgYmFzaCBzY3JpcHQgKHdoaWNoIGp1c3QgYXBwcm94
aW1hdGVzIHdoYXQncyB0byBiZSBkb25lLCBidXQgcmF0aGVyIGNsb3NlbHkgdG8gcmVhbGl0eSk6
Cj4+Pgo+Pj4gwqDCoGdyZXAgLUluckUgJ1wuJ25kb19zZXRfbWFjX2FkZHJlc3MnXHMrPScgfAo+
Pj4gwqDCoGF3ayAnIS9OVUxMLyB7Z3N1YigvLCQvLCAiIik7IHByaW50ICRORn0nIHwKPj4+IMKg
wqBzb3J0IC11IHwKPj4+IMKgwqB4YXJncyAtSSUgYmFzaCAtYyAnZ3JlcCAtRVJ3SWwgJSciJyIn
XChzdHJ1Y3QgbmV0X2RldmljZS4rXCkkJyInIicgfAo+Pj4gwqDCoMKgIHhhcmdzIC1JIEDCoCBh
d2sgJyInIicvJVwoc3RydWN0IG5ldF9kZXZpY2UuK1wpJC8sIC9efXxldGhfaHdfYWRkcl9zZXRc
KC8geyBwcmludMKgICJAOiIgTlIgJDAgfSciJyInIEAnIHwKPj4+IGNhdCAtbgo+Pj4KPj4+IEBQ
aW90ciwgcGVyaGFwcyByZXNvbHZlIGFsbCBpbnRlbCBkcml2ZXJzIGluIHlvdXIgc2VyaWVzPwo+
Pgo+PiBUaGFua3MgZm9yIHNjcmlwdCwgbG9va3MgaW1wcmVzc2l2ZSA6KS4gU29tZW9uZSBtaWdo
dCByZWFsbHkKPj4gdXNlIGl0IHRvIGRldGVjdCBhbGwgb2NjdXJyZW5jZXMuIEFzIHlvdSBzYWlk
IHRoZXJlIGFyZSBhIGxvdAo+PiBvZiBjYWxsYmFja3MgaW4ga2VybmVsLCBzbyB1bmZvcnR1bmF0
ZWx5IEkgY2FuJ3QgZml4IGFsbCBvZiB0aGVtLgo+PiBJIGZpeGVkIGl0IGZvciBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbCBkaXJlY3RvcnksCj4+IG9ubHkgaTQwZSBhbmQgaWNlIGhhZCB0aGVz
ZSBjaGVja3MuIElmIHlvdSB3YW50IG1lIHRvIGNoZWNrIGFueQo+PiBvdGhlciBpbnRlbCBkaXJl
Y3Rvcnkgb3IgaWYgSSBtaXNzZWQgc29tZXRoaW5nIGhlcmUsIHBsZWFzZSBsZXQKPj4gbWUga25v
dy4KPiAKPiB0aGVyZSBpcyBldGhlcl9hZGRyX2VxdWFsKCkgY2FsbCBpbiBpYXZmX3NldF9tYWMo
KSwgZXZlbiBpZiBub3QgZXhhY3RseSBiZWZvcmUgZXRoX2h3X2FkZHJfc2V0KCksIGl0IHN0aWxs
IHNob3VsZCBiZSByZW1vdmVkIDspCj4gCj4gQW55d2F5LCBJIHdvdWxkIGZpeCBhbGwgMyBkcml2
ZXJzIHdpdGggb25lIHBhdGNoLgoKSSBndWVzcyB5b3UncmUgbG9va2luZyBhdCBvbGQgdmVyc2lv
biBvZiBkZXYtcXVldWUgYnJhbmNoIG9uIFRvbnkncyB0cmVlIDopClJlZ2FyZGluZyBpY2UgYW5k
IGk0MGUgSSBtYWRlIHR3byBwYXRjaGVzIHRvIGhhdmUgZGlmZmVyZW50IHByZWZpeGVzIGluIHRp
dGxlcy4KSSBkb24ndCBtaW5kIG1lcmdpbmcgdGhlbSwgYnV0IEknbGwgd2FpdCBmb3Igc29tZW9u
ZSBlbHNlIHNwZWFraW5nIHVwIGFib3V0IHRoaXMuCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
