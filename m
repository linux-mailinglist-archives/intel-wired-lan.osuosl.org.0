Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AHJvFMQX+WkD5gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 00:03:48 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9364C4460
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 00:03:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 182B0600C4;
	Mon,  4 May 2026 22:03:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YFx4v1oHChpi; Mon,  4 May 2026 22:03:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97BDA600CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777932223;
	bh=6TkPZMAfkeT/nya7z80EojW+QLsp8cZcpUdBrl0fgOw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9ySoKlL8PF8300+7+VP63Iw/yyHxjleXEw2qHUw6BDMEQpGm1SHbtpVwJInyuntQc
	 M0tFHt9ifi3epwCyL9rfZyvWUBr/IXwrKh0JM4twz4YCl0eoXibRz1i+2pbznty2rs
	 NeGiFhU99tHFT383eG/gHfY71w4sXtEWdm4JhPaMphDONEbgV5bZUuIx8lhkX5AHUG
	 vAf4RzCXhDj36OQ4rVY8FrODGIhBWrlNxtzYcEvJn7lE4BNU5mdo+XnQfSOweSCsKi
	 C1yMDlsUKVQMDBkY+6hT4xcpViI1ViG82F1q0G22aeHpnnhwxQE4u3Zmie6faGP9tD
	 kqinJ7ffJpxFQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 97BDA600CC;
	Mon,  4 May 2026 22:03:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 78D0630A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 22:03:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 69FDC80F36
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 22:03:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qhqFhUHvxKr8 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2026 22:03:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 34CAB80F35
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34CAB80F35
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 34CAB80F35
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 22:03:39 +0000 (UTC)
X-CSE-ConnectionGUID: tBjzMkDxQlG6TLm+VMo5tg==
X-CSE-MsgGUID: WuHx+F8XS5eYWBnuQBrIbg==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="90171398"
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="90171398"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 15:03:38 -0700
X-CSE-ConnectionGUID: 78jEUhbwRWuBA+dyUVMQ3A==
X-CSE-MsgGUID: 2hvPqBySS0eeP7/r9rCmaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="229150784"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 15:03:38 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 15:03:37 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 4 May 2026 15:03:37 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.50) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 15:03:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eTDZpZpKY5y6ivsUU7O9IL2hbhL2zPOvT1hXTrRXw4biofPHFTiV/96RRH5opcRMyxntg01cnmlBxmNlMOrIrEY2p/ZtkRYtBHhnZH3ItfxMKKDoZxMGVTA+9ecbeXwqsDpx6rEHVnW3CPfLvxXzdojUhDzyKx6NoSkoaB5+2aOVoPRpMurG09Wl/Nmcfdu5KjjIqY0JCj1drflyzaNJxwCVJMt7n1OrvwzZNpygCFiz6bWi/dIkN6Z3DXdM4kpJ8vOIDmT1RSdRwGlVGkfH9nABcdkBWPLUcXoFG8nZpoJpcg1uqLzTxccu31urtmXtCKvt/ljdWteanIBBGZEsKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6TkPZMAfkeT/nya7z80EojW+QLsp8cZcpUdBrl0fgOw=;
 b=ZT4H/0vWWZruxiboW4a0ldo7dy0Wg6TO3dBmaQ41e3zRwoBhLBe8+HXpayeP2Mc4zKtNZBOf3okiwv5lca+xDcSz4MaMGguqrzckaNUxftcFzCcAg9iwZVDEOw/rISEvaD+Ljjb0tdbfGfo07r/XuptnqpnCzP7iUznxqjNqJKTtABREnq6kE+NGIi85e4FXVuN6zwrAGyyzBzktaX7TpJY2eg8dTehrgicUOv3P5mSs6tcUltf7jJWXVS3hFeWfElE5I2a/26lAGkJ9WK4c67wCWa8ZEkG+o5za3zTMebeRQaKFwninDRNJV8DI9PZCjVje322o5IAIrTSyo/MCSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7592.namprd11.prod.outlook.com (2603:10b6:806:343::16)
 by CHXPR11MB9627.namprd11.prod.outlook.com (2603:10b6:610:2f9::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 22:03:35 +0000
Received: from SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6]) by SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6%6]) with mapi id 15.20.9870.022; Mon, 4 May 2026
 22:03:35 +0000
Message-ID: <8a3b4e1c-7f04-43ed-b67a-07725bb5a268@intel.com>
Date: Mon, 4 May 2026 15:03:31 -0700
User-Agent: Mozilla Thunderbird
To: Larysa Zaremba <larysa.zaremba@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Joshua Hay
 <joshua.a.hay@intel.com>, Willem de Bruijn <willemb@google.com>, "Alice
 Michael" <alice.michael@intel.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>
References: <20260429074232.180528-1-larysa.zaremba@intel.com>
 <dfa0c54b-393a-4671-8531-13cb454b872e@intel.com>
 <afiem5uwBus61bLb@soc-5CG4396X81.clients.intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <afiem5uwBus61bLb@soc-5CG4396X81.clients.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0029.namprd03.prod.outlook.com
 (2603:10b6:303:8f::34) To SN7PR11MB7592.namprd11.prod.outlook.com
 (2603:10b6:806:343::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7592:EE_|CHXPR11MB9627:EE_
X-MS-Office365-Filtering-Correlation-Id: 05ba42e5-2f2a-47a9-3ac0-08deaa28fca0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: g+C1I+wHtWB2W2ytYODtI5xS5ri1wnTYMC5BDkhNevFzk3J/OhCOEXWxk288L6mPEVHnar77rOVD6bHR4/mRC1Rybg1MwRccGCcPN5NNjPcwxmY9Os0d2RSYgj7Pp7NN5X8gOtNbjA9JmrOfT6inE7A/ezq6xrAnJ9M5HoVzGtYzcLu4L+HoT3+lyDV366a3JoERlMJR58lcoNGACMKOdFx+T9H9V3EOyx7SvmbkXx0HDVybijJv6wMBB75ElEstZ+AChdpHVxeIPzzXAef6a9NXFtihbBDYmcQnOnWEf8lIzIzWcegGkh3K6K3AE3BKPpmaRPnlQiDFGbvG0r8I6J2IRRVhs9xo0Zia8DbwMkHnvxuvgkmOe0GJdHPUWjjsjibGKqA9ghwTqfZ9HN6xojDkjQeOt+6wxHZoyCF2gRst86RtQyNvOBipvDsrH0cAy/t8b4l37ZGIaiYQGD8BEoz73lb3rZz+KxvGWGncB4DSrjOz1bkIMLzxBnEJHuo9tdeJXsxNiWz4RbA43MzSrZBBx939+OFpwD6/xkYSqWYg2U/IudWVjLBPJIAoowxZQ8mdWZs/Ulde7QkZuxNdYNxt/31buG2RoPr+aCCiXqfJmj6uLP5xJzVuKTyf5CBHv0mvSGsRVjfOJA+N4xISZQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7592.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RmZuNS93d1BMczVCUG83V0dtcWxCZTdMQmh2ak5NS0kvUUM5VTVKQU4xTXo5?=
 =?utf-8?B?ZzNWa1puRVFBWUsyTjVHNE5mK3ZieDBVay9nZnJta2RWM0NBTjdNWjBXV240?=
 =?utf-8?B?WGp2bmZoaVFjdGY3VExicmF4bG93YjJEOC9uZ2F1bVpvOWZaNXJ2aHdxWlhV?=
 =?utf-8?B?ZW41cThFdG53eWNBaTh1TWluRERzMWVEaTVUWU1FdmNPalZlZW8vdnFrUjlI?=
 =?utf-8?B?V1d1S2Y4Wm1XZmdpV2N1OFVVUXdyb2FaUTZpSmw1S2lMVkNyR1ZodGtmNzBM?=
 =?utf-8?B?U0tDRDcvbWY1V25FNG81Snd2L3VGRlArL3VXaGdkNkI3MWxRNjNTdTYyaSs4?=
 =?utf-8?B?Vkk5THozcGdKeWF0anp4NXZzbUlHUWFWY3VXcXVXZHk0SXFLV0QyemZ6STVr?=
 =?utf-8?B?a0pYVjRtNjhwYUpiWTJTdGEyRDFXeHRHbzVZQkdyTXdZRlEyNXJKdTZMaUJs?=
 =?utf-8?B?Ui9qS0pRQUphU2o2dXozZzNiR2dXVzNsWHRCYkI2b1hvTUJnNUhXK1hrekNt?=
 =?utf-8?B?SU4xbmZkQ1hyNTNDK2VhWlphWkFtNjRNanpCQ1ZSSGJBcERZd3hjNXFxZ29s?=
 =?utf-8?B?Q2wwQWNyZkxlZUFGK3BmMTNxR3YwOG1vMFBiSmhyenduSk5sUVRpL054SEt0?=
 =?utf-8?B?R0NwNG5QUnBHMXZLeXF6aVJhaVdiSEFPRy9vV3ZkUk16MXI4aGY5aVA4Y1hK?=
 =?utf-8?B?K2sydjlqZlNYalJDa29CZzhGckEzWW1PRjd2b3NtYmp6Q1hRSFZ0VHNtNVk0?=
 =?utf-8?B?dWhtWXl6SDFwdWlWb25LWTZGNmVTQUN6Q1d2TGxra2lLaVdFWWRSb0FwcmhV?=
 =?utf-8?B?akpIQ2xzeWpYSkREUVgxbCtaRWpYdS9HYm5GRmFhcWg5WE45TGwvWkNWV1lZ?=
 =?utf-8?B?ZWpDelZTSlRWKzBvMWtoVjgvbFBoUEdSdXZvd3RHNFZYVWZTVi9oWG90Z3JL?=
 =?utf-8?B?VzM3ZDZRSmtWSXVWQVRtRHlYOFRjTHhMcFlLVU1sREVoUEpMNW9UUDJRa0xl?=
 =?utf-8?B?YVBnN0RsSVNpWVo1WTN6R1dIVlB1VVpoZjF0V0hZUGJIVjF3dEcwT0FZNm1Z?=
 =?utf-8?B?eTB3alVVWnpRSDJlblhFQXkzTjBqbnlla0JGaENjeFZFTnNGb0RrVGE3Y0M3?=
 =?utf-8?B?djRZRHNNMUpGQSsvWmlidndvMGVoV3p6Z2NaYVhET3dXUWJ0b25VZzBQM3pu?=
 =?utf-8?B?Y2dlMGhBblJySFpVY2dNbG5KRTh3SERmSXJmeTlzY3FmRFhBTEdsQVBiQVJZ?=
 =?utf-8?B?cWZQWDl1M1VTeE9JWTdIaWoxaFdWdzRKTkVXdE1jUDVRYXllWnk1QXlRYjNU?=
 =?utf-8?B?amZJNW1BaHBFY1k3ZzlBR2ZqZFRCRzZVd1NwR3lNMWV6TmQvM1FGVDhFVWJw?=
 =?utf-8?B?TnptZU0va1h0dGx2b1JUSW51dS9nVkxBM2c3QUV0elNPSWRkRkR5eksyckJ5?=
 =?utf-8?B?aFR0SjR6Qldka1pqa0xSdGVWaW5HcWZlUXhqSDRSTzY1QkJXaGxJR2NON05Q?=
 =?utf-8?B?RzF6Uzk5U0JjaWVuZklpWXZySzd3UWlFMlhkNmQ2dEhNNWJXYWdmSlNqdE9V?=
 =?utf-8?B?UWRIdlRuUHhpdWc3L3VZSE9UTFUzeGdQc08yT0c5VTdhWmlJL2ZORW5JMUJZ?=
 =?utf-8?B?NWVmL2hvbkI0aFZON1V5UFVncmJhNFh4OHFyVUdiZUh1M0djSzlxdVRtTUJU?=
 =?utf-8?B?eGpyb2NFRVhrWDZJbTlKc3NKY3o3bUpDWUk0SjB4VDFOZGpURjA2WXVoVmVk?=
 =?utf-8?B?OTl2TytPOFVNdE0yQ1ZtTXlmMzgrVVVWNWY1NnlQS1RUeFhKOGF0L0lHTXor?=
 =?utf-8?B?MDFDWWpJTFBmV2dWVUV6TitTbXVvRytWeVQxRmV1NmlYZGU3RjEwdU10d2Rs?=
 =?utf-8?B?WGRJR1B5MGpVVXhQbUVRbkI4ZlNOd1gzMVdpVGlwYjdGSVZqNG5NcEtHVTdk?=
 =?utf-8?B?RnB3aVEzbjlJNmFuTkdseVZQWkY0TzFoMEF2ZkJRb1ZFd2FMQ05rYkpoN2Vo?=
 =?utf-8?B?K2tiSU9QNFFFU2sxanRaK2JUQVlvb1pHZGsyWWNZV0JycU5wS3MwNURpZkts?=
 =?utf-8?B?clIrbW9oOU52ellxdnJIZzNuR3ZLNjhHZTEwRkJyam9tYXVOek1TVjQ4LzRO?=
 =?utf-8?B?MkVDcHVHeU9DZjlVVjIwcW90SHBzRjljaFhhcVJzZXBvSnUwYjJFU1N4VjlY?=
 =?utf-8?B?amF6SmdTSGRCRHRNNnVsTTh6Vng0RWxDeDJ2a1BXSkRqdmQ5OEI3TjlnSUxH?=
 =?utf-8?B?NlpMV2RtVnNDcHIvRjJkaDF4YjFwZWhLTnhTTVZ3MlFEbmxwME5HSm0vRndw?=
 =?utf-8?B?OC80ck5kMldDT3hTVmk4YjdXK1Z0bEZwdWpXQlluZjN2eURDekxTQT09?=
X-Exchange-RoutingPolicyChecked: TleOwtndevTC2l5Y9qxcepWvXKPuc7NecjlRr1lt+b8d8bWmPf6VPnjsYfWxIbGUOtbPWWywgwvnws5m/1l13Nw/zVkivxcRVEltDKtyzOonHRilKJVtmkwFhMgzY1fzVWpCIx0KzPufCPj+o0JpwZluGTOaj3bfuMAKKQpzRaOghdP2DTKCixpC5UXyEz/59iSVVB/NdBSsDiPDvbzt5eYUufZBeaZZFfEGs5rORjQC7ySlfSyfcI77hgfhZtLtjPkl/of6V30gtRbS9QcqMdebpK8G0FHm43HFIpILS2IG/uVmtqZuocbP7Q6IEKBqKIwBeFLkgfQR5wHDnpeqgg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 05ba42e5-2f2a-47a9-3ac0-08deaa28fca0
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7592.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2026 22:03:35.1303 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yqz5esMDJGj4te8NvFxZi2AuVf3jZMyPwmph7iqD7bLKnhBJ+BqrEvu/BP5IUv1L555+poda+lZAJDNeBTmo5rqgjstENfmKPG/8TrERcS0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CHXPR11MB9627
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777932220; x=1809468220;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=f8QzmU3lvy1t4cWdjJ6vNv3ntL5gLrlmnoHDI4MGihc=;
 b=eYR78DJYwR9NFDnVmB88p7Sn3FYN87gvyY7B7Ecgosuni+GFotet8bjO
 Y+OOGr0q92ZafmQDMUlGd1P6kj0B22wX5i4uDLBY1wyb4l8oj9iosjc0o
 bJYLAZjLe/gop8U1v5EuPeJznbgdyJC+g5K3vru0lKGmC8KMjs3NO+oOo
 I3tWg88v0S/3h9FXTDYRdKc2OvwSNqevmfXqi3nbl9N854T4po3yufKJl
 eLspm2wE0/FE9bx5X4HMjOPE9u8AqTHrmnnt8cP5vllcfSz6TakUA6WmV
 Xjkq9+5VpqXCNFE8kfJx4BSkgj6lBNwCE7jeG/sLUnKS4wRJOBE8+JVL5
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eYR78DJY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix RSS LUT memcpy size
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
X-Rspamd-Queue-Id: CD9364C4460
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:joshua.a.hay@intel.com,m:willemb@google.com,m:alice.michael@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,intel.com:mid,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]

On 5/4/2026 6:26 AM, Larysa Zaremba wrote:
> On Thu, Apr 30, 2026 at 09:38:44AM -0700, Jacob Keller wrote:
>> On 4/29/2026 12:42 AM, Larysa Zaremba wrote:
>>> Based on the following feedback from Sashiko (received for iXD phase 1
>>> patchset, but valid for the net tree):
>>>
>>>  "Is the bounds check xn_params.recv_mem.iov_len < lut_buf_size sufficient?
>>>   Since lut_buf_size only represents the size of the array elements, should
>>>   this check instead verify that the payload is at least
>>>   sizeof(struct virtchnl2_rss_lut) + lut_buf_size?
>>>
>>>   [...]
>>>
>>>   Does memcpy copy the correct amount of data here? rss_lut_size stores the
>>>   number of 32-bit entries, not the size in bytes. Should it use
>>>   lut_buf_size or rss_data->rss_lut_size * sizeof(u32) instead?"
>>>
>>> After inspecting the code, it was concluded that RSS memcpy size is in fact
>>> 4 times smaller than it has to be, since a single array entry in a u32, and
>>> rss_data->rss_lut_size is clearly used as an array size. Required Rx buffer
>>> size is also too small, but this is a common issue in the idpf code.
>>>
>>> Use a full buffer size (lut_buf_size) instead of the array length
>>> (rss_data->rss_lut_size) when doing memcpy of RSS lookup table.
>>> While at it, increase required Rx buffer size to a whole flex-array
>>> containing structure instead of just the array.
>>>
>>> Link: https://sashiko.dev/#/patchset/20260323174052.5355-1-larysa.zaremba%40intel.com?part=8
>>> Fixes: 95af467d9a4e ("idpf: configure resources for RX queues")
>>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>>> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
>>> ---
>>>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 4 ++--
>>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>>> index be66f9b2e101..a97d2e9b54d4 100644
>>> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>>> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>>> @@ -2916,7 +2916,7 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_adapter *adapter,
>>>  		return -EIO;
>>>  
>>>  	lut_buf_size = le16_to_cpu(recv_rl->lut_entries) * sizeof(u32);
>>> -	if (reply_sz < lut_buf_size)
>>> +	if (reply_sz < lut_buf_size + sizeof(struct virtchnl2_rss_lut))
>>
>> This feels like it should be using struct_size or flex_array_size...
>>
> 
> struct_size() does not really fit here, as lut_buf_size is needed later for 
> flex-array-only memcpy, but flex_array_size() I can use.
> 

Right. I am mostly thinking in terms of the intent of the safety
mechanisms provided by these macros. (part of what they do is prevent
accidental overflow by capping at SIZE_T_MAX for example).

>>>  		return -EIO;
>>>  
>>>  	/* size didn't change, we can reuse existing lut buf */
>>> @@ -2933,7 +2933,7 @@ int idpf_send_get_set_rss_lut_msg(struct idpf_adapter *adapter,
>>>  	}
>>>  
>>>  do_memcpy:
>>> -	memcpy(rss_data->rss_lut, recv_rl->lut, rss_data->rss_lut_size);
>>> +	memcpy(rss_data->rss_lut, recv_rl->lut, lut_buf_size);
>>>  
>>>  	return 0;
>>>  }
>>

