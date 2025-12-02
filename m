Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 65580C9AB47
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Dec 2025 09:36:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B5531404C3;
	Tue,  2 Dec 2025 08:35:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 31jjSlI17JCk; Tue,  2 Dec 2025 08:35:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2AFF405BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764664554;
	bh=FNP2D6sw/KXYPXV4/t/nUnsf3JpyTgbLlbqIRs3Zd0U=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uCeX2PF1/CgFun/qmTBWpTg+3/9D7bCYQdVCihYCS94PYDX/iN7z5UTqs3U7swhI4
	 zDH9LxOwtXzpV+xgGkG5tNUEdo6677GuYscGwwzOuO11r2JRcaRuLymTEX4GlQw+tL
	 t9BFDodIaRCb83xDiEz9SNi0sGhXllH1HNVMTivpM3QdDzZDrNbIYHOU+Es3S46FTJ
	 DJk8qyUXbzrkyShtkrPX8Dbv3rEwkNoqCrPnIVVyTTMQmVd7qDtM/J2onIblul0I5V
	 jPheB1SqbwQe7GhwEfarGHTZ0yomhHMCs9BZD2SBo4VbYcvpeT9YtZPJ8ufyeo4NTN
	 rsjh9C87g6H/w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2AFF405BA;
	Tue,  2 Dec 2025 08:35:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 32E721BD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 08:35:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 198BD83AE8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 08:35:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qkU-fp4jBmZJ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Dec 2025 08:35:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E686683A74
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E686683A74
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E686683A74
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Dec 2025 08:35:51 +0000 (UTC)
X-CSE-ConnectionGUID: POCZrFQzT5ylqtclNGsXMQ==
X-CSE-MsgGUID: /lP27ulITgWiJH1GPvPKeg==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="66510398"
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="66510398"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2025 00:35:50 -0800
X-CSE-ConnectionGUID: ItSQacQ0S6GhbZpxt3lo+A==
X-CSE-MsgGUID: /tXW+epeS5OAyEKoVQotSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="199443447"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2025 00:35:51 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 2 Dec 2025 00:35:50 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 2 Dec 2025 00:35:50 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.67)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 2 Dec 2025 00:35:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RGwMMCy1vXAyuCCn+I1cEy+J0dp+YUIr6WHp9PEDTI6nsw9ybJJOxRZ0yUI3ZhYYA8BL5ztGdJi7+6J3aI7NqSuX9rV6rjJkcp+BKbIK7OYyW/pBVE5knk7Q/HObDbt6yLRTcEf9uixvEIjzfWxB4WUyDvzryx1Jz3MeQ8aWv/qGja8a+PeIvLeYALkWp2exjfvZdATlDqiDwgQFg/f1SYfp90yBE7md7kngDDCNT/jeSh9G5KEelmFrw1cKqmMI4a1NV3GOWywH+P0yTohhjtQcyCLBf9/NrYy2zN6g8oYIR2Is8d0p3Jjia4vDdSU9OnpxE4BdB5nWEXXof7m+uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FNP2D6sw/KXYPXV4/t/nUnsf3JpyTgbLlbqIRs3Zd0U=;
 b=ViO0XWVolBYoKCrgQxsKrq3UVJYOqgZgRbBWBGoPeKAc/v0GB/bGNdEsO2r/xdWOkGLLkfC2Ssqufh+ur2XNeSITEO9HPYyNetxebn4A2pOAt3MDyj5e4RS5Q+V3ZXRum1utJtbzrtqXDr8SvnCr8IDsaKd4HHqOHHJhkee2Fqtgj6PHWLrFFAyY7YA7PqbEZ2UaAm0hC80G/xGU9id5gT9FHrC1j7bsrdxqRxJbQFJVfLN3nUweJSquAn19BnKrESyFA2QETZiUcsnIOR+q+SnmH4o9rp4Au/Iz9ZL/DkcWD4fHTkY700tHwS7jK2M56s9Jp2a1kg+H8GJJbZq85A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ0PR11MB5022.namprd11.prod.outlook.com (2603:10b6:a03:2d7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Tue, 2 Dec
 2025 08:35:47 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9366.012; Tue, 2 Dec 2025
 08:35:47 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Choong, Chwee Lin" <chwee.lin.choong@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S
 . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Bouska,
 JacquelynnX" <jacquelynnx.bouska@intel.com>, "Bouska, Zdenek"
 <zdenek.bouska@siemens.com>, Faizal Rahim
 <faizal.abdul.rahim@linux.intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] igc: Use 5KB TX packet
 buffer per queue for TSN mode
Thread-Index: AQHcY0ZCQKzT4kb/JEiJMh2OTayj6bUOBrBw
Date: Tue, 2 Dec 2025 08:35:46 +0000
Message-ID: <IA3PR11MB898696FA859625A437E07A04E5D8A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251202122351.11915-1-chwee.lin.choong@intel.com>
In-Reply-To: <20251202122351.11915-1-chwee.lin.choong@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ0PR11MB5022:EE_
x-ms-office365-filtering-correlation-id: 17b9b09f-b8f8-4449-9094-08de317dca71
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700021|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?JRBV0yhRcqEIgnJaKkecjajrFGLycIIqrI66McR7FMaith5/XX3wDHG9MwMe?=
 =?us-ascii?Q?+/Yia0IKi55Ox8P00KcEFNMzB7mj28LKKUb3+qt4evrWZI85vHUsxgHfsiXf?=
 =?us-ascii?Q?K6DX5U4IbZtAcIdBhvD0K/arSzyyVGLXYVQzF3CjBu+0DqisAX8SRbT4eVh2?=
 =?us-ascii?Q?Jsn3Iaabwc1miusR9GFvV87LbYEz0ZTy2ofHHKWafXeNvSgpmnFArOsmMIUm?=
 =?us-ascii?Q?Zr3aEZ0FKJTmHOS/lWeyc7LVOXD2LIfs8a7zmst6yiA+kj5Vt1rDZ6nc+6mi?=
 =?us-ascii?Q?VUjjrfn8yxul/0iZITGdd1Xu9iU9fO5CpHSta9ebD+Gw9V6/5rNBtc+IPsnR?=
 =?us-ascii?Q?Vm97NWM0yT5ku2ReaWnXNjNdRynBHpoG5MgMk9rFoInLgaU9iwAvdQ/3vKZY?=
 =?us-ascii?Q?XZ20Se2vA1FaMtFBgkPamnkTUlyCOOaJcFzUPlWHuimdCXHttKUzMyG4LHJz?=
 =?us-ascii?Q?HTdKE9Rnjuoy3TYbdYKQIxE1o0fLGhvEvJC0ODRwPwbiOKeWGhKnGi7MsZ3U?=
 =?us-ascii?Q?8cuBytXJmM2MgAtHdqh/letF38/x887caF5lh9C64nZ0odsjdUaK3UxsBR8t?=
 =?us-ascii?Q?iVEebqT3Dp/EUvqg6rnk3R48ZInXbC9WDTbF2yDmH1ue+M+vON24CsEjxhdE?=
 =?us-ascii?Q?6CrrlfEG643xCtLM2b28cXKgf3u4mgenFfOObPBj3CYRCx6jEkS4Br46HroO?=
 =?us-ascii?Q?Qa23s4E2mgI45v/Wml2D176Lc64d3rm6krEUCrGdUJaUB6yhJrFjaxWq4ZUp?=
 =?us-ascii?Q?J8Bl3cLt9kPDW1A+qBvhBptIjN6L9aWfUMZsJSyPyvwkN57LtQcXobZ3DlUG?=
 =?us-ascii?Q?aOGtXUCLhktPuxRFpBSrVh+kIrhVeonmzvoe5aRb179XGE5LFA9iUkkqluEw?=
 =?us-ascii?Q?TBkxzHISWiCQGBYfnBK8ZVfsOzrCFm7Gw3KRiLnoWQVEDYiKkEoo1X1lAMae?=
 =?us-ascii?Q?QgpCAPL/PrC1KoHd1nEGNgjC8Appc2/h7kg2KmbTAzeHZRJ17w6REdjYXQKb?=
 =?us-ascii?Q?BhTxQ1Hzd+BnsdG20eNPErjBQh9QYfSn/dEjekiNcJqCk3rgYxquZptqscrw?=
 =?us-ascii?Q?7J+1ood5I00yKxFz4TtiHrdf+gYuILby+yAL1yMxYvGVgvoYgbZT1WaWrJrL?=
 =?us-ascii?Q?j0rPEuhPmvIbEc+k/nwLfmi/a/y7qZ/Ik7d1MSSD4F4kdjmV2N94F2YDRhQB?=
 =?us-ascii?Q?KQ/x+slBh8LZLNJkCy0WCZNP3gvjVTRj7EDtPgKCIztivvgdsP3b1BGgGd7+?=
 =?us-ascii?Q?jtE2YW8bUTTqSBHMKOXgJoUo5VTTZBhcpPLh5ILCVtjsmjFh3mlCu2FT6izI?=
 =?us-ascii?Q?wORaM/Ee8YGa/seUwXJ7zGH7rp4i0BvenNT4eh3zNLmtLQYgEjhpQZvjfXqV?=
 =?us-ascii?Q?oBRi5M6lPUhTrjlzIxwEF40R3vIqQKHglVmzFxTiSrWfgkf+9XwZD9Tu1pWl?=
 =?us-ascii?Q?D1RY7EQosKOFUEYO7cr7L358+ip3Z0Fn9ZCj7DJMQvUMsec6VULLKllvzqLQ?=
 =?us-ascii?Q?UlHnoILk520DGdD2+qQ4xhqzzPBffMPUkjzM69iwkgXyn6wApNOuJNkkpw?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xISbqxcjNPO7GdAZTHylMoivv+dyhduZbBWmJQgZb4zSlbJfDuxQZ8JKJiuF?=
 =?us-ascii?Q?odoUp4cNp94a2IHv535k64RV10SknFrmUm8W7JHtFg0x8j71c8BW6fK3ceAn?=
 =?us-ascii?Q?fo5xB6l1tDf5PzU9ZMOEAW5Pla/z6Zhlh5IXE50iAy2Nbacq8jc+1RkmItqO?=
 =?us-ascii?Q?YtuyLzPsENESFE2xP1ISy9npHnzCHTJ4shdDvUX/oPTxJjJUiKKrTXkrrQtr?=
 =?us-ascii?Q?GkwEdtsgbsIBLHTpOr/1EffGUHAEiV0HjhKzbxXYLX6DP9Sz8ivBP13ofFbm?=
 =?us-ascii?Q?um8uLk8SjfUkV8StYIvTqT8hNl1/V25JVKvHSTxQwC40bELTnxRxbrtJOR6h?=
 =?us-ascii?Q?hNc9kyNjR9XaIQEbLo7CA97ljMlGPkIwV5FgmSdU+wmMMGersblZGpVHJnBh?=
 =?us-ascii?Q?TJSo4Ph6aO24RpvSZ+d7tjUGnleGZjwUjUdU8LNkMjPltXbeWfei7kN32mVh?=
 =?us-ascii?Q?Nkrf600KFOUeDyWW99S6f0Ri6U21GTvOJY5S/jw4mVnMNHY1BQjH8twk0d44?=
 =?us-ascii?Q?b+U5NH3eL/Us14c06savN75zOLnOAgJkgN7cBVMEfA+FMpMw1Um+hF9/EKkc?=
 =?us-ascii?Q?x/Iw+fTrscFBzNb0vnVJg7wSO+8qykZvT/2STBWPPNJ1eLDqRUFy99EyEixO?=
 =?us-ascii?Q?r21Z86+1+Wsn8Gu8g0LzvANGcs5nza1jFadWuKciEZi52sFQkrxejCBj5WWx?=
 =?us-ascii?Q?EupG1JzxAzwF3KbFSbXyGtsvM7PQDnOF/MP3BUvEnpUgPjsrzOsW9c55+v9m?=
 =?us-ascii?Q?efeWv7qoztQ/s1MQgB4abqbK/fu1XI/1LoPpP1m1dEya3S9VjSGbLlndhyPh?=
 =?us-ascii?Q?c0kRV9I5BAPnr550LamxPt2VN2Y7A5BCaQfDMylEx3BJYuQlGDiyqid56f2p?=
 =?us-ascii?Q?e+wcL3/CTGCu6eqw4FlIuqUzn1XFBaAPUuOpLErYWm0l05mblZRssLAZhjNX?=
 =?us-ascii?Q?SZPpQom0S6rw/hCfqP7yxXQ6an1LSFAiPy4BLlLThVQFZxHfsQwUtRUwmHys?=
 =?us-ascii?Q?ApxzvjDu0uxoqmIu2gm8eX6BNRyfuzk15ZLLKeOna7JNNqFEXqd2v7dC6yc2?=
 =?us-ascii?Q?j6+0Cb3zKW8rHUDabHMcwTYmnCTY0LE3tI5S3F73ME6lSMzzsD3rOfMCU5vU?=
 =?us-ascii?Q?nrWOw+6dKqQzVsodws1zKfkXdQaRrW/GD40uekXr+bSLfpDLRGgRzoWCgyus?=
 =?us-ascii?Q?jx7g64qCdkJr8R9t/uNkSjb8TG/BFhNDgjKbZrokViYm6dJeS6dnc02LIC9M?=
 =?us-ascii?Q?v3QFHYuBWOA3L+L/eg2SG7+glrFtccj69wqudnQbWMlIK9PhE6AzQDskalTr?=
 =?us-ascii?Q?gV2qM8WDTI3oQhZpOuDisN3eXADFXt4cdzKA/nYKV0e5WbTpx6/aZ26gCHP7?=
 =?us-ascii?Q?wQefWzII+TqJPyJkTd/AvWH0hk4TsroteZm0VljfgkXMHirtySxYsanIQmNJ?=
 =?us-ascii?Q?l1rPBxlG0hXh65g9Ch2UTXTQ/70dEvEtl9NavRYvmhxtwi208bp2wxYAXuGi?=
 =?us-ascii?Q?IK2+EdCXoqVSNowlhBXN48YFLqO1UATjvhGDN/RJW/zqv9xQExXmlCFJiRCR?=
 =?us-ascii?Q?IXKYWfUbEQfjhJrL7cb0QOGrfSCAZ7zHssJRDCtdgPY7yknbhXL+Oud1528i?=
 =?us-ascii?Q?EQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17b9b09f-b8f8-4449-9094-08de317dca71
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2025 08:35:46.9867 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A8VzlL3ReizXyLJkh0UaPbHnw36Y+pVzjSN2QLBOTJmgK/RQgkKXdQ0iwNIZrm7EiK6WmVj7FFbN26PzReOFWmP20v6jWiBt9lrDYk9IGCM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5022
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764664550; x=1796200550;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LY44roSb44TUm1hBahg7/1X11gq7BVTA3d+MYhBaRkQ=;
 b=GCQhhwezDJk8iLyBfd/3Oas5dFdq9AjuZx8qPvbyfCDRIQECGR0oAabM
 uneg0qKh+Q2v4mDS2RddBcMYbJjIgs0mSFb/o6n5UsrTMxSEDGepsky9w
 +aT0dosbLJKC3fByCVyYeEkdxw33LoVRWp8q6A1EgF+Nht46XUyLwC5Mj
 EgaH1k4PFmTOSckOV9uy6tvJ9Muom0HIi4IfOksR/P7sFsk1Rlxgi/+Zq
 0ijwziACvvYdOZ5BgvvYuAtWcPheapIlJoZAh4aLvrC4o2ByAMrI1TBdP
 09SysphiXUNS3uWvL4pkhm70/UF5gETXXXEJhiq2IJ+H8GTp+lf0afuqI
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GCQhhwez
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: Use 5KB TX packet
 buffer per queue for TSN mode
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Chwee-Lin Choong
> Sent: Tuesday, December 2, 2025 1:24 PM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; Andrew Lunn
> <andrew+netdev@lunn.ch>; David S . Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; Bouska; Bouska, Zdenek
> <zdenek.bouska@siemens.com>; Faizal Rahim
> <faizal.abdul.rahim@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] igc: Use 5KB TX packet
> buffer per queue for TSN mode
>=20
> Update IGC_TXPBSIZE_TSN to allocate 5KB per TX queue (TXQ0-TXQ3) as
> recommended in I225/I226 SW User Manual Section 7.5.4 for TSN
> operation.
>=20
> Fixes: 0d58cdc902da ("igc: optimize TX packet buffer utilization for
> TSN mode")
> Reported-by: Bouska, Zdenek <zdenek.bouska@siemens.com>
> Closes:
> https://lore.kernel.org/netdev/AS1PR10MB5675DBFE7CE5F2A9336ABFA4EBEAA@
> AS1PR10MB5675.EURPRD10.PROD.OUTLOOK.COM/
> Signed-off-by: Chwee-Lin Choong <chwee.lin.choong@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_defines.h | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h
> b/drivers/net/ethernet/intel/igc/igc_defines.h
> index 498ba1522ca4..9482ab11f050 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -443,9 +443,10 @@
>  #define IGC_TXPBSIZE_DEFAULT ( \
>  	IGC_TXPB0SIZE(20) | IGC_TXPB1SIZE(0) | IGC_TXPB2SIZE(0) | \
>  	IGC_TXPB3SIZE(0) | IGC_OS2BMCPBSIZE(4))
> +/* TSN value following I225/I226 SW User Manual Section 7.5.4 */
>  #define IGC_TXPBSIZE_TSN ( \
> -	IGC_TXPB0SIZE(7) | IGC_TXPB1SIZE(7) | IGC_TXPB2SIZE(7) | \
> -	IGC_TXPB3SIZE(7) | IGC_OS2BMCPBSIZE(4))
> +	IGC_TXPB0SIZE(5) | IGC_TXPB1SIZE(5) | IGC_TXPB2SIZE(5) | \
> +	IGC_TXPB3SIZE(5) | IGC_OS2BMCPBSIZE(4))
>=20
>  #define IGC_DTXMXPKTSZ_TSN	0x19 /* 1600 bytes of max TX DMA packet
> size */
>  #define IGC_DTXMXPKTSZ_DEFAULT	0x98 /* 9728-byte Jumbo frames */
> --
> 2.43.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
