Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B941C63F81
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Nov 2025 12:58:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F398C40294;
	Mon, 17 Nov 2025 11:58:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6tPGP7wZNHfQ; Mon, 17 Nov 2025 11:58:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63419402CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763380736;
	bh=wXGPFtbprTNbCT0FR6Vj/m3YTypDVyUhL7bU0dUBrx8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2HCqFEptt8B/Fca4ggTQLIDfRKTr2ufOTTle+lNE0ft0UVaAaQjwt+VU/WMb7k6ow
	 Ndwo7S4gQ7CAaLzweTlSWEJI/MkjtSN1DtOx2ZQvRcfS9hy+1zWReA4jg6MtrEmWPC
	 ywCEERGlyPIh2/VLpv0XzduLX/X3VO7WGJtfHn2YfEB8ps+K2pR4bgujIh5WbLColA
	 ytCQqVdvps4zgXetR6L26H3PwtqkDGYP79xbxyG8tu1m30KapWcSBbjYaEKOSTKKZY
	 ntwAjFgIH3XNX2KkmdmyxKUiB64eeQ5glNuHzfoukdUgXmmYXscYj+JDMtqKVT2JMI
	 3vO81LjPu69cA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63419402CF;
	Mon, 17 Nov 2025 11:58:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8CE3ED5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 11:58:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 73A3C404BB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 11:58:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lbLG1Percin6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Nov 2025 11:58:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BD0D140418
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BD0D140418
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BD0D140418
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 11:58:53 +0000 (UTC)
X-CSE-ConnectionGUID: VnWEQHBWTEGscu3gMxXuAg==
X-CSE-MsgGUID: hcQGz1fCQG6aPQNKAFD6ZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="65414149"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="65414149"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 03:58:53 -0800
X-CSE-ConnectionGUID: tdGyzi5hRk+NAc4Q1Aozpw==
X-CSE-MsgGUID: p/mOMmyUQ+ef7CXtQ3hicA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="190880874"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 03:58:51 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 03:58:50 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 03:58:50 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.58) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 03:58:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fHrZX/buIl8pDRFWPl1XJSX41qQ772Vqacd2Q5m96YV9HGbr1zJo/vdNYxOl+6qf1pN3jfI4NKVKPTYRT63SPMM1D4lVk7d/+ricUY4PKrRlCvGftrPCW/Vye89YwQiX7y5RfW98r7awOh8VCHP6PxDSiUoUuBe8MzP9gtCjiN9BE/cAxIqw4nRYfiwk8RvNwslvCrQnIoV77RSE3IcLE0gtnzIfj2TpX0xMPyPEAl7PtY3q21BjkSAZpeyH7Pa7kMqAFYSbUg5veVGV73o0ZPJ7sKkJPb8PIAyD3YKSISU89Xe6JBQA4VySkh4hMV6ElFX2sDpGLIN1bJ56mT6yeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wXGPFtbprTNbCT0FR6Vj/m3YTypDVyUhL7bU0dUBrx8=;
 b=w0brfDW9x1WtK3WSYDWnZXJ4iAXRbHKA0tFxFpf7MF5aWQzmL112czBAxYUNPVvN2BOjecSLLx7D1UBrsmuh9pcUNzil2k6nHc11lNVUSvc+b1kfZKO3Ng1BhZ5pICAtH3wgbOJUrHnXvZDnWuguG66SAvcKKVD4HjtZnJR+vJzV+1eV5eCKfqnV8e9dtD7SqGylyAt/EkXA1QLtpL3XxQ1dI9inSWaLa7KMiWGriHvGGccega/sge4OxgWaclKaressbNopsWIpyw8BlOUguSVqi8L+xM08RAQ1e4P5piok9qSLeE8Nth0qHmtj6Z/tqW+x6hVdaR2pgbmldDA37A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by IA0PR11MB8400.namprd11.prod.outlook.com (2603:10b6:208:482::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.19; Mon, 17 Nov
 2025 11:58:48 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9320.021; Mon, 17 Nov 2025
 11:58:48 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "gregory.herrero@oracle.com" <gregory.herrero@oracle.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH v4 1/1] i40e: validate ring_len parameter against
 hardware-specific values
Thread-Index: AQHcV50MPfgeDC2P2kqccTffNFWtpLT2uJJA
Date: Mon, 17 Nov 2025 11:58:48 +0000
Message-ID: <IA3PR11MB898600CF2E71D699036834B9E5C9A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251117083326.2784380-1-gregory.herrero@oracle.com>
 <20251117083326.2784380-2-gregory.herrero@oracle.com>
In-Reply-To: <20251117083326.2784380-2-gregory.herrero@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|IA0PR11MB8400:EE_
x-ms-office365-filtering-correlation-id: 003fbcc2-65da-46ec-3def-08de25d0aaf6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|921020|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?U2hFUm0yKzZ0YThLcytmbDkyaVpHYVMwLzY3QlRCM2lJVnBwcXBLQmVTTlMr?=
 =?utf-8?B?cUROc2ZZVTVHS1hkTjM5MGd0VXZ3YzQyTDlZb1lSaERaRE9xVVJtckwxU0Z4?=
 =?utf-8?B?YzVNNVJHTTdSQjFGY1JlYlBVRDBZcXZuUGRBaXhrVk1HSFJ5MXd2aytGTGcy?=
 =?utf-8?B?L2ljYkUwaTNJWjhMT1ZyaDBtZmFmcTJRaDhmRkIxS3EvM2Vmb2JKNW1MK1hp?=
 =?utf-8?B?bmphdU9rek8vUmpSdFhRdlZUUzBkVGdCUlM0Q2loN2svdVZiRndWTUxGNEdV?=
 =?utf-8?B?b3VOTHl0bkdxTXc5MWhmalROSDk0ZXJadzE4UDFnUHljOE5HSldHMHByQ3FZ?=
 =?utf-8?B?UlhjRG1RRVRDVllabEVMNGUvVkdJOU8vT0o2b3hsbWpaZ3Qydm5uK3VETmtj?=
 =?utf-8?B?Vlh4OUZ6dzZkQUg5bUl0dUdqTUVoSGE5REdwS1FPYmxDajZzNkcrTEI2ZnZE?=
 =?utf-8?B?ZUZKNmdKNGxIazBndUUxSXpEYmkzL3A1VXhvU2V1VWFsRWRJbnR3MlNzRXVz?=
 =?utf-8?B?dnlsdmVDUzdRQjEwNkdwd2hwOEp3OW5JazhIMzdpSjRiVC9PYTkwVnFleWV1?=
 =?utf-8?B?WnFYaGo4cnZKTXFjQ0p0Qk0va21BWTBac3BRQjIzOFhvNEh6eFlRK0F5M3BM?=
 =?utf-8?B?K1BXM3RMckpRWEx5Y2NsYmU0dHZXbnpsazkreGpDbVFsNXRVV1UrUWxRb0x0?=
 =?utf-8?B?QXBpOUJRRndxcGRCM01ValVla25TSzlGY2tEczhkYlZKRFZmV0FQTzdyK1pS?=
 =?utf-8?B?OE9TWTEzY0orNzJEUGNJL253YTJSMEhxVkU3MGhlQjNMYVBFa0FCR1A1RjBz?=
 =?utf-8?B?NWhVZ0t1UjAyWGQ4ZDdLUkFwOXc5RzAxSHB1eEp2NFA1Uml4Kzd6NzRNWjVJ?=
 =?utf-8?B?MFptaHRybk5jN2J1QjhxenVzSlY3YkpnQnJXSHdIS1VtNUZGdWRYZTNmUEpQ?=
 =?utf-8?B?cW9FaWJMQ21INGZya0p1cUcvbE1nRUg0U3dzLzRBdGpSeFhFL3hnM3MrY0NH?=
 =?utf-8?B?QUN3dmh1aytQSkswK1VwV0c5c21nM0kyaE1zdHh5YlNWa3RUQk5idUx2Q1Bm?=
 =?utf-8?B?MVdydHhHdVlKUDIrb2I3cmNrZUZGOGlyZXhUOHpWSjRpTVRVc29ZNkQvM3d0?=
 =?utf-8?B?a1dLYzRhV1EvOTUvcjBvYUpYU0pTTHk2bWNlSStTOWxmZENpclU2YVVOVTR3?=
 =?utf-8?B?K1M3YkVtcDZTT1Z3NU95TVBvTXA0YWNsMDUrOU45Rlpqd09XMnlkU3FsdHBJ?=
 =?utf-8?B?U0V3c09HdVRjZHpDdXRlQ2RJRjZhN0hnbXo5T1RTa0JSclBDcllWd2dpTWZx?=
 =?utf-8?B?azJLZWZkWkpzME5NdWxtLzNrRGVtMzdTbEkvUm82dFBSakZpVWRWbnlkM1ly?=
 =?utf-8?B?cUJwN1F3QXhCU2FFUFJwd0xQdXdlZldod2djWit2dDl2SkZmRmNXbGdiTHNa?=
 =?utf-8?B?ck5uNExrNzRaV1ZOMlFWcTY5c3UzcXJTVzUxc20vOVlYMFB5UVBjRWcyYnAx?=
 =?utf-8?B?RWxrOXlMazRRcG5ISmsyazdtTmJXeG9LRm51clVjRjdVcVgwa1FmN3Y5Wkp3?=
 =?utf-8?B?Sks2eFkvNC81a1dnaW5rNnRzc1ZMdDdlVXVVdGZxRHVFWWhvSlY4aDEwTEpG?=
 =?utf-8?B?YndBaDByM293NC9KRDM1NE1aRGJSWEd3c0RjTnh3Rkt1K0ExMDhNa2V4ZTk4?=
 =?utf-8?B?d3BsU0xMQzZNcUN5TVFma0IwQTRiNFk0YkdJb2FQMWtIK3Q2QThiQXQ3YXRQ?=
 =?utf-8?B?SmVVMzRZTitCZ1psL1pWSzZVc2dKUE5ETTdHbEh4alg2RjNDZzJmNk90Y2pp?=
 =?utf-8?B?UmRtaE4rc294SDJJUTZPdExKSzdwRmYvRFlQWWZIM0EvRExCUmI2ZGtkOUUv?=
 =?utf-8?B?ay83Y2gzTWswTjBRTDJsRDQ0SGlXRmhjLzdPdk9iS1loajBvbHo2M1FzVlow?=
 =?utf-8?B?UE9nMnQ0V0FaZmxtVDlBejF1K2JId3hibGQ3QXdCSWJ3ejl3ZTdTck5Ic1Q3?=
 =?utf-8?B?M3l6MkdsMDI1NmtPU2U0RUZSbXdJZ3FNOWpBQUVDQng3K1V3VnZHZDduM2NH?=
 =?utf-8?B?MkpVTDh6K05lUUp1Qm1ZNHJ3VUo2MHNzSitTQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(921020)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VERrVDhMak45Y3pDMEpUdFNLMVZKYmhMbkpoRW05NE9vQkcrQkc5MUtHcUdp?=
 =?utf-8?B?RWxVaE5tdnV4NFE5RFJCYlE5Q2tPRXJXeXdYS2VmU1poNWRwZndJSzYzZDlH?=
 =?utf-8?B?OW5YNUFoWGJJZTV1WmMvOEhaZUN3dytlbzV6azMwZXI5ZWczWjNWWk1jQksv?=
 =?utf-8?B?Q3RNZzRmdEhnWXdnR3VXRmRMVFFFV3hoZlpnd2h6a3U0QzVUdnBSVGdJMmZs?=
 =?utf-8?B?L3JYdDVRWmxrNVBPRzBaelAvdWhuV1I5aXVQa3hNazRTZnVzN0ZGQUxzVjNL?=
 =?utf-8?B?a2hNdkJzK1J4YmJSQ0R6aWlkYm5wU2hFdU0zSVJsQ0dtaWZRWWt2elUxT0Z4?=
 =?utf-8?B?cEs0bWR4eHkxcEJicUQxUjk1TWJHRkYzWmZacEY1dDE0alRaTGgxTmFZcGlv?=
 =?utf-8?B?aTNZRmtPekJmSCtWNzVTUlQ5c1dqQVU0c2FaR3lqWTM3bWZpWWZMQm1XM2wv?=
 =?utf-8?B?cFJHU3paZ0NmaG9Qdk1JWUx3Z0NXejRHM2JWUlNaK1huNWZaby9FNDBpVG5y?=
 =?utf-8?B?bkFJeFhsbXhMWlhQb1A3d0hMMDlPT09FMjIxcnJNekVDV0R0dGt3K1UreFBD?=
 =?utf-8?B?WUNwSmFtR21jMmFSY2NLUXZWMjJRZ0dYNEhOVXppNmU0bEMwWDhxWnU3OVVt?=
 =?utf-8?B?TkczSGdvUkxEdVVtWTNObm1TVWRYOXowTFlwM0tDSEhud0JkMUcrTGxqeWlC?=
 =?utf-8?B?c01ySWdIZXFndmhBMTlrQUFtRjRZVlFWR2lMaGwzRDJ6L1Fta3JKTk1Zekw4?=
 =?utf-8?B?Y21zMk1OVi9wZWpEam8yaHpyYlpvdmZSdWhpbGZhMzRzOFBMU2w0cy9XMXMz?=
 =?utf-8?B?TWR6VUZBVUdJbTRnb0VkMU94Y2RsQTN1d0tTbTJDWnZRcm1veW5YSWJ2QWZy?=
 =?utf-8?B?OUMwNlVwTFF0SVlDM2J2OUJjRFJ1NlhCalU1V3NKbmNJUkROT1JzODdDUFk5?=
 =?utf-8?B?dkt3eHlCSmdXZkkrTXY5dDdZTkJoMGZBNE91a3dZMHFxOUJOSG1xZStkM1NP?=
 =?utf-8?B?TEh0VDQwOWJteFpUdlczamxkajh6RVdEMFpycE9SNTdubmJ0WHZWRCt2QUFl?=
 =?utf-8?B?YU5SOHk3U3NFQm84UzB3UElTb21GVWdNdEJoQmI3Z2FXeWtsblE1RUVFVUVC?=
 =?utf-8?B?aW03V1NvblVmd0xZNEFJbUVFd1h6TFBRUWVQdUZJck5sb0h4WSsrYVJHSXBT?=
 =?utf-8?B?a1RZQ0V6WnI0eExsRlZxckUwN2NXVlNGUk5nNmRJZ3FQQ2tSMEF3NDY4K3d3?=
 =?utf-8?B?aHUwR0pDeldwRkg5bkN4TjhBNjUySnZlbzYzZWx1S29KeUJvT2xWbkxVcnR0?=
 =?utf-8?B?ZVEvdTdsRXd1QzViR0NNa2M5QkpXcWJzbDRxaFBqYUJWMmx4Z3pVclFZQ0Ra?=
 =?utf-8?B?VURMS29SK1YyR01mdmc4ZHlYbGVTN3RvZ0EzS0Q2QnJIUEF0UXZkTVhsZUtS?=
 =?utf-8?B?TWpYN1Y3YzRNdUl1OGdHU3BIbUZXSk9kOUFyTmtzK0tjZXFOdTJjSjhhWVBG?=
 =?utf-8?B?OHBtdi9YRi84RFZYa2NnQWFjajRwMEQ1Qm1nMU0wUkh1cUFyeEZZeHRxc0xT?=
 =?utf-8?B?aWVPT21FclNmQmd4ZTRoSlE1ZEc0bmgwVld6M20zREFLVHBjRFhYM3pXc2tZ?=
 =?utf-8?B?UnhzSzNLK3lJdmhuQ05RcDZlSzFiRjMxQnhhV0RBVTFyZDQxNlRjNGZ6MVkv?=
 =?utf-8?B?SmZDOXZBME5SREhVSWZUL0xnWU44dGxKT1o1cktuWjk0YUFsRkJwU0hlSVBJ?=
 =?utf-8?B?ZS9HYU9QN2lINStONjhqVnJmRnh5dk1mMy9xMWUxamZQYjNhZ2xvM2d6MWVk?=
 =?utf-8?B?ZlRhSndNSmp1QTFjdi9LbytZVmQyMTJMd1ZRMUVpZEY1Y0lWdWRWOTY4bzRu?=
 =?utf-8?B?UVF0QnphSHhkMVZIQzJhcFUxeUFSZGhrVk9RLzZPemxubmk1ckJqZy9pWHl6?=
 =?utf-8?B?ZXFZcVRGaENlby95RXBQdHBSb0FtTHJlMUdlK3lTWmhyVTB6UjFlTGpyRVRZ?=
 =?utf-8?B?VkFTZm41WVZ0bmxuVmN2THJYVHdabmhiSjVMMUNib3FGUjBZWTNwN3N4a1ov?=
 =?utf-8?B?UnRGdVlWSm9BK1liYkNMS1k5SlEyTFFLR1JkNHFSWWFLazNNdWdnYUQ0UmNU?=
 =?utf-8?B?SVMwZHozWUtGL3FOak1jeWtTZUl6alU1YjNIenAvRzhIQ2hjbU03WFFEeTAz?=
 =?utf-8?B?dkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 003fbcc2-65da-46ec-3def-08de25d0aaf6
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2025 11:58:48.4273 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TJu6Y4ineWNnAyssRt1DH3fN//yYgtJmkDtkcpm0c3dzuAxfrSzOwQbqH1gezZwcWLtJBR9cYT5G60g0O8/Cu2M4sO4BntvypJE+3aMUGZ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8400
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763380734; x=1794916734;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wXGPFtbprTNbCT0FR6Vj/m3YTypDVyUhL7bU0dUBrx8=;
 b=iBddOZyuawMv3sexkkbW96HeLWtrJel/fgnVxW10yWKJQVJump1IdVCX
 ghgR83UqT0DyOMvtgiwm2dpipIdAVx6e5w9rLCBujv+FwG8jIJp3dSaK+
 hIdMWG7OVGZU7doHp/52mhcM79MUP0C1w6GEXktM8yNYF5xBojO9Y0SWk
 6RDIFB5j6f8YrydNB6o0ta21TqGq5Atv8CDWPjf4taoGjnddntGnev3Tp
 S1siRNMUx5dJSoYk1Ozyac1+NzwdR/HzzoAW5xg5nceVGVNj0LHTflph/
 oZe5EL/k6+4QwcbsX68JoehvXDJD/BXosiNHNW/WNVeiVq7H8zgcEU1Oy
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iBddOZyu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 1/1] i40e: validate ring_len
 parameter against hardware-specific values
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogZ3JlZ29yeS5oZXJyZXJv
QG9yYWNsZS5jb20gPGdyZWdvcnkuaGVycmVyb0BvcmFjbGUuY29tPg0KPiBTZW50OiBNb25kYXks
IE5vdmVtYmVyIDE3LCAyMDI1IDk6MzMgQU0NCj4gVG86IExva3Rpb25vdiwgQWxla3NhbmRyIDxh
bGVrc2FuZHIubG9rdGlvbm92QGludGVsLmNvbT47IE5ndXllbiwNCj4gQW50aG9ueSBMIDxhbnRo
b255Lmwubmd1eWVuQGludGVsLmNvbT47IEtpdHN6ZWwsIFByemVteXNsYXcNCj4gPHByemVteXNs
YXcua2l0c3plbEBpbnRlbC5jb20+OyBhbmRyZXcrbmV0ZGV2QGx1bm4uY2g7DQo+IGRhdmVtQGRh
dmVtbG9mdC5uZXQ7IGVkdW1hemV0QGdvb2dsZS5jb207IGt1YmFAa2VybmVsLm9yZzsNCj4gcGFi
ZW5pQHJlZGhhdC5jb20NCj4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBu
ZXRkZXZAdmdlci5rZXJuZWwub3JnOyBsaW51eC0NCj4ga2VybmVsQHZnZXIua2VybmVsLm9yZzsg
R3JlZ29yeSBIZXJyZXJvIDxncmVnb3J5LmhlcnJlcm9Ab3JhY2xlLmNvbT4NCj4gU3ViamVjdDog
W1BBVENIIHY0IDEvMV0gaTQwZTogdmFsaWRhdGUgcmluZ19sZW4gcGFyYW1ldGVyIGFnYWluc3QN
Cj4gaGFyZHdhcmUtc3BlY2lmaWMgdmFsdWVzDQo+IA0KPiBGcm9tOiBHcmVnb3J5IEhlcnJlcm8g
PGdyZWdvcnkuaGVycmVyb0BvcmFjbGUuY29tPg0KPiANCj4gVGhlIG1heGltdW0gbnVtYmVyIG9m
IGRlc2NyaXB0b3JzIHN1cHBvcnRlZCBieSB0aGUgaGFyZHdhcmUgaXMNCj4gaGFyZHdhcmUgZGVw
ZW5kZW50IGFuZCBjYW4gYmUgcmV0cmlldmVkIHVzaW5nDQpGaXJzdCBwYXJhZ3JhcGggdXNlcyDi
gJxoYXJkd2FyZSBkZXBlbmRlbnTigJ0gKG5vIGh5cGhlbikgd2hpbGUgbGF0ZXIgdGV4dCB1c2Vz
IOKAnGhhcmR3YXJl4oCRc3BlY2lmaWPigJ0gKGh5cGhlbmF0ZWQpLg0KUHJlZmVyIOKAnGhhcmR3
YXJl4oCRZGVwZW5kZW504oCdIGZvciBjb25zaXN0ZW5jeS4NCg0KPiBpNDBlX2dldF9tYXhfbnVt
X2Rlc2NyaXB0b3JzKCkuDQo+IE1vdmUgdGhpcyBmdW5jdGlvbiB0byBhIHNoYXJlZCBoZWFkZXIg
YW5kIHVzZSBpdCB3aGVuIGNoZWNraW5nIGZvcg0KPiB2YWxpZCByaW5nX2xlbiBwYXJhbWV0ZXIg
cmF0aGVyIHRoYW4gdXNpbmcgaGFyZGNvZGVkIHZhbHVlLg0KPiANCj4gQnkgZml4aW5nIGFuIG92
ZXItYWNjZXB0YW5jZSBpc3N1ZSwgYmVoYXZpb3IgY2hhbmdlIGNvdWxkIGJlIHNlZW4NCj4gd2hl
cmUgcmluZ19sZW4gY291bGQgbm93IGJlIHJlamVjdGVkIHdoaWxlIGNvbmZpZ3VyaW5nIHJ4IGFu
ZCB0eA0KPiBxdWV1ZXMgaWYgaXRzIHNpemUgaXMgbGFyZ2VyIHRoYW4gdGhlIGhhcmR3YXJlLXNw
ZWNpZmljIG1heGltdW0gbnVtYmVyDQo+IG9mIGRlc2NyaXB0b3JzLg0KPiANClRoZSBtZXNzYWdl
IGV4cGxhaW5zIHRoZSBiZWhhdmlvcmFsIGNoYW5nZSBidXQgZG9lcyBub3Qgc3RhdGUgaG93IHRo
ZSBjaGFuZ2Ugd2FzIHRlc3RlZA0KKGUuZy4sIHdoaWNoIE1BQyB0eXBlcyBleGVyY2lzZWQsIGV0
aHRvb2wgLUcgcGF0aHMsIFZGIGNvbmZpZ3VyYXRpb24gdmlhIHZpcnRjaG5sLCBhY2NlcHRhbmNl
L3JlamVjdGlvbiBib3VuZGFyaWVzKS4gDQpOZXRkZXYgcm91dGluZWx5IGFza3MgZm9yIHRoaXMg
d2hlbiBiZWhhdmlvciBjaGFuZ2VzLg0KDQo+IEZpeGVzOiA1NWQyMjU2NzBkZWYgKCJpNDBlOiBh
ZGQgdmFsaWRhdGlvbiBmb3IgcmluZ19sZW4gcGFyYW0iKQ0KPiBTaWduZWQtb2ZmLWJ5OiBHcmVn
b3J5IEhlcnJlcm8gPGdyZWdvcnkuaGVycmVyb0BvcmFjbGUuY29tPg0KPiAtLS0NCj4gIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZS5oICAgICAgICAgfCAxOA0KPiArKysrKysr
KysrKysrKysrKysNCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9ldGh0
b29sLmMgfCAxMiAtLS0tLS0tLS0tLS0NCj4gLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0
MGVfdmlydGNobmxfcGYuYyB8ICA0ICsrLS0NCj4gIDMgZmlsZXMgY2hhbmdlZCwgMjAgaW5zZXJ0
aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlLmgNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pNDBlL2k0MGUuaA0KPiBpbmRleCA4MDFhNTdhOTI1ZGEuLjViMzY3Mzk3YWU0MyAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlLmgNCj4gKysrIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlLmgNCj4gQEAgLTE0MTgsNCArMTQx
OCwyMiBAQCBzdGF0aWMgaW5saW5lIHN0cnVjdCBpNDBlX3ZlYg0KPiAqaTQwZV9wZl9nZXRfbWFp
bl92ZWIoc3RydWN0IGk0MGVfcGYgKnBmKQ0KPiAgCXJldHVybiAocGYtPmxhbl92ZWIgIT0gSTQw
RV9OT19WRUIpID8gcGYtPnZlYltwZi0+bGFuX3ZlYl0gOg0KPiBOVUxMOyAgfQ0KDQouLi4NCg0K
PiAtLQ0KPiAyLjUxLjANCg0K
