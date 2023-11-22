Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 095587F5343
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Nov 2023 23:19:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 98E0140B03;
	Wed, 22 Nov 2023 22:19:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 98E0140B03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700691572;
	bh=oFUGKszV85GTgf3fFHZotJYZFLQAnjNXbNc7MMEvrgU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ishWxFOkzxm83oQBKbVColzm6REIubRV/assEVK7Tu9Z5zpYWIhWmyXdSiXKyuah5
	 J2MiKRkOiosHyBZbHvbwEfEAVO0BVslUJOaqOq9Zi2RZzSamJIPS/MoJrrV8Ss0VV5
	 rj79ZhLLN8ZdbdKsbzLPpFr3xoAol1eMG6cXDkGW+rI2bT8Yxv+NtCkWhI1D/qkwzt
	 /bTjUck5Y42mIL1QZiE3qolfNxsm9bpFgsH3Pq9+7xVb4ay2+7aOUV6jON/SWEVWa8
	 9oLCmveHytDvKGGNRTObZjNXGYdMjZ/3emoR+fC1aZUzJXkc2NWtZfAylRIHLaL8UE
	 t8U2QmFlN5pqw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sG0tLAZDVR72; Wed, 22 Nov 2023 22:19:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 03092408C5;
	Wed, 22 Nov 2023 22:19:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 03092408C5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1BD401BF578
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Nov 2023 22:19:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DADF2417E5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Nov 2023 22:19:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DADF2417E5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UmUzNSRvJC7P for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Nov 2023 22:19:23 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E79124097D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Nov 2023 22:19:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E79124097D
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="456494915"
X-IronPort-AV: E=Sophos;i="6.04,219,1695711600"; d="scan'208";a="456494915"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 14:19:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="743424685"
X-IronPort-AV: E=Sophos;i="6.04,219,1695711600"; d="scan'208";a="743424685"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Nov 2023 14:19:20 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 22 Nov 2023 14:19:19 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 22 Nov 2023 14:19:19 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 22 Nov 2023 14:19:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Td34+hR/WbfBnZVELwHK7cRX+zn1hOASCffGIEnjmjqFq8kh75AehdHfMGUBWDurB6YfvtUlySJ9Zh1OoUmAA+vdJEDU9Noxst/k74vmqjd/yZvFFBDfX5tiXWt01KDkDOVBy8wMoJOcHj4YBAOJurJIyWyXi+qZWVgAEb5dH14Gxemt04a/5fSXlyrxWfJh8SHxgFDiTqHscInb0zn/Edevet738fO/1Zq8xx9qynnuk/zVtduZjO6cTuirjwrUQRRiOAr3qytARQ3gfWWkTErYdadNJX4Htei545YroH/hkDUtaAADIYKLyBzXA7I/9garnw8Wj4WGdSA6IsGZ3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6xzzTHVOJfKSSk1aSIu7hgN7yFqGdC01NoZayMl8ehM=;
 b=ZCi1K2yvb0TJTBjm8olz5aNqe7NLEqO1OhFYHqGcEsGtuDLThtD5eqUSVUCK6IHbT9dv50Ce7vBQ8kZK2o4idjoC6Rvz4MdTYSrDevlVFypyBPUGOL5Bv0q7vnaqAjgQ4N8HsN8XT6vZjbUik1Hj1cyBHcenP8H+/c1nkByTdvc9Fg/BeeP9cPM45kQsMu+dILFRNlTy69a0ZEF9ik8j/VE0NdNlsDGQsQK8X5ADbSTnDTMeBjtjRPWopkLY1TvSTUVcFy987L69BtTKUIrWev72kSn1R9lli8Lu6ACerHIuZtk2IkfF2e3xclr03NbldFXDOFbJKd0/aruQq4H6jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3175.namprd11.prod.outlook.com (2603:10b6:a03:7c::23)
 by SJ0PR11MB5789.namprd11.prod.outlook.com (2603:10b6:a03:424::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.28; Wed, 22 Nov
 2023 22:19:17 +0000
Received: from BYAPR11MB3175.namprd11.prod.outlook.com
 ([fe80::124:ae3c:93d1:981b]) by BYAPR11MB3175.namprd11.prod.outlook.com
 ([fe80::124:ae3c:93d1:981b%7]) with mapi id 15.20.7025.019; Wed, 22 Nov 2023
 22:19:17 +0000
Message-ID: <3d60fabf-7edf-47a2-9b95-29b0d9b9e236@intel.com>
Date: Wed, 22 Nov 2023 14:19:14 -0800
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230822034003.31628-1-wenjun1.wu@intel.com> <ZORRzEBcUDEjMniz@nanopsycho>
 <20230822081255.7a36fa4d@kernel.org> <ZOTVkXWCLY88YfjV@nanopsycho>
 <0893327b-1c84-7c25-d10c-1cc93595825a@intel.com>
 <ZOcBEt59zHW9qHhT@nanopsycho>
 <5aed9b87-28f8-f0b0-67c4-346e1d8f762c@intel.com>
 <bdb0137a-b735-41d9-9fea-38b238db0305@intel.com>
 <20231118084843.70c344d9@kernel.org>
Content-Language: en-US
From: "Zhang, Xuejun" <xuejun.zhang@intel.com>
In-Reply-To: <20231118084843.70c344d9@kernel.org>
X-ClientProxiedBy: MW3PR05CA0030.namprd05.prod.outlook.com
 (2603:10b6:303:2b::35) To BYAPR11MB3175.namprd11.prod.outlook.com
 (2603:10b6:a03:7c::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3175:EE_|SJ0PR11MB5789:EE_
X-MS-Office365-Filtering-Correlation-Id: 66a3ced2-65af-4b8e-aef2-08dbeba910fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0oagMv+0eU/HaXEoU9M8PQ1AYChsnZWcsYgsjqguvJDjVg136f6XYmMEapZTng+ihgvnWBWkj7dhKJFSR7kYnX4DPUUdtWEfMUspjH9Dt1brg4mf5kbWnYW0HnbGBglZ2TijQ+4rJSj57CsfVyW257Yj7YydzyIy8xd7D9dySyQg5uh5k6BjOO41K3UI6R9wsJ9clqVC2+Am+DvwfO9BG+wDqkZmC6qb0kbw6yhgELm4ZjC5YF7VyVD9mpmYLIfh+j4MzwisJyi3VEDkKo/RaMgUd6nYAj6ljgavY0aW+I/4Jz9WoZBVD20eewPGTIupun6QRF1EtNFfnfAzcID39x7hdovmnnwcmh1hzGhoE9vfYfEtW9sMz4gaKj909PJx1XXHdnXq6awrba09sJgCZEzLatLPr2sdxDM/r4br5lVsnWqoYgI9H3O3xsnKfEXQ5YWjv3mPtXK10IjV2gatwhsZKw00uMqiCDLQyokgAOLHnEH+occGGtM1vnClq80WAXw5lXTARxkkaCbBnK683S/ohl1jttXKmEp/dcYuSuW3SRwN2ULQHtUYJsXhh5hOAaebgRtSBBv4lVgEqhkVd26gKisAu0jNCx95AfpqW5d4mlgk2N20SEfADRUpMOXSae55ofwW2dsEUd2RkTNg1Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3175.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(346002)(39860400002)(366004)(136003)(230922051799003)(451199024)(186009)(1800799012)(64100799003)(83380400001)(53546011)(26005)(38100700002)(6512007)(8676002)(4326008)(41300700001)(5660300002)(2906002)(478600001)(8936002)(6506007)(6486002)(54906003)(36756003)(66556008)(66946007)(6916009)(966005)(66476007)(6666004)(316002)(82960400001)(31696002)(31686004)(2616005)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWMwdWU1QUJyS3h6aE5OUHc2NURZczQvSkVWVG9peEFadjBUc3hma0wxODY2?=
 =?utf-8?B?a0VqT3VHOEMvOWtrd3ZFbVhHTUtUdndGUnFIZnlwVEZaSzlpZks2dGl4bUs3?=
 =?utf-8?B?RDRyOTViZURoZjNHZGUwTW12cW9oK3RnWkVsUWRtTTFCN1BCcXFHdDkvbzEv?=
 =?utf-8?B?a1RlanRiWVVJWkx3bm9qWHk3NFZkUzhFRU84WFNZdnAyZEtRZ2V3aXNUUmFq?=
 =?utf-8?B?eWhibmpUcmc1dU1ZbktZaGhCMnRzSW96NWJEekQwUzJET1RSN2FYK1FFTWVU?=
 =?utf-8?B?S1hhQUJmcjRhWFJBUlZmOHdIUDQ4QWhSUEN2WGhUU2FKUlpFM0VWZy94V1Zw?=
 =?utf-8?B?VmF5UFJKeWFMbGRVQzQwT3FjQ0lNUytoRXluUHpqS1Qzc0dvZ1lpN0NoaEt1?=
 =?utf-8?B?YnFjREIvdlBPcnFlUUY5WHJ3SHZoaitMNlQzeEdxWjU5QkRZa09FZTdsUFBQ?=
 =?utf-8?B?RVdlZkoxNDVvMURXREJDb2dVUDdGNFN6cGh6OHhXYmNVS25WR3JUZEQ1dkZQ?=
 =?utf-8?B?UXFCdlpsaFMrZ3ZQd2d4M0RqRmFIY2QrSlZ1TnRjWmgzQzFQN05zZXhUUlV5?=
 =?utf-8?B?cUppL09rZDl3RXNlbEFvUnM1ekt5U3pwZEExSmV1QmNhQUEzNHBaNWZUeE81?=
 =?utf-8?B?b0R3TjZFUWIyTmlHVldGbzg3cW1qaGdxN0srZDBhelFqcGhFM2tKS3JUYTcy?=
 =?utf-8?B?a2hHN1FFQUp2OVRERjdDWUtueXhHbnByK3lEZlBEbmVjRjkyUnlmZ0xielBQ?=
 =?utf-8?B?aUhvZkhQRHJIS3FFUDlmeW5yeFRjZ3pTN2JMVk9MYTNPeENhdUVHb0I0TEI2?=
 =?utf-8?B?NlZPWjh3anFHeTJWL2UwRG1JQmxQL0JOaHhMa2phK1NvYi9wNW85dTBIcmRI?=
 =?utf-8?B?eTNmRG9hQTAzZVFLUCt0U2gvc2pXNzVPOExlZGpENGVHbjJ2ZE1WdGJZbE9O?=
 =?utf-8?B?Z0dyK2szTEFMMUl6RFN3RUdhTlFRYW5VMVNZM1lCN05OMHJsV2dxVkNmK2t1?=
 =?utf-8?B?UzY2TEY5TW54L2FSM1FMVEFvSVZ0UWErZTR2dHJqeStCMFRuNml2bmpqNGJR?=
 =?utf-8?B?UXdKRWJWTkJCd3RhVHdtK3NRV0hmNTVkS1VpdXJsNXJralNTRnJrOWV0eWdZ?=
 =?utf-8?B?bVRGS21XalpKZGlOekZzQjZGemtRRXI3ellOODRIcm9ETFNkYy9CRDFEWlNI?=
 =?utf-8?B?SVZ4dUVGNk0rdFlmU2tRRDlwTnlMRGNmV0E2Rm5Sekw4MnU0ZlR1Nkp3Nmc4?=
 =?utf-8?B?Y0VVd3ZtNUNFZUZyN3U4REwwMHUyTkx6ZjJTUTdyZWlwTU42U2JyY1BjK3FC?=
 =?utf-8?B?SUxVeDUvci9KQ29qaGYydEliQkUwVTNIbnhkUURidEJuTXJ6UXZza1p5aFJT?=
 =?utf-8?B?VmZVOC9IY2p5amdvaCtkdFVDOWh4cW43ZVJUMGFBaVZ5T2ZaaGZqSXpPaFVi?=
 =?utf-8?B?THRKcldVVVM2b1Nsa25mWXF5NGZqK2xCT2gxSmZwaDNLTGtwMXNOaE5WYWJX?=
 =?utf-8?B?NU5PM2ZzZjkrckNBUGZBU3NRb21GS3NOT3NtbkZrUkxscnRsYWFOQ2V6cTdW?=
 =?utf-8?B?TzRTWmFHM2VsQ2ZCb1B3TVJrTDF0U05GRW5hL1RhaEt1eFlkNUcxMkZTWCs3?=
 =?utf-8?B?RXhYUEh1Q2JydFJkaHR6SmV2Uys0eG1zTmlvVm1LUHVWUVNPSlUyK3hPWU96?=
 =?utf-8?B?SUFQYThRWmFOY0lKOVhqQS8xSnRKelNNUUN0QkN3dXlIRXIzUzdNMUVXaGlM?=
 =?utf-8?B?aVg3ZXY2T0U4a015WW9EblJvbXdzZklYZlBib0pGZlk3enk4bWZQc24vODU5?=
 =?utf-8?B?TFdNUjRPZk9DUy9PczVpNGUwdVRHTmZUL3d6bXE4YTUxN1hoVThMK1Z6d2ht?=
 =?utf-8?B?SWkvelVvK1hsQjdPVWRadUhGSUZrd0ZEam1oZ0k1ZUt4UjRhQ3VMMy83UnNN?=
 =?utf-8?B?WnY5bXBQNHRvcDNyZjhsaXVyWVNqTnB6U0pDQXJQREVCV2ErWjc2Q3ZOOUl2?=
 =?utf-8?B?aDVvSjl0MjVKdGJmcjhQTXhlVTRWLzdnb0MvdTF0VE1RWElzOGJMRlIvV1du?=
 =?utf-8?B?YjROY2h1L0hQK2JRYW1IQkNvbVNHQ3lXY25pM3lsdi90L0dmMjBmWk5oNnZ3?=
 =?utf-8?Q?qV9DpiP08eXzDtkhX88zuPQRC?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 66a3ced2-65af-4b8e-aef2-08dbeba910fb
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3175.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2023 22:19:17.1520 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6Gvlzo9wairmZVRNMwMKdQ9FeJhyMDmri++oNwVUNyxAtnS7i4EaqXn2c+aqVoNFQf0p5vPSLT08BOvFjtdl8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5789
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700691562; x=1732227562;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YeiWLWJqtteYif+RHe62R+4jkc0d5T6Oq9ffVhLR/28=;
 b=aXz44Vtt+TgYWblnCUQTuizEdSg5kPxEcEOQxjVxPvBh0+046opbduPH
 0HYr4nI6AtByxiysa77f+yHKtFNg5xFiSy+HeBifT80XFctjtvjhRXpXt
 P0sht/QGXJnLOJ8JanndZTslCvMZdzjC4i1wjc1OuhsFj2zXNDfKfWn+7
 KObZmOLHNtRBmtZUou/48k8trNawJN47PAYxbsI9E53438Mfxd/S1BZfj
 eIYXPIPHNt/7KRci1pFJiR5jF3S8Zh8jtaM7vpdRT2mBgEQkOSk4kkWFI
 6Ai/Xc/oVeaMsnp/+iMV1cr9eooUNVuWfCCNtLwGKPNus/WJl75c8TLlL
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aXz44Vtt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/5] iavf: Add devlink and
 devlink rate support'
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
Cc: Jiri Pirko <jiri@resnulli.us>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, netdev@vger.kernel.org,
 maxtram95@gmail.com, "Chittim, Madhu" <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, qi.z.zhang@intel.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 Wenjun Wu <wenjun1.wu@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDExLzE4LzIwMjMgODo0OCBBTSwgSmFrdWIgS2ljaW5za2kgd3JvdGU6Cj4gT24gVGh1LCAx
NiBOb3YgMjAyMyAyMTo1Mjo0OSAtMDgwMCBaaGFuZywgWHVlanVuIHdyb3RlOgo+PiBUaGFua3Mg
Zm9yIGxvb2tpbmcgaW50byBvdXIgbGFzdCBwYXRjaCB3aXRoIGRldmxpbmsgQVBJLiBSZWFsbHkK
Pj4gYXBwcmVjaWF0ZSB5b3VyIGNhbmRpZCByZXZpZXcuCj4+Cj4+IEZvbGxvd2luZyB5b3VyIHN1
Z2dlc3Rpb24sIHdlIGhhdmUgbG9va2VkIGludG8gMyB0YyBvZmZsb2FkIG9wdGlvbnMgdG8KPj4g
c3VwcG9ydCBxdWV1ZSByYXRlIGxpbWl0aW5nCj4+Cj4+ICMxIG1xICsgbWF0Y2hhbGwgKyBwb2xp
Y2UKPj4KPj4gIzIgbXEgKyB0YmYKPiBZb3UgY2FuIGV4dGVuZCBtcXByaW8sIHRvbywgaWYgeW91
IHdhbnRlZC4KPgo+PiAjMyBodGIKPj4KPj4gYWxsIDMgdGMgb2ZmbG9hZCBvcHRpb25zIHJlcXVp
cmUgc29tZSBsZXZlbCBvZiB0YyBleHRlbnNpb25zIHRvIHN1cHBvcnQKPj4gVkYgdHggcXVldWUg
cmF0ZSBsaW1pdGluZyAodHhfbWF4cmF0ZSAmIHR4X21pbnJhdGUpCj4+Cj4+IGh0YiBvZmZsb2Fk
IHJlcXVpcmVzIG1pbmltYWwgdGMgY2hhbmdlcyBvciBubyBjaGFuZ2Ugd2l0aCBzaW1pbGFyIGNo
YW5nZQo+PiBkb25lIEAgZHJpdmVyICh3ZSBjYW4gc2hhcmUgcGF0Y2ggZm9yIHJldmlldykuCj4+
Cj4+IEFmdGVyIGRpc2N1c3Npbmcgd2l0aCBNYXhpbSBNaWtpdHlhbnNraXkoCj4+IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL25ldGRldi81NGE3ZGQyNy1hNjEyLTQ2ZjEtODBkZC1iNDNlMjhmOGU0
Y2VAaW50ZWwuY29tLwo+PiApLCBsb29rcyBsaWtlIHN5c2ZzIGludGVyZmFjZSB3aXRoIHR4X21p
bnJhdGUgZXh0ZW5zaW9uIGNvdWxkIGJlIHRoZQo+PiBvcHRpb24gd2UgY2FuIHRha2UuCj4+Cj4+
IExvb2sgZm9yd2FyZCB5b3VyIG9waW5pb24gJiBndWlkYW5jZS4gVGhhbmtzIGZvciB5b3VyIHRp
bWUhCj4gTXkgbGVhc3QgZmF2b3JpdGUgdGhpbmcgdG8gZG8gaXMgdG8gY29uZmlndXJlIHRoZSBz
YW1lIHBpZWNlIG9mIHNpbGljb24KPiB3aXRoIDQgZGlmZmVyZW50IFNXIGludGVyZmFjZXMuIEl0
J3Mgb2theSBpZiB3ZSBoYXZlIDQgZGlmZmVyZW50IHVBUElzCj4gKHVzZXIgbGV2ZWwgQVBJcykg
YnV0IHRoZSBkcml2ZXIgc2hvdWxkIG5vdCBiZSBleHBvc2VkIHRvIGFsbCB0aGVzZQo+IG9wdGlv
bnMuCj4KPiBJJ20gc2F5aW5nIDQgYnV0IHJlYWxseSBJIGNhbiB0aGluayBvZiA2IHdheXMgb2Yg
c2V0dGluZyBtYXhyYXRlIDooCj4KPiBJTUhPIHdlIG5lZWQgdG8gYmUgYSBiaXQgbW9yZSByZWFs
aXN0aWMgYWJvdXQgdGhlIG5vdGlvbiBvZiAib2ZmbG9hZGluZwo+IHRoZSBTVyB0aGluZyIgZm9y
IHFkaXNjcyBzcGVjaWZpY2FsbHkuIE5vcm1hbGx5IHdlIG9mZmxvYWQgU1cgY29uc3RydWN0cwo+
IHRvIGhhdmUgYSBmYWxsYmFjayBhbmQgaGF2ZSBhIGNsZWFyIGRlZmluaXRpb24gb2YgZnVuY3Rp
b25hbGl0eS4KPiBJIGJldCBtb3N0IGRhdGEtY2VudGVycyB3aWxsIHVzZSBCUEYrRlEgdGhlc2Ug
ZGF5cywgc28gdGhlICJmYWxsYmFjayIKPiBhcmd1bWVudCBkb2VzIG5vdCBhcHBseS4gQW5kIHRo
ZSAiY2xlYXIgZGVmaW5pdGlvbiIgd2hlbiBpdCBjb21lcyB0bwo+IGJhc2ljIHJhdGUgbGltaXRp
bmcgaXMuLiBtb290Lgo+Cj4gQmVzaWRlcyB3ZSBhbHJlYWR5IGhhdmUgbXFwcmlvLCBzeXNmcyBt
YXhyYXRlLCBzcmlvdiBuZG8sIGRldmxpbmsgcmF0ZSwKPiBub25lIG9mIHdoaWNoIGhhdmUgU1cg
ZmFsbGJhY2suCj4KPiBTbyBzaW5jZSB5b3UgYXNrZWQgZm9yIG15IG9waW5pb24gLSBteSBvcGlu
aW9uIGlzIHRoYXQgc3RlcCAxIGlzIHRvCj4gY3JlYXRlIGEgY29tbW9uIHJlcHJlc2VudGF0aW9u
IG9mIHdoYXQgd2UgYWxyZWFkeSBoYXZlIGFuZCBmZWVkIGl0Cj4gdG8gdGhlIGRyaXZlcnMgdmlh
IGEgc2luZ2xlIGludGVyZmFjZS4gSSBjb3VsZCBqdXN0IGJlIHRha2luZyBzeXNmcwo+IG1heHJh
dGUgYW5kIGZlZWRpbmcgaXQgdG8gdGhlIGRyaXZlciB2aWEgdGhlIGRldmxpbmsgcmF0ZSBpbnRl
cmZhY2UuCj4gSWYgd2UgaGF2ZSB0aGUgcmlnaHQgaW50ZXJuYWxzIEkgZ2l2ZSAwIGNhcmVzIGFi
b3V0IHdoYXQgdUFQSSB5b3UgcGljay4KClRoZXJlIGlzIGFuIGV4aXN0aW5nIG5kbyBhcGkgZm9y
IHNldHRpbmcgdHhfbWF4cmF0ZSBBUEkKCmludCAoKm5kb19zZXRfdHhfbWF4cmF0ZSkoc3RydWN0
IG5ldF9kZXZpY2UgKmRldiwKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGludCBxdWV1ZV9pbmRleCwKIMKgwqAgwqDCoMKgwqAgwqDCoMKgIMKgIHUz
MiBtYXhyYXRlKTsKCndlIGNvdWxkIGV4cGFuZCBhbmQgbW9kaWZ5IHRoZSBhYm92ZSBBUEkgd2l0
aCB0eF9taW5yYXRlIGFuZCBidXJzdCAKcGFyYW1ldGVycyBhcyBiZWxvdwppbnQgKCpuZG9fc2V0
X3R4X3JhdGUpKHN0cnVjdCBuZXRfZGV2aWNlICpkZXYsCiDCoMKgIMKgwqAgwqDCoMKgIMKgwqDC
oMKgwqDCoCBpbnQgcXVldWVfaW5kZXgsCiDCoMKgIMKgwqDCoMKgIMKgwqDCoMKgwqDCoCBpbnQg
bWF4cmF0ZSAsIGludCBtaW5yYXRlLCBpbnQgYnVyc3QpOwoKcXVldWVfaW5kZXg6IHR4IHF1ZXVl
IGluZGV4IG9mIG5ldCBkZXZpY2UKbWF4cmF0ZTogdHggbWF4cmF0ZSBpbiBtYnBzCm1pbnJhdGU6
IHR4IG1pbiByYXRlIGluIG1icHMKYnVyc3Q6IGRhdGEgYnVyc3QgaW4gYnl0ZXMKCgpUaGUgcHJv
cG9zZWQgQVBJIHdvdWxkIGluY3VyIG5ldC9jb3JlIGFuZCBkcml2ZXIgY2hhbmdlcyBhcyBmb2xs
b3dzCmEpIGV4aXN0aW5nIGRyaXZlcnMgd2l0aCBuZG9fc2V0X3R4X21heHJhdGUgc3VwcG9ydCB1
cGdyYWRlZCB0byB1c2UgbmV3IApuZG9fc2V0X3R4X3JhdGUKYikgbmV0IHN5c2ZzIChyZXBsYWNp
bmcgbmRvX3NldF9tYXhyYXRlIHdpdGggbmRvX3NldF90eF9yYXRlIHdpdGggCm1pbnJhdGUgYW5k
IGJ1cnN0IHNldCB0byAwLCAtMSBtZWFucyBpZ25vcmUpCmMpIEtlZXAgdGhlIGV4aXN0aW5nIC9z
eXMvY2xhc3MvbmV0L2V0aHgvcXVldWVzL3R4X25uL3R4X21heHJhdGUgYXMgaXQgCmlzIGN1cnJl
bnRseQpkKSBBZGQgc3lzZnMgZW50cnkgYXMgL3N5cy9jbGFzcy9uZXQvZXRoeC9xdWV1ZXMvdHhf
bm4vdHhfbWlucmF0ZSAmIAovc3lzL2NsYXNzL25ldC9ldGh4L3F1ZXVlcy90eF9ubi9idXJzdAoK
TGV0IHVzIGtub3cgeW91ciB0aG91Z2h0cy4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
