Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCD8C1F995
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Oct 2025 11:39:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 53F79613D1;
	Thu, 30 Oct 2025 10:39:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 87Ikg_qp8jO7; Thu, 30 Oct 2025 10:39:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A495613D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761820782;
	bh=czEW/QTGlic+LSLBHgAhgjhksEGYrd4CIgAQ2J8fBjY=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=50zkhVxPoIvrQnHrVYeD3gFMUQHsSqYuu1wS+eO8lotZGmWAfGeS+GjrP25Q+6Hh8
	 nSHQJ5O4/vdd492XquKCwYUqq+XJaBDXu+PUjeaOoFLbx7Y1IFs0wBvNmRqwDKUZKV
	 4Liwfz3VHREvH7LVMJmWpxhXtxEnu/NfxWiGudYE5piPtKmAKyN2jUIaF4g8BsGFDB
	 zOPMgb5LorQMs5HmWzarGmm/7S28cyVkYufu84Fhxg8o1JElor+wE5JL7d/WN9aptI
	 9K24YlJwl26gcfH+vERb5Ai5i058hbF/zyuWbU3qx4Y6bChggP9F+DlB3N7Tp5MOxA
	 3BDdPl9HYPmCQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A495613D3;
	Thu, 30 Oct 2025 10:39:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0840ECD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Oct 2025 10:39:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E24448222A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Oct 2025 10:39:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id unz7508f41kY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Oct 2025 10:39:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AE9D982016
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE9D982016
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AE9D982016
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Oct 2025 10:39:38 +0000 (UTC)
X-CSE-ConnectionGUID: Q07q8dROQNmZ3pHIR+5IaQ==
X-CSE-MsgGUID: +kYceyiyQXK3RcT50xT9KA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="67793075"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="67793075"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 03:39:38 -0700
X-CSE-ConnectionGUID: R67JyesKQQ2ZABMeZnFqyg==
X-CSE-MsgGUID: T9JrhWQNTPigj5mGaAP9Jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="185579601"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 03:39:37 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 03:39:36 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 30 Oct 2025 03:39:36 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.60) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 03:39:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=menZNFtfYjsApvrwi/fmUDba/D9w2NmLe9G4tMe1tlXlCoKFPSXDRmp9DpXs1fSYV51R0Z2Bx8g8+MgaO0NJ9Y8PAgA7E17UEJWj4ia6L8gNXoBcIpxw66jPJvfdaPgIMJczJeSoSBXcOMNFPbiNIMQevwoXv5MZY1ct5zYUDzqEq//btmSF2fZNncM3/rLVVnu21htyVtWKF0Sq3qV7oCJz68fdwhIPcmDlmBU1VvJeVywRMsuXxCbLD2ja5wk8HiBYLmqA2yz1Z4DJLzaDL6bGXARzBfkV/KVpdOn2n7q6hd8bu3Fb9LMJHyWkst7RaKV2vTcA2UL15DCcZglCmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=czEW/QTGlic+LSLBHgAhgjhksEGYrd4CIgAQ2J8fBjY=;
 b=UF/PqgUb0yBrxgCkahiVit9N/ODLTDqF5KwTjeYcqqYkSJuOIrb0uimpEkexQ8lIMi750rxNMxrnRFU0HsoDZp03BPD6c//+34bVBZUx3SaOGf9XeWSfqp6wj1tn91y7qElkzpYTW47VMsJpP8J1O9rKB7EmWlAsd+8FK8Zu3MXQZg5YYoCCYV1g+eQE4mdqYg0znAGLv+TTOqCp/pJ0ZnaSFXujbrDrhJK4r3wL/d4f7+UjQOaxiE8pW2WeCuys7h+7d5MQ2wVNoh0k34DbRHwsoTG3MhMM5jGwTy7yPCOfr4ug9OuL0/ae7W9J+T5fq8zDQqeS3RNMGsqVSufkfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by PH7PR11MB7516.namprd11.prod.outlook.com (2603:10b6:510:275::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.13; Thu, 30 Oct
 2025 10:39:34 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%6]) with mapi id 15.20.9275.013; Thu, 30 Oct 2025
 10:39:34 +0000
Message-ID: <621665db-e881-4adc-8caa-9275a4ed7a50@intel.com>
Date: Thu, 30 Oct 2025 11:39:30 +0100
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <aleksander.lobakin@intel.com>, <jacob.e.keller@intel.com>, "Aleksandr
 Loktionov" <aleksandr.loktionov@intel.com>
References: <20251030083053.2166525-1-michal.swiatkowski@linux.intel.com>
 <370cf4f0-c0a8-480a-939d-33c75961e587@molgen.mpg.de>
 <aQMxvzYqJkwNBYf0@mev-dev.igk.intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <aQMxvzYqJkwNBYf0@mev-dev.igk.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU2PR04CA0072.eurprd04.prod.outlook.com
 (2603:10a6:10:232::17) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|PH7PR11MB7516:EE_
X-MS-Office365-Filtering-Correlation-Id: 89e22e78-230c-4cc9-eeb4-08de17a09dd9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NWRRSkEwSzVaaVpXa1U2MlFqUHZ0VlJ0dU15dHBGeXQ5SnpXdWZ3TGhZZkoz?=
 =?utf-8?B?bjlzM3I5aXhnYlhaUUYyUEsxVE5XcVJPNU9OMXFxRXpDdXlFVmdRMjZ5UkRs?=
 =?utf-8?B?TFdyT3JDWDBzUGpYRVl6NnBZckFVTjRMTUo5eFpmZE8wUkdTVGNIdkNsM1V6?=
 =?utf-8?B?K05GNG1FTWtPZ2I3Q25ra3diRVd5VnhNVmtaSFlxNFU3ZlJBM290MDVZNXZ6?=
 =?utf-8?B?VjNWZnFCSEJGbGZLNVgrMUNVQUVFeXRvaHp5V3AzcEMyTDlidjVERzFXbWd4?=
 =?utf-8?B?ZXNFYXk5RFFaTldJQXVTaTZVUVFhd0NscE1pQUxPNlBlVllVS29XU0FhcmEw?=
 =?utf-8?B?ZlFBYjZxRVBIOEt6cXF6Tk83MU1LVUJFMEVZdmhJTVBpcXlnNkJZYVBCdFUv?=
 =?utf-8?B?WDlnOE8zUUZqRlFSb2RyQ0ZkZlNpRWxPZmhEUG9YYTZFdlhKNG9qcVd6TTRM?=
 =?utf-8?B?blRWZEJ2RTA0aW1qWmJBbXlINmRaejU3a21pS1RiUFdqSzk5elVOclVmZnhs?=
 =?utf-8?B?eFJRSUlvWXNGVmwrN2txcWxmU0ZUM1BQQXpYSnNjK1NkUHJEbVlHZC9CbFZU?=
 =?utf-8?B?TUdRRUZBQXVMbk1vbk44cngxdW4vTjk5bUNhd1pGZEdFb0xMNlR2TUJjRlVH?=
 =?utf-8?B?aHhZaGRvQTRTL01HZUszSzdQYkV5Vyt3UGFrdzRhcEk1UzlQemtmMGl1WWZ1?=
 =?utf-8?B?Z2hjb0RmVG5DbXJwSVJTaXpPSEt6VFNLU0VlaStmbnc3aWd4bXUwU04wd253?=
 =?utf-8?B?OG56VG1ZU2RDcG0rNEtLRGcrS2E4a0MyQm9xNjg1a0RsWEVuWjhlRjlYOGhr?=
 =?utf-8?B?ZDZ3bWZrRVM1R0srUFlQZVJLcis2ZmU5eEM4eithRkI5enl1ZEVuRDFGdk5p?=
 =?utf-8?B?NVhUaHZpSHZHVlM0VytXK2tWd29BRldGRmIwd0tpQU5ERjVadmp3VXR3bFlU?=
 =?utf-8?B?c0k1MGxpTkFZOHVPRTdLTWhBc3BIN2kweWM5bVVMZE5MS2F0bTZpM2FZWUt1?=
 =?utf-8?B?RnZ3SEdjR1NZK1V1VmpKNXlNeHRxcDdHNDRvRlgxR21yc01kMGdud3dENjJv?=
 =?utf-8?B?MGN5cS9tVXJDeE5lelNUV1dwa01EdTBraUgxOHBheUJSczI3Yis3K2YwYi9C?=
 =?utf-8?B?UXA2NzNWYlhCdEhqSHhQR2cwdEM3ZDF2amNKbkNodW5tUllmd0YvN3hSNWla?=
 =?utf-8?B?TkVPak9qdlRldEovaktScEZxTFFSSW1RcDhWYWNEN1Y4cUlZczU3aWRtblFy?=
 =?utf-8?B?UjcrbU8rUytkWUhrbUMxakFZYmFQTW50M2Y2ZXNQYlFVcHZ1MDhvV1Rydlkw?=
 =?utf-8?B?V3hpOHl0THhxOVBzaUlzRDVKT2tDR2gwcUhsUFdaNm5DL2pLaUUvZHdWTmsw?=
 =?utf-8?B?WHZLMEpqNWJ0L09KSkhWUXIyaGFDR2k0Szdya3RhMW12YTBDUXJFL2VKUjBy?=
 =?utf-8?B?UjJ0S21WQlNWVUlBaktQbmRWR3hjam5RV2xRMlpVNFFzd05MS1Z0c0g3YlA4?=
 =?utf-8?B?aEFRelREeTdIdmZZN3czTFVnSkhMTlc5WHZEbTVwVzlQN202RHhYdlhwZmtt?=
 =?utf-8?B?dnJiYjVocVNKcHI3N1pCTlMxN1NwaEw4aytEZDdhQkJxMWxHcG00Y0hCbUc0?=
 =?utf-8?B?SnlGeVdEdzdTSWFKei9ENERjV2h1emZoVm9CODNtUDB4RUptY1FQYVhhVjNh?=
 =?utf-8?B?NmFUUGo4bTZDekpWQit1ajdVUVdWR01WNFZkTDIrSjJsOTdITXRDeUR5UXRE?=
 =?utf-8?B?azBxRDRBNEJyajNaUC9jY1k4RWIxRVVoYXYzOWNydWtnRk5uQStlVVJiQklp?=
 =?utf-8?B?bnpVY2pqNFpNTzZtdTdLL1pYdDZNcFVQZWZUK3Q5ZFZiL2dOdXZmd0FWcTRt?=
 =?utf-8?B?bVNKQVpmU0VnOEE5QnE4Y2RuUGVmMDgvd2FuV1RXMENwTitqQ0hsOVRSZmR2?=
 =?utf-8?Q?ELNnko+2SxpM2QSJ6PTmYs8uKHAGNaH9?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MmpkQnFLNXo0V3Q3eDArMWJuYmt0OHNaT3ZKcFBWMWdkeEhwdWdMMmZqWS9Z?=
 =?utf-8?B?V2xwK0wzUFBvWFREaktaUUxRMXV3Rmk3cnhNeGNZWThVSUlLanBKdHY2dllp?=
 =?utf-8?B?bnZXNGZOUTNxcGVRVzh6UjFjY0dSY1JiTkY3enptMExlU2FBYW5IRmNPbnJq?=
 =?utf-8?B?SG5kejY2dHArSGN0dnZETzJrOTlkb2ZKRXZRdnBQVU80NTQ4QWhPcUlDcEl2?=
 =?utf-8?B?TE5jQS8waVRsZXJnWDF1Q0lvMHg0TTJ1YmYxNmhMVERDMkN1SHg1VWxHcWFa?=
 =?utf-8?B?ckVMTTRrcFNkU3VNZ1MzVU5ENDVoSXBpZDlSVTZ6Qmt0Snl5NnhKMHdrb1Bt?=
 =?utf-8?B?VFdEYXk5ZUl2OEFJRFlDQ09IZCtEeWxycTVWUFVRdXVzV1BpcGtDcVpndjl2?=
 =?utf-8?B?bU9QTEc0bGhKTkl3VlRtZFFSamNNc012NEhMQ3BncFZMMElLRlVHaWJYNUpk?=
 =?utf-8?B?VWlqSEZ2ZlpmOUNKQmQyYmJEN2pwUEYxc3AxNnJhQTVJc1RCcjFBNEE1K0s5?=
 =?utf-8?B?amdjME5GR3dtaW1mdTh3VmtHMThnRW84QUZiSE5hSXpiS1YrdDVGUUhiYTZz?=
 =?utf-8?B?RExMSjdia3J6cy9kL2Z4SkJ5ZG01LzBQWmJvRzNYYzVZSUs5L0lHU1dpbC9w?=
 =?utf-8?B?MFJHdi9wSzhKMlV1MkNlYk02dXBZalRMTkxGZmk4RklhNE1CTzgrNXMzelVv?=
 =?utf-8?B?cHRhUmtHRmdLYUZVdzJvdWxkaE41Qml6UTFpdjFVSEd4TTBUdU5uV3kreWIx?=
 =?utf-8?B?Y211RGsxa2ZPMlZCZ1hnN0JFN3pwbDJkelU2eUpzSDl3dUpISDJqc3YxU3pr?=
 =?utf-8?B?NFBZcmZzTEhsOGt4Z082RFYwcldGbCtpdE9ZM21UaFF4YmVtOUkvbUhZNU9Q?=
 =?utf-8?B?bEFBVFFLeWlXSERURDhjT0prR3JCYTJVaTdaRHRUUWJrZVFMenNSVkdlTUFS?=
 =?utf-8?B?cy9sZTFtMkRGWUlVR3NyODJTTTVvVmNSendGNjhtUVQ4L3J6M2xueXY3Y0lt?=
 =?utf-8?B?S0dlcHVHVXFNamlVUkVjZnJqcTVLaFBuRmVvcmN3UlQxaG0yc0FoWFhsem5C?=
 =?utf-8?B?dUpzN3JNZlp3TGFGRUtmS0hyTFpmRXFjKzhMTEx3aEVkdW0rWGl4WTJqS3FR?=
 =?utf-8?B?TVJqT2RkOFMzaFkyeFczVFVJdGNYUHd5R1Y2aVRmYk1FSmUxbGF0YjBUeisv?=
 =?utf-8?B?M3JkOHNoMG9HaERWZEE4VjR6cUtkS3hQTTBxVmhGRUozZmU1dnZsdkhMcXFX?=
 =?utf-8?B?NmNqUmFNM0tIcHJkU1NheHUwMzRYMWNpL1lLQll6bzk3YkN0VVdaUUZyc3Bn?=
 =?utf-8?B?UjdxNExkbUExOXF0US9oTE5nRmdlLysvODZwQWthNGJBdU1JUUtyTXcrRlU4?=
 =?utf-8?B?T2p1ei9aem5Sd2RoaExtZ3N4YXN0cUUyL21VTVRPR2dqTW9FOUpWWGxISjUr?=
 =?utf-8?B?bmpaczh0M3VvcEE0S1B6ajBTTGRUaUplV0t4YnVtTktlMHcxTFY3S0tnMFpo?=
 =?utf-8?B?MkIyZG1BWU53a1RRZlhYSmsxU24yZEVDSENUelEwN1NrVk9MVWdMc3NaUU81?=
 =?utf-8?B?YnRSS1hWY3VGZ2V5WVVuVUdtRW02RGVSc3BEU3QxeVllWXdJWHNOTlhnS3VM?=
 =?utf-8?B?Q3lKemF6cDlWdHNudXRQTnJqaUx3RW9JaSt2V1IzUms0K25DUlZzZzZmUHFo?=
 =?utf-8?B?UUROaXNNNkhHVXovNFBydFYrQWlLN0d6bGMyZzRtTlQwTlgzcFF5cWVFWkEz?=
 =?utf-8?B?RnczSFdDNnkwTkkzbG40VmJxUXVjSGF4QjFUaStPS2dMbEZVUXl6dExKWnlS?=
 =?utf-8?B?V0FQS1lBNjRmcXdKQjRZNW9iQjJTSVdUM3BUWDdYL1U5RnVVdUo3T2Rnbm84?=
 =?utf-8?B?Z1NFZyswTHJ3WjhiWGxjNHd3YzBTa0hoQWR1bHdvTVE2c0dPWVFMbWpkR0pG?=
 =?utf-8?B?NnlsTDlXbnBYcjhuVXErQkxma1hrclhDU3lCalBNVnBoK0JtbFNCRlNEVHRM?=
 =?utf-8?B?OUFaWXZHYmdvZmVxSW10dmRRUHI5Vy9kZzc1SVNoL3ZLOHZXcFNrMzRDcTFq?=
 =?utf-8?B?bDQ1MGlzYm9iLzdwTmRlZGZrWjhLcmVIemhTdldFOVpQMXlSRFZvUk5maFRJ?=
 =?utf-8?B?QVVISDZzZnVoNlNFQWpWTkVVcVBoTWdNN25HRHhtNGRJbkNtSWw2Nlg2TTZx?=
 =?utf-8?B?VVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 89e22e78-230c-4cc9-eeb4-08de17a09dd9
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2025 10:39:34.6134 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QlLRRH5Bsgd2ouhBJy9hvS0PsxLn/gMRWfvFsNLuoCoC82t/vebKczCNt4dgeOZcejmAYIMg2YdH8TPgIaOH2pzk9HCe6z5Riqy5leoADag=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7516
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761820779; x=1793356779;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bInHWfFpe6LGuA30upDsP0rNppxTexeaRrsrokwCGVQ=;
 b=Rkwi8xfttbvrJEoHYmtYPL4mH6H3XHMcKKJzZctzVNFm0K8JV1e4MjGN
 CKsZI35TivBfG1mh8tH7YCosjwaP2JC9531HQ6Wl0PuORL3w9EYDIcbc9
 vRriCDjvLvhLsQNLqoJnAO32EShMDex+Kb1lAzW1Rk/kt/vGNUBh4D7cb
 tb7u6tAKl3T5zpVHEWJVVnxyUUAx03zvE9eWkoBg1H3OkANU/wT6SPuq9
 w2eXIkFgpl+ERzKuu+PltzxkDVd5mZXfAI/T6qDJYUq/Y5jwsyc/V/mIo
 HedKUkIugI+ihvFoG4qJi+DEiTVe4FVHtqzql/IN0jQOODluV/V75EdAX
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Rkwi8xft
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: use
 netif_get_num_default_rss_queues()
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

On 10/30/25 10:37, Michal Swiatkowski wrote:
> On Thu, Oct 30, 2025 at 10:10:32AM +0100, Paul Menzel wrote:
>> Dear Michal,
>>
>>
>> Thank you for your patch. For the summary, I’d add:
>>
>> ice: Use netif_get_num_default_rss_queues() to decrease queue number

I would instead just say:
ice: cap the default number of queues to 64

as this is exactly what happens. Then next paragraph could be:
Use netif_get_num_default_rss_queues() as a better base (instead of
the number of CPU cores), but still cap it to 64 to avoid excess IRQs
assigned to PF (what would leave, in some cases, nothing for VFs).

sorry for such late nitpicks
and, see below too

>>
>> Am 30.10.25 um 09:30 schrieb Michal Swiatkowski:
>>> On some high-core systems (like AMD EPYC Bergamo, Intel Clearwater
>>> Forest) loading ice driver with default values can lead to queue/irq
>>> exhaustion. It will result in no additional resources for SR-IOV.
>>
>> Could you please elaborate how to make the queue/irq exhaustion visible?
>>
> 
> What do you mean? On high core system, lets say num_online_cpus()
> returns 288, on 8 ports card we have online 256 irqs per eqch PF (2k in
> total). Driver will load with the 256 queues (and irqs) on each PF.
> Any VFs creation command will fail due to no free irqs available.

this clearly means this is a -net material,
even if this commit will be rather unpleasant for backports to stable

> (echo X > /sys/class/net/ethX/device/sriov_numvfs)
> 
>>> In most cases there is no performance reason for more than half
>>> num_cpus(). Limit the default value to it using generic
>>> netif_get_num_default_rss_queues().
>>>
>>> Still, using ethtool the number of queues can be changed up to
>>> num_online_cpus(). It can be done by calling:
>>> $ethtool -L ethX combined $(nproc)
>>>
>>> This change affects only the default queue amount.
>>
>> How would you judge the regression potential, that means for people where
>> the defaults work good enough, and the queue number is reduced now?
>>
> 
> You can take a look into commit that introduce /2 change in
> netif_get_num_default_rss_queues() [1]. There is a good justification
> for such situation. In short, heaving physical core number is just a
> wasting of CPU resources.
> 
> [1] https://lore.kernel.org/netdev/20220315091832.13873-1-ihuguet@redhat.com/
> 
[...]
