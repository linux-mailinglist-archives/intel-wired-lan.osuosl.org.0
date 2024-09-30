Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0616398A291
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 14:34:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A213F60672;
	Mon, 30 Sep 2024 12:34:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cz4yYFpNbKjT; Mon, 30 Sep 2024 12:34:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BEFC060670
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727699644;
	bh=JPr7vn4Cz6Wuw7FIQ+Sj4yNRyO5jDHZ4sv9ohfvVIoY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CLUK4hugQ+1KXXr6gHoUdPmGM66gxUjuEj0GK+jaHi/oBvVCm1+ljRq19CJxXlbKn
	 t5sqfNXF+yGjeDftB+DsVBsFmg9meDl6w7Fu502zs0mdep7CnQTcLRbR2WJfL9ywex
	 irmjiqhaHQkchSCgZ9EBC+27Y1q70yDl75Cxdk4WhIZWOxb0MRjKArIeIEckavmBcy
	 ewtL66YTYevDI1zxKXEB8zSJzVl8YcK+G1XSLEGAzc4tIRy46C5+IG3Hdr4DDhGl+O
	 Qxa3lEFkgM6rPULThmlcnX6IdoTdcJzt+wKawdexxagzOWMGqb07SXNV3c5gJIkmYC
	 chf+96JyprHhg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BEFC060670;
	Mon, 30 Sep 2024 12:34:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1A3861BF31E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:34:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0288740227
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:34:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qgdLfjmGeBxN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 12:34:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 891814021E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 891814021E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 891814021E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:34:00 +0000 (UTC)
X-CSE-ConnectionGUID: ea8M4tILS3qnFHIzsRmyKw==
X-CSE-MsgGUID: MXxB8+r3Tqa9/Bkaunfe6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="37925932"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="37925932"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:34:00 -0700
X-CSE-ConnectionGUID: rNrYHbKpQHaxIuWsuIAumg==
X-CSE-MsgGUID: 9eFxsD1pRF6gpooPtl+uLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="77369140"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Sep 2024 05:33:59 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 30 Sep 2024 05:33:59 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 30 Sep 2024 05:33:59 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 30 Sep 2024 05:33:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OzTl8TICSLWlScniKdTTyMYxV4hQP3608jeCaUSInbAXohokv/VZJa/WGGGxakPLhu5kfxk+b5r+L/phOuRNcGmQf5kSJdh4QMCbC9sSWMCsa/dnD3wd/I2wv+RV+YURx4IcQKPDZ5PdPTFfrmo9OIafDeUqTOGzzFLpo6FecNV/S0Aj9DgGjGNBO/9uUo48gEHxupIVXi3SqCV8h5CFKNqYtUZrbXEJbgle4OnI3xaabOZyGrZvnlAbS3Z9g3ogVMOkwYwq9Mf2d5w/yyda1kaIiOUYeUkMpr766x0R5eargLomz/uDESa6qg6PMOOi6Dx+kM2vl6yTAhDb2Dw5ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JPr7vn4Cz6Wuw7FIQ+Sj4yNRyO5jDHZ4sv9ohfvVIoY=;
 b=nkGlEXvxRSLm2tGpTgvQfG/fkGvFJCAWD/EUTlTPMStFdBDB5FzaoSAVH9mROGqeMjvVqp1HdjUPisSNfZGvPu357EYwwrgvqtTSdiKvsKu1vNxQ8RJPqwIBipgvalTBltWV6TInUb2yA+ta5AN/axmoTyUcjeN6tWTRcnd37vXOxc+yzAYVdyxWD366m9cuMZxQfCOVi+dlwN2e6Y2N43Fvr9NEATgqp5WKq5MwZ+zgrjYukQjUq7FZz/UNoDbzEQUQ6Ll0XJ73xE9UvMsXZBGpPfztmm6Kx6z84Af2DgA4tRplrw1/xDvT+QPoMpicdweAOHWY387zT2QRq1MGjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by LV3PR11MB8765.namprd11.prod.outlook.com (2603:10b6:408:21d::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.26; Mon, 30 Sep
 2024 12:33:52 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.8005.024; Mon, 30 Sep 2024
 12:33:52 +0000
Message-ID: <6a440baa-fd9b-4d00-a15e-1cdbfce52168@intel.com>
Date: Mon, 30 Sep 2024 14:33:45 +0200
User-Agent: Mozilla Thunderbird
To: Joe Damato <jdamato@fastly.com>
References: <20240925180017.82891-1-jdamato@fastly.com>
 <20240925180017.82891-2-jdamato@fastly.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20240925180017.82891-2-jdamato@fastly.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA1P291CA0003.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::6) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|LV3PR11MB8765:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ae6a46f-5d50-4e59-a91c-08dce14c2464
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RTVZblRQRytPcys4K0JaY1FsMisxeHNNMVVRUS84c0dNRDg0TndrOTJySGov?=
 =?utf-8?B?UUVIc0JhMENsN3liUFI1TzN2b0NiRXdHZUc5U2NzTWJUS3RtNUVxL0NoSnht?=
 =?utf-8?B?Z0YraVFVcDFRKzlqMzcyTU9KMWlobE5kWjcrSnAzdG50U2dkL2JvaGVKdmNL?=
 =?utf-8?B?NkJCZWpUK3BTdEdzQitJcHBiWmN3NVNKNUN1c3FuTGRBbGNCTkkxblRuN0x1?=
 =?utf-8?B?QU43ckRQbkJjNXd0WEhJTDJkM0x1UHZ2RzhPVE9iNTE0MVB0Ym9ycmpQN3Q1?=
 =?utf-8?B?QjZ2MmphcHRsbjJsNi9JdExvRXFJbGUrVG51SmF0emp5cDI0STdJOHhUbDNK?=
 =?utf-8?B?Qm85amhlOWE5c0JySm83cC9zZkN6U2krNnJkKzNuRVVCaUpnTEx1MXVGR3FU?=
 =?utf-8?B?S1c3STVkSlhhV0dKdzhuWE1nSzBDWkdBUkwvZDBQdUNZWGhFRlgxUmZhWVpm?=
 =?utf-8?B?cEJPZFVSWlVFY3BVYkFUTHdmcU4xVFhuU3NGUnlBaFBqRU1QTlV6NTlMblRB?=
 =?utf-8?B?eXQ3b29USXhsZEl2WVhmWkxMYWRMbEVzLzBnL1liNGY0dWRIQUtkejdwTGhp?=
 =?utf-8?B?Vy8rYUtqdVczeUNFK0hJNlhmOTk3Ykl1N3JiK0hBcTJCaXdXb0NpTTRVb1hx?=
 =?utf-8?B?QzdKZG95MERSM2RqR0U4MTRFV3N5QkIzRDFLbXYzMDA4cytTTzhqRTNpOUJl?=
 =?utf-8?B?NTNGMDViM2h0QTFSamFuQVBHN080a3RHZ3BNRm9HV1JaRVk5Y2ZYQzNJNCsx?=
 =?utf-8?B?c0ZFb1l5TWpmS3hkcUMvZlYxTWV4WVZ5eEF0QTRkRXdFTlJrV2QvUFkrSk5w?=
 =?utf-8?B?MVdLYlBTd01WU3lCeE9MREo5OUFtRklZL2NzRlJBYjR5Vm40NzNNbC8yUGdM?=
 =?utf-8?B?RXYwODFuN25GVFp3Q25Bcmg5cU1Nb29zeE5JOERHVDhLR0p5ZFlVUHNMQ2l1?=
 =?utf-8?B?cFo5NjVFcEJhaXFyR2ZHZXdSZm01bHh1NExHRDR3cmEvVmlLcXc5c0N0Rm5q?=
 =?utf-8?B?RnpEakdKMmdaR1ZHdTRhK0U0WGl1eWdLWlRTUWtZd09kQTh6VG1BOEFOWVY0?=
 =?utf-8?B?anhIdncvNHRmT0l2MDVhSjRWQ3hTb2NNMW5yc3VKaGNRTWhUZWdza1JpQVlI?=
 =?utf-8?B?Nk0wRFBYVnVUOW5LcXRITnNGb2RoZzVoR25aaCswRjY5RjlINTA3bTMwUzVT?=
 =?utf-8?B?QnRMcXJNZ3puZlJlbEkzcklmMWx2TmZrRlN4a0RsN2NpU2dtSjkwWFM1clBM?=
 =?utf-8?B?aERwVkV3dVFCL0kxd2FhemhOSjltMjI1TDdIWDlkK1BrU0s4Q3ZYSWViVnlz?=
 =?utf-8?B?b25mZkVCVE1SVS9hMS9jZ0xJKzBGc0JwNDFJb2xMS3ZEd3QzSGxrZTVtSERC?=
 =?utf-8?B?bUpMZ00zT203NS9mOHM3U2NVeWx6N1pmNm5kOTNuRnR5YURoMmFxU3F1d0p6?=
 =?utf-8?B?RVkzWE9LUS92SnpWNUo4UEtOcVRLd0doaEw1akNlcUlSUjVEdGJKZXdtQ1hu?=
 =?utf-8?B?SUVoV0J3dU9TQTFwZmpBQnVZMkJQTndlRTYvNTIyQjlLdSsyekVTYy9SYXMx?=
 =?utf-8?B?OC85T2NHQVVKYThNREdQK0VyR2RxY0M4Y0dVb2hMSUlYd1pOZG1XQW1JOTM0?=
 =?utf-8?B?RUxKSVYyYXRoY1JsRVVDeHVrcXpuVG4rajRJaFVXdTJXZjBVOVA3cWZuL2FL?=
 =?utf-8?B?Y3NENHNnWVY2SW13dytCSklyL3o4azJsUjlBLzRuK1JlZmlKOExvRzRNVGdQ?=
 =?utf-8?B?L0s5Y0tjZ3YvZ0Robkp5R2FYNlVOeWJ2UXZqcDBEK0hUc0QwZ3plNXpjUDhV?=
 =?utf-8?B?cW9FYWdlbThmWkVyQTQzUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WDhCZ1dVNCs5VDFkemczeVpwa1FKVUx6ZnJuU1llRWZkVkpsRENrS0tzR1RD?=
 =?utf-8?B?UXhlcGxqNU9XVHNPNUZPWG40NHlZeFg5RWVZeHY4UjZSS2R5OXhIT1lGUWpo?=
 =?utf-8?B?T3BORFdvTkZTQUg1QnZXTTBMVkkvSGw0U3M5b2xYclpQQmVLeDFxdTUyMmlX?=
 =?utf-8?B?bzNiNWpxa1k1anZIRlJEY0ZUVVVTTkl0T2NSLy9FK1FLL2NRSUV0azlneU1t?=
 =?utf-8?B?OUJIZHJOWFh3eU9XOUhlMjM0cEJwUGdNVHV6TUk4cEhoai93RysxNnEraFVZ?=
 =?utf-8?B?cHVseXM5QlhlQ2xyR0FNdjJJOGNsVTk1a0cwMjZDUkRDMWI2aFhkbW9INGVQ?=
 =?utf-8?B?cGdsTGIrbXc3Z3M3bnVWSVk5VGlmU0h1MGIyZ0pFNTRucDdxNTNBT2hOYmNr?=
 =?utf-8?B?SWtuMXdZNnNLcHNJZ1pUOWxldzVIUTg1ZlRuTGswOVR3VytTa05Sc2ZBVWhp?=
 =?utf-8?B?cDB2Z3c1QUZzbHVUMUE3c085b2cyMElab1JsRzd5Z2VIUUMyV0xvOXY4dmI3?=
 =?utf-8?B?TzFOV3VjUzVaYkRjem5LYWRsMzNnczVVVzhNTHRFNEQ2UGNhcExpT3F2aGEx?=
 =?utf-8?B?L1I3SkJ1VkJwWWdjaVY4Mm93cjJzbXJjRFFGcE16UEtVeEJDdCtaTUp1ZS8r?=
 =?utf-8?B?cDRGby9xbXdLcWdON2UyQzNwTHhsUWVVYXc2UTRoWk44d2JrWTUvbnkxclF1?=
 =?utf-8?B?cHFSMDNvMEpLYU9JYU16aFBuYXNKYTcvUUNQMllaSmlzYjMxL2s2U2hQK1kv?=
 =?utf-8?B?bzdKL0hSWEFCVWpCRGhUbVo3YVYxTVY1aVpxR0JnNlFVYVd5ZENBUnFpaFBX?=
 =?utf-8?B?NmFRR1RCcUd6dkk2YTNkVjRnM1RNaUdoRE9mbnViOWhLVHNJODJBYlZKWVda?=
 =?utf-8?B?d1c2bXdZRDVhaVFvT1ZsODF2RCtLSi9RdUkvT2VCaHdkam5zaFBDUWxOaHhS?=
 =?utf-8?B?TGJUMkd0L2w0NnVSR28vSHpOVXJ6eXpVRlpiK0t3bldxUWNLaEZ5ZG9NbDJp?=
 =?utf-8?B?V0x5d0h0MGpvYmxTNkhMQS95a2plMDY1QmtyZEdUUk85SW9VbGxRRnljeW9m?=
 =?utf-8?B?d0t5WCtmZEZ6QUlwSFovaHl6anRtN0RaSVZ3V2VQK1ZXTk9IeFVzdXVmdzQ5?=
 =?utf-8?B?b1BpUHh6b1ozYUgvcG1PeXVBVHRvZDg1UnFpc2F3RnhVeEZjQkVTdmR2WmRX?=
 =?utf-8?B?N0dJZ2R0T0xTdUQ3eGdXYUttVzNRcWlsREFPS29NQWFsc0pYOXVrTkZkalZh?=
 =?utf-8?B?ZG4zTFdDYytDd3ZuQUxobzFYcVR0SXlrNStoSHB1Zy9Wb0RoeEt5UEJqcXkv?=
 =?utf-8?B?My9oTEZ2NHk2c29CTVhTYlcydGlDRlU5cU9MMjh3WnVBRDJaa3hubHdKMDVi?=
 =?utf-8?B?dysyd3FhNkhqNENRalUxNDA1enhoSDZPRGdUSmFkYVFyWDlPQTY0R3p3eWY2?=
 =?utf-8?B?WGZWbUp6UHpCTzNIcVVIdjFvTGFzNTJzcnB0bXF1Rzk1TDRWeGxnZVBjK1FO?=
 =?utf-8?B?ME1JVmxtQ283NHVTbWNud3JNaWRxNVV5ZTVqVXpyNXpoVyt2RVV4K2tMdDV6?=
 =?utf-8?B?QWN1eXFlOXFpdUdBODhZMXVIVzlrYk1mdEtRYU91TnROT0ozUWJiZ0lEUHlS?=
 =?utf-8?B?K3JEWmpucjdSNGNndnc3cFBOWE9UNmIzODZRQkgxTXN1QkMwOXRFTU5RL25j?=
 =?utf-8?B?RTFNVXhXU3hHWDhSTXhGenJZNE9MQWRXRkZaL2gycUd0Vlc4RUxkSzd2VU5z?=
 =?utf-8?B?NEtlTENVbWFwbG9zdlJUN1ArQ0RBQVFCUm9tVVU1OWJ3TnNuYWxmVFJZbnhL?=
 =?utf-8?B?RFlUaStlTlIyT3JtSWdVQlVyc2gxcURQVDFHVnhHQ0x4RXpjSzFJSU1LNFor?=
 =?utf-8?B?ZHViVkpTbUNSTmdudUNqU1NDWGVES2dqY1J4d3JNYW1SR1NJTnEzSGtIak9C?=
 =?utf-8?B?SzNkNDZJWVZxcWMxbWd3bnRGKzdsMWlXaWtRZDdNZVBPTFNPNVhMU1crTnkz?=
 =?utf-8?B?OVVUMW52Z3dWQ1JIU2Z1Tk5hdFZncTNCb1pNLzBIakNmeHBOWkdHNTNxU3BM?=
 =?utf-8?B?TUpMUWw1N2VZN0RFcitGTytWNzFCbUtIdHRCeDVVQ21vWEtDdGlpQUVyWmQy?=
 =?utf-8?B?bEJQOWkrbjYwUmhvWXBNZXZ6MXd3VkQvaWNPdjdlMWNlblVvUHNzUEJpNTZB?=
 =?utf-8?B?UlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ae6a46f-5d50-4e59-a91c-08dce14c2464
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2024 12:33:52.6773 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zSD/D94/jpkWTmOZGgS0G12zGJ/PaiD+LGeQ7goa2+uoKThU3qBRjqhy+pieIx2Chid3iUiaStD4uxbJFaUjLdbMYHrQDMNmyo3KcK/xNgw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8765
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727699642; x=1759235642;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+sKT049RTkJpg3ojzOC9wtL5BbZMbB91SU0fgZJAAeU=;
 b=Wp8lS3vlKxMPIXB2yEgMIIQKOYVgZu8ccgq6rPeIrH8eBPY2orfsFdwL
 bciyoslSMnhcIAUsKI+Lyt91vZORKqBYTqbhVE3MWlK7nPIqDstmNCWdF
 URHgT6l+xS0x61lCEfREzBFvS80ijq5nI1w6xcj11xt/DTKDa4q0Bj6KA
 yFk7+nm02DXCu2/a7qYONqA8P4bvNwXy59cqTdXMIKazjsKhUcYKegFgA
 ePFcmWSKijbQQ3M9s3olLOpi2BJbgBBACGk38zsg4w1v8JSADxLoZZ9vo
 UDxKVqVlO9fTeAmnSUZ4Fgnd+4gJEJ21ozqfOFHllXblGXcyFjQsmtnTj
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Wp8lS3vl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC net-next 1/1] idpf: Don't hard code
 napi_struct size
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
Cc: netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, "moderated list:INTEL
 ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Joe Damato <jdamato@fastly.com>
Date: Wed, 25 Sep 2024 18:00:17 +0000

> The sizeof(struct napi_struct) can change. Don't hardcode the size to
> 400 bytes and instead use "sizeof(struct napi_struct)".

Just change this hardcode here when you submit your series.
I use sizeof() here only for structures which size can change depending
on .config, like ones containing spinlocks etc.
If you just add one field, it's easy to adjust the size here.

Otherwise, these assertions lose their sense. They're used to make sure
the structures are of *certain* *known* size, hardcoded inside them.
sizeof()s mean nothing, they don't give you the idea of how the
cachelines are organized after some code change.

> 
> While fixing this, also move other calculations into compile time
> defines.
> 
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> index f0537826f840..d5e904ddcb6e 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> @@ -437,9 +437,13 @@ struct idpf_q_vector {
>  	cpumask_var_t affinity_mask;
>  	__cacheline_group_end_aligned(cold);
>  };
> -libeth_cacheline_set_assert(struct idpf_q_vector, 112,
> -			    424 + 2 * sizeof(struct dim),
> -			    8 + sizeof(cpumask_var_t));
> +
> +#define IDPF_Q_VECTOR_RO_SZ (112)
> +#define IDPF_Q_VECTOR_RW_SZ (sizeof(struct napi_struct) + 24 + \
> +			     2 * sizeof(struct dim))
> +#define IDPF_Q_VECTOR_COLD_SZ (8 + sizeof(cpumask_var_t))
> +libeth_cacheline_set_assert(struct idpf_q_vector, IDPF_Q_VECTOR_RO_SZ,
> +			    IDPF_Q_VECTOR_RW_SZ, IDPF_Q_VECTOR_COLD_SZ);
>  
>  struct idpf_rx_queue_stats {
>  	u64_stats_t packets;

Thanks,
Olek
