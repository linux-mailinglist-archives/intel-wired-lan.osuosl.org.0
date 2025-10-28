Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D69BAC15CDD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Oct 2025 17:29:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7FBF040480;
	Tue, 28 Oct 2025 16:29:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LhpO2s75luuM; Tue, 28 Oct 2025 16:29:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E324C40481
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761668983;
	bh=YGFhUjjgQqU2cER8pLmZiTPCbshQvalu6WtZbhMN2E0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=R/g/2FU3LsXhstb79aT8LXDrM/VhDGiWzhnwy0vZrZaOSyNM9zFZ82gVYit8Kkxgo
	 TFeNXaMiiXH2IK1JaG6oxg4ANLm/xbyv/jHQY4OBh2osW5KSeHxTxVze3yxGv2tnw/
	 B3VjO7VMgPCxZS/lYhmuOg5W9qzO0nTuZbjdxxRO6SIUHy0UboYCfJiLvXdHDf1UYj
	 Y9ISJ/B7T2IKVVnpbsuXUkBmoPoxn1nRTtctshza70hl+eaBEtYyj+qZgkz5ehriz/
	 Qq/ft4r2G7nvgY8BbnM8iIJp7P3k9Q3JGzFntq2+FMmqyW//9pF27kou/+vyYd8wot
	 lAsaFFW64eBcg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E324C40481;
	Tue, 28 Oct 2025 16:29:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6285743F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 16:29:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 407174047F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 16:29:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZQEzDLbZt6NT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Oct 2025 16:29:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8A2AC4047E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8A2AC4047E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8A2AC4047E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 16:29:40 +0000 (UTC)
X-CSE-ConnectionGUID: cMHoFfEuQPSwOSPt00FXjA==
X-CSE-MsgGUID: j/WwTIL0R1WnSwZBuuJ6Sw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="67639507"
X-IronPort-AV: E=Sophos;i="6.19,261,1754982000"; d="scan'208";a="67639507"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 09:29:39 -0700
X-CSE-ConnectionGUID: KsMYOKvXSlWid5UJxyMB/Q==
X-CSE-MsgGUID: 4n4alf/JTruG/3pPyjvPGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,261,1754982000"; d="scan'208";a="216054550"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 09:29:40 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 28 Oct 2025 09:29:39 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 28 Oct 2025 09:29:39 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.63) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 28 Oct 2025 09:29:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FkmXY1HlJV4Dskesr5nkeg05fMONTKFIy4d4XibxRBP2ot0sv5nDRiJCg9QktfiTw2jQl+WFA7IsOPkKE0CRVIa75vrz9XIgFpikH6nA0hOlztDjM1LwK9NWz+tCA4eT1ETgIKGjOBbTY7CtVk8BmGKQIUuDj+kAlBfsdii8TJPgIPF+Q9lEX/1IyhJL8a/6IXHodIltXiS9zKmHzz7H05C76kdWjTqiT2utb2DscntJYkga2sEa2oxfpv3fgeNyUYK0pBiMnwjDtHzgZ4w23pQFHuRC8/p85EanmCxHr3ql58ouRN5RscRo+E2n2eA8fAJ4X7lMT+Uwa/+P5xy4Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YGFhUjjgQqU2cER8pLmZiTPCbshQvalu6WtZbhMN2E0=;
 b=Z1uqBTRjJAM8IavMwm7epUKpxDepW62IC1/ZLvRmocdyIXkXy7uIJn6FDQVOOrKbfKY1/TBtcdE+xxZ49g8FsFIXHwfFjMree7tbdqRFR4FW/bZw7JRZ8DOqt/g1Yk0bsM+5jKvTWYfnGSNai1Cte+ZAPaWpPfGMN6P3bn4zpH0qThWxOfdqVYBdrYvxbUpUyAl+cweykuBtfuGXZ85HchPFw15BrW68T0NMKElM2OpDk4EAaeqkCS98aWQw/9QfGPv+yu7N5vNn/97+UAWxuf9Pe9ondLfVJnLktrkJakkMj/yZLaleUShWsW4T97/hdPvYQbIenNh0b/8aJ/qrWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH7PR11MB6673.namprd11.prod.outlook.com (2603:10b6:510:1ab::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Tue, 28 Oct
 2025 16:29:37 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.9253.018; Tue, 28 Oct 2025
 16:29:36 +0000
Message-ID: <5eb7ba26-8ecb-4a39-b9ed-961fffe4aa97@intel.com>
Date: Tue, 28 Oct 2025 17:29:30 +0100
User-Agent: Mozilla Thunderbird
To: Nathan Chancellor <nathan@kernel.org>
CC: Kees Cook <kees@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 "Eric Dumazet" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Nick Desaulniers
 <nick.desaulniers+lkml@gmail.com>, Bill Wendling <morbo@google.com>, "Justin
 Stitt" <justinstitt@google.com>, Sami Tolvanen <samitolvanen@google.com>,
 Russell King <linux@armlinux.org.uk>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Michal Kubiak <michal.kubiak@intel.com>,
 <linux-kernel@vger.kernel.org>, <llvm@lists.linux.dev>,
 <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>
References: <20251025-idpf-fix-arm-kcfi-build-error-v1-0-ec57221153ae@kernel.org>
 <20251025-idpf-fix-arm-kcfi-build-error-v1-3-ec57221153ae@kernel.org>
 <dfc94b21-0baa-4b1f-9261-725d8d5c66f0@intel.com>
 <20251027205409.GB3183341@ax162>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20251027205409.GB3183341@ax162>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU2PR04CA0338.eurprd04.prod.outlook.com
 (2603:10a6:10:2b4::8) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH7PR11MB6673:EE_
X-MS-Office365-Filtering-Correlation-Id: 78662264-a201-40cd-1d4e-08de163f2f17
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7416014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RE1hbTFJRnU2M1IyNEFSbnlIM1FISWlmNWc0K1RKNzlDZm93UFhEbGI2Y2la?=
 =?utf-8?B?WGlvNlg0b3JIQVNCUmJZMVFyUDRsMVlTbkdScWRJZzJIK1YrdmxYRDl3SU1B?=
 =?utf-8?B?b1BFRXBhRDNhZWxhNWtaWXhUd1RFOHpyU0xwVmFQM2lxeFFRMlBrK0ZQVDJq?=
 =?utf-8?B?eVAxenpmc08yMDZZWGFENm9XM0RzYUJDaXEvR0dRZElyYXJTWkhOZm9iRzBS?=
 =?utf-8?B?TjJZWnBwS28zUGQyM0VseUIzYlUxRFFUbGR6clh2REhsZ3FqT3J3UC9ualZY?=
 =?utf-8?B?bFVoN1lFOVJqM1Jha1JaWTlNUXVGeTA2UWVjbGhnSW5CVENFb0FXVmpneVdF?=
 =?utf-8?B?NXd6SjBBRHBzSjBxMFBGLzBHM3hMMHNTUW51eW5FREF6WktQd0kzWnVGa09T?=
 =?utf-8?B?Y1Vjd0lEb0dXMGEzVkJiNmJHazlKK0owa1dRekVaQk9KMkVyQ1dZdmtueGdV?=
 =?utf-8?B?SVFFcjBFcjZkNVYrdTZIL0p6MURDZDdDR0RxZjBDZUt5dUo1TWxQMkZENVFR?=
 =?utf-8?B?Q3M0SU5qSE9TOG1QQkF0Ri91SmRaUm1sM2ZHWXViL2U4czdZUFIxd0VJWjJM?=
 =?utf-8?B?UlZKenF3bW9sMmtVcTNQOTZsd2hiSkZ5bjRBUUpHWGJFRDBRM0RTMG1ncDlB?=
 =?utf-8?B?VFJrakZicWp2YlZSeDQvNU9pMEdIQlEreWlyV291Zis4b0ZPNFB0bEJuK053?=
 =?utf-8?B?WU5oc1huVE5iSzJ1dmlQenllMGd6cVNpV2FRbU9kWWlTZmd3UEdIWkJxK3Fh?=
 =?utf-8?B?T0xmckVNS01qRVN0VmlEM3N0azRNYzhrM2pDUGM5d1I2U0ZxdDIxRmNlM2hQ?=
 =?utf-8?B?L3YzYW5vN09sWUkrOE5MM2FxMURvS2k0WXcxdFJjdk9VK1hSSlQxZHo2UjlV?=
 =?utf-8?B?a1YvVnNIQmZ4MjBmUzc1QWgxT04zdHJva2RCS2EvdDlHd0JSb2JYWjFMUis5?=
 =?utf-8?B?ZzdGSkJ4UC91b0cvSnJ0b0tFQzFLS2l3enU5VFV3S3lVaWJ6Qy9LbTVtS0pL?=
 =?utf-8?B?NHNYeXozSU5maUZDWXJMS1ErMFZsZW1NNG9XSnV6OEsyTHUvUEt3ejVsWnQv?=
 =?utf-8?B?WjAxUkp3S2hmRGs0QzhUMzdOQlhFRzdjd3RtL2QzeU8zZWoxK0hLRnBFSFpL?=
 =?utf-8?B?SGN1OHh3RHlnY2dVbGZseG9tY2g5Q3JQUE05LzIzUnduVU90RHJoMHlEc3FR?=
 =?utf-8?B?aytVL2xqcWNkY1FyQU5HQ0lQUm1aaWs5T0VtNDdDRnhubEYyKy8yVG1jUXlV?=
 =?utf-8?B?UVlZdkZ3bm5UZ05abng3cEZVNEhWLzNQTU1LTWY0NlpoNG0rM1NFaUI2RkNw?=
 =?utf-8?B?NDRYYTNHeTk3NE9XSkRMd0NyaTNocHVoNjVPb2s1K2pNNmw2QWx5dnBQR3A0?=
 =?utf-8?B?bEczNHBleldXU2ZFaVpQQ2JKcWNvSFJaRk1Sb2IrYnNwcFc4WVEvYVlJNGho?=
 =?utf-8?B?L2RCTHNzVHVrL3Exbmp4R0dPT2dpbUt2U0ZuRGd4aUlDemJEWVp0Smp5anBr?=
 =?utf-8?B?UTl3R1p3aXVOR0pIMVFucjVQS2lIdEVaWEFncVYrd2xzTUZlODhRN2xqTlJo?=
 =?utf-8?B?aUJUZXArb1lzV3NzaFhSUmM0L3F3c2RvODFyNDByMzRkL3BiNEZaWHQwNHNX?=
 =?utf-8?B?VkdVVGEybUl5UjRFQk8weDhPWXlxSUI5b3FTQmJSOFB0QjZpL0pIY29ObzN6?=
 =?utf-8?B?T1lWWDBkY0EwbDRVWDg4eEQ5MGxOc1VKN2NhUUlsZEFDbHB3cjhpTWlVY1Vo?=
 =?utf-8?B?U3ZvL0xWaG1JK0F2SUdPU2t0R1JKZVdyMVdGbFhqZXV3WW5ldmQ0TVNHWmNR?=
 =?utf-8?B?VHlHeDRrS0VvaE45T2hGL0FzM2JhK2FjODZ3NUxJbzc3VzE2b3RndTczdWc5?=
 =?utf-8?B?aFh1OFVKZ3BTeUZBREJ0Y2xGcVBYRnVwUHd3VnhxcHRQVXl0SHNBbDZUZEVi?=
 =?utf-8?Q?6LOYF0j6XP4HR/1B/TaWJR86STGPChCB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7416014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZWJJenlKcXZHZ1dDTXpVc0dDcnBGYk8yckx6YkwvY3Nxd0IzZitsa1RaTkFr?=
 =?utf-8?B?L2FZbHRwT0ozbjNFZXNmNy9sYm9nRGtMeCticC9iWVVWZkpENXBvSzY5MDU5?=
 =?utf-8?B?VEc0YnZBdDc5U0FCT05HenhpWXc0R0YrR3J4TFlNWDBWYW1vSHFySGhpZUI5?=
 =?utf-8?B?R0tWa0wwU0Ftamg3SUxwdW8xUmw5ZXdDRDVwNWR2UUxUV1UwcUJIYkgwUVVB?=
 =?utf-8?B?SnNoTTNiZHVwNjZKRVFQNVc3ZERhUXUyVkFPZ1puS3JaYUFtcGZNeWxkV1Br?=
 =?utf-8?B?Qm43WlROcHo1R0FuU3hvYWpmMWU1NmNyeGJYL1RlSXZhSC9jMHRLcS9GMVBm?=
 =?utf-8?B?OHZJSmQwMTloTGc5YjdDMitabFlYc0szOWZER3JmZzN6R3pweXZpeUY4VGlt?=
 =?utf-8?B?Wmk0akxPNjhxQ3o0RktOTDFBOS9Sb2M0Sm82UVJteVlSNDRzcTdCbE50TnN3?=
 =?utf-8?B?bTNTSVExanZubjlvWmpaQTJDakhrYWI3WUNZc1NmenZLV2pZRFVpcm04ekNq?=
 =?utf-8?B?RGZ0aThCZCtITmtjdS9iRnpaUlpmNzRUYXJkZ1pseXVDQ1lad3IyWkFaZXBi?=
 =?utf-8?B?SUtKcit0NDR6dFN4Z2RRRzBGUU5GYXg3WE5LR1dqOFRiMU10aXdUUnRhN3hl?=
 =?utf-8?B?cEtWMTNINUM1VDZqL09odmFOZEZrT054azd3bFViSFM3dkM5LzlEbnIrVWJU?=
 =?utf-8?B?SjVuL1JPMnZYSTA4SDVSejVHRUlxSmF3WXJUVjNObDd1TEZDQmtDYTh2Qmhq?=
 =?utf-8?B?OW9aUkZlalpKRXlqR2pwK1NnRGZrdlAvSGRBQmIwR1ZUZlBEMmgraTU4NUpB?=
 =?utf-8?B?L2tFREJ5U3VLcTZudUM0dXhkRm5nK1ZmRGFHT3UvL3RCaUNkNWlYZUtaVU5M?=
 =?utf-8?B?SzV6NFF4cEdHNTdORWxTRzJveXF0aEdoOTZLaDhLcERQN0VCMXpmeWRUNFFX?=
 =?utf-8?B?d0trVHgvNWl2MmJ4VFRzK2Z4anZCUWFOTzBlbGNMR0ZhdnlsOFBvUmlrdjlL?=
 =?utf-8?B?cm9XYUgzS1pXaS8wT3ZmMXFDbmlTRVpza04wRkNlSUVLVXhlQ2RRWGhzcGNB?=
 =?utf-8?B?MFlYeUZGS2RrUkczbGY3UXBmKzNuckg0YTJGL0djREVNM3VZNDVxb2hybzJ0?=
 =?utf-8?B?L1Q0M2lCRUdFSXVRZEYxeGpQQjhZUkEzS3pRU3l5bG5GMVprQjhDbTNZWk93?=
 =?utf-8?B?R3owWUZFbFRsWU5WamVaRy85OEU2MVFaZkVrYjBmK0NGdkswM2JwcU1kKzN6?=
 =?utf-8?B?b0RBSFVUbG1wSm5QaWNsdzRTdHM2djBCQ1l3Um1TTWJyQXN5MjRDeTNpbnox?=
 =?utf-8?B?Z21HaVNCajJmY2h1WmFWSXRQK0FwK1k0STlycHdHTUNwZ2JWSmZKeFU2aXJq?=
 =?utf-8?B?enhHUDVqRHVYTkkxNFRDbnptbmgvNitRY1lsQU9TYWVKakM3MjczRjFFTnlk?=
 =?utf-8?B?MG92bVBFVTdEdzZDNVpqbVdCRU44STlleFpmTE5PS3pCVzlqVE85ZlJqVFRR?=
 =?utf-8?B?WGR1bzZhaGpqNVJXUWVMdHZQTkRZUlpLTzduZUUrank2ejQ5d1EzcGM0MzFY?=
 =?utf-8?B?SVA3VU00RTBVUE5KMHAwdXpuTFdmZjEweExqdzROcFJyOCs3T0tLbjVJOUo5?=
 =?utf-8?B?clh2dGtrQ01vVW0vOUdEelc3ZkZhemMvT00rNnZ0dkF3UkZ5Zjc2VXZXeFli?=
 =?utf-8?B?M3kxQnl6UmVCYXJ5Y2pRSEplbU9QQUVQTG9DRU5oTHQ1TmkrWmlSN3BlbFBq?=
 =?utf-8?B?ZUVoQWE2TUxKdFNEd0R6bU5sVjRZY1gyeHVkeFR2a3lUcEtvV2VpbjhmNjI1?=
 =?utf-8?B?Z01OblYvSlM2cHlQSlY4b1M5R1FvbktXbWtTTUdVOUF1bjhVdk5BRGp6Mkht?=
 =?utf-8?B?OVJub0xwWVlQREE4akhkWEFjWkRZak80NlJZelZwQTBpejdtL2VvSklTN1BR?=
 =?utf-8?B?OTJ4OGVLZEI3OG1aSlVRNDBPdU02NisvZHFkcW9sbTBGY3o2Q2ZiTzIzcjJP?=
 =?utf-8?B?aUI0ak1GcUdoaDFKQ3gwQjQzZnd4SG9BSHdubURMd3NNL2xaS0NuSmRkdkhr?=
 =?utf-8?B?M2tEVllPcGFtVmxLbTAwdTlEbmMyV0RVSzRROURWK3FJSXBldEZyQWJ3QlY2?=
 =?utf-8?B?S2l4SG1zaFFBRmYwaGtHeEpQaWdjMzNZMXFOY0pONHk5K21uVlA1NWVCZXY4?=
 =?utf-8?B?WEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 78662264-a201-40cd-1d4e-08de163f2f17
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2025 16:29:36.4946 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DbNB6qsFRrVeIlQGCIDm0J+exKEwF9KGKAEpLECV5APqiH+/yU7mHrFqYCvc8a30ALAIEN2pYuKRmLIQXVv+2aKOfd2+T5NpRYhuyRazZTk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6673
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761668980; x=1793204980;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jpP8oI3Mdg5tS+6VSROLI51wKbl4xmUxgfPT9hGwgIA=;
 b=Rcd0JoLIyYaZvuWDoA/D24U+2xpurQFOn3AW1VQ5qh4aY/mELBR2s1Zu
 OMCLnoYst7exSuZD85Ju7CcKCBNTYZ2F42ijLfH/U3kYyYlOSNRrqVPrM
 i9GPJXiIrNtW0oFRe4Na1PkVMXHwAMwoLfF9ywDOtMCK6n2J8Rg+ZlzpY
 hpwYB305cvNlYQLk7JIJJx3dbfRoEEtRmX5IbXCacfwwTpKpUWj6q5+HH
 +yBXQRnv6QAyK/B3Y7s/FQ6ooV3wnQsJZsuE1cSxarsp49XzWW1t37S0r
 XLY0p+t2OA/+0Ep0LX+8mm3kM2UVMnUA0dt+eO02i4PLhy4SSeZEMAoUQ
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Rcd0JoLI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 3/3] libeth: xdp: Disable generic kCFI
 pass for libeth_xdp_tx_xmit_bulk()
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

From: Nathan Chancellor <nathan@kernel.org>
Date: Mon, 27 Oct 2025 13:54:09 -0700

> On Mon, Oct 27, 2025 at 03:59:51PM +0100, Alexander Lobakin wrote:
>> Hmmm,
>>
>> For this patch:
>>
>> Acked-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> 
> Thanks a lot for taking a look, even if it seems like we might not
> actually go the route of working around this.
> 
>> However,
>>
>> The XSk metadata infra in the kernel relies on that when we call
>> xsk_tx_metadata_request(), we pass a static const struct with our
>> callbacks and then the compiler makes all these calls direct.
>> This is not limited to libeth (although I realize that it triggered
>> this build failure due to the way how I pass these callbacks), every
>> driver which implements XSk Tx metadata and calls
>> xsk_tx_metadata_request() relies on that these calls will be direct,
>> otherwise there'll be such performance penalty that is unacceptable
>> for XSk speeds.
> 
> Hmmmm, I am not really sure how you could guarantee that these calls are
> turned direct from indirect aside from placing compile time assertions
> around like this... when you say "there'll be such performance penalty

You mean in case of CFI or in general? Because currently on both GCC and
Clang with both OPTIMIZE_FOR_{SIZE,SPEED} they get inlined in every driver.

> that is unacceptable for XSk speeds", does that mean that everything
> will function correctly but slower than expected or does the lack of
> proper speed result in functionality degredation?

Nothing would break, just work way slower than expected.
xsk_tx_metadata_request() is called for each Tx packet (when Tx metadata
is enabled). Average XSK Tx perf is ~35-40 Mpps (millions of packets per
second), often [much] higher. Having an indirect call there would divide
it by n.

> 
>> Maybe xsk_tx_metadata_request() should be __nocfi as well? Or all
>> the callers of it?
> 
> I would only expect __nocfi_generic to be useful for avoiding a problem
> such as this. __nocfi would be too big of a hammer because it would

Yep, sorry, I actually meant __nocfi_generic...

> cause definite problems if these calls were emitted as indirect ones, as
> they would not have the CFI setup on the caller side, resulting in
> problems that are now flagged by commit 894af4a1cde6 ("objtool: Validate
> kCFI calls") in mainline. It sounds like it could be useful on
> xsk_tx_metadata_request() if we decide to further pursue this series but
> given we could just bump the version of LLVM necessary for CONFIG_CFI on
> ARM, we may just go that route.
> 
> Cheers,
> Nathan

Thanks,
Olek
