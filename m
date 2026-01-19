Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 729D0D3B525
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jan 2026 19:05:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F18C083D95;
	Mon, 19 Jan 2026 18:05:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PmrxB8VmzZ8u; Mon, 19 Jan 2026 18:05:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6AACC83D70
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768845945;
	bh=L0dy1v4/MBGdDZoW5KLkeXW3xGLRaErdZFr9xDYFpJc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3QK9FfyCKlOVl2qRta7Ps20GknfGSY1hqn4jMQjv/4gYWCJ2qQLP2UxNykPDfsdXW
	 zljgwtTjBZhe6F+d9jE5rofjXqlNicCZ0JUa+KL3r/JLC5zOa30ZXYZCe3QnR9d0o7
	 HXZsNriLaZWBxYeF5UPfvKjWhWPzEkF2mgMlKseSg0gCtdFAzM3F7XTsBxzsYjN0nn
	 NybeM2At4CX4SVe2Rek8hNOBbNwOHPlXtF8sM/8wARx+dbksCCEq5khMX1fISUMhx+
	 Z3JqJC5rne72XPdwkx5pvR3kybYNE1rffoFMhVIkjYoFYSb1bLr9L/wKGFVGk2WCB1
	 sH2EUJ7rHEg4Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6AACC83D70;
	Mon, 19 Jan 2026 18:05:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 47BD02A8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 18:05:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 21FD9415D7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 18:05:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2pQLsj6RqTeC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jan 2026 18:05:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0344940427
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0344940427
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0344940427
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 18:05:42 +0000 (UTC)
X-CSE-ConnectionGUID: d3hsQA1ITmqEmfDSR6GDtw==
X-CSE-MsgGUID: 6ZuIwz9HQUSGU12pN5vY+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="81431445"
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="81431445"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 10:05:42 -0800
X-CSE-ConnectionGUID: YQHyCXX+S4m5Ywqcs+kjAQ==
X-CSE-MsgGUID: Q5yH7ieGT3WD7Fz4Jo+MkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,238,1763452800"; d="scan'208";a="228857623"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 10:05:42 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 19 Jan 2026 10:05:41 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 19 Jan 2026 10:05:41 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.15) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 19 Jan 2026 10:05:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OlmPZiYlP5xyH533GVqI3/w1H+oBGLGvQzYQUorweah6n7tsGVGuLKNnXOg+n9lO8yC0+wnUiLj3wV7LncO4GRfkzG1+/41RymGdr7HyioySuWfw6SWBKlwXqqCxmp8QlK3+cZiwCkPua6bkA7vDXaPQJts0wePKAwS8oT0E22i4St4Ccb1X/Y5muP1xLmU0Gpjvh7kxl47JXHWQREiMv0EDCHMTi0OAiBXCwK3RmbuMwsuA/qnjsa4ELp3L6mvs4+s+jMlxffGtCF49/+UT6fhXvblO1CbzcFXve2/oiialXU22T5Hk4kclMwB4SXB0UsW4Ph8hHjUI8F9O6EuaOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L0dy1v4/MBGdDZoW5KLkeXW3xGLRaErdZFr9xDYFpJc=;
 b=A0G6/mNpObBHR6+zdLx10yc3d1U/6qUc4kaHPLXdcyRM2cnURIq4R1T0CWh0KI8gzn0K21/tpICXmjxYUYquB1hhxLQYHupXPLKpMWW+VAITZrl83iuN8hqeZLLIVQZnK903gjgOi4n1MGs6fLu4tT/A5hYdvoXo48pzZxhWzbr/2XyEGRzC9DB7WqNTnS2M7QG0yoB1ohqaw2FSFsjtVH4ydt0aJD9RJ8sIdvQAOEE7Pr8VepXFUtGMunB9jiSUES22YIEH5JRnDkM06pbIDYa4IZX/DZmJBk/dizd/PyJaymyXeyjsxA03KbG0A7A4BDepdz2dTsA5QR1ENZky8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH8PR11MB8105.namprd11.prod.outlook.com (2603:10b6:510:254::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.11; Mon, 19 Jan
 2026 18:05:35 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c%4]) with mapi id 15.20.9520.011; Mon, 19 Jan 2026
 18:05:35 +0000
Message-ID: <c507379f-07a9-44fe-9679-277d618c0e04@intel.com>
Date: Mon, 19 Jan 2026 19:05:06 +0100
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, "Eric
 Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Jacob Keller
 <jacob.e.keller@intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, <nxne.cnse.osdt.itp.upstreaming@intel.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20251204155133.2437621-1-aleksander.lobakin@intel.com>
 <20251204155133.2437621-4-aleksander.lobakin@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20251204155133.2437621-4-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0102CA0092.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:15::33) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH8PR11MB8105:EE_
X-MS-Office365-Filtering-Correlation-Id: 64433598-2f21-4309-5c08-08de57855818
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZkFpU3RYL2lNdUxkMkRRU0hCSzZmRjc2QjFZYW9KQ2U3MUJMaWNvaURwaU5B?=
 =?utf-8?B?bk0ya2R1V3VKYlRNVVpQMEFlVnZjcm5SRjVFQWwySHNEV1lYN1RTLzZienVY?=
 =?utf-8?B?NFpURnQ2dmFnUGhXYllKYldyVDZXcmh4YldLaytuanpBdDAycjUxSmtpUzBB?=
 =?utf-8?B?cTdkYU1lKzQxSzE3R2N3azdKa2UreDFhMFFTbEUydmExYTZ6clRpVlZDN0cz?=
 =?utf-8?B?bzkzcGV3Nm1qSHp4S1JiNzIrTmxqTTE2TSthZW0yQ3lOc3FpSVRTcjdWR2VH?=
 =?utf-8?B?VWYwTTBMM2NOSUxVbFdGQ0NyZ3lVdk50aVAzQ0QyUzlNT2g2RjUyejUycllO?=
 =?utf-8?B?WG9ucGx1RDFWYnZoMkFFRUxkL0RFUVd6MHM5Unk3R0lnVTUvVzBpNFBMcDVi?=
 =?utf-8?B?NjNTVnVZZjJMUTJ6bzUrcVkrU0ovRm52U2hpT3lZOFVxU2tsNVNmczc4N2x4?=
 =?utf-8?B?M1ZkaHpXTjJsbnBMLzFERWk3L3RBWHhodVVTKzFpRUNYUTR5Qm5tZVFwNEpU?=
 =?utf-8?B?a0QzTE1MMnAyejliUkMyakFiMm15WEFxUytmaFc3RlpieEtxWmtxODY1bStr?=
 =?utf-8?B?S05XNE9CbWl3ME1kVmp4V2tSaUxOQUhKUVhzWkpXMkFmUWNYVjgrN0JBRmQ0?=
 =?utf-8?B?eUgxOXNpNWl0VXhienBoSm5XRWNJVU05d1VtQ0tWNlRacUxxRjRHeDE2Z2M0?=
 =?utf-8?B?YXBocGVzOTM0cCt1dFQ0VkZES2dZMWROWXh6cFpvT3pGNEVEZ0xmVFJ4R25T?=
 =?utf-8?B?N04yTndJMjdObkI5VDVpVkVPWDYyVGtpU0tUK3lFQkFlS0w4aHE1TUplbUNw?=
 =?utf-8?B?ZGd6cnc3R1FoZUloMC9Gbm4xTTdudkZSZ0UrU1lpSm5oRXprejM4dnBubnAv?=
 =?utf-8?B?Wjk1a2Jnd3RYWWVYWVI5WmtLNHk0RkZqOWE3SXMzd29tUlA2L0QxVklHd2h5?=
 =?utf-8?B?R1N3alRVbmMvMytSU3B1Y0FXaXJoR3BjS2gyeENxVlpySkErOUlNQkFZZUo0?=
 =?utf-8?B?ZWVIWEVKODROakxtRHhwUkZnMEZldGR2UGUwU01FU3J1d1A3b0JzMEZFb1du?=
 =?utf-8?B?Vyt6NURZQVdvZWkySDU2dWpSeG1hODU5M1JQclhTeDR0TjgvVk1JZFVJWm13?=
 =?utf-8?B?eGRrL0dzNHBYd2h0MXlmcnZob0NLaUR6WFZyYnVFZU92Z1AxakwvRjBLYVlw?=
 =?utf-8?B?QmdJYzVnV2xhL2V1Qld0T0IzL2lLa3ZtUDlDT3pLS2l1NFJOWWlWQXpKUjIx?=
 =?utf-8?B?d0xZWkRjb2hEWXRobmQwRGgrM3NVcHM3Nm1NTWkrSEpoNnpvZ2dhckk0dmFm?=
 =?utf-8?B?WnJvM0FQRitIcFJNSXJWbVQwUGZXQmFHT3FNdDhaUU1tRSt2eG0wQWNaRW5Y?=
 =?utf-8?B?UVJGOHA3b0U3ZEc5ZVovK2NYUkZwVHpWYlZVdmlaU1VTckJOMTFkTCs3cGZi?=
 =?utf-8?B?T0JhM3ZyMnFnMUxMYlJQeTZlK2lWSFAzZmtkRFZTM1huenV5NFdER091cExV?=
 =?utf-8?B?UnhTb2tiZHF0RmhQVE80SWVpb1NWd2NzaGFJOFdhdnhpUWV5VHRIT2tZam5a?=
 =?utf-8?B?cU9mcDZWa21ocWVIaUw2UUdjVHI4Q1JHeWNFQmtiNDZLSzNEczZkbzJ1emtr?=
 =?utf-8?B?QlR0R2t0UWRkc04xdUd0bVU5MDNvOTJXdGx6azVUVnVsMS9WK211SGszZHRu?=
 =?utf-8?B?Q0RnNFVZZzg4Wk00Mk8yMkN0SlgxeFdZdEV3ZnlXeTUzNHltM3A4K2VTQTVh?=
 =?utf-8?B?YjdNUjNvZ2ViZmZEOEpKUVpteEdvdG9ZNUFxeFBKQmgzMXdoQUxVamZhb1FR?=
 =?utf-8?B?bFloclNvbFMrSVJmai8wZFpwd2RLaTRiVGxsTHFuamFsZU5mcTF2MVFCeG5D?=
 =?utf-8?B?QXVzVklXbkdFdXRTU0JsNWx4QXorT09SR2U1cVNaakVaTHl2VnN6MytYSUMv?=
 =?utf-8?B?OC9FeEpwaEJ5dDRqclF6N2JXRmh6OWJxYU53Tno2NmlPcXBwYkpGUW1HbUNJ?=
 =?utf-8?B?NXdyeEkxVTF5YkpSVjRsM0EzNUs2Vm1QL3VKc1dENDlmM0NNamRvcXlnTytU?=
 =?utf-8?B?UzRFa0RwajVuRy9SMGpsVU1qS1JDK3hsNmdYcGhDOFhnQ1NSV3JkQlRJTjUx?=
 =?utf-8?Q?XK90=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WHNSaEJPbDMxNWdUMjUyeFRtVlc5U0FjQWl2YnZ5SlFLSDhMYnZaZGlhMVBN?=
 =?utf-8?B?MGN0UlphODAycUVXcjZadFp2REczUU1VQnZiRHNDM1dKWjZ0YWx6UUI1K0I5?=
 =?utf-8?B?WnNZMXBQR1B0L00zK05nS1RaUzI2UDlFSll4M3pmQnF6clV2Y2VpZjh1QnBi?=
 =?utf-8?B?dzMzaHYzTnhIYjlYZkQyUVJxaDBYd2xybTZxSEFYSkpCcTZUMStQeFNRNThw?=
 =?utf-8?B?dUtsL2VpWUoyS1BsVDhPWGtVa1FQS3hGbW9kUThETXhxUjhlZ1NMZUpweGl3?=
 =?utf-8?B?MDdVblFmdzRUU2VGeVQzSzNXVk1Oc09kSEFJZU5QdXZlWjBVckhvWWM2WU9z?=
 =?utf-8?B?anRLQU4zcVRTbm1CcmRYbmVHc3dkV0ZUdnpoaGlFZmNwZXFVeXhvdFJyODV1?=
 =?utf-8?B?dlc2N0RIb2dFb3Z4QWsyR2U4M0VxL3hPb0ZTVEgzMnlJWlFlMVZzSjVnZXhy?=
 =?utf-8?B?aUw2U3k3cnd2K3FPT1A5UGFJcGhhdUxWQWpDaksyUjhWQVppRE1CSU1mclor?=
 =?utf-8?B?bGR6b3JYQi9GTkNlMFNMWVQvTDZaTjdoTEhseGFIUkVSSnlmRlJaUnR3RXpX?=
 =?utf-8?B?bVlybU5ONngzcytYRllzRjRBcDJacW11cnZ5b2xrNGxGdXUyV0pmRm9TbEtp?=
 =?utf-8?B?c1g5VkgzdjRWSVVGTFRZWUpUNFZZQjBuNzduTHh6aERHRGwvUE5TWXNQcFBo?=
 =?utf-8?B?OHZBSTR1WmlzOGcxc2EvRlN0RDh1WUo1SjZCWUMxdFFqYzY2SEpxTlpKcGZB?=
 =?utf-8?B?eFVFalUyTkgwMTg2ekxJKzNkc3VRa2VEMmZMQ1I4Z2NvSytTL1VreDhwZjJk?=
 =?utf-8?B?azFPRHh2N2dPeXJyb0x2NUt6YkdRVDFaeUpjMTErVG93VkJaVHJUU1JVYnhp?=
 =?utf-8?B?MlpkaGFxUVY1aFpxclozelg3SDhtQmkvNjdlR2NpZjVDVHZSSWtRL0lrRTdP?=
 =?utf-8?B?QklraVA4OEVKSnc3OTBaeW90SEpXbkErdEhPdWRsRTB2VlV6ZlB4UTdmOUI5?=
 =?utf-8?B?bDhyelZreEphMXdGTkRXKzdpU0k4R01ocnFTcnhUTW5mZ3ZmaUo5VmRCYTV4?=
 =?utf-8?B?cUV5N1cyNVhpbWNnTkZTT1dXQlhha0JTdWtmTGRrYUxjZkI5TUNlWUJ4bjlu?=
 =?utf-8?B?M2d0U1dsRlNmbGZQamNYTVN6MnF0Sk1IQ0VUVXlGL1ZLMk5kREJRbHcrSTV6?=
 =?utf-8?B?UWRNRHdQRm43Y2lVa2k4dVdrT2NsSFpkUDJDVmF6V0dLQSs3Y2M4eW1Hd1Zs?=
 =?utf-8?B?NE1YZzZjeHRkSjc2Rit0K2Y0RG5FVkg5T2ZaQ2dSZ1FjZmc0cm9URW1Ec0VV?=
 =?utf-8?B?cTUrem1hT0gza0hKa3lTOU9aYU96RnB2L0Rvd1NwTERnM1MvMTlBMW9qM3J1?=
 =?utf-8?B?NzQzb3BvQ0pkdG5oNWd0SXh2NlZoeFFYWkF5Vk13N0Q5bURrWGg4NFo0anl6?=
 =?utf-8?B?ek13ajIrWEZzL0dIOHFEL0kyVXVsMjZ1TmpsWWxpZ0JSbE9WaVREUVlFY2JF?=
 =?utf-8?B?L2ExK1FqZ285ZmJPeVdycTloR0pCQ2JxdU9tUzEvalMxdG9wa0FmMzRvYzdj?=
 =?utf-8?B?SlNBMVVRZlJUOG9kSVQzajdGWGxtcllwWUZYZ2NSRWNXWmRlU2NZWHNkaVNw?=
 =?utf-8?B?WUdrNmNzbGxQdW5CVVNVSEFpSkNhOXdITDBSN2UrdThJWVhMbHZONkZFeGNE?=
 =?utf-8?B?NGQ1dW1QNDdOY3VPM3pvRmd5aytVSk1GV3NDcXFxRzh4UkZFL09lckx0Tk04?=
 =?utf-8?B?QmxDZ1ZPdGI3YmJ0UnZUT1FQblpxczArbEdYRTN5VVpEcDdhSlk5eGxoSWds?=
 =?utf-8?B?dDlTQmp6TW55SlB2OEpNb0p4d3JnT2RSK2tTRGFLQUlpNnA1dDArSHU1TFpx?=
 =?utf-8?B?K1JWWm00WUpCT2R3RXdoa205anloZWxkOVBZOWNaUkhuNmVyTDVrUXFKQk8w?=
 =?utf-8?B?TTZmQkQ1clR4d3E3ZVMxaGJ0VUhuWjcrS2YwTnY5a3RVV01QOHc1cWJrTWZj?=
 =?utf-8?B?K2Nmc2MzMmVVb1VjbEo1Q0Y4eUdub0lyRGEvT2xNZDg3WjVZaW1hLzhiTWc1?=
 =?utf-8?B?dHQ5NWV3NUczMEZlODdhLzZubVU2SUFyeHQxSWJBMEVFbWxwT1A2UytRcDJK?=
 =?utf-8?B?aHZwa09oUE9NRmFDMWJtUFZTSGl0Tm9kdDFiUnlCS0FLWTU0dEN3V1d5bXMw?=
 =?utf-8?B?V0QzSWZRSGF0NVZkT2oyeUcwZzhEcVZMUi91R3pxelNQWUoxYitiZnJKWEor?=
 =?utf-8?B?eFZqNUt4WnZqbi9FeXVpaTZvRjVLNkdXZEpqdWcvVGJXY0JMZ0F0K01TRm1Q?=
 =?utf-8?B?ZVR5Y2ttSENXSTJRcURDbGVlNlRUTEZJazRNVmZkTmNVNmxQaWpmVDZ2SXRl?=
 =?utf-8?Q?KdHe96U47C3Y8A78=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 64433598-2f21-4309-5c08-08de57855818
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2026 18:05:35.6883 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cYtoZ6rkYKKHsKQlgYKs4xIibwSXgROORm3UdjnLnmnRZ5EoZNOUjYJ6W4evbmC0V6slDVV2yMvP9Uw2Oorj1FlYnF+Peilg5Umz27A6wGw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8105
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768845943; x=1800381943;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=A3mJqjl11ZQSRTV/mQSFe00fLbEBYyAiXsqtrVKdHQA=;
 b=AW1ojeFSoKkWzJEGbDz7K4l0Duex4vrQW/Xr8XTcxIW5qAIbVoP1pd5s
 73pJ6sUMmTSCDyuG+1pQ7ki9CMANldG7ew+HHPANhIceGnVD1L6QQFu7O
 +h3NBP0IYPPKHo4kKGmLaOBUJKUxTAYr9SzVxQgNM6a144PukKq2N/v4j
 XODW+SyuPwXbzjiHbAN53A1wxDmtJZAy9WGewg9Ryrff1DZvjzujGIKC2
 kg04eqegdNVQ1wVmZz95rsISMjwzE0cn/bubjn3KC4NDZB/IB0B1zTVzi
 6+rvJDQQACXgSoY1Van1faKqMNgG2gCO2sLobBfolkU5MFYSMGunN3uFm
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=AW1ojeFS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/5] ice: migrate to
 netdev ops lock
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

From: Alexander Lobakin <aleksander.lobakin@intel.com>
Date: Thu,  4 Dec 2025 16:51:31 +0100

> Queue management ops unconditionally enable netdev locking. The same
> lock is taken by default by several NAPI configuration functions,
> such as napi_enable() and netif_napi_set_irq().
> Request ops locking in advance and make sure we use the _locked
> counterparts of those functions to avoid deadlocks, taking the lock
> manually where needed (suspend/resume, queue rebuild and resets).
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Note: Larysa found that this commit breaks `ethtool -L` -- the system
hangs. Seems like some of the functions called during the queue
reconfiguration still take the netdev lock and a deadlock happens
(I definitely tested `ethtool -G`, but might've forgotten to test
`-L`...).

I'll try to fix this ASAP and send a fixup patch. Since nobody (?)
reported this earlier, maybe it's not worth dropping the series from
the next-queue in the meantime...

Thanks,
Olek
