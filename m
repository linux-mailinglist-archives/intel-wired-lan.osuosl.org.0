Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC2A9B54F8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Oct 2024 22:22:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C1C1A81257;
	Tue, 29 Oct 2024 21:22:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xBxjlbnANd4I; Tue, 29 Oct 2024 21:22:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5DDC881252
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730236922;
	bh=6+ZKsFB3k1Hkpq/Y/q7dCA0NQmxejL/zOiCJX7vMfNQ=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pA3NHG1PmffFVNigTILEBLqNVgRhNCBkV4PuNT6ZWN4b2L5jMlCblJQgRW0d8e9e4
	 kdzf+PArbWPeNyTOsfxrgK3Vbka0YTVXAuJ691wArjcrsaLlb6d5b7fQk7qdHmY4eh
	 j+ASMgw2w3qyA4nTNa5otsLTCt7ZK9UGbOfeGZNNk31xhOOhqzsdKZYnl1DXOtwuwc
	 ew/Eyh/JJYa6Qx58ZBEBjOScN57Qv0hDbd3nGLAEXfHbmXwDiDbleGUR/1kgtVuGNR
	 TAWaQNPDM0wWutxVkDzzSoUlXodnN6Gge8mHp8AfD92QPow1OX5GU8BDfmdVe0gifQ
	 NBYgwzBShir7Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5DDC881252;
	Tue, 29 Oct 2024 21:22:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id DFCEB4EC0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 21:22:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CDBC560707
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 21:22:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GCsCyzf4R0pQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Oct 2024 21:22:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 23E6860856
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 23E6860856
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 23E6860856
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 21:21:59 +0000 (UTC)
X-CSE-ConnectionGUID: K3UzH8O7R4yDzGZanbFLGA==
X-CSE-MsgGUID: YaLw4QmeT4y6NiyTUWclvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="52467079"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="52467079"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 14:22:00 -0700
X-CSE-ConnectionGUID: 5WnureeoTqSuq+v5X258qw==
X-CSE-MsgGUID: O23HXus/Toq/Ho5UqWASpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="86843313"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 14:21:59 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 14:21:59 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 14:21:59 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 14:21:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h36kyEsg11i/V5vkjy9Gt43Ln6Qv6EG81lyTW1JLVweyGwKb31IdEucy24B+LVysnZ1L4TrFb4WWSdfPq3cqRrNG/jNHxcKwghf9Ky9Hkl3/St1v9mV1CGJBrX/H5NLhjnCCemvEvXNDqqvpnqhgm9dBspAQwWNNxLiK8nxKnhPehKfFnHuL9ya5q/2Pet9+qa5kYFPXS1FIPi5FZ4xgY4wroYlNyXg6ea7sXQTiIddLs6zhalFQtkKxSwIcGqIEIkzvSlfwzZtBLfv/PIMIU/6DYStq5o2LlPwRuzRcUDW8fVz3xffizb2UuSmmEvNGArs4d3oDL2E6iS0J5yfp+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6+ZKsFB3k1Hkpq/Y/q7dCA0NQmxejL/zOiCJX7vMfNQ=;
 b=qti0mA4ao0NzdPpcZ0tl52qs79lkdB54BJx8HcP6nhdH7KuDiupwZDc63mRCXJuzwJA9Mk380kw49sm2xLGqRLMsd1QUd7U+WCp+2vv/FYzUQO1Hipspnu6D2ie8FOAAjv/Nb9kay25oUORQ4sBUxCjb+QGhTKV4XX1jv2POWwbtdvXQ+UPsxFLM8eW7fO8WodjZ0siphi5y/l0a27ECpqBA4LpxXxYuSWjc+AVhfQ05j5AqxamgDfSeMn2zoDMNrQuL5ydxPVfd6Lb2pKNzEwkSgC+rk3lAAWSKS7wkzjBZydiB27eXUe8yKC1wGDgAYjuDik3io/1wjZESSGdz1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by SA1PR11MB8327.namprd11.prod.outlook.com (2603:10b6:806:378::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.21; Tue, 29 Oct
 2024 21:21:54 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%7]) with mapi id 15.20.8093.024; Tue, 29 Oct 2024
 21:21:54 +0000
Message-ID: <9c396e60-99b3-45be-a147-e1bf6c561183@intel.com>
Date: Tue, 29 Oct 2024 14:21:51 -0700
User-Agent: Mozilla Thunderbird
To: Chris H <christopher.s.hall@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <david.zage@intel.com>, <vinicius.gomes@intel.com>,
 <netdev@vger.kernel.org>, <rodrigo.cadore@l-acoustics.com>,
 <vinschen@redhat.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>
References: <20241023023040.111429-1-christopher.s.hall@intel.com>
 <20241023023040.111429-2-christopher.s.hall@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20241023023040.111429-2-christopher.s.hall@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0008.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::13) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|SA1PR11MB8327:EE_
X-MS-Office365-Filtering-Correlation-Id: f585ab87-7e61-4a3f-d134-08dcf85fb64c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cjZMR2gvUXRVSHp3bFlHc0pwYWE1SkppNHNFWGFRZE15cjJMc2F6eFpEWkpB?=
 =?utf-8?B?YUw4bjZRdnRINGxSb21HaFpGQkNUQ1dGS2FVeEFMWnRuTWZibFJJZk1EWGc0?=
 =?utf-8?B?OVovRVBjYzhGQVJpTzI3Wk5KNkQ0cndxQUp1ZFBCMUQzczlIc2NFZ1NLUk5V?=
 =?utf-8?B?cjhxcjlVSHB1ZVl5UktKdnVubXVtNzF5ZXpjR1FoM09Cc0wvQ0FjWkJ2T3Vj?=
 =?utf-8?B?bEpDQzJ4V1phOHJMakprTmkxVmNZUUtELzF4dnNHM2x2NEhzcHcvNTBBTXRP?=
 =?utf-8?B?UEhpUUE3TTRIblAxZWN1UFJYN1JteThySmV3aXJ4cW1BRmJQemtkNjhJMTVs?=
 =?utf-8?B?QXJVdGhCRXp6WVpINE5ZaGpnbUxhNWRjZmpwbWptYUJhT3VncGFlcnBEZFlx?=
 =?utf-8?B?QUlkaC9QTmJNZ0M5ZmdDY01vL2lDNWdFNWpObzJKTXZ0MWlFU0dFSWw3ZTl5?=
 =?utf-8?B?UDlFN29wSi9nMVRqVDRVeW9vL1NRRHU4ZnRRN1lNVWJ6a0M5VVBnaEdtSDNW?=
 =?utf-8?B?djRUbTRDbFV3ZjF6a3pVbHdXMEpTQ1RlTHlTTkljb2VkbjVtcjY2T3pIMkZP?=
 =?utf-8?B?S0NIcTRJdFVrOFc0VnM4cDBTcXluUFdxTVlPZzluWGJMZ0UrL3pwdDlsUmp6?=
 =?utf-8?B?Z2NubGk2WHFyMysrczluaEI5RVQzT3E5R0ZIZE5pTThQcTNwREVxbjV1cFRx?=
 =?utf-8?B?cnIvYTVkaGlaRm5ibGM1dXM1MnhWVnBsSW84aXVPQnJCK0JRVDNmYmlxOVAr?=
 =?utf-8?B?ZzJZdDZHOU94cG5qa1lBbE5vSDg4dkJoV0RaWW1hNmxNbG9xUkpUZjhzYnQw?=
 =?utf-8?B?ZEhtbzZvMkY5aFU3N0NtZ2cxbGl0bzZ2SGpRdWRCMDNJNlNCYWpCUGNWZzZr?=
 =?utf-8?B?N2VNc1hmWFR1SlB5SGdFWGNpeEtuVDArYlR0UDlwckhjekxMRjNYc1krdDFD?=
 =?utf-8?B?MlNJZHFwem9OTDYvLzFuaDNMN2krTDhRcm1KcmhVcTQ3NWZ6dGRBQ2Qra1Qy?=
 =?utf-8?B?Y1lBZTdMMURXcWpKeTlTbGR0cU9kT3hHZmV3ZXhVVHhPeGdGMTUvWDI5R2Ft?=
 =?utf-8?B?TUtpM3BzTWdTTVRNMFFkc3hGNzc4NGUvcUU4UTJqamhzZ2VySkh3cE9sdFdM?=
 =?utf-8?B?dTZxa1JxTjhYV1Q3OFI1RkI4RGF1aUxyZy9VSThDeUs5N3ZzYXZhTCtEekVw?=
 =?utf-8?B?eVIrYXlROXpBVEZzV0Q0bmJTV1M3UjlOUzVpQ3ZLN0FSMGYvVTh2bFJwTitQ?=
 =?utf-8?B?YWRCcUNEN1FNa252VEhFNzRJQXQwVGVxRjZmaHNjMGRMUE9ROEhhUTVaRE1i?=
 =?utf-8?B?K2FNbzBBbEJLZEtlRVk0QTZUSGNnZ01pOVM0cTBhR1B0MHZvWmdrVERvRWFr?=
 =?utf-8?B?U0dVNmo3Q3JRays4Njk0Wkg5RGdKMVRtNjFSSFlHUTFIODJVUlJYekJpL3Fl?=
 =?utf-8?B?eHZxQ09EclVUbzlyNVhpcCtuMXVIRW1wTlZMM01KVElkcTdGdXRYNFp3MXFK?=
 =?utf-8?B?L3R4QlpJTi9WckhKNUxWOHF6cTdvQ0YrMzkzL0Z2aWg3UzZYRi92MEREbnJs?=
 =?utf-8?B?cjhFemRJRFI0dFpXNm1mM3FsRUxlTzQyM1RmODc2aFFDOWVWbTg0TWFuQ3NR?=
 =?utf-8?B?Zy9xR0dxZ2hGV3kvRDk5U3FiQURDTGVHTjlCMjlRbGtGUjNBbFJmeFNxeGJt?=
 =?utf-8?B?SlFaN1kzSEltUjI1MkwzbitDNU93NFFQNXdONGVBcDVUay9SQk1VYjRabGRk?=
 =?utf-8?Q?UrpGeILwhoVeros2MiyHkeLOdo6sFBoc/k8mPxf?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WVB0NnFnQkVXbzFHc1dVNHpWWTNZV2ZzZkdwYTZLajdZN2xHOWRneE5lMTcx?=
 =?utf-8?B?UWs3ZzVtMXQza3dQU1NnYzRJakJ2STY5c3JqdlFRRW5zcUFtVVJ3VG9qVzlO?=
 =?utf-8?B?R1RibEZxQ3NWaTI2SmxXdkNxYnB3alo0a2RVWWYrK0xEdEwrZlJLZWVxQkh3?=
 =?utf-8?B?UHJEcjBlNWM0T09jZ0kwdmVuUC9uSXcyTUdnd2dqMkUyeENhVG1oR0ZXdmpZ?=
 =?utf-8?B?OHoyRlQ2M0pVSkpnbzFEVzU2MG1LY252QVYwODdUbkViL0JmTlVJWFV6MkZK?=
 =?utf-8?B?cXBKWlBQdjREUGQvSzJ6UUVlSmE1dFptV1lnNWFNdDBqcWdlSjBMUXZiSit0?=
 =?utf-8?B?UEx6RGZUSWU1M3dxdnZNMjJRbjVvZGlRdy9aQXcybkdMWndmUTVJU3NVUjhm?=
 =?utf-8?B?L21XbDlGYThudXBlMHZuSm1UdWJDRUFnSkpaaGliNnhLT05GTEhGVml0ajRS?=
 =?utf-8?B?c3pwaS9jRGl6QWFMMEF1MnhkV2xxbkhyaVJsRlIyNVJiMzlTN2VFeUlOSFhM?=
 =?utf-8?B?ajNKRDZSdzZtc29aWEhFdHdNSmt2K0JnaTFMaTdKalhmZEF6bEFGRWVNR0tD?=
 =?utf-8?B?ckd0YUdnWWtNQzB5dkJGRXRhbE5YUmdTK3F2NUJXUnVlM09IK3ZxdmI3eWdE?=
 =?utf-8?B?a0IrcmFGWG94MExtaW85a3ByUUFxTkU2c3ZuMnBSdjJIZ1NRak54ZjJxdnZP?=
 =?utf-8?B?a2h2TlJDOFNPa0hSUFp4cGhYTFA2dHRzbE5ZNm5ycnNzdWQxZWZ1QTZKNzFt?=
 =?utf-8?B?aVpJaDQrZi9IdUJ2R1lZWEpOZEJuRFhKZFZYQWFvcU1qRXgvOWczN1JueG9t?=
 =?utf-8?B?b3FJNHlDaW1vZ0NkSWdZckx1MVFtYlBSR29McFNQeFE2Tmc0Wnk3YXJTVGx0?=
 =?utf-8?B?dE9iUVVoRWZRZUQyVGxpc3g4SUJxTUJ1eTQvczROdVVnM3dKL0NwR1hXbXVC?=
 =?utf-8?B?aXphWGlXTVFCWFR4Wmc4dUIzMTkzbnJCWlJUTUZiUlZWaTY1K1BTRm83eUZZ?=
 =?utf-8?B?S3ZCeU9QS0kxQlA1aTQyd2NZdkZxRVQraU5zOEREU0FKUUlDNm9jLzZGT09I?=
 =?utf-8?B?WWdKT1BKbndMNlFkYWFQK0RmenVMcW5XL0RDdTFrNE1KNEg5ak14QlZQcUN6?=
 =?utf-8?B?aURRb3dXS2tMN2pqU1hobTdZL200SkZKM0l2azYxRkxQTUR5L1Fwblc2S0Vs?=
 =?utf-8?B?OFl2Ym11bGpmOGltOFVzeTZuK0IrODB2Y1dJUjBienM1MHVNSkRjbjJkMkRR?=
 =?utf-8?B?QTY0T1lQNHg5TDVGaThjRG83ZkhuOVNneWZtdjhFNDNjZThGMml0cHJ6cUp0?=
 =?utf-8?B?RXFqNEJ3S29ubTZjL3RVZTcwV1lKOGxzT1pJaHNwc0VwY0UwRkFORU9qd1RN?=
 =?utf-8?B?b25VMitNclFWOFlkRlRta21zaUw3UWxZb3RVdHZtN2pkY2haZDdxeGwrTnhi?=
 =?utf-8?B?ejRlSThHREtlalc5VFFwZTF3MXpUZGNmSCtuamZRZ0tiU3c4YjhOU2cxeWR1?=
 =?utf-8?B?a3RNWXAzUkhtV2dvSGpTbEIrS2ZsZHREdVhac1JDYnV1di9IS0dTbU9nQm5V?=
 =?utf-8?B?NjJTN1kzOFJ0VGRFVjZJREJlamx1OGFMeFN5RU9oTzBoWGlORzF2VDZRSlM1?=
 =?utf-8?B?TGY5ODR2WUE5SXRZK3NvUmw0UDVLd1V0dzJVcHVFT3l4MVh0bGZNUlE0aFA0?=
 =?utf-8?B?Rm1zR3lYUTZyMUVvaGtEcUdpakw3VE1hMmpIeXZTOWV5ejM4SXBlcGIwSC9k?=
 =?utf-8?B?RVduS24xV0VNek1JYXVCemFEd0RNSGg3Q3V5YXZiVFg5Q0c0QXJXeW9XaUFO?=
 =?utf-8?B?UFgxUXNhRy9PdXR2UXpvdFRnOHlUWWNpUnJsQW5CeEhBT0l2Mkk2bUFYVzh4?=
 =?utf-8?B?eFJmaS83VmtsRk95aVJxOFo5WGdoZlJMRHl1eHJZaFJBUmp4bWh2REZHUFZT?=
 =?utf-8?B?Y3V2VGZ3eFp4bUtvMWsrUVRKd0NONjc5Tkhwd09UVXFYRjN2L1UyWWxtRWI4?=
 =?utf-8?B?dDNhZUUzR09vMEs1WVVYSm5MTXdCdHNRWEV4VzV5ZGhMSEJhd0RPZGVibFFj?=
 =?utf-8?B?RVM0WDdVNmJWTFFibldidzAvbDllVmV1KzdMU0lYbmx0R2ZYZDB0MmNuRWN5?=
 =?utf-8?B?QlcvQ1ZBeDNnS215RFphVC9ndEVpem9CRUt5SmFkc2U0WXpMa1I4ZkUvUzhW?=
 =?utf-8?B?QUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f585ab87-7e61-4a3f-d134-08dcf85fb64c
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2024 21:21:54.7079 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bDCuGmJxiMmI8SV011qKlvaj3DpV2ExkR+AvtP2c0gZDZDIK3DOvfCEI7JdPgbFqmu22+jt0cRnlXIpOWKRI8M3sqQgM0G9CL6ufQdB+SuM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8327
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730236921; x=1761772921;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Yem5OJZyXWnK8QwZedgj8ZoLu5UQExm0kFL6CtZwACg=;
 b=YjzU1UWsimu07cUiK9j5VBu0ZOxD9nNpEku49CsaNuDDoRCpIcA3qy2T
 yZb3vXtNeT8KDCUDgJrjPUNLjcoNG2y2G931MVCEJW44CdVE1yqNDkm7M
 oAQ06QGhJxW++yO5bWDBZhZT086wgTi8XzCnF7a4qdZY+YbCi/QE1kUfI
 aUNMeTYFHLMmVUmKVEa90zsDY3623ZCLQ6W8fOCFdy4SqScNOb5BkNt4C
 sohE8x0zv83FuS4DT1pdSvy1s2CjnyGg9j6QwUD1319XwqB1nn88JD5Mu
 9ekbs8aytnD/4s2nTQdZeNDLYuvOWL434hWIlCHfLVofuNSaVsT9bT6aq
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YjzU1UWs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/4] igc: Ensure the PTM
 cycle is reliably triggered
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



On 10/22/2024 7:30 PM, Chris H wrote:

...

>   static int igc_phc_get_syncdevicetime(ktime_t *device,
>   				      struct system_counterval_t *system,
>   				      void *ctx)
>   {
> -	u32 stat, t2_curr_h, t2_curr_l, ctrl;
> +	u32 stat, t2_curr_h, t2_curr_l;

This needs to move a couple of lines down now for RCT.

Thanks,
Tony

>   	struct igc_adapter *adapter = ctx;
>   	struct igc_hw *hw = &adapter->hw;
>   	int err, count = 100;


