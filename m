Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJHJDqh51mnxFggAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 17:52:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 08ACA3BE841
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 17:52:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 92E2582232;
	Wed,  8 Apr 2026 15:52:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8I800ctk9_Lq; Wed,  8 Apr 2026 15:52:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0CC2781E2B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775663525;
	bh=pquVnS023314jPqFo89Yij01yZIGO+wqF+MmlvjmRnA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=efLGbvROc3oQZSnDayg5LC5MXI4D5LO+0HU2SyB6lVZbd46s+rTqyTPu8pJfsOgMt
	 Tx97L6GLZEuykEu+ezy9IJwr7W8Flvn13epUL4QPwU72ovuFTpO4Qz1smlrv0BYqAe
	 VnTV/lY/5wfy2wnAdflO8Z5uZsFVpp24pNMFBvETX8ns/3wQnBTYIhPmXsFBu8zaXt
	 HFEcF4MjYql5d7n2/kWtzWz5nSm6/vsCd1ZZA7JoeOd+xOLD0VNdlwq9NAgHYD+L6o
	 WNH3nyd71vYUFNxFnY3BCZ15y5YI42BFnmHh9DmMPDC2edu41ymQx5W8IXlwG49FHH
	 Q6mGbWBPLrfaw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0CC2781E2B;
	Wed,  8 Apr 2026 15:52:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 147A6237
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 15:52:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F3B4A606E1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 15:52:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kuvlsHF0yPQr for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 15:52:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 38635605C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38635605C9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 38635605C9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 15:52:02 +0000 (UTC)
X-CSE-ConnectionGUID: 997AjtFBTYKgncpICn7j8g==
X-CSE-MsgGUID: Iv0HI5nURKOtnoaTNLT75w==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="94233502"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="94233502"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 08:52:01 -0700
X-CSE-ConnectionGUID: VEOlrW6XRcat0zGDP5M+2A==
X-CSE-MsgGUID: XO+qJKelS3u1MV6cgjT2Ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="258938860"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 08:52:01 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 08:52:00 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 8 Apr 2026 08:52:00 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.0) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 08:52:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SqelObQUMQk5t71vNnvR6ryTFjVOzLC7W/IAvqYhVDnxXZdfhm5GRKlxDNSv0NM4FL49HjtpSoe3k6G+LZKMZUrmRT3Fq1WDilre2iNr7dtvvbbHs0Y16MgSekn73lXwEgtVWmU67dydHTJ8yasyFcauYzA55VKWW7ImDo/39aW8QXAb3ORzZqoVkCw95Ke4IwbtOiIak83qEII3WG0k4retypapnimk+iR8W8hzlf9uvJTTgCypouHFm5U7y03IhYIaD3dFYbjqRdt0BizticRWgsjCs3mLE5RKOAliS+fAvPPo3PhP25cl0rwWRBVjL6tRwJtzcfK0+rQYMykNBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pquVnS023314jPqFo89Yij01yZIGO+wqF+MmlvjmRnA=;
 b=IdIESCv/FzpqckH2niB98jEZ+VMoM0At6RfFki0exTyeDL28SSu3lAj46xmHkPmBc1GxosEWcZxm15PunqSATX8+4rlZgiWYqpJ16Ps9CSaMB0vAMayOmApvU1NSKC16N7oClr1bgGmalJKLmknY8QKZxg4HVfM3JQ33vFezNk1I9hoXCOBOPqP4qUh2fQGwbVNfmiO9ljMNGmV6dpBpcrNNIFbOaiRhYOFu2C+yHHVObTrPGWQZNJUv88B9LhlFpd5cdhUNlvOeaxZNbHtpx3v2/wXe7DRYE7Z9ZUBe0OeRce5QLJXBOuR36YtvvmLTN7MYoTPxAmVKNwgmV3wUAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 PH7PR11MB7549.namprd11.prod.outlook.com (2603:10b6:510:27b::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Wed, 8 Apr
 2026 15:51:56 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9769.020; Wed, 8 Apr 2026
 15:51:56 +0000
Message-ID: <d969d975-76d9-44a8-813e-01cabd984d04@intel.com>
Date: Wed, 8 Apr 2026 08:51:54 -0700
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <anthony.l.nguyen@intel.com>,
 <netdev@vger.kernel.org>, Simon Horman <horms@kernel.org>
References: <20260408083521.1620447-1-aleksandr.loktionov@intel.com>
 <5496af54-1bfa-4ecd-9565-b87a9df81277@molgen.mpg.de>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <5496af54-1bfa-4ecd-9565-b87a9df81277@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0084.namprd03.prod.outlook.com
 (2603:10b6:303:b6::29) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|PH7PR11MB7549:EE_
X-MS-Office365-Filtering-Correlation-Id: 284eceb8-7208-400e-c7f7-08de9586c2dc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: 45oxUJ19Ca3BGj72nIrPJ+m0YBrsRTCsbX1GUqDhzdB03j5vINueuPZ1DzKQaDNOkww/tKIsiVTp8pbUoBTJInuzFYx4fEkKx5vbBdDgkYMNUaxBeOLEgXH4FiZhXVC5NywL6jt2Ovf2WtC5zuql9raG1yBe+XvQe0FgITkGvi7/UgtVbrGVyJAsVs6fJc6vUSEbW40EWGufBcl+T7mPOToFHhhyQitJfdKmfVQuJ34su6P1XG5VQM0w+BtFWd9OXZ/0cEUpz3kQQSfuhnp2Kk2EB76JbhuUnzclEpFRrdmABpSOeQQNo6ru7rMBRFzo82KMnnnofgfWPfJ70kH39flJNhYDhRXrr0CRZVMazd6R4n7v37RpFJSnOCmM2ZE7/xLzqX/KwE+kEv0G1B6gr38BfJLZKWqqkTP4gGNyCzsKyy9sbL4Fm6xrr24rpMenCX5SNGPCe4xSgWcSrk5/ldk41742Nm4hTHONYBXaPDzYGj6V+PChTAJB+YEmg31mM3/sVf7ycMUu5NExNClkYGO2rK4WN9pnA9WDSUq9X/sN4Iid4BCYU2mKIVM3AQAaDu4B7DyCYZGzL6vuXUTv/jjX1moWXA67Cswj5W5j8OetdfC1ATrPqoR2kaz9KctgJ8rjUKL76VDZASNXd1HP4cPLjYkrJMOPUqC9yGgAzkuXZCyAccV40/p7VkqSLPTmTiY6wJbL1W9c4z0XeeGGnszY9wIEJD28HEwuMOJ3/BE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V0NBekQvd2xnM1lKMDBuenhpMm4zWlAxMUVyMDRyT0VHRFIwa0pLM2x0a09n?=
 =?utf-8?B?bEJ4cDVESzJib0M5MlVFWlZBcXpOTWNNYVlFNGt6RnhndWNpdGVuU2NyRnE0?=
 =?utf-8?B?UEIyYUhvTytkSS9kdGhYMjVYTElWNHgrMHAyanljRUdGSG1IYUdsT1NYejVj?=
 =?utf-8?B?Z1pJRWRmblI1RzdxN3lmZk9sdFhOdEgxSm1uZTg1VTBaM2lqbzkzOXl1a1dS?=
 =?utf-8?B?T3Rwd05KTWhBNWw4SGo0MnYrUXdwbk5yQ1B2VGlmQTVjK3Q2cmZza1dNR0xX?=
 =?utf-8?B?N3J4WkxSeWRNK3MzeXFFUks0U3RudUtNOUdrQUlETVpUSHJRQmtyUHBOY25G?=
 =?utf-8?B?Q0tFalR6TmhjWXdwU2FwYXptMUZ5aVI3c1VURytqekZid3M2amQrbnYvb3Bm?=
 =?utf-8?B?dmIwYTR2YjV5cHFvY0hDWFhGY2c2WkN0UUpuMHlxTXduUkFCYXp1SC9OTEtk?=
 =?utf-8?B?S0VkUktIZ2dHT3BqN0dkQmszMjFlc3dMRVIrNVArWTVhcEc5cVRCMitrMWd3?=
 =?utf-8?B?RVBEcEM2STNnMFhSanVBL1V6V1QxU3RCdEQyc3dYMkdyMk5ENFBEN1BXTlZX?=
 =?utf-8?B?czBqWXRtV3VSU1VPTDMrWGFKZ3FzN0kvWnVUVVZqRVpFSVppSGVnQUtOU0tX?=
 =?utf-8?B?Zkd1ZzBMTlFHenBUeWZ1NC8vZTNUSE4vUGpxS0F4YThuU3M5VEpJOWw3VHBh?=
 =?utf-8?B?TnpQOENvZWlwYkZBSzBDNzY1cjMwVDNwUmNEZE1KdFFzelE3OFVyekdoZ25q?=
 =?utf-8?B?SW54eWY2L0Q3ZlRsRnZJaDM5Mm0xSnlQMExZVDlXOWZzSlUwZ1hVSitLOVFz?=
 =?utf-8?B?UHFySzVCcHlDZWFvdXdpc2ZRQ1dwekhWODJoWVVOVVJBQUhONDJEYmYyMlor?=
 =?utf-8?B?b3huTXI1cHYzSks5N0RYZGdENjFGbnQzQWE4cnpuaDN1M0pLQnRCTjMrcmRr?=
 =?utf-8?B?WTBZMDJweGplTTZFVDAzTndSL1dKRlBWaFNIZ0syZGlaWXVaTzJpMmY5b2pJ?=
 =?utf-8?B?SWhZMER0MEhEUnkwOTE1dVR0RzJSeTdtWUtLcUdRVytyY1F4MXgyVzJyY1lt?=
 =?utf-8?B?bVBBQTMwSERNNWRMczdNMENrRTR5L0p5ZzdBaTBoMURoWDJQbHVqTUNQQ2ZE?=
 =?utf-8?B?ME5FdFJBNGoyanpMT253WlFqczVZYnFpN0w1Q2RKWEFrYTVKQk9UYm9sTkRK?=
 =?utf-8?B?N1JVTFdrVGltSW4wRms0REtXU25PVXNLUDluMDVJSENmWUJhQWdxTTRSQVh4?=
 =?utf-8?B?RTBZeVJzODMwMUphcm05dlc2d1FxaDZrVWRocVZRV2MrdWFPdG14SDJkL2pX?=
 =?utf-8?B?RXZvWnRzMzlBUmFncGpSemxiMGV6ZG4xZ2pvZGtkM1BWU1RFeHJ5WXZFb2R5?=
 =?utf-8?B?SlBKWjJ4QktVUXpCRXh6NkF5M2lRYTRmWEZ1VDgvdTA0SU9QcHBuWExaQUZF?=
 =?utf-8?B?cHQyTE82T0hIdmZodXB2MGpRZ0R4QkkwWHhUbzRZYmorSjVUbzJDZHpzdWRy?=
 =?utf-8?B?WG1xZHlON2FwaEl2aWVrbitqd1cxelRLZk85MjNNVXNKejhIdDcxNHhmbDln?=
 =?utf-8?B?cXVoVGt5Y0syNktPTXRSM1ZnRGNCd2lKbTI5Q1FVMjJaOUJGeEoxaDJZMUtK?=
 =?utf-8?B?SnFCTytPZ2tyZ2hGaWd2YkhLbFJTT3VPTWZHQUdFNVk0UmRuRXdTM2RJam5Y?=
 =?utf-8?B?cGVDN0d4clovRnR4UVN2TEMxREJ2Nng4ZlkwWnBWUjJwYUNYT0c2dFZuRUlv?=
 =?utf-8?B?bTZiNkh6cHd5RkhHZkFkZzArOGFGeFB0QWFZUm5FTGE1eDZCSmsvQ0NMeDAw?=
 =?utf-8?B?NzJjNTJYMHVteUE4MlBKRDN5aGZUMkl4ZzZpMUY3NEFBQ3c3SzRLSnp1YWlI?=
 =?utf-8?B?cmZjc1VEMWQzSjNhcXZYOWwwOVJFeGU1UWNhWG4wVFBiRGlMWUhPVkkva290?=
 =?utf-8?B?eThQdVBWQyt2RVFMMUgrUGt3OE5mQkRESkdoYnl0UGQ3N1JGUnRMT3hndWI0?=
 =?utf-8?B?c1g4Z0N1TU1lczlwT2hEOTJyU2dyVWwrbDhIN0dnSjZ5emhXTit5RWxSWnZ6?=
 =?utf-8?B?bFBBcG5oQXM4VWRXeFg1VnQ0SHMxV1FWdlc3QVBqM2ZXUXZPU0phaWp0V2M0?=
 =?utf-8?B?eXlpN3FDb3BpZmJHYkhsY0xPMEJnVUI0RnQyWWFhcGQwK3JBQTZacm1TS3hq?=
 =?utf-8?B?alplZW1zWEZrb3ROMmtHaklJYlNMaU5UeDFmLy9HWUI5TGQxMlVxZ0M1OThZ?=
 =?utf-8?B?czZ2N3d4MW1XVHBFbXE1eFRIdk9WNDhLZVB1RHpLZGtUSFNNelNOZDZ1RUVy?=
 =?utf-8?B?M3FXZnZnamN1a0lmdDFnazV1M0pWYjIyNW40S0tLbFUvODdFUnFUZz09?=
X-Exchange-RoutingPolicyChecked: E60dB8it6cPV0UZ1kWGenoGzRl+Im/gpuwLqo8IFzI3K/mCcZAdKbO3rGC03b6nESRglEw53cd9v2wsWgRDcOx+nGb4Q54d8mhqSHpQzikHj3x7O7dn4UN3IugmVt9y8MtlEjQnu0STmGttPnKxu8m0IxhCDl4t+/3a0zV5g2xyUaW9CDtQKWq4skb5vHVJhIBd08zAO0xXG4pvibta2yp+UBc0LljvDp222wWcPQmZuBImpoJljlYdqVtpwQxiek3nHLkY7WshHjDg9JQVQh/MePjlY3q2VcY1QjT1nDEFzls3Ip5+QIQDfs3IC8MkIbEtMkExcpAHLorh8EsNX7A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 284eceb8-7208-400e-c7f7-08de9586c2dc
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 15:51:56.2132 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lhkpT7k9jcTmFOqvOfWK0i5aa2cSDHOHe7Ymn3axtwdawOViFbxXAjAlSTLNoYIKUAPMowNdNFmnxGVl2R33wBvH/m7VGS0qhrL41/zsFfo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7549
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775663523; x=1807199523;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uW4MKvxbh8f+eXNglfmC7Q0OPTLNf8tYm8CR0Wzyk58=;
 b=Ry0kQoia9HlbKlKHuN+cS5I97wg4ih9WptgGAaHBMeMBMps764O8ECAl
 2s6ASjG2MNjx7omN9KyS7D0uu4xvE807ecE2nIFQqMx36WGzd/dsayKxm
 Ti0kUB2fjA/CLDl6G/2HOV9q0brCzlL5WymGZNUUHBH2KEKpnOi+iMnqF
 iHsNq+U/+0cBMWjffpN+l/8diZ+aOSRs5NmLFFA3hzEujRo/om/lYckXi
 fbxW7JnxwBk/gnbr9T1bhSGaGOsRIoOa1bRnm5qLFYLYgPA0Ucgt8gfxc
 YfTXMPr/IgKSD8ociwKmvIYyHZT8AJ+xbL68uHX2c6RF4tPTZh5LglMGi
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ry0kQoia
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] igb: use ktime_get_real
 helpers in igb_ptp_reset()
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pmenzel@molgen.mpg.de,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:horms@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Queue-Id: 08ACA3BE841
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/8/2026 4:57 AM, Paul Menzel wrote:
> Dear Aleksandr,
> 
> 
> Thank you for your patch.
> 
> Am 08.04.26 um 10:35 schrieb Aleksandr Loktionov:
>> Replace ktime_to_ns(ktime_get_real()) with the direct equivalent
>> ktime_get_real_ns() and ktime_to_timespec64(ktime_get_real()) with
>> ktime_get_real_ts64() in igb_ptp_reset().  Using the combined helpers
>> avoids the unnecessary intermediate ktime_t variable and makes the
>> intent clearer.
> 
> No intermediate variable is removed in the diff below. What am I missing?
> 

The commit message is seems clear to me:

ktime_get_real() returns the current time as a ktime_t, and this is then
converted into a timepsec64 with ktime_to_timespec64.

The ktime_get_real_ts64() is implemented to generate the current time as
a timespec64 directly, avoiding the ktime_t passed between
ktime_get_real() and ktime_to_timespec64.

Thanks,
Jake

>> Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
>> Suggested-by: Simon Horman <horms@kernel.org>
>> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> ---
>>   drivers/net/ethernet/intel/igb/igb_ptp.c | 5 +++--
>>   1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/
>> ethernet/intel/igb/igb_ptp.c
>> index bd85d02..638d824 100644
>> --- a/drivers/net/ethernet/intel/igb/igb_ptp.c
>> +++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
>> @@ -1500,12 +1500,13 @@ void igb_ptp_reset(struct igb_adapter *adapter)
>>         /* Re-initialize the timer. */
>>       if ((hw->mac.type == e1000_i210) || (hw->mac.type == e1000_i211)) {
>> -        struct timespec64 ts = ktime_to_timespec64(ktime_get_real());
>> +        struct timespec64 ts;
>>   +        ktime_get_real_ts64(&ts);
>>           igb_ptp_write_i210(adapter, &ts);
>>       } else {
>>           timecounter_init(&adapter->tc, &adapter->cc,
>> -                 ktime_to_ns(ktime_get_real()));
>> +                 ktime_get_real_ns());
>>       }
>>   out:
>>       spin_unlock_irqrestore(&adapter->tmreg_lock, flags);
> 
> With the commit message clarified, feel free to add:
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> 
> 
> Kind regards,
> 
> Paul

