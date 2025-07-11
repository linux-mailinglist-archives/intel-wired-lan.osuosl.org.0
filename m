Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 250AEB019AA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Jul 2025 12:25:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D063660E70;
	Fri, 11 Jul 2025 10:25:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PJLKUZc8WmMB; Fri, 11 Jul 2025 10:25:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9129F60E4F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752229549;
	bh=1fAH30Fp/+JsBwmGOEBTbEzLPjoea62SCCYjePulbuA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vjo9HXoWdUZ7XjfkExLX8fU9rGI/p+HqvlhDWpXzyP7EQBA9NBvIBc8GH0J/qoLjs
	 8huKlJcwKsctmaP+N+Uuqe6oXruErxNLSrhxCuW7/NHYzd5YGSphMTXML9ofaR8yff
	 /HJVkhzI0oWRo5j69MBP95pjid3JI/RFQlsWMdhGjwJAjcxlkXdoK7pcPAr3B/ULx7
	 5KOZ4uLo7RCP4rWjMoSte7KWzfX8+d/apx5Czp26VkpPwoW88HyoJjGqj22Q667JHl
	 jFA7bqamDlyobKCJdeKcR4uWqkMlBFtrZKOOiFh4zl5GSFVlFYxt4STlyqKHiqdUXc
	 iAdhSc2bqofRg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9129F60E4F;
	Fri, 11 Jul 2025 10:25:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7D58D1E1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 10:25:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6C18A403E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Jul 2025 10:25:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3GFX7dEIedU5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Jul 2025 10:25:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9BD2640266
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9BD2640266
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9BD2640266
 for <intel-wired-lan@osuosl.org>; Fri, 11 Jul 2025 10:25:46 +0000 (UTC)
X-CSE-ConnectionGUID: V/7FKomeTgOGVM83ZO5Z6w==
X-CSE-MsgGUID: FElINahvR2CChDcLLAkT8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="58189206"
X-IronPort-AV: E=Sophos;i="6.16,303,1744095600"; d="scan'208";a="58189206"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2025 03:25:45 -0700
X-CSE-ConnectionGUID: ySd1f9q6SCSIUW4opUnGBQ==
X-CSE-MsgGUID: tLlhwprjQ8CoyAstiW4f7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,303,1744095600"; d="scan'208";a="180036029"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2025 03:25:45 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 11 Jul 2025 03:25:44 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 11 Jul 2025 03:25:44 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.81)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 11 Jul 2025 03:25:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VJQnmQIkBYszo80a/CWPihNNltStbUmiVk6PoAtw8z8kgzLdM3BQFazaJ0DmuZS1Z+qb0vv6FP1NeclAQgK/nljjLwHAwpBsJMN/BfYxWrrxszp4NeaQ9tfLF5XOaammUAQXhiQqkaPrmcQuRifZouidu4F8y3ct1uK7kdLe3TKF3aXf6YJZajd3ozsPPkygKmN50Ax21firvj/WiLkLQ1Q0BhXRp010cTmAZt3NcgSrGEetjqA5OD704UcSj+VfJBilxlU4HA9cIsRr3biGQKnmtn+mJ8AUv8MwKXqaf+nfU14+rHgZptG5jF6pBHJIWmkrI+kKHabflJhX6hBDHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1fAH30Fp/+JsBwmGOEBTbEzLPjoea62SCCYjePulbuA=;
 b=ByjGXjMJe56NZq3nHuQLboLXB0HgVQAFYv7hYDSSx4W8H2uYmDkePhNicWl3loLsD4KHILUxebm1exPoLB+NndZ4MoX9dABHgt28MpHTplB1BdZ2NWFVrkqa8osOZEMmEOs3gAgVv72ihgXo+TnTGdMJYutgR9L2zQE2mEa3fjtkjhxAI12pb/MFH4IuCPqZF1QvV8UBPyjOc2SDri1Y5VBv8CDJv3I6/DDjez64gqhXRrPfN2bHnUAm7sFmiLmEUcbSbJ49Kq5lriWJq7ezQBucZCoLdqbRFqh5JqfhYAvVowQa/FNV7fS6ClwH7NNgiGP9Ep7E3wptua+sUGYONw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SA1PR11MB6662.namprd11.prod.outlook.com (2603:10b6:806:256::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.27; Fri, 11 Jul
 2025 10:25:13 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%4]) with mapi id 15.20.8901.024; Fri, 11 Jul 2025
 10:25:13 +0000
Message-ID: <f6027166-2ab1-4221-9636-7ed40f1865d3@intel.com>
Date: Fri, 11 Jul 2025 12:25:09 +0200
User-Agent: Mozilla Thunderbird
To: Malin Jonsson <malin.jonsson@est.tech>
CC: <yong.g.gu@ericsson.com>, <roland.kovacs@est.tech>,
 <intel-wired-lan@osuosl.org>
References: <20250711064746.649332-1-malin.jonsson@est.tech>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20250711064746.649332-1-malin.jonsson@est.tech>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DB9PR01CA0030.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:1d8::35) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SA1PR11MB6662:EE_
X-MS-Office365-Filtering-Correlation-Id: 8935174d-0819-4425-61b3-08ddc06538cb
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bG94TTJ0b1FtUlBOYUI5UUw5MHJzaTF6cWdXVUwxYTZaMWFpRGdQa1VTY3Np?=
 =?utf-8?B?MGxLQmZwUTZBTzRDcytqNG4xRkU2aXVKeEozb2ZhRnVWU3RWZjRPWGRXMzYx?=
 =?utf-8?B?L3ZmNmErSXRZZXo2ZG5pNzU3elE5dVFUMWkvMkcva1BpL3orMFNaNEs3clhz?=
 =?utf-8?B?c09CcHd6c3BlMWh0ZlFDRVRjUUZNalFlZFh2SkFSb0hoQnB2T21lZSt0S1Ba?=
 =?utf-8?B?K3N4UUNQRjZNczluUnUyNFRkaWlSVjV5dlY0NDQ3Rys5YlM4bE1TNzh3UHVa?=
 =?utf-8?B?YmpNa1huOVNhTGVjZHdwQVFHRmhadng2K2JrTi9hWGJ4TWQ5cnNsVis3YnBR?=
 =?utf-8?B?eW13LzlLaGpmVzZXUjVWNWtSWkpIWVRGZ3I1bGJDRjhCVUtWYWdtejRGNytY?=
 =?utf-8?B?Sm54UmY0NTRpTWNJTWpucFVsSDNYejVCMWp4QnpRdm5tMFlVTXZUZEU3a3p3?=
 =?utf-8?B?MEtLZDcwbHp5dkRWbHBTNEVwYzdvMGE1V2RUSHVsTDRVWXJVdjlPenRpSUFh?=
 =?utf-8?B?TFArZXowUkE3Vy9PdUU0VGFzTmxIazNIclRHQWlqVnNYN1VjdFVMdGprbG1m?=
 =?utf-8?B?dHdxbnkyMUJNT2ZCbUlBU05FZGNDRXg2dEh6STFSSE9vM2VtSDBKbC95SEEx?=
 =?utf-8?B?QVBLbHc3Uk9XWGtWb0xnZ05XZWErWm45ajJIMVFGVkhXSTdSSGdYS1pBMllB?=
 =?utf-8?B?WkQzZ0VneUhGdy9icC9TdlgwNE9WVUJsOFE3ZWsrd3BsbnEyRDlab1pOeUFq?=
 =?utf-8?B?WDBhYTRKQlVmaTVnN0srUHlJSUxTajFSbUw0c085VWZXSzdNNDY1djA0clhh?=
 =?utf-8?B?TTN1NDJwUSttSHF5MEovZjRzeG5nekNRZTV3SkliM3puMVpNeWxxbDBvZmJH?=
 =?utf-8?B?RWRRV1doUTVwOWEyYlAyd3BNdHpqUm9Eb0p6M1FNR3hJQkhDN2t3V2l2M3cy?=
 =?utf-8?B?RXNsbks3Q2V6b0JiZ3VUMThNcE9nRnRNTVVHekJ5TDNDbDVURnpvaGZCNEtl?=
 =?utf-8?B?L05LZFhHY1FNRUp5Tk9naEEyV01Wc0dIZExJMWhHaml1K0JMWlBXOUZMNmRB?=
 =?utf-8?B?czNJWklOSk94Mld0a2IxR09VWUNyVUdyMVpaaHBpUU9lcDIvc3pIb1RMOGti?=
 =?utf-8?B?MDBYR0NXREZLVkhsbWdibUpka2VUdkkzdlpVdDRLN2xDRFRGbVFHUlJyU0tq?=
 =?utf-8?B?OHpJOWc2cURZYytGalRaYkZTVU9lQVpsNkMyZ0hxdWc5ekFWdEtEeWNZTEIy?=
 =?utf-8?B?bWtlWkJ5YWtST3k3QWFkdDZ3WHltaUxLaEloOHl1QTJQeGQ1WDVVYXFoZ0U0?=
 =?utf-8?B?Vm5NNUhVUHFYNWtNT3k5UnNrVW1YYVhheHo3Nmc1ZUNoUnV6b1BqNXl5eUMr?=
 =?utf-8?B?Q3gzZXNXL1hNLzVkNis4WlNtYjRGT3JJbFZGTktTUXloZ3FIMHA2LzIxL2J4?=
 =?utf-8?B?QzBnNEZyT0ZBTWIwK3orYUxnenVtMDMzY2VZdCttaVJpVUxjUXZLY2lWYXNJ?=
 =?utf-8?B?ZUZPMnVjMjNoZWhSeXBsTnBiVGdDREtxNFc3VVg4a3Z4cnBveCtBd2I2cnRI?=
 =?utf-8?B?MFhVeStlbjZFaDdScFI4dWg0d1paREJTNXB6bEhWYmlGcFVkL3hsd3k0aW1C?=
 =?utf-8?B?TjZVTkpCZkxtY1lnam55YU1JUFNpcHgxaTlqVkMrRkhqY2RsSnZQSm1Pa2V3?=
 =?utf-8?B?OVVOa2tvYXJsdTV0RVVyWXVYYXc4T05EeHp2c3RyV21tYTRLMnFZM214MzZN?=
 =?utf-8?B?V2lna1V0OW9TU2k0SS84Nm81RERoUlM0SXAvS01ydmQrUHlIOTQxSkdsSUpw?=
 =?utf-8?B?eVUxM3F6QUtvM3VhakhNdTl0OXl4QTRRUTFUTG1GazBYR0xOYkZTOVBjUkJs?=
 =?utf-8?B?aW5wK1Z0NnV5WUdpK1JlYkkvMzkrMEFKYVB1ZWJCMjdOdmc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dS9tK2Iwd2NmMlFoQjJnUnFzZkMrWGp4M0U5VVZsQi93RndxY1VldnhUMVMx?=
 =?utf-8?B?M00zcGJoSi9LU09OZHdiM0dndzN2a2ozTGxEUnRqZ3grd3F6d1BlQ2dtOVlD?=
 =?utf-8?B?eGJLK2pSMlZSeElXdVMxK0ltUEtBQ3lia0lYUCtQY3VhS0w4TmhmY05YRXE5?=
 =?utf-8?B?dnpZZ3c1N2pFQVdNdHhyMjBvVTc5RVhodU81Y0R6dkhQMVpRaWdMWVVxT1hB?=
 =?utf-8?B?Sy91YmJiUVNOVDM5WlVZV01ZRks3b1dOMTZob1JKV3lmUTRFVVhyaGw3SjZ0?=
 =?utf-8?B?dkpxTDBUcUF5aHNMNndqZ21aK3RRN1NycU5jOE9xRkFpYTBOUWJJakUrSElx?=
 =?utf-8?B?REMwZ0lKMFlPSTBYdzVDcXpHeFlsQm5FZnJmaTNWWU80V2RwQ1J4aXR3YkVw?=
 =?utf-8?B?Mlo5c2RZR080Q3VLVm4zT2J0N25SeUJRcXpYRFlkaTJuekNKVnJZNWlxSW8v?=
 =?utf-8?B?eEMvUG1DRHFlR1hYR2FEUVNsWEl2VXJTSHZyQ2s3Q0Ntak95WVU5NHRqR2lv?=
 =?utf-8?B?b0xydVExUmNLY3RtYWVqQXFpbS9mbk5VRTluTHJyc1IreW81NEtpUVJJYzRU?=
 =?utf-8?B?VERIVWcxNWJxNE1RaVVpaFZUWXgxUGR1ZVBqQ00yS2Q3ZnZITGtpRUMyS3Bw?=
 =?utf-8?B?eWxIeUNMM1hucitqZ0NrcnZsbU05czRuaGNGQWhBME40RUNlUGxjMG85QTBT?=
 =?utf-8?B?SURSSzhYc3ZmS0JhV3czVmc3SnB3YzZBbzRCemNoeGo5ckhkeTVsYTFkN2lv?=
 =?utf-8?B?bUVsZlRCK2hWUEthRytQdm1WdlpQUXAxaG5hVTlZQUJTWldVcUZoVGk0OWcr?=
 =?utf-8?B?OHpXN3RoaUU5Z3FGNURxWTFGd1RJbncwSndmVVdXenREUG4zbC9BNUFzSDdM?=
 =?utf-8?B?SWppSVpEZ0oveE5SQUZ0dUJ1NVZRRU5GRFd4ZmpMdjg2REp4eWlwVjEybnpy?=
 =?utf-8?B?WFFpNDJFdVBGaW1SN3phbHc2Q3p3UGp3Q2NhdlNXcTJUN3FST3gxWlNrKzRX?=
 =?utf-8?B?M1pQOVNSK1U3S3VOTGpDSTA0NkgwVmh3b2ZicXdYMnZadElpNW04YnRYZHBy?=
 =?utf-8?B?ZGR4QW1ybVVXanBLUHhCcWJYcnFVeHVIbTE5azFjMjJYNCtvK2hNaC9YaVpp?=
 =?utf-8?B?SGpldWdEam80aTJaeGZocFhQY0NEYVJFNmZubGhIQU1sNjRCemRRdnJhYVZC?=
 =?utf-8?B?bUZ2K2JoaTQ0Myt0bUxmUVNXRnVDQVdySE9naHZIYjVDQ3lqSzJVckVINTVq?=
 =?utf-8?B?ODdoYXk2aEVERFNIS1JCYlorL2NCUW5IY0Fzdnh2YTZDaW5vSSs2VW5wNHBH?=
 =?utf-8?B?ZlJDV3BLcEdmaHlhc0ZIT1E2MStBbzJiVW1YcGxjdGg0QmYvU0J4QU00M0ZS?=
 =?utf-8?B?aVBoL2NCbGdidHJZYkdYYkJPbDFpeUZKOUc4OEZSRXRkSXIrbk56QjNtRFFO?=
 =?utf-8?B?Y3Z6bGkyZDM2N2huaG44OUo3UVJVdUxVRzZkZ0pJenZDT0tmU1NuWnZDZDB3?=
 =?utf-8?B?U0x6dHVyc3Y3MFlId29sU0hBRWtuNFpjRUc0YUpxOGU3bC9GaWR4UVBrZWxP?=
 =?utf-8?B?NThpOUY4amFlSWZoM0RNYkRKMG95eEFYeVZjc0NDNjBUTXdkcTFNUXJnSVpI?=
 =?utf-8?B?WDdNWWpxSENFeFZjT0xhY3hvZ3FkdlF3WEI1ZlY0WDJlT0lJYnJubWhlc0pN?=
 =?utf-8?B?b0hWZG5IeG5GRkI1RW9TbEhQbG9Ld0lvaUd6Vllib3BTQnBVc0xSSDdxQTdG?=
 =?utf-8?B?Z0VTZVViT3Mwbi9wcWRRbDJESG02QVFZUXBDOExVZWg2RHJtMnJLZlR6OWh3?=
 =?utf-8?B?VjBvOTF2UnRuRHlRMDJWSGFMelZiTFZTVitpWWlRUVlLS3RvUjJ4cEE0VnZG?=
 =?utf-8?B?WVJWK1dmYVVtZEgzUk9uVEU4M1FzYmVQUHBrck93WEorNDlPbEJ3YjgzcDdi?=
 =?utf-8?B?RWpnZWI2Wk95Zy94V1NFdzJySjk2cmwyM2pFVDZMN0hINnQ4bytLRFdEMSt0?=
 =?utf-8?B?YmRYUkNKSHF2dWlmaVlTMTkyMGdpNGhGYXVyL2RQa2o2MjBCNGpDN1ZSRlVI?=
 =?utf-8?B?TUY0SFkvbHFOajhTS3RSMWkxNE9Va0JtZ3ViTzRIUDlrY0lPalpUTlp6NDQ1?=
 =?utf-8?B?NHY2eXk5djBxMTk4NFpvZG94V3BPajlPT0gxVFRiRDJVSWphSERJVndTSEw4?=
 =?utf-8?B?MXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8935174d-0819-4425-61b3-08ddc06538cb
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2025 10:25:13.4885 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IBZBKR2+5o7SKttsuJ2MltVNFIdoi7rkaWgY8wbQKIqwXM/N3WlsxlmcarcRFiZLDJihT/uoJqe48iYJuViKaJK91u0l1QaR7axhL0s/uUY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6662
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752229546; x=1783765546;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xoMmt/NEQtS9/GyHTwR40K8wgKYe2KdMY/Hf7VzcEuw=;
 b=cjB0vX+vQrX/kYAsdZrsnV1J7k9MZRPPNvCi/VkWtfaCzKmhjzKjS5et
 5EkWtdye63OGZ1j1FRfeUeRujRWAuXXTA2ecD7ECBHmShAEOsRFwKIpxE
 ypa776l21BiItBdupcjOd8WVD8JbaR1YhvjjP6OxPcsfM7OSBwDABovsH
 W14HFLWop7MEG/5LbK12SCsh7ZLooSKM5H377bk0ZcC5kInBDhjOle3ba
 JbZ9Q5kth7qB5U9j/tzv2hiSPp/zpypMQxjeW5UfCRJf7o4K0JxOz2vX8
 KxLNBuh/GGfCUbNIZWHEqAYEd+7m+0rsAhGFxg4oqFO0P2B3d6nA1VPO6
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cjB0vX+v
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/1] idpf: Add missing dependencies
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

On 7/11/25 08:47, Malin Jonsson wrote:
> The idpf driver depends on both AUXILIARY_BUS and NET_DEVLINK, but
> they're not selected by the Kconfig. Let's fix this so idpf builds even
> with a stripped config.
> 
> Reported-by: Yong Gu <yong.g.gu@ericsson.com>
> Signed-off-by: Malin Jonsson <malin.jonsson@est.tech>

Thank you for the fix!
if you have a Link to the public report, please add it as a Closes: tag

Would be also great to add a Fixes: tag with the commit that introduces
the need for given dependency/ies
(there should be one tag only (per your commit), if both deps were
introduced by the very same pull request, just use the earlier commit)

> ---
>   drivers/net/ethernet/intel/idpf/Kconfig | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/Kconfig b/drivers/net/ethernet/intel/idpf/Kconfig
> index 1f893221e2c99..5c7ce626aae16 100644
> --- a/drivers/net/ethernet/intel/idpf/Kconfig
> +++ b/drivers/net/ethernet/intel/idpf/Kconfig
> @@ -8,6 +8,8 @@ config IDPF
>   	select LIBETH
>   	select LIBETH_CP
>   	select LIBETH_IRQ
> +	select AUXILIARY_BUS
> +	select NET_DEVLINK

looks good, but please notice that we keep this list sorted

>   	help
>   	  This driver supports Intel(R) Infrastructure Data Path Function
>   	  devices.



