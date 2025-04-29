Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EB6A9FF23
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Apr 2025 03:42:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E637D60DFD;
	Tue, 29 Apr 2025 01:42:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nxF0oLHkW6GH; Tue, 29 Apr 2025 01:42:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EBA0E60DFA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745890961;
	bh=iYBUHmWjPIh+z3xBVgcxrRHR3Rhq1gz2qs5+KvR34FU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=s5HgauhHFKPKDxZlZ7LYwJdDz53qKBhOyglYFNcFxiUtJr4D8auB0hyMG36Vx9lY4
	 xYig+7rzVFbQvbJpm8V24LoYEBPqxGbrG91/st91l5+BNtLYcxgrAAzCblhN6ckPu9
	 i8EOtR0QqBCAAQY1gK+hohhizajMABwCN4KAeeIqX5hJAewRzC50+WpfS2T6GIa12b
	 cyL78N7ghJxlVl30RspVqmQGQCIIX1lrsKs4ko4DiEV3TkV6pe0L4bslXsj63gc9IV
	 hxLwKGLftrSKQAHWPW1XVQi1xscQlPhWDGwNEjxFY1dOAkASYm+/R5Q7MWjHhrlLPB
	 tD8KLSMyJCTBw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EBA0E60DFA;
	Tue, 29 Apr 2025 01:42:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6971EE4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 01:42:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 593F440CA8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 01:42:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id le4h8WD0yGdM for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Apr 2025 01:42:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=madhu.chittim@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7BE454070F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7BE454070F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7BE454070F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Apr 2025 01:42:37 +0000 (UTC)
X-CSE-ConnectionGUID: EM3F69wRS/2VNe7RP7X15A==
X-CSE-MsgGUID: iYEnKVBkR3KzLwj8kCeRWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11417"; a="47591973"
X-IronPort-AV: E=Sophos;i="6.15,247,1739865600"; d="scan'208";a="47591973"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 18:42:36 -0700
X-CSE-ConnectionGUID: FOjpllrmSjGAB3yy8i/4Ig==
X-CSE-MsgGUID: BfpV401XSaCXbd5qjskJPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,247,1739865600"; d="scan'208";a="134641582"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 18:42:35 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 18:42:34 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 18:42:34 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 18:42:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=De1Cmb3RUQPEJQ7ui85nQkwkLS/ImubI6Y3vRESfTcjSmmiUGlbZUxom2B5Wf5r+92hRwDrxYBrxf+IsouvefKNdzCjRM00gqVjHAoQywcESDgE+YgH6ofDltBjZLXHCCewhgemUbbELMMWqcN/wkRks5B5R32BaCqFwt/P42i9OEFq2NfmB2605R5xtFtV4NqeK5gJWo/l4/KHlNdu9MrqFsNxC1TJc8c0GvOLlt1C/dD9qlIS4SacTRdq/EhiD2M47vbE01pafoWhsSTBC/gE7RdODZrDYqyRpO9zMVX7SfBbsDREWn59lOhO9aNGDW/ST/IN42hMRz6FWue8Zmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iYBUHmWjPIh+z3xBVgcxrRHR3Rhq1gz2qs5+KvR34FU=;
 b=qEf4Jz+2vUnqQvxXyjqhLp76CzlkKJTaTVtdVdtxN8pKhbb0uDSjTrZK85BClVyFGREltEGDZn1Y659qCU1aidobpdxKnYVjjnebd08FCSceMjhKjlSzNaiytpYAXRoOu0bP6Jzzhiuk8zuOdvlR9fL1Kud0lLVT9w3TfKs/6U3MnwGLNtlsqybFEalnJhzul76itip3znC6uBNtUjfFp5T2AcISqSE9+UMixF9PvuM+K9riG8jInwiBp9LylVsSF6LuAKu4SZvI8BrJeDHbuWyy+ptgwZVRAsvXlU8LdiHIFBWM0yxZ0YtVnmdFQrj4qaBRoPjKCUc7v708sbUZyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5042.namprd11.prod.outlook.com (2603:10b6:303:99::14)
 by DM3PPF5EA507B64.namprd11.prod.outlook.com (2603:10b6:f:fc00::f25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.32; Tue, 29 Apr
 2025 01:42:11 +0000
Received: from CO1PR11MB5042.namprd11.prod.outlook.com
 ([fe80::9b:7c08:c7d5:a021]) by CO1PR11MB5042.namprd11.prod.outlook.com
 ([fe80::9b:7c08:c7d5:a021%3]) with mapi id 15.20.8678.027; Tue, 29 Apr 2025
 01:42:11 +0000
Message-ID: <277c55fe-ff6b-408a-a04d-d0fe9b42a430@intel.com>
Date: Mon, 28 Apr 2025 18:42:09 -0700
User-Agent: Mozilla Thunderbird
To: Brian Vazquez <brianvv@google.com>, Brian Vazquez
 <brianvv.kernel@gmail.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: David Decotigny <decot@google.com>, "Singhai, Anjali"
 <anjali.singhai@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, Luigi Rizzo <lrizzo@google.com>
References: <20250428195532.1590892-1-brianvv@google.com>
Content-Language: en-US
From: "Chittim, Madhu" <madhu.chittim@intel.com>
In-Reply-To: <20250428195532.1590892-1-brianvv@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0143.namprd03.prod.outlook.com
 (2603:10b6:303:8c::28) To CO1PR11MB5042.namprd11.prod.outlook.com
 (2603:10b6:303:99::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5042:EE_|DM3PPF5EA507B64:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ea9161e-cca7-4057-7485-08dd86bf0f58
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|7053199007|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MFJQNUJVTFZYR0Qxdkg5d2lyMHAwVzV5ZTVoR3dUOG9UL2JISHl0Y0dQQk5k?=
 =?utf-8?B?eEJxSFJOaEpEbzlRWUNYd2VtUi9HVGhnYVJtZmpOVDBXdHEwY1VoZHVRaG9S?=
 =?utf-8?B?NCsyVXY4NEs2S0x2UEpLZkFEYzd2Vm9xakhFVFdqYjRIbVp0aVpzRjNxbXhL?=
 =?utf-8?B?V3A0RllNK003anZ2TkdweDQ2WEpCVkJZQjl4cStIZXRzRFlwM1kvbC9VT1Rx?=
 =?utf-8?B?V01TaytaeHdZRThwTGpUTnJicVJxZU9ZNElaVmhIVTZ5bWIrWnNVQzVtTGJV?=
 =?utf-8?B?clZ0eUQwdkdMTUdqbUR2UitHZ0tKTUZuOEd2a09RUjlVZCtyL2RHcGwvd0s2?=
 =?utf-8?B?MDNQbnJjelFxc1RqNlVHWUwvWjYrZ012MVR5YTlQdjNHNWlpdmJSSWxqYTMv?=
 =?utf-8?B?ZUU1di9oT3dEampkK3BlUEI4bzgyOXFNMGtOcHdoVlplUjBOcUhGdkU5b1pV?=
 =?utf-8?B?aEtwdzJHeVR3dmYrMkNVUFNZeko2ZG9waUhTc0Fib1VqOXBjUUZoQ29Ubzlu?=
 =?utf-8?B?K1piUjZDWkRiUy9WV3k1cXV3cWRyRm1aRnpBbVh1QU5mMHVBeUIxdk1FdDFU?=
 =?utf-8?B?ZXd4WjRhR1Y0bVdUL0Y5UjFVZ3ZqdjlLcndmMDc4UitYc3IwNW1QazBQb0dk?=
 =?utf-8?B?K1BGS1dzK0F4VmdtU1NNazFCOTdjSGlQVVRxMG5JNXE5TVdmUktZbXRzdjRX?=
 =?utf-8?B?ZWVuZmVpQkxsY01jQUw2YmpyUzh1VFdrWFNwV2VFaklEaEgzcmxaS0hNS29C?=
 =?utf-8?B?Z2VlWHVQb0ozZDEvWDB3T2NRaVJhMVNmbU5udDJWcEdidEtCZzBMVTRqZGtu?=
 =?utf-8?B?ZE5QZ3ZzSXhPVi9rVFg4V2x4U21YdWxiZXJSYmR0ZjNGMy9yVEEzWE5oR0g4?=
 =?utf-8?B?b0V4TTZDNnE0OWsxdW5YbzkvMkdIYldOVkFoczBuV09sR0hERlBLQVB6eFlM?=
 =?utf-8?B?YThIWlBjOXBmMEE2N001OHZGMXlucmRWczBVTTlLMWg4RHZSUjNLUHB4dDNW?=
 =?utf-8?B?YldEYWJxbWxkMlVTK0xMUXNmOVFpdm1DK01HNVhMbEhVL1NpdlpkMlFwZW5E?=
 =?utf-8?B?bGxoTXZkRjNNSnBqeFJodk9FU2VUWWdYU0lSUjBxYU1iK1VzV3JERDh4NWpS?=
 =?utf-8?B?V1R4bWlJOU55OUJFaExRRTNCNnRMZHVFc2VYNFFIWUxTMXpGTUZqdlk4b0Fi?=
 =?utf-8?B?dE1HZGI2VkFNQTFtK00wOHkzd0JnRTFYaWtzQkFsSWNvWlZ5ZEhwNWdiSEQ4?=
 =?utf-8?B?K01Wb1IzN1RjWDlGVTlOaldkUHJoT2loU3gyK1lQMThvYzZEa2hmYkF1RkJs?=
 =?utf-8?B?eWY5TkZwcGU3SG5OSUxUZjB2Q3BCQjBnYyt5Q3lRRC9wMkdDTGhOaWRKVC9a?=
 =?utf-8?B?a3ByYVR5NWpwYzZkby9YeG9YTmEzY0ZiMndwRGFWc3REdXVSSkNKSU0raDlF?=
 =?utf-8?B?d3VGNkFMaVJGOHl1UUpScEpjdldjaXBUeXIyTkZ1RVFOZXFUYWpPZlVBS2Nt?=
 =?utf-8?B?KzhwbHNPbnpGZUJyNm96eUFSYmtRWnZYa0NFU1E5OUo3aU95YVFSbkZrLyty?=
 =?utf-8?B?NTk5Wm9KaFdoM3A2RzRUU2c2SlY1Qk5Ed21LZzIrV21TdTR0Rkc3cHJPQ25F?=
 =?utf-8?B?OVVPUFZINHRUaTBjdUFCYWpxeVljYmpMS1BMQm5UQ1hMUzEyTW1MWUZjTVRo?=
 =?utf-8?B?U1JiUWYvcTg2K1NaSmNvRjl6QTNSNml4YWNteW5RWlNGYWlsS1ZLa1dsMzli?=
 =?utf-8?B?TjU5Qkl3ZDB5MVQ1RXlyRnJtNzBXdG1qZUVHR041NDZmNnFOcGFWdXlFUXQy?=
 =?utf-8?B?RzdwMW54TTlTSzhCVE9KYnE4VXF6VThTSU1UaVUya1VoWkcxakNVaUVJc0Q5?=
 =?utf-8?B?RzYwcUFjMk45ZFh5a0pEcjBnNHNhZHpjMXJiK0pER2JGdkdhVmliWjFoMk83?=
 =?utf-8?B?bkU2NWRFcjdsb29DTTR2VFJmRVRDTjc2T04ycE1kN0V6bWVxTFliUGhmNHll?=
 =?utf-8?B?SlBrTkxWWi9RPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5042.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(7053199007)(921020);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Qk9mY1hHN2JreU9kVmd6U3JqZTVucytELysrcmFUYXNWV0JDSDgvWGtXeTVk?=
 =?utf-8?B?bGZyQXpwRDdTU0hrdmhsSjFoODFBSVBCUXBaRHRDSFE1c3BIc0Ryd2p3Rnk2?=
 =?utf-8?B?MjBOSi9RSU1KSzc4YWVNb3p5dWJlaUVyODV2aTZyeDZ4YVdPQjdWaU90V21N?=
 =?utf-8?B?VDA5MThJRVNUVWMxQktUcDM5am5paHMwRWhLMWhhUzMyMGlFTW5nakRsWHZz?=
 =?utf-8?B?UmtGMGwxajdNS2c3NVRFQlRvMFBTWDZTbEFGRFc2NGVxbmQ5b245Y3hYNGdr?=
 =?utf-8?B?a1Z5U0VJUTVDNmtUQzl2cSszdTZHTzNvR1hpNWNZNE9KTjk1ZzMxQkwvT21T?=
 =?utf-8?B?T0N1NkFGbjFCOHFMTlhMOHpWS2djYktSejJYZUdUdDBWSXFKUVN0WnZaV3hO?=
 =?utf-8?B?aU5YR2krZUFqa052YXhCL01BWWtDK0lLYWx6RzBnQmlSTXE0YzZsL29CazhX?=
 =?utf-8?B?QnJhL2oyalBTWVhIQ3Q3aGcyNTJKVC9yV29xWnZjNVMxcGNhelBnS1Z2REpW?=
 =?utf-8?B?bGF0TDlkYVB2Vk0yV1F2cnV2ejkzbkNiR2dCRXZCc1JlelMrWXFSQmdMMHhU?=
 =?utf-8?B?M3JnSiswcFg0OHVmaTZyNFkrZkdlQVhwb1ExRStZOTlzV3hJenZONjUrVTZV?=
 =?utf-8?B?UVE1alJCd04xUGhEdUsvcHNOdUR4SjNteHJXdE5vRFRMQWlRYy85YlQ0c1BU?=
 =?utf-8?B?SFlnNk5DR3d3T3kxSitWb2toSWR2dkdsaHh4RUVZTC82VU8xMEVKdkp6OWt2?=
 =?utf-8?B?YmZubVVTdVdPeVBCYS90cnlCSEhJRlZ0UlJXSUFFUjFHUW94dHE2YVU1YkNM?=
 =?utf-8?B?bGl0VWlrY3hqMVdLWkgwK1ROR3AvbVJrcmRqTlBrVXZIV2M2RFhSZVp0Rzc2?=
 =?utf-8?B?b2lpYmtqeFMreUw1bTllekwvRzcwd0NxME1WUGRvUStERDA1TGJOcHV3L3ZC?=
 =?utf-8?B?ZU4yQlBTY3FLcExzcitPZDVXT1lraXFjL1hhbEVvNzYyc0RMTmpGQnVaM1E0?=
 =?utf-8?B?KzBaMUtId0hERkZDOTlZcmg5MjJPRmJtRllFWTJmVjhVVFlkakJFcWZZcXB4?=
 =?utf-8?B?ZjhheUhhem5GVDFJWElvZndyV1hWbUQ4S1R6aXE5enZieGYydGt0NXJxYWpI?=
 =?utf-8?B?Q3pPNktQaEd1R2xsdytPRGRVK1dBQVd5UlZlcU1pYWo5RnAxYkRFczUrdWs4?=
 =?utf-8?B?dFpoSjRzNlBhbjBIUmZ3dTlFNlBxS09wbXhMRk8yV2RTL3Evd3dsNmZJU01L?=
 =?utf-8?B?K21NemZuZmlka2JUK1pTOFpRQTdtLzdSSG15bVFyUGdEYU1VSnI3VFJMOXpa?=
 =?utf-8?B?YWs5OVJFRWhETlFNVkxtaElQYk5hT2ZacDMzTW91dE4vT01adEdaVlErMjRD?=
 =?utf-8?B?aW5MR2tKaUtEZEljRVBjUldGQnJ6bjBmT0t2Q1VHMkVZVDJPV1hsWEZLVkRT?=
 =?utf-8?B?b2lIYjlrT21WckVJYnBDOWQ1SmN3elBJVXBwZTZKcDgvZ2hENEg4ZDdIR3pQ?=
 =?utf-8?B?M0ZHY3NSZitHV3BHZFZJNVI3cXg3Y3EvMDNpM1k5WVI5QkduMjd4eUFiMzJU?=
 =?utf-8?B?UFIwVWo4MlBycHVXNDJSM1liOWVDdGNkQ1RWaC9yV1dYSUFvNDQrYmo5aE1W?=
 =?utf-8?B?VzBvYkdTNUxNUUpTT0ZRRW81SVpQTmtoeG5Sb0JNMTRoWEcxRVhYMG5xTHRK?=
 =?utf-8?B?SzUvc0pGU1hxWCtoTmJwUHhURU9UWVBSd25wV1QvMVVVWDViSCtrdHV5aDda?=
 =?utf-8?B?MG4zVWtmODNhQ1AvRXBHbXpZT2NmUkN1aVRNT0ZHaDhIY012UGdFRjZLakh2?=
 =?utf-8?B?QlBtUkVvNlc2cU1IV0EzUkp5bTZFRTVxSzdNYmdGVFBFQjZ3Y1ZMbENuNEdN?=
 =?utf-8?B?U2N4OGxqYXh5ckZUT2tXZHZNR1dQM0xlQXBydzBrbm5rRTcvT3pOaDFDNWU2?=
 =?utf-8?B?WktiaUVqTlpjU1dwam1hTVJtTXNvOWo0cEZNVGhOTUJONExtbW1OL1lyNUJO?=
 =?utf-8?B?UDZTSUMrM1REU3pRdDRzaGNVcTBYOUVyUTg2M1pDd2RKUmJNK2VaeFRoYW1m?=
 =?utf-8?B?M1RMcTdYcHNLaTBhQWdyZEFJSHRvQ0NPRjVwbDVnWjV4V21BT01mb3VxdTNR?=
 =?utf-8?B?U095VXh3dDArT1hmOWpMZ3o1T2k0c3o0S2ErWTJlWnZ6ZVpNM1RBbGIwbndG?=
 =?utf-8?B?NUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ea9161e-cca7-4057-7485-08dd86bf0f58
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5042.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2025 01:42:11.2545 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R9UUaqO2+NA/jk+N2miGgZnKdHbjvB6HeD4U0DbzPyusACcVZO2QNFMJq2lPd0kdRkgALFUWJCHrFKIdezNFhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF5EA507B64
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745890959; x=1777426959;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S9EMhODG4DAHqN0+tU+CW/wG1dq3KaX1+orrRoZwG9M=;
 b=YecqdPAGpSCxr+Vn8ay7yhUlqgmZ9tkP3MyyO7y5LFxftLk3siQd33fN
 xEhlWsmNsp4uYQKIRQGv+5p2s09ZCAihGaDk5dDlcPuzZvKk1wKxQhdWa
 Gd4AHDS23WrC1c8uwwHMDPyzRnYFmYdJtgEJ7YcCLBNofyX5PpV79ZS7j
 q9dn9kTs8HAMueyvOjqUIbTJrJIHLQKVaUDl+oFWVckdsU/oggCTN58dR
 VdsKzfropAte+fauHTFgJhMfVAyKG61alGnWIbZiOmCSJcylypkyWALOE
 asJw1PHqy6BsbBxrIJ4P/QmLRaIwtkPv79OrQXNWr1qQ92DXKfDNj/2EX
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YecqdPAG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net PATCH v2] idpf: fix a race in txq
 wakeup
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



On 4/28/2025 12:55 PM, Brian Vazquez wrote:
> Add a helper function to correctly handle the lockless
> synchronization when the sender needs to block. The paradigm is
> 
>          if (no_resources()) {
>                  stop_queue();
>                  barrier();
>                  if (!no_resources())
>                          restart_queue();
>          }
> 
> netif_subqueue_maybe_stop already handles the paradigm correctly, but
> the code split the check for resources in three parts, the first one
> (descriptors) followed the protocol, but the other two (completions and
> tx_buf) were only doing the first part and so race prone.
> 
> Luckily netif_subqueue_maybe_stop macro already allows you to use a
> function to evaluate the start/stop conditions so the fix only requires
> the right helper function to evaluate all the conditions at once.
> 
> The patch removes idpf_tx_maybe_stop_common since it's no longer needed
> and instead adjusts separately the conditions for singleq and splitq.
> 
> Note that idpf_rx_buf_hw_update doesn't need to check for resources
> since that will be covered in idpf_tx_splitq_frame.
> 
> To reproduce:
> 
> Reduce the threshold for pending completions to increase the chances of
> hitting this pause by changing your kernel:
> 
> drivers/net/ethernet/intel/idpf/idpf_txrx.h
> 
> -#define IDPF_TX_COMPLQ_OVERFLOW_THRESH(txcq)   ((txcq)->desc_count >> 1)
> +#define IDPF_TX_COMPLQ_OVERFLOW_THRESH(txcq)   ((txcq)->desc_count >> 4)
> 
> Use pktgen to force the host to push small pkts very aggressively:
> 
> ./pktgen_sample02_multiqueue.sh -i eth1 -s 100 -6 -d $IP -m $MAC \
>    -p 10000-10000 -t 16 -n 0 -v -x -c 64
> 
> Fixes: 6818c4d5b3c2 ("idpf: add splitq start_xmit")
> Signed-off-by: Josh Hay <joshua.a.hay@intel.com>
> Signed-off-by: Brian Vazquez <brianvv@google.com>
> Signed-off-by: Luigi Rizzo <lrizzo@google.com>

Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>

> ---
> v2:
> - Fix typos
> - Fix RCT in singleq function
> - No inline in c files
> - Submit to iwl-net and add Fixes tag
> 
>   .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  9 ++--
>   drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 45 +++++++------------
>   drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  8 ----
>   3 files changed, 22 insertions(+), 40 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
> index eae1b6f474e6..6ade54e21325 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
> @@ -362,17 +362,18 @@ netdev_tx_t idpf_tx_singleq_frame(struct sk_buff *skb,
>   {
>   	struct idpf_tx_offload_params offload = { };
>   	struct idpf_tx_buf *first;
> +	int csum, tso, needed;
>   	unsigned int count;
>   	__be16 protocol;
> -	int csum, tso;
>   
>   	count = idpf_tx_desc_count_required(tx_q, skb);
>   	if (unlikely(!count))
>   		return idpf_tx_drop_skb(tx_q, skb);
>   
> -	if (idpf_tx_maybe_stop_common(tx_q,
> -				      count + IDPF_TX_DESCS_PER_CACHE_LINE +
> -				      IDPF_TX_DESCS_FOR_CTX)) {
> +	needed = count + IDPF_TX_DESCS_PER_CACHE_LINE + IDPF_TX_DESCS_FOR_CTX;
> +	if (!netif_subqueue_maybe_stop(tx_q->netdev, tx_q->idx,
> +				       IDPF_DESC_UNUSED(tx_q),
> +				       needed, needed)) {
>   		idpf_tx_buf_hw_update(tx_q, tx_q->next_to_use, false);
>   
>   		u64_stats_update_begin(&tx_q->stats_sync);
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> index bdf52cef3891..a6ca2f55b5d5 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
> @@ -2132,6 +2132,19 @@ void idpf_tx_splitq_build_flow_desc(union idpf_tx_flex_desc *desc,
>   	desc->flow.qw1.compl_tag = cpu_to_le16(params->compl_tag);
>   }
>   
> +/* Global conditions to tell whether the txq (and related resources)
> + * has room to allow the use of "size" descriptors.
> + */
> +static int idpf_txq_has_room(struct idpf_tx_queue *tx_q, u32 size)
> +{
> +	if (IDPF_DESC_UNUSED(tx_q) < size ||
> +	    IDPF_TX_COMPLQ_PENDING(tx_q->txq_grp) >
> +		IDPF_TX_COMPLQ_OVERFLOW_THRESH(tx_q->txq_grp->complq) ||
> +	    IDPF_TX_BUF_RSV_LOW(tx_q))
> +		return 0;
> +	return 1;
> +}
> +
>   /**
>    * idpf_tx_maybe_stop_splitq - 1st level check for Tx splitq stop conditions
>    * @tx_q: the queue to be checked
> @@ -2142,29 +2155,11 @@ void idpf_tx_splitq_build_flow_desc(union idpf_tx_flex_desc *desc,
>   static int idpf_tx_maybe_stop_splitq(struct idpf_tx_queue *tx_q,
>   				     unsigned int descs_needed)
>   {
> -	if (idpf_tx_maybe_stop_common(tx_q, descs_needed))
> -		goto out;
> -
> -	/* If there are too many outstanding completions expected on the
> -	 * completion queue, stop the TX queue to give the device some time to
> -	 * catch up
> -	 */
> -	if (unlikely(IDPF_TX_COMPLQ_PENDING(tx_q->txq_grp) >
> -		     IDPF_TX_COMPLQ_OVERFLOW_THRESH(tx_q->txq_grp->complq)))
> -		goto splitq_stop;
> -
> -	/* Also check for available book keeping buffers; if we are low, stop
> -	 * the queue to wait for more completions
> -	 */
> -	if (unlikely(IDPF_TX_BUF_RSV_LOW(tx_q)))
> -		goto splitq_stop;
> -
> -	return 0;
> -
> -splitq_stop:
> -	netif_stop_subqueue(tx_q->netdev, tx_q->idx);
> +	if (netif_subqueue_maybe_stop(tx_q->netdev, tx_q->idx,
> +				      idpf_txq_has_room(tx_q, descs_needed),
> +				      1, 1))
> +		return 0;
>   
> -out:
>   	u64_stats_update_begin(&tx_q->stats_sync);
>   	u64_stats_inc(&tx_q->q_stats.q_busy);
>   	u64_stats_update_end(&tx_q->stats_sync);
> @@ -2190,12 +2185,6 @@ void idpf_tx_buf_hw_update(struct idpf_tx_queue *tx_q, u32 val,
>   	nq = netdev_get_tx_queue(tx_q->netdev, tx_q->idx);
>   	tx_q->next_to_use = val;
>   
> -	if (idpf_tx_maybe_stop_common(tx_q, IDPF_TX_DESC_NEEDED)) {
> -		u64_stats_update_begin(&tx_q->stats_sync);
> -		u64_stats_inc(&tx_q->q_stats.q_busy);
> -		u64_stats_update_end(&tx_q->stats_sync);
> -	}
> -
>   	/* Force memory writes to complete before letting h/w
>   	 * know there are new descriptors to fetch.  (Only
>   	 * applicable for weak-ordered memory model archs,
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> index b029f566e57c..c192a6c547dd 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> @@ -1037,12 +1037,4 @@ bool idpf_rx_singleq_buf_hw_alloc_all(struct idpf_rx_queue *rxq,
>   				      u16 cleaned_count);
>   int idpf_tso(struct sk_buff *skb, struct idpf_tx_offload_params *off);
>   
> -static inline bool idpf_tx_maybe_stop_common(struct idpf_tx_queue *tx_q,
> -					     u32 needed)
> -{
> -	return !netif_subqueue_maybe_stop(tx_q->netdev, tx_q->idx,
> -					  IDPF_DESC_UNUSED(tx_q),
> -					  needed, needed);
> -}
> -
>   #endif /* !_IDPF_TXRX_H_ */

