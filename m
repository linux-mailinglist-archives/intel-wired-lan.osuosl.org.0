Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF3D854D12
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Feb 2024 16:40:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A64B8179D;
	Wed, 14 Feb 2024 15:40:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3UbpNN1STT_s; Wed, 14 Feb 2024 15:40:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 70A9C8177A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707925202;
	bh=4zu0c62UcR56VSGO0EiG6i+TAerb9iRwSlnUS1VYKoM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=scoQziP5XASQRTs1XLHskvZXRCwmCBi9R/wRWb6ixsC28KPsyoiiBRxiPHDp10gbg
	 7hPMRyAOE1Sbr/2nsVC4lobQk5K/H+r494qZRQGt0gAXprpa/9AZOE4M60wfVZ/IUD
	 DWwjG9zZ831/wqO4180b3F5/bFKrbwpEjZjP/S+eeIVkcK/y+/lbWVdmG8rrez0O/q
	 i//JZcgt2+1qd8SXAemTFUwui6TYaJMSZV2fPsKp3hNtIktDwnXmqBmXDucMMqh9Eu
	 TWH9Jjh/w5eUq4KhTin5ojMhj3pKFVi54czNx9Ms5w03M8hSYjs4xJpu4sQ+9hktWA
	 9qick0cIrH42Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70A9C8177A;
	Wed, 14 Feb 2024 15:40:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DFE0D1BF313
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 15:39:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D91B8405AC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 15:39:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eQ0GJOSgi43u for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Feb 2024 15:39:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F07B3405AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F07B3405AB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F07B3405AB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Feb 2024 15:39:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="13069855"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; d="scan'208";a="13069855"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 07:39:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; d="scan'208";a="34040337"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2024 07:39:57 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 07:39:56 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 14 Feb 2024 07:39:56 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 14 Feb 2024 07:39:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EeppTokEwSVJE9Rms0dDQtx+ARt+P9Zey4KNS9/OL+jr0ElFYYFczw3LmZBtd9qJIwrD1SupTuSVqkRum8+Toy/h6V0zB9dII0Zy4fd5RpntHYKXlImhfg/SQtYJItOpm5wFbr5EjlBCbovePfN5dUM9Gf3Tw4FewiT03sJ7VefpRcYW5eWh6M4N62GnzdjhREIBLRnNQNQHIssu/Xkr61JFNxmo7wa7mlvD/DPzBrznLmJMlfGTi8N/IWZRRR1i7ueBwF0fHR4/J8TieprDphI2yTz6o2gY+VMElIB2Zgy84t+nPmUixwIOO68wq0o5MZmpeEWk0GdtxtjBcJHLmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4zu0c62UcR56VSGO0EiG6i+TAerb9iRwSlnUS1VYKoM=;
 b=hWGv68c/fXGVLri4rJAYju0k0Lzw7PmLDJRdVBcK6OZu0TzD9+d07Saw7REpl4RWkB6bg1Y3L6E/0XOMHFiF06UTOEn43jrKeTLhatZKT2onALe8l1DpkBawsLyHIYlBH7oncmQjBgkOPLUtBupQVh+Osayf3N0YUXjTI6/hhavcc24S1q9nV3IwFuudpe/Fia8DOr7Spq0K/tagjSoYe0ZqCeMrHV7Mds1fPuHKimoCoqJ1XVFS893qCDCL9BI6XaIwWSTtmvrtjqQc6r6L5pRK3j1daV0vt5iD1sn6FLPMWsl+HUexGWthhZKarEERcrV+AC3Oq4VWGY9G0Ch0pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4538.namprd11.prod.outlook.com (2603:10b6:303:57::12)
 by MW6PR11MB8367.namprd11.prod.outlook.com (2603:10b6:303:249::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39; Wed, 14 Feb
 2024 15:39:54 +0000
Received: from MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::d019:7cb9:3045:5082]) by MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::d019:7cb9:3045:5082%4]) with mapi id 15.20.7292.027; Wed, 14 Feb 2024
 15:39:54 +0000
Message-ID: <8fa3c29d-c7d3-421d-b567-e9bf997e6751@intel.com>
Date: Wed, 14 Feb 2024 07:39:53 -0800
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>, Alan Brady
 <alan.brady@intel.com>
References: <20240208004243.1762223-1-alan.brady@intel.com>
 <2e3001f8-a079-4d44-863f-979baca3b38c@intel.com>
 <dd7247e8-8a1a-4033-9c1e-c52339426b34@intel.com>
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <dd7247e8-8a1a-4033-9c1e-c52339426b34@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0233.namprd04.prod.outlook.com
 (2603:10b6:303:87::28) To MW3PR11MB4538.namprd11.prod.outlook.com
 (2603:10b6:303:57::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4538:EE_|MW6PR11MB8367:EE_
X-MS-Office365-Filtering-Correlation-Id: 7297933b-4575-403f-b1ff-08dc2d733103
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uqMOzFJ2U2PmMIft506fPfG9jqZgG7bRRQ/OKORenDU/LPiuFtpN4X7sudeiXKlANUVv8NTvtuWxx0cE1j3ylYBbMyi3NS+0lZH4zbC2BTcWKIPTlhyjSYzMsyUnHUEbPmqD1zH5pGAmdqeBtEIZEwABPtfui0vsjM8eKOS2sklc5kzQjRDS6eMzDW9Xu7zeixbhrC2qsvU1F9sZtpPSRofAGVP0FbytkcJK/SmNGqZE7Jqh0qdp/gAVLx7YWF0HwDGVr9CnSqK/w3PDgjpP3oZCd2vL4rr9nPiHIvgQHC+GmXb6FfRntbhDUTjNksa2YuJq726zLnfjL/Qwkqnjvo3EL3zsWiiyGxRGdK9ym2cN0/u0vRDNo1hmJNsv0Sq0NkZjulKAl5Gc7XJPq+7KscjBP+Q8aUJR+Cu74T6fiM6W1F0h2pvzW5aF9aWL3kUmFpHgCd2fmBTFBCK9xWA8Fxwd/nUZiyc8ZEtjqn5gioGsPoaGdFyQPebicfgb2DZAUdRFbpOcnGvELq6CFOgujFXUuLLOTo1KR62vR3sE001+lOiqDLTeQt/C3KiHb7oo
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4538.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(366004)(346002)(376002)(136003)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(5660300002)(2616005)(316002)(110136005)(54906003)(41300700001)(2906002)(36756003)(26005)(38100700002)(86362001)(82960400001)(66946007)(66556008)(8676002)(66476007)(4326008)(478600001)(6636002)(8936002)(31696002)(53546011)(6512007)(6486002)(6506007)(31686004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N0JyUmNMV1diT2tzaVV6UHp2YlZLOTNlMDhma3graXpBamNxTmYwdzJxclVH?=
 =?utf-8?B?UnlxZXg4ZTFMdjZadXdnYkY3enQzSW0wRGNzdXdYQ2VCNmloU2dOWktoNFlk?=
 =?utf-8?B?TmRJMUpLOUphaERlOFVXeEd0b09mK2xmUXd4M0hpZmFQSStGTHJEYUg2djdW?=
 =?utf-8?B?ekYyc0NqbmhqY2FhRldvY0crRk54YW4xWnRVZ0Y5clZwL2Rvb01mcDR5OFUy?=
 =?utf-8?B?WkE3Y1F3RFBoY2dHV3Z1QmtlbCtnL3dWUjNlZzYyT3ZBYkFXbzdVT1FxUVNX?=
 =?utf-8?B?NHdHS01JNnBGWlFlZlArbGtYV0pDWjFVQTFMN1BIbVJHK2IxLzduUEtZa3JH?=
 =?utf-8?B?SnpwRlJJVFRNcnRRMGFscE9ZaXF3ckk5VThZSHdKd2ZuZ1ZFdlh5V0ZpVWlI?=
 =?utf-8?B?NmJnQ21pc3FVV3hMYU5ocVpEUUhkK21ZYWNOU2d0eXRoZjNacXdrdW5GYTRj?=
 =?utf-8?B?VE52MVZTaE9lN0x6MzZsN1RBdHhFUDNHRmNrUWY4UVQzenU4RzRReS9UK3kw?=
 =?utf-8?B?T2pnMTB3TnFNS3ppczRWTWJZVnJQV3Fyc3lLZzlXN0syeE9DeXdQeWhTM2lU?=
 =?utf-8?B?M3pWM2pqL1JrMm1oZGpyMjVDTk90R3hrSzg5VnhuRFhTWnZYUW1GN3NTSEZN?=
 =?utf-8?B?Y25kSHpzeGVIVGJuT08zQXJDMFcva1dkYk5BMDcrTldSYzZSalJYeGpJUVBG?=
 =?utf-8?B?TmxISm4razh3K0lVYzRnbWZOQzZMKzFlaGQ3aldUSFlvbGo1c25LdzUwdWZt?=
 =?utf-8?B?dzVTaG5STHY5L2pGTGN3Z1l0Vy9PMUlHbUYwalFoWDlqYXhiRCtBQkN6cjlV?=
 =?utf-8?B?NUdKZUtLTTdhdFFUZ3ozWkZMY0NSVFZjdGZ4M1pRWFRjRkJsOG1MamxSMjFt?=
 =?utf-8?B?U3U0dU5ralpzNjU3YXBNemxpWjJnMjJPOXhPVmFjR2g4cWpMUW53ZGtIdTNI?=
 =?utf-8?B?YjdocGllZnd6R0VQbWpiV1FiNTFUUGFlc3pJNGxjcmdpZVB5QSt4elQ1dm92?=
 =?utf-8?B?MnJBOXRHb05sOFBSQjAxTWMyTDFISk85TE12dHBYTEtndHZVKzIyaDVDYjQw?=
 =?utf-8?B?OUFuQk1DdkwwMXVyYlk4NHpUV1ZHYXYwdDgxK2tpVnUwSkRUOHNtREZQWHdQ?=
 =?utf-8?B?L3hpRUJBbm1vOFR1V1o3WHZpcWd5MFhicGZhdWRydkpVbkplaEdsOVowMEhB?=
 =?utf-8?B?bVdpVmR3OHhoVGJjSy9Vd3RUSDk0WkJXb0QvUnZZK0pNWERWemU2RmprK1VR?=
 =?utf-8?B?bk5IUGNWR1dhSjFhRElUSDZnb0pjRFpoM0F4U0JuYkFYdW1CMmxGTC9YQTZq?=
 =?utf-8?B?dFFwenovTFZpVHB6T2FhaUNsVDJrSFRQRzNnKzZMc1d4UndiOHUrQkJxeEFk?=
 =?utf-8?B?b21hUWE3aXNRUDljZG9UUW1MWkREd3Vxajd0TlNzRWNITm1HOC9HYnhmTXY5?=
 =?utf-8?B?cFMrUEJQb2Rkb1p5UEw2SW5PS1pKL2k4VTI0d052TFI4SS82cEc4T2poS2F1?=
 =?utf-8?B?M2lHemgwQ09hbWh0WEF5ZEFZVjZibi81eU92ZWs4dFcrajJNU0lZbEJNVzhL?=
 =?utf-8?B?M1V2T1RMS3Q3ZGJzZmt6ZFY0QmxXdXJTMDZmZERvZEt2SG5icE9maDFhK1Vr?=
 =?utf-8?B?a0dvNU8yOEtKMDJVVExZOFVTNDdBOUpGVGUwNVYwQW9qd1F3bDBVWktFcFBD?=
 =?utf-8?B?eW1FcWhWRi94R1c4YW02ZURhZnV5d0xJV2ptQzJjL2FmMEoxQ1FwUmhRSER0?=
 =?utf-8?B?cWUxbTUvK05sWllpaEp4OVBJUFdIbnRmdjVFZXZpKzZSUmV4VExFaDlzVERl?=
 =?utf-8?B?dmJZako4RS9DZ1hENGlVZGJvWTBUanFIZWxwbnlUdVF1TDNyR1BlZy9mejRu?=
 =?utf-8?B?ZCtmaWVKeGNJcTBiajZjdEJ1VU9RVHJOaHY3MUVBakhHc0VMNnJEd2R0bVFt?=
 =?utf-8?B?bnRqSjI1SmlJcWs3MWc4NWRoTFdvYmdBWEpFenAxQm1nVDZHNDBpNVdYTDFz?=
 =?utf-8?B?aEdOS3RPTE82TEQzSlZUbnJzQTh3UnhzTWxObVlCT2d0dGhmSUxqL3VrSm5o?=
 =?utf-8?B?blNLKzhYdVRWZlZPcmRTbVJZaU9ZOGUzbDBtQWlPM2cwcVVjQlNUQU0vcmdq?=
 =?utf-8?B?TCs0K29lRUdOaXJ0VGVCL2tGRnZqNDF2Y2x6bUFLZ3NtbnlSSkwvRytlSE9J?=
 =?utf-8?B?UXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7297933b-4575-403f-b1ff-08dc2d733103
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2024 15:39:54.7452 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nou5n2aDAJ+6qZpfus1POIaG9XAq/fsREjq9MDynGFT5XhQ+UMHKCoLDNx0NNUUC2S69vvu4cKPOWHqpfcIOpN/L7doPISrOkE+4YZh2k3M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8367
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707925199; x=1739461199;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iE47x0a7qsyNNicLxHP/tljK78XHHDCxMu85eGLy3sU=;
 b=A6+k1Lka0WSf4KPbZYj8xeJ+XZQE+4uduKSNyLfBEMhRBmLqM2qQmJkA
 b7wsoEcoJbi9Ynvn2fa8hpsdnTeK40XKB0MwKtlvrAqBEP1EE+pQzp69u
 0bgKb5ILLcsd+4DkhTlkKltnNDkE6MYppxClW396qBq8zMMWk5ZP+0hAc
 pKhH+y7OgmyLKdk4Epn87ZpeekMwYWoy2F8HtJKdd3Ie3Ecswafd1J7i0
 rcLkqcEWtZUc+12k+z2fKXKL/B7IvoiZS/MKUJTAEguaPO+wnEAvkbjyq
 SJu8iiUXzp7RqCgj51T+tR0a1TG8BN59nGloEihlIuEzaREEpD2fSFMU5
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=A6+k1Lka
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/1 iwl-net] idpf: disable local BH
 when scheduling napi for marker packets
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2/14/2024 6:54 AM, Alexander Lobakin wrote:
> From: Alexander Lobakin <aleksander.lobakin@intel.com>
> Date: Tue, 13 Feb 2024 14:16:47 +0100
> 
>> From: Alan Brady <alan.brady@intel.com>
>> Date: Wed,  7 Feb 2024 16:42:43 -0800
>>
>>> From: Emil Tantilov <emil.s.tantilov@intel.com>
>>>
>>> Fix softirq's not being handled during napi_schedule() call when
>>> receiving marker packets for queue disable by disabling local bottom
>>> half.
>>
>> BTW, how exactly does this help?
>>
>> __napi_schedule() already disables interrupts (local_irq_save()).
>> napi_schedule_prep() only has READ_ONCE() and other atomic read/write
>> helpers.
>>
>> It's always been safe to call napi_schedule() with enabled BH, so I
>> don't really understand how this works.

It's been a while since I debugged this, I'll have to take a look again, 
but its not so much about being safe as it is about making sure the 
marker packets are received in those cases - like ifdown in the trace.

> This also needs to be dropped from the fixes queue until investigated.
> For now, it looks like a cheap hack (without the explanation how exactly
> it does help), not a proper fix.

It does fix the issue at hand. Looking at the kernel code I see multiple 
examples of napi_schedule() being wrapped with local_bh_disable/enable, 
so this appears to be a common (not uncommon?) technique.

Thanks,
Emil

> 
> Thanks,
> Olek
