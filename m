Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wNgGBgQigmmQPgMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 17:27:48 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B01DBF28
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 17:27:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E145B40B7D;
	Tue,  3 Feb 2026 16:27:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 22Ayp2ckBpL5; Tue,  3 Feb 2026 16:27:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 98DB340B01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770136064;
	bh=SvrN3LEYY3sOnytXH9k/iAzwDTrLJsj9igkwMlJh02Y=;
	h=Date:From:To:CC:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=U1pdm275UK8Qv148KQGTmhMyymiV5ajMtQFZdFFaaEAS5GqwWoqsPK1iKnfWmMWPc
	 rnedV5nWnxGXKd30nvdJflxXMAZt0U78qEZcM0WlJcxDgf1kJUonuWoFYZZsivlMgf
	 VAPWhHzlKv789RXs9ueX5JV6ui1wNpZhKy7DN0BvWuq031cPK5hRDyHmEi7cbz6EPY
	 T7RhAn+NFC+cWAcRbmxYeCKM7akzLdc4Ai9uFDif7MmNIPexUnU17ePwjagAMcKmAg
	 4TB7w1fB7jJZ2tndieMNbt446GPjF2Sb7ny12hAPCZiLwFtKAr/z8pqv309Y9K/j1F
	 Ou4DuhKUB0wpQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98DB340B01;
	Tue,  3 Feb 2026 16:27:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id F0E66F5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 12:35:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DB574813FC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 12:35:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0ZWGuORWsEmM for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Feb 2026 12:35:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=adrian.pielech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 02B27813D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02B27813D0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 02B27813D0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 12:35:20 +0000 (UTC)
X-CSE-ConnectionGUID: C9+oZYgyRXqJ6YHHiTkj0w==
X-CSE-MsgGUID: buwvX/vqTK+lh4naNq6zCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="70309026"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="70309026"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 04:35:20 -0800
X-CSE-ConnectionGUID: dZsCEzTNRM+G+Lmq4nHepg==
X-CSE-MsgGUID: SXA7Sn6bR7GO8Svu0hZAvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="209858725"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 04:35:20 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 04:35:19 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 3 Feb 2026 04:35:19 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.26) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 04:35:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DyFwZdyREw48JusS5C3/aXTKJfEAo+51DCmTLyL/8oa2xOMiUyBYyjZghQiK9FtsKEi8JC71kRSU+7IMAnHpNo6WighuZxY+xCsdXeSm70s13ice7mJ4wKuiCkxSBkSSkP7H7PePiIqWx3dpVrdpSnbn6z+p9TAlNJbQdsbaWEEZZQ6j9ZzLG5jxIo5jNYedmLM4q/b2Pje4YP5O8kcrVRencJ4Oq3Ja/qGJkxuwq6Mz87haGFA7qkCf24w/qpnV4mPdMxKGDzEPYPoWP3q+e8kMVFf0G5Clov00PT8yJYp38grJFNG40glhImEmBMHHSQsbK44b4M85RVSjoRIMFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SvrN3LEYY3sOnytXH9k/iAzwDTrLJsj9igkwMlJh02Y=;
 b=Ib5rNpuJsYI8lc+SotX3ZXm25OSMCDH7IZfWgc8+ZHt9UhnK1DpjNHBPFJYocRwnRVd2zTx33jWQ9jFwShr0wrjUOiKHqpfAKHEj56MpQyA08cgL8LsTlUK508nBuCZhofNTO4Jid9FnVI627RQGDU4aCQeRQKwHChM4sqjP3aUHJ6asdq1kwboIZ7jfFtWaZLX7sMrx8ZQzuBuAYLHmhhIj6G5ABYrxaqV0H2tcRPkzF0nLomKaTPyyjy6jl8absFhkLJFq5xqwWnocBKAAvbsKDSTPtQ6gGEYK3m/yfYXGhHinV8Gp6c6k7pTXl+mxxFuf0QxfiPI//J3cw1ENUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB7323.namprd11.prod.outlook.com (2603:10b6:610:152::6)
 by SN7PR11MB6897.namprd11.prod.outlook.com (2603:10b6:806:2a5::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Tue, 3 Feb
 2026 12:35:17 +0000
Received: from CH3PR11MB7323.namprd11.prod.outlook.com
 ([fe80::abb8:c470:36ca:e556]) by CH3PR11MB7323.namprd11.prod.outlook.com
 ([fe80::abb8:c470:36ca:e556%4]) with mapi id 15.20.9564.016; Tue, 3 Feb 2026
 12:35:17 +0000
Message-ID: <b5446385-1f51-4359-b484-6dfccb50dad0@intel.com>
Date: Tue, 3 Feb 2026 13:35:11 +0100
User-Agent: Mozilla Thunderbird
Content-Language: pl
From: "Pielech, Adrian" <adrian.pielech@intel.com>
To: <kuba@kernel.org>, <netdev@vger.kernel.org>
CC: <przemyslaw.kitszel@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <anthony.l.nguyen@intel.com>, <pabeni@redhat.com>, <davem@davemloft.net>,
 <edumazet@google.com>, <horms@kernel.org>, <andrew+netdev@lunn.ch>,
 <krzysztof.galazka@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0102CA0050.eurprd01.prod.exchangelabs.com
 (2603:10a6:803::27) To CH3PR11MB7323.namprd11.prod.outlook.com
 (2603:10b6:610:152::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB7323:EE_|SN7PR11MB6897:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d4735d6-60a9-46ba-f802-08de6320afb8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZXUvNUNzd2NXdVM4VWFWZFdmLzhpZXBvTmhkY0l6dm1XaFJlSnVuZG1mOHNT?=
 =?utf-8?B?ejJDdzJKWG5VY2pWNklDWUJISGdOZm9reU1ydzR2VjRyNGIycURPR3h6UXR2?=
 =?utf-8?B?djVQOTVYK3pDSllIb1hqempzaUUyMHptWEN0Ty82WkFzN1dUSHhvZDM2OFlM?=
 =?utf-8?B?aVh5ZTZpcElhQ2E2M1RjS1pCQW1WaldqWjAvbTFIQmRJL3JkY0JZZFpUNHZQ?=
 =?utf-8?B?ZzllSVMyK0lSQkRTZE1xM1BTdUh4Q3pxS25QOVdhMGl1Z0hiNzQ0dUl1MWJp?=
 =?utf-8?B?K0VDWG5qT0xXKzhYdG9tYUs5eUlBSTdodVQrSkNBOWpQTUJTRkp2KzNOdWZG?=
 =?utf-8?B?bmRxVHdJYldsR3liWUZIYmYxTnBqNHl3SGdNVUFwaFdheE0xTDFXWExubFVv?=
 =?utf-8?B?U0trSUZWWlRCZjZGa0VleG05M0pENlB5d2h6c1BiVzVIdHM1ZlpyVmd3T09C?=
 =?utf-8?B?ZG9OYnpKNkJlY1hmckp1b2FiVmlwZ09mQVlHYXkwakxhSkVjL0hjQytmVHpG?=
 =?utf-8?B?MTlSenJZeFN6WlpKeWYzMS84MGxXSVpVOHhvRDlSRWlNYTAxTGFNS2ZidGor?=
 =?utf-8?B?bmtkOTRqclFTRVhGYmh5YThEcitRM3QreXVURFAzK1hFR0FmeFIzWUNkdWE5?=
 =?utf-8?B?ZUZjcytWR0psL3AyWHgwTzFpTy9PSi9Fd2pFT1lzVFp1T2dsYVl6aGkydlBh?=
 =?utf-8?B?TG1SZ3VaRzRDZElOK3V0dlJLaGdSb3l3U1lqdXVoYmZrL1J1TnJIWXduV29o?=
 =?utf-8?B?dmd1TXl6SVJnNlJLb0tQdEFnSnExamhWc0NBVHNTZ2R0Z3JBdGYyL01lN29Y?=
 =?utf-8?B?d01mbkdqQ0t5RllKMTBMTFBqQXRKRnNvU1N1Z2tXakNXQnZHQlNlVzNuL09B?=
 =?utf-8?B?dE1vZG0wUGhVRlRReG9aS2dRcmZyMTBwdG4zdWVCM2Y0eUczZ0x2VzNSYk9V?=
 =?utf-8?B?d0d0ODdHczBzbGVsRWFNV016NTJlenE2M3lPVUN1cWdBVGVxRmVJTmRUQm1r?=
 =?utf-8?B?V3EzM2VJTzYwYzVVN2xGN0dDa095NnQ5VmRtcWs3OWlJZXo1RDZ6bWszMmxq?=
 =?utf-8?B?dGtqL1VoQnc2bXYvdmROTnhocDhOa2ZMazF3cEtobDNuR05HcWpKY2RPWFZ6?=
 =?utf-8?B?dGNWYmtPQ0F5ZXRRSVVmOFRpbnAwN2RWMlBGSGdTeTU3cXN2T3g4ZExFUmlX?=
 =?utf-8?B?d1VXNENRVC9Tbm1tQ0tSOFNxN3VMVXhVMkUyZmlPdXVtUVZsLzlwNWN4SDY3?=
 =?utf-8?B?cmowSHE1OGpCZ09rUjVJMTdsMWFYNHd1N25ZS21FVGkrSGdLVEx2SFJhYmE0?=
 =?utf-8?B?OTlrNDdGWXlpMWpLRGtyQ1VQWFJJcXhEdG1nZGNmV28wZ0lwczYxRXdiT2dG?=
 =?utf-8?B?WlZpVGhSdzBmeFBIbm5wL3ZMWExtYW04UjRibkFpd1Q1b0M5TFVrRS9mMlc1?=
 =?utf-8?B?OG12MithcnIyemFlcDh4eFJONWdReVM4R1AzSnJrelZNbVdBMzlobC9WVGI0?=
 =?utf-8?B?ZmVLL2s2TGJqelZBVUJ6VTZnMWg5WWlWWlliQzRFbzZEbU9sRkorK00xMU5l?=
 =?utf-8?B?R3N2N1l0TVNZRUNhNXR5OHNmNUNqSzA3LzdodFJwOVhrUndRWWZyUllBVWEw?=
 =?utf-8?B?bW1CU1EzeklRczcyQ0xtL2h4eXlBeEZzRnM0RlZxVXc2OExUcTczdmhvMkNT?=
 =?utf-8?B?bGtMZEFHTyswRkhWeHRqOTlWYzNaUU9NZzJRTTY5ZDBLbW9vN09zWFRKdFVv?=
 =?utf-8?B?bzBTM0ZxYUtpdHRSek5DM1RCUVpSUzF4ekk2OE14WVZmVk5qOGNtN1VlTkZh?=
 =?utf-8?B?bmJQbUZSN3BLb1VCL2xMTlJnRWFIZjRQYjZ0empPMFpMTVNPNlN1RWlxVXFG?=
 =?utf-8?B?cWx5dW1xYWU1K2lCSlAvOTRtcUFBWjhhelBEVGFwRlZVMkFabXF6NzdldkRN?=
 =?utf-8?B?b0pvTms4V1cyU2ZVL2Rxb01KK09VbjJiSnA3MDhKMHlPQ0lWZGdLbFlNVTVI?=
 =?utf-8?B?dTM2ajFJcy9DYy9kTStYSEFLVlZma2hiZEFkMkplczdhejhyU0tSQ1VDTWhq?=
 =?utf-8?Q?b6QXud?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB7323.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RHZIRzVPSzdVcjJoK0c2eS9MWjBPbkN3eExLUmYyNUtNOFVxenNlNWxjcG1P?=
 =?utf-8?B?RXZ0VzZLbmgyaHMyL2cvRkF6dWdFdVREUWRHa0R0bVdHSUJ4ci96Rlp5cFYx?=
 =?utf-8?B?UnZ2d0xTL3A2RTdHY2Y1NXRKalFIajdHL3dlbTFzMVJrTXRuc0xhR1MwYjgr?=
 =?utf-8?B?OGVZZmx3QjUvS0hWNFNkd3lYRmhBdHdhN1h1bURIUFBadDdLY2hEVXpNa2VF?=
 =?utf-8?B?UHVPZ2JJQ25TMm9DKytxY1VROEwvRjRvL3NLZm1zUG5LRjlOZlRwQzF6N2tr?=
 =?utf-8?B?czFiOHM2cWcvSmFpZkpCZit2V0xYMGMyaVJxOExxTEJPZFovNlNGamliRXht?=
 =?utf-8?B?MVVmRmZxMGVpTGlXcm5DblpaaHpsUzJpTVB6c3dUT1hKclF5U2UxUjVJVy9O?=
 =?utf-8?B?cHFYQUNWN2lhQWdIeWc3d3lLaCtGQTdLdyt5akxjOWw3RzZzelBZWEVZbG9K?=
 =?utf-8?B?YUpvVTlhTDJhSDVwNnFSa0RVYXZId0pBNldYdVVjL3I3Rlp3bFhxRFl4dUFD?=
 =?utf-8?B?cHV2MHd6NUhIY2RjaDBscjJKQU16SDluTEhyQ0xJYWdlVC9VMFZkaHIxZVg2?=
 =?utf-8?B?QllkTmR0bWQ1S1lPVXRUZTdMbFU1elYwSUlxSTdBb05ockNsU0RuS3N6SDY4?=
 =?utf-8?B?NnJhalIrRTZSOTdDQ20vSW8wdWpvd1g1K1FzSDYvVFlLNERhN1pIcng1eDRu?=
 =?utf-8?B?THYzVTBlbWZXQjVGWHJLYytQdUxaZ3kxZkgvVUtZMFNTYk1TRmhlZ1JwaExv?=
 =?utf-8?B?ZnBlZVMxZXp3SVY1akt2TUR2enJMbDBQWnR5MU1rT3F3bHdvK21TMFBsbFhH?=
 =?utf-8?B?c0FpNWtIQTIyOFk4d1NSZSt2MDdyS1krOHhwNVV2MXdMcXp0R0pwQUdIaUpo?=
 =?utf-8?B?Z09vRkpRK0h1cm1YUVc0ekF0VTZhY0hhRkpTV3BpUEJSalFlTkpxN2x3aHFU?=
 =?utf-8?B?VHNtRnBnZ2hqL1pNbEpmamFvaUo4Y1FHcVNCZlc2RTlCMFphK2tFVzNhWnhQ?=
 =?utf-8?B?d2UrdmM3NG9kUzM5SlVORVZBUlk3TFJLTlZRWVRINkFhZURuTzN0UVVJUmM3?=
 =?utf-8?B?MUZHZmVDcThjRFNEMVNZcWdxcXlEYW1xekl6Q083VHdNL242QVM1T0xCNm9L?=
 =?utf-8?B?emw0OFJJZG1zOXo0bys3alJMd0ZING8wR1J5YW9qaWhQdFJoZFJnWkJQRm1X?=
 =?utf-8?B?cXJUa1RnSTQ5Y1NLUGpBUTMyT2tGOW1Jb0p3bWNxVGc3Vkw5QXFwQUgxcjZT?=
 =?utf-8?B?aUcrcUVEdWg0ZWJ2KzVObVB1ajhwNHhZR2tqYnRqMkRPQVg3TzJCV3lTNXlw?=
 =?utf-8?B?V0Fja2swT29JN00rdVU3RXYrTEUwZUVtbEVXNFFoU3FLVy95SlBuMHJ1ZDdB?=
 =?utf-8?B?V29ET0swWnZ1VzFRUkFsUzl1VTVoVSt0NU00RDhtSnFtOEh5OVpJWGpMVllx?=
 =?utf-8?B?ZGZtRUdIWk1Hdmc3RXc3UHR0Q05rQ2s3U3k0NU1TRGhPUnJ6ZXV2NjY1OVI5?=
 =?utf-8?B?S3d0OFlFRkdyYUxOTWVBZHU0RVJZem9aajVUMmcwTjJWaUVQamhNZkVwZnNp?=
 =?utf-8?B?WFBGTkcxNUxqaFNUcTRZYTg4dWpaejd3dXljU3kyTy9jNEZ1dEVhK3lIM0RT?=
 =?utf-8?B?cS9PZi9MaUM1VTVXNEZYbEFOSmNsL1BsRVJhMEtpaklub1E2RWN6QUI5T3By?=
 =?utf-8?B?SUs4SmxGaFpLRFlTZTFaWm92MFI4N3VvbWppRzI3YUtqd1UxSmg4elJFZUlW?=
 =?utf-8?B?d2I5V2lubmwzSlg2dWkwMlJmaUZsa1FPVnlZakhYbVpNUjg3ZjB0dG5pYXJV?=
 =?utf-8?B?djFGRWtlUDBOZ3dGNlNHR0hxT3RUTmFiZmxpUDM4Ry82ZE1Ldi9ZWjVTWTF1?=
 =?utf-8?B?bWVJYTdoU1k2VEwrWkhlc1A1ZkEvOHQrMFVSU2UxK2ZMaXk5Kzk1RXN0Q25B?=
 =?utf-8?B?K01rZVQzNGpHYmczYzFrRU5YSER5MWxjTDlUcnJ0cVByRXFveEhMODdoeDRo?=
 =?utf-8?B?cDhCcUNGNFYrb1JOR0g5WkltTFVlVTBlZlZxMTNKYWx1TWkveEUxbWc0Ni9Q?=
 =?utf-8?B?V3dLbk1nTFFqbzRGdnlzbnY4dk5TMmN2MS9jRXNsdGZaeDg3TENRanVES2dE?=
 =?utf-8?B?eXhTKzE1Y1FoYTdleE44Rmd3clVwbFZzbExzb3pXZ2JMa29NK2FiT1hCd2Vq?=
 =?utf-8?B?eERXbFlYRzhyd0FKRTRXYWNWbUJHbktSbHUwWkRkWFlQTVJQZ2dLTlhoKzRl?=
 =?utf-8?B?T0REeEcrQkppS3Iza0VQa1gyNzk1N0hmK2hYWDVaVTFxbFJWeWp0ekFRVFk3?=
 =?utf-8?B?UFZGbENPY2NBTFdHSWd3MWZ3TEZsajlLNzlWby9PSXZXSTlVZjVCUT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d4735d6-60a9-46ba-f802-08de6320afb8
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB7323.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2026 12:35:17.4407 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OQGbWUiB4AaWGhCLU3jrYgxVg5bHbN14oyMJ3F7MtOTZQhxqYtDBXRuhBVaGZEAvX0IHyCoH2MU3Y3stMCoP7uYZuOkH3IpOitE26tb0DaA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6897
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Tue, 03 Feb 2026 16:27:42 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770122121; x=1801658121;
 h=message-id:date:from:subject:to:cc:
 content-transfer-encoding:mime-version;
 bh=SvrN3LEYY3sOnytXH9k/iAzwDTrLJsj9igkwMlJh02Y=;
 b=mJXbFJpn6cLAhnR8QruDhMMMU+s6jyJr7pT4ogzYyyclHayUfFgmeFas
 C2vLCDS7VN1nmmeNWoEyR3ispZ6lnKbWSlTpwLU1pkCPWOkcWeVkwQWwJ
 gWkbg0DbcPV36ZyeFXbPuE55yb86Hs5VWWmUy3xzjOupfAr7hLpoX6RDZ
 15WdSh5yr1IMmTVKmGnTqC+p8d09r1T4QmQRD0Qyvj18/wvbzXoN3Qh9V
 fEvXGc/4maIbnGtdaSn1nKpYsgPwdwJ/CgZmAByo8IzncUFyKVw/ncp0C
 uYoYijGH9c0LO2jyA6QN9BP5BKJeNkO0EcEZEhjdCuZesCr/1hNgbysnP
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mJXbFJpn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: [Intel-wired-lan] [ANN] intel's netdev-ci for i40e
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER(0.00)[adrian.pielech@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:edumazet@google.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:krzysztof.galazka@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[adrian.pielech@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	MIME_TRACE(0.00)[0:+]
X-Rspamd-Queue-Id: 69B01DBF28
X-Rspamd-Action: no action

Hi folks,

I'm pleased to announce that we have set up infrastructure for testing
netdev on our e700 NIC (i40e), which extends our current engagement with
e810 NICs(ice).

This work plugs into netdev-ci initiative by netdev maintainers to run
kselftests against current proposed net-next-hw branch on real hardware.

Our results are here:
https://netdev-ci-results.intel.com/i40e-results/results.json

Human friendly results browser:
https://netdev-ci-results.intel.com/results_browser/index.html?drv=i40e

Adrian
