Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A16DED04202
	for <lists+intel-wired-lan@lfdr.de>; Thu, 08 Jan 2026 17:02:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D9E5F60DCD;
	Thu,  8 Jan 2026 16:02:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N1Wamr_VnvEs; Thu,  8 Jan 2026 16:02:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA6A960DBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767888150;
	bh=qz4fBuO6GHWPgpM8P9UXBYDdHPShX018x5/fzQkZvBU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BRYH8/jmoEG/9KgS/Ly0fx+WAMSgt5r4ZDkBtzDjExVAfImJ1zO8VRzUwefq/t536
	 ZOfOW+Gz+KvHub+wfVNaAsRG+19wpBJDuZrEdIVgIhLagkktl1f2VhNCz8UGBWmfxY
	 bjguyELgZH8mrIKCBLYW09qKrAIRn6oImFY16qxB7z5hhWNjZtAILheZBLF/Gim43/
	 X866CmxWanvlaESLKL6WkUFIBKt48gMrVvJMwzMp3xp6XJ/BA8HcTrEvCopSOSl6M1
	 7tp8H8fRo9o4ypf29kQjwfQDLJEMBd2KwbxA1n1sY20XfeF+GLD0BZGA7jEaWEMhwx
	 VjAgS9Gu9UU6g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA6A960DBF;
	Thu,  8 Jan 2026 16:02:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B6052237
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 16:02:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A7F81405D1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 16:02:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7BuY2uk5QoYY for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jan 2026 16:02:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E078B40067
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E078B40067
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E078B40067
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 16:02:28 +0000 (UTC)
X-CSE-ConnectionGUID: Ulgf05ZdRXO/vKDr5noWBg==
X-CSE-MsgGUID: AECRGsfsTCmhGdo7GnPDJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="73125951"
X-IronPort-AV: E=Sophos;i="6.21,211,1763452800"; d="scan'208";a="73125951"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 08:02:21 -0800
X-CSE-ConnectionGUID: OgXjvgdrRnmt4zehBTK5Zg==
X-CSE-MsgGUID: GiLdqvH3QMeSe5ZeOwzYgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,211,1763452800"; d="scan'208";a="202855256"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 08:02:21 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 08:02:20 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 8 Jan 2026 08:02:20 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.7) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 08:02:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H14v3B5XnNWs1RMrsHcJDmK+gl8WlpFyhjB7M3qHqVeqKZ2NOlSworY19rN8mHgdXu/EC53yfM5VbZf+sil0VGxlP6luoXbQTPXNZXheWFAw84cIRgRlW0aUS8+T7Hebz7L5osh0ILeApV4nBjMZ647AvJKVde2erVRasD3tDmCqwrhDY2jlmaKtRAph0jGwDJd0dGqHKtDdUNLCcQDM48kZODbwxwJzOimExbY/Ov7eROW795K0tvT65EXMtV6A2gyjJnkE+zfUH4iGUrW8fOSdgjxXekXxp4WFp/DOsUQVhraaIEXl7NbfBQD7Qk0xqM8hOmpmDAvMbhbYYegA6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qz4fBuO6GHWPgpM8P9UXBYDdHPShX018x5/fzQkZvBU=;
 b=rqIiULLX+iIkN7aIt2z5ZDsKAECOSSlbV9RWmQoi4UTdN/Ml9Cue+ApHCBuwFt1kJ6Z09tbJbvdX3/8sPNLWp3fw0pXo4ECIrLRMgz2VYASmLkiZSkqVRz0vTHFOmQX1TmiI+yJw0fjn8XNHWWQP1AtJ3IbOVlcOwiO51xXLvVB9IREAnhIjCz3wNatuHAgD7PZYItu8J7IuPlBBr9wDqSgUsAq3eiNdW9/Vr8MPvjAIpsCCK5yEl7g5Z3F18+B+ApBUy9P0tu4U+gX7GJ1sG7D+vcYKNTjVUrmqy+nrDA6AuAF/Z4pHngmn2RVyD10r+WkUYCjFEzXrJNxqu+KrrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by IA0PR11MB7403.namprd11.prod.outlook.com (2603:10b6:208:431::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Thu, 8 Jan
 2026 16:02:15 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c%4]) with mapi id 15.20.9499.002; Thu, 8 Jan 2026
 16:02:15 +0000
Message-ID: <c65ca5b7-4121-41c4-a5cc-3df2644339a7@intel.com>
Date: Thu, 8 Jan 2026 16:59:06 +0100
User-Agent: Mozilla Thunderbird
To: Pavel Begunkov <asml.silence@gmail.com>
CC: Matthew Wilcox <willy@infradead.org>, Byungchul Park <byungchul@sk.com>,
 <netdev@vger.kernel.org>, <kuba@kernel.org>, <linux-kernel@vger.kernel.org>,
 <kernel_team@skhynix.com>, <harry.yoo@oracle.com>, <david@redhat.com>,
 <toke@redhat.com>, <almasrymina@google.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <pabeni@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20251216040723.10545-1-byungchul@sk.com>
 <aUDd9lLy76sBejrP@casper.infradead.org>
 <37b642bd-9f26-477e-9fca-1e3c931c0efb@gmail.com>
Content-Language: en-US
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <37b642bd-9f26-477e-9fca-1e3c931c0efb@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU6P191CA0016.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:540::10) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|IA0PR11MB7403:EE_
X-MS-Office365-Filtering-Correlation-Id: eff522b0-5f45-4d7b-6bb7-08de4ecf4a70
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|366016|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ajhSZ2tEU0F1L0RGQkpFV2orTEt3SndIZFhrRlgweXlwdTl4UDRzVVBxLzJU?=
 =?utf-8?B?cHZnT2FxK1dlbXN2bThGaGhNWGxXbWhQWmgzbVMzVjdHUGdnVmRSSG95L3B1?=
 =?utf-8?B?SU85M2pJWmZ4VThxTkJwMDEwLzc2YVVVL2JiZTNka1VoNUZIN2ZETDllT3Jq?=
 =?utf-8?B?bmJlalZmVm5xb3FUV0plNzN4b1RDN2dMU0R2M0RhOGVOdy9lS3AxcXlyZ2hp?=
 =?utf-8?B?UjBWbW5qcWtvb1NvcnpsYVliNkg2NWRoRjMvSzlEczI3cVR5ZnVBU3FSMVBr?=
 =?utf-8?B?TWRQcGh6N01mUWpkcWFlaTdFK2hEeGJhYWtuWHNsMmV6TGN6TDg4aFZ2K3dZ?=
 =?utf-8?B?Wkl1ZnplREZOakVpb0lhZ3VvNHRxOFAzb1VqNTBRK0gzSWMvRjFpRERuY2Ex?=
 =?utf-8?B?OW1GVVJSbk0ya1E1cm5meFhaTFNycnQzRjAzcFVlbUpvMElRS21DOWZDdjlZ?=
 =?utf-8?B?M1BmZHBuTm9RZlhUeFJiYzZPOXJ0dS9yS1pJb3R6dDd6UTF1Wk4zWGxmMVFN?=
 =?utf-8?B?d1ovWGNTR3I3NG4wQ2JQRjdwbWhybktqMERHL3B1L1BSS0xwZ2dSWU1EbDhi?=
 =?utf-8?B?Y2JxcTZVYlVrZ08rdFZlazI0VXJYd1FWQWZLSDV5VW5ZSTQ5S2t1OExHbXBI?=
 =?utf-8?B?YjR5endkTVdYTWlRWVNtUGY5d2ZVaDM2anhVdVlNVjlnZUszcGpMSW1rWXJj?=
 =?utf-8?B?dXZXeExubDdqSUdDVjlXVkZXNHRyTkt5bFZ2ZHRFRzZIUHBjK0RRMnovYStH?=
 =?utf-8?B?OU1ldTNUSndYVjhydzZFRk5FeHlCWGFiUXR6Yk9ZcEdmZzFER2pNdUlTa09G?=
 =?utf-8?B?Yk8xbnJmVlBNV2x2bXJiT1BZU1pCZ29nZkUwaFdjUlZDb1hOQ3ZTbTJPUnBO?=
 =?utf-8?B?SjJGMWRKOU1LN0k1dFM4UXgvREIybFh0NERVUmdrTUtIQnRlSStLazNXemtv?=
 =?utf-8?B?aVZDR1FVcHZmMEhSRHQ1S1VWUnllYksva1hmMXRMKzZLb3I2U1VacHlmUHlO?=
 =?utf-8?B?bG1mRmtqeFlxYzNNRnVCWm1Jcko2T25aOE1qWllJSVVueERyMGhKUkw2bTVS?=
 =?utf-8?B?dEhEYlk1WURjOHdKOEpFR0NmcU1ESUdLdWpaNmpVZS9IdHQ2TzFBZ3IvbGhy?=
 =?utf-8?B?a2crZWhqNWVRZENKWjRMdDIxT0FHb0NuckU3L2VLRncxUVdOQzZZaFhQeENL?=
 =?utf-8?B?NjRCNy9ITlp2bGY2K3h6a3dDUE9oanpsV1NvOFYyZEkwR2xhOFJheWFwNlVr?=
 =?utf-8?B?ODlBeWpIa0NXZjduR1BmRTdTa29SRTFtbFhhTHhVRXFDSEtnbGhaUWxMdXVy?=
 =?utf-8?B?OXY0WGE2aDIzLzBGNFZGd3VtQnNKem1oYzFFTVFBVmpWK0h6RkdzbTJlL284?=
 =?utf-8?B?RUhtOXJDVG5aQ1M4ZzdxOGVNK0pmaFg0MmVQWlkyNHFmbGQzRit1Y3Y2VEh5?=
 =?utf-8?B?d1M0T1lTU0V0dng4b2JJbHFHOERWR0VaVzFNbk9sVFRwYmpMdEVFbGd1aVZT?=
 =?utf-8?B?UnEyb1ZvV1hFZkNmcC84blFjUWJlSzJmeGtOVUdFSlUzM05SdzErUlVkTUkr?=
 =?utf-8?B?TWtqbWNzMWJJZy9kWFMrVTcrWkpYYWpHeUl0ckpBQ2o0djdtSmdUNnlwUjA0?=
 =?utf-8?B?WnZPR2Z6OHZKaWswSjd6ZHNOVDlCYzZkVE5lWU1Ra3dnbitMOW5MMWlBYjV2?=
 =?utf-8?B?K2g2NWEvSjhTdFltTnN1bHlmUzNvMm1VdUlESEl3N1h0L2hpSDM1SjlNMGd6?=
 =?utf-8?B?d1ZsbWtBZVFQUGp6WitML2FWaS8vUzgzc3krRXZuOURsNXNyMk1hTTQrd1Z1?=
 =?utf-8?B?QUxKOVFJNlk0clNWWHE2LytmNEpucnpZcEljS282MnFSZkhWQkJVOWZsTmlY?=
 =?utf-8?B?OUtYeVFOUXFqeEt4aUJ6OUFsRDhDRU1jVFhOTGRlOWxEYlZaN0N0ejBORjQv?=
 =?utf-8?Q?/AlhrHrb+f5Com18DJnSH0bMh0zl0MYb?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UEFMWk9zNklTYTl3YzVjNHcxN3NybGl4eXV1ZDhKQ1dOZlUyUlhyMFBPdGgw?=
 =?utf-8?B?ZGVKeUdNclZ1anpnQVI5WDg3Sk9Fek9oSzhydXczeFJiR2l3TUVCZlNsUU03?=
 =?utf-8?B?OXpsWENjaEJtTnlid2NicTNvSHJFRTRrMGFjRmJXMHBVUWNRZWRjK2Y4OCtD?=
 =?utf-8?B?MFhhV0o2RXA1ZnFUZGhYakpsQm9pMHY0c2dwbkZYTXl5OGY4KzhIU0JzTjBN?=
 =?utf-8?B?NzBueUhlZG5JaE9Yd0pwc0lKdVpsaE5JNWZuYnpTQ0lCb1Z2UU0rd1ZKd0Zh?=
 =?utf-8?B?U29CaVhhZnBqL3RkUUdLaVhiQm92dFVTbnJ4L3JhVmoyRUNlY1NrZ2VtZEo0?=
 =?utf-8?B?M3FKbW1tWkFSTllXNlluRnViYy9nZ1JNVndQVmxiR1FJT241Sy95SHJTbFNt?=
 =?utf-8?B?ZkUwVytaSmh2N3J0MnBjdDQyWXdEb09EVEw4SmpZOXUzNTFUTW5hU2NaeVdZ?=
 =?utf-8?B?enVrbGZjTnFZL3pORHovdjcvYURUajY0R0FjdnZFWjR2S054NmtvTVZFNlVm?=
 =?utf-8?B?TGtrenBuM1ZudXVWVm9KMzFoVEIrK3hWTExJQ0FOc3pNczNMcGpHUTIvcXFa?=
 =?utf-8?B?M2lNRTQyeSt0VTZZUGNDckpDd0VCdWYwUDduSlBxYytGdGhhek1IRlJKSWhT?=
 =?utf-8?B?V3BJY0p1ZWFjbkNyMCtsMDkzcVl2dThaT0RjYXJyZ05Dd05kM0NRRWJ3ZTh0?=
 =?utf-8?B?R00rQWhablo2YlRKUlFHYUphdlhVMStOSExMQWZTY0ZWQWUxVmJnMVF4N3VS?=
 =?utf-8?B?RnJuZ2E1QlFGNkNEc1ZtV21XZnV0eTMvUnNVeXhvS3pkZE9TMjB0YlBUN0hr?=
 =?utf-8?B?RUVhUVRlZmZMQkV5NTgvWjNlZG5SeGJFaDNUWnExb0ZBMDFJV3lrVnorV3Jk?=
 =?utf-8?B?V294cFBhU0JhaENjajdNczVLSEhDN2tBK2t4dGNBWlN2ZHk1U1NpdTMwMWM0?=
 =?utf-8?B?NU13TjdUcHlSWmVsZXArT1dMZFpIb3pxLzlKbndwMjUxTXZHaFhJREVBenI0?=
 =?utf-8?B?VE9sT0F1YjNSaHlOVy9Lei9YYW8zNWpMaTdlMUczQmFGQk5OZ3FMZ2gyS0hJ?=
 =?utf-8?B?Z01xNWJEY2NoejBRWjY5L1llMFlKMUZIRXZlWk1WMDRiWW9SUXZtTnNmdHY2?=
 =?utf-8?B?cUQ0UkFEbzlYVGR4LytPaFltcXBaVE1xMVVrU1J5MkVVc2toOGJCTVRsWllw?=
 =?utf-8?B?K3FCcjJPRzk4enBOTDlPZjBVYnVkcmI0NDU2WnlYNk5MeUEwREtiZ0EvMnd1?=
 =?utf-8?B?OTVKZVNpSnh2RHQwR2FSTmh2cVRlMktJeTg3ellDU3JmWmF1dmRJYTlyTTB5?=
 =?utf-8?B?Y0dZa1dSUEp2MnNtdGRQNnRraWhhVGFudENFd0IwMjg2UFp4N0lJaHJYSXVw?=
 =?utf-8?B?bVR4dVVGTzM0b2xNb2s1ZE9WcXRyWURGT1Q2TEJtQjF0cVhLYTlTOFJGcUo3?=
 =?utf-8?B?dGJqOWc0MGV1RW82SHV5RTRjV1JoL3VWdm1NVk84MGwvQ2h0RllhWG9mWmpn?=
 =?utf-8?B?VHIvbHZOM21GYXJNT0FsbXpJUWVMdm1aOTRnNXFzRDZWSUcyZXMwYUpJOEQw?=
 =?utf-8?B?WjRtUWRCdStrNk40QTFib2Ric0U1TEF5UWxhMy9lZkkvTWo5SzVkWXF6QVhl?=
 =?utf-8?B?bllDSHprL0IvOVppV2twWGRJZ2RNNlREa1VJV0JrNDQrU0Zoak13N0U2UU9G?=
 =?utf-8?B?a0EyQ2xGZU5Da1BqUXFEQUJEeVBodFV1amVlL3JmMndQZ0hwdUpSSGJHUlQ4?=
 =?utf-8?B?ay9FK0dhdkVmaExWeXBCbS9RRUM0S0JMQmVGaWZqOENCWjBQZTFzSjBOVDhH?=
 =?utf-8?B?N1RrRHJsWG1qeVpOMmxOSm9salg5TTFubWhrWFpmZlVqQXFHY1l5Z2lhSDFj?=
 =?utf-8?B?N2hSUzZYd0lZWFBwa0FLVkZvYUFPdGN0alJhOFg5NXlkWFQvZUN0VXFKMGtT?=
 =?utf-8?B?d0VoY3cwd2hvS2NTVnAzNTVodDIvR2xKai9ERnFMMjMrc0F1MURueEpYYm1N?=
 =?utf-8?B?M3JsQXQwOTQrbVkrK3NXcjNKRG1PcTJXWEdEd2J1aUNiUTJ3VndxbGdaOTly?=
 =?utf-8?B?RnZOZGhjWjFubndKdld4eVgyMVhEY2lMcTVPQ0QzYlkwZ25rdzF0K0IvenZJ?=
 =?utf-8?B?cEYxa2hOSWViWWZYT0Q4cHo5Ri93c1gxcks2aFFuV0ZrUU5MTG9FNlhRU2VS?=
 =?utf-8?B?MGRsSlQrZjVkYXhsc1Nkd0tUdm1CNXhjOTVMUU9TWmRtNWJ5clhSK2ZRaGdR?=
 =?utf-8?B?eTVMVm8yRnczdTBJd0ZZRnhmUmYxRTA5MHVoa01ieUZNK3loTE9hZXpyWnAx?=
 =?utf-8?B?NXVLeU5Nd29sOE9SMGtFUjVGd2hDNVNleTE1dTFDU3d5NEhzaXZYWnRvdkZU?=
 =?utf-8?Q?ly+TswiyPwFpWht8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eff522b0-5f45-4d7b-6bb7-08de4ecf4a70
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2026 16:02:15.1750 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w6Z7ooZhjhKOBFWgo1raqEfGaPZZJCVFxvcLC56+nsfzSZZ6ADTD2jFPhZcg1r97P63Xy6ZmOgIkI/+e3/R/2PFoDKMYd7UmaaynQKfrjnY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7403
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767888149; x=1799424149;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Wr1tb9mP+KSMybuNV/PKdTcvermedxTVcz7XWCzyWYA=;
 b=SimJEcJYdk/uzGXGeMHkNaES49VCakc3429n1HubFBrNFjLE0IlfEvMz
 g5x89LF+a6FBzEr5f5sogLrO3ZRj916nhu2FzXUu9tgsug9fezjXrZaiI
 Q7QSzyqTtpA1lorNtm75Wuxtghs62AVJiVFf5J943iia0FxiDam3iijvK
 vt2Hq2vBhOIsqF9rOaCLsymVqgZ0lOGHur6OofqwOonqejZNTmNLob5Gg
 ntx6HP+CoF9hfrQsO0ZzYlbvUdSja3I4DaUWVZSghKPauj9sgXOCCHaiu
 +ko4BvwZ25rJzD62BuTCgKt+RaWoZQIo8/jka3+mVdnjCqXIKu3/rwWFy
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SimJEcJY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: access @pp through
 netmem_desc instead of page
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

From: Pavel Begunkov <asml.silence@gmail.com>
Date: Wed, 17 Dec 2025 13:11:28 +0000

> On 12/16/25 04:20, Matthew Wilcox wrote:
>> On Tue, Dec 16, 2025 at 01:07:23PM +0900, Byungchul Park wrote:
>>> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
>>> @@ -1251,7 +1251,7 @@ static int ice_lbtest_receive_frames(struct
>>> ice_rx_ring *rx_ring)
>>>           rx_buf = &rx_ring->rx_fqes[i];
>>>           page = __netmem_to_page(rx_buf->netmem);
>>>           received_buf = page_address(page) + rx_buf->offset +
>>> -                   page->pp->p.offset;
>>> +                   pp_page_to_nmdesc(page)->pp->p.offset;
>>
>> Shouldn't we rather use:
>>
>>         nmdesc = __netmem_to_nmdesc(rx_buf->netmem);
>>         received_buf = nmdesc_address(nmdesc) + rx_buf->offset +
>>                 nmdesc->pp->p_offset;
>>
>> (also. i think we're missing a nmdesc_address() function in our API).
> 
> It wouldn't make sense as net_iov backed nmdescs don't have/expose
> host addresses (only dma addresses). nmdesc_address() would still
> need to rely on the caller knowing that it's a page. An explicit
> cast with *netmem_to_page() should be better.

Sorry for the late reply. Holidays... Happy New Year everyone.

I agree with Pavel. This loopback test always operates with
kernel/page-backed memory. I believe it's fully valid to explicitly cast
to a page in such cases and work with it. This is also more clear to the
readers after all (IIRC I suggested this piece of code when Michał was
working on the ice conversion).

Thanks,
Olek
