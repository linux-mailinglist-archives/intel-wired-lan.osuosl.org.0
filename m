Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DbwBpx+oWkUtgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Feb 2026 12:23:08 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CE01B67E7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Feb 2026 12:23:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 198954099A;
	Fri, 27 Feb 2026 11:23:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D5Qc33U4JPcH; Fri, 27 Feb 2026 11:23:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 814D0406D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772191384;
	bh=xMc55TCO+PBWOHbD9pYKhLnMuxXzwffu+5zarltkvUQ=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5Mc+Boga8k1YX3DoBYM7W9gmrM/s7LMFZ9/D7WGghkvBlg3Pq1P+1WADP5Lp6x8Ye
	 9Jmq5Vduc9TIeYXKtMpZU3I/U2NqDXoIgTC/cxsgT/Y8OgsUsAyVZpKqb6ZDMuvBJ/
	 dpLO6mRCQCwYK3k5ukARZSjMhWSqUS4BsiLWyNlknAMZ7gYQL9HF2uyE7c7AhwnEjG
	 zcgLsxDOKXsKyaVGZP5ebsKLWWBqPQV9WIsTo5edI3h4gYZKP6tAHzlJIUfiP3Ntj9
	 5A2cbPUr/pcwxRUKQgifdDVrb0EQYsA08WDzygli31shGAU3lRXiKNOMLpsYEDo8MV
	 ydjAbg29QNxVA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 814D0406D4;
	Fri, 27 Feb 2026 11:23:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C3A23131
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 11:23:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C0FBF60A39
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 11:23:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c27Nfvtw0WD2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Feb 2026 11:23:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5FF716090A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5FF716090A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5FF716090A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Feb 2026 11:23:00 +0000 (UTC)
X-CSE-ConnectionGUID: As0U3ClOQ6Gtmeqewp6fbQ==
X-CSE-MsgGUID: K61ZqHHNSPKcu8aCggtAvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="77112454"
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; d="scan'208";a="77112454"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 03:22:59 -0800
X-CSE-ConnectionGUID: 2rOlBC0fQvSHhtDhlXu1ig==
X-CSE-MsgGUID: +3lwWR40S8yFYib3uVcJBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; d="scan'208";a="221020082"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 03:22:59 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Feb 2026 03:22:58 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 27 Feb 2026 03:22:58 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.29) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Feb 2026 03:22:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OiEDdCAOLPj8FVFCVD9DNy7YVtx3aCzgug/808v+JhA2Lnk8T2g73QJ608DwvSJes4Vz8jasUSz6XucuHM4iwU0IXswLVFNmdm967zHM7AOJBNoRbFMLNk5N1WS3TWjDUHAnTA6uRXYa7tLy5UTf+P3pwmloKXvMNgI10Y/rA1Sgne3wzNslfm92CEake5mrIIgj5/e8SD33Pok/IiR77tuVZ4zfSpX87vEbMl2lhyzrPCeQa3MC4staXt3Weyx9Qbwlp04IgFZSzLjhUZKrB5u+4t41y/S/ZXA2R64eobLgP5xfLtpNE9lM6lZX4OBqoyvhJr8JjpglU7WOmOQ19g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xMc55TCO+PBWOHbD9pYKhLnMuxXzwffu+5zarltkvUQ=;
 b=SN6ADGcSx0hf89ZF0xSNVk/zT+6OMCxLdKVr8zfTIpPf0rB/qxWIk7CSfj+AGkBvPRsMkY1nrhNul7YZnrgLPGbvaJr2b2ZPNmdu5lVZ1P8QXIiMcD9aXwbndeTuujExf9v32OhC7g72oRyso6rvEs01sdaoxITDFBUDvNQTlK4l4gp+gaUeF6nLcUujbZHwS5sFXekLQ0thrkSXqYR2KAdU3oykT1kbnq6BqSyiirneZnKZEvFgVW6+Mi/rpfKqdY0kRUHJY0gpr9Din4yBuLajZMuI3XVWeP3TTmGacI8p33K21IPtc4UcGEcyYI4k0evlyYxiqWKWrFEn8YzH+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 IA1PR11MB7891.namprd11.prod.outlook.com (2603:10b6:208:3fa::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9654.16; Fri, 27 Feb 2026 11:22:55 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d9b3:e942:2686:3cdd]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d9b3:e942:2686:3cdd%6]) with mapi id 15.20.9654.015; Fri, 27 Feb 2026
 11:22:55 +0000
Date: Fri, 27 Feb 2026 12:22:41 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>
CC: <bpf@vger.kernel.org>, Claudiu Manoil <claudiu.manoil@nxp.com>, "Vladimir
 Oltean" <vladimir.oltean@nxp.com>, Wei Fang <wei.fang@nxp.com>, Clark Wang
 <xiaoning.wang@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>, "Andrii
 Nakryiko" <andrii@kernel.org>, Martin KaFai Lau <martin.lau@linux.dev>,
 "Eduard Zingerman" <eddyz87@gmail.com>, Song Liu <song@kernel.org>, Yonghong
 Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>, Hao Luo
 <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>, Simon Horman
 <horms@kernel.org>, Shuah Khan <shuah@kernel.org>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, "Bastien Curutchet (eBPF Foundation)"
 <bastien.curutchet@bootlin.com>, Tushar Vyavahare
 <tushar.vyavahare@intel.com>, Jason Xing <kernelxing@tencent.com>, Ricardo
 =?iso-8859-1?Q?B=2E_Marli=E8re?= <rbm@suse.com>, Eelco Chaudron
 <echaudro@redhat.com>, Lorenzo Bianconi <lorenzo@kernel.org>, "Toke
 Hoiland-Jorgensen" <toke@redhat.com>, <imx@lists.linux.dev>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <linux-kselftest@vger.kernel.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, Dragos Tatulea
 <dtatulea@nvidia.com>
Message-ID: <aaF+gUtL/qzvgFym@boxer>
References: <20260217132450.1936200-1-larysa.zaremba@intel.com>
 <20260217132450.1936200-5-larysa.zaremba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260217132450.1936200-5-larysa.zaremba@intel.com>
X-ClientProxiedBy: TL2P290CA0002.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::12) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|IA1PR11MB7891:EE_
X-MS-Office365-Filtering-Correlation-Id: c0d7e9a4-aefb-4eeb-003c-08de75f28de1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 6bpreru/XZKPNRko0Ty4Gvhjbwr/l3fhkUukKE5q6FTNWuBSojWR0QG/AdItAvf1lSsJgAk/peGB0NN9SmssvcTeNhDVfCcmKRzLY0GACkLesOE5Fu51kD1Fe5xeUf2OYF4omX5lvGBq5zfqn8qgv3sKiETtVaZ9um0Wfc8xUV28Wr57jOYf7iXYQn4YMeHwc377M7P34vOcdIdEXghFN0BBJ9DqU4OdJ/GuiBlk5wGq1x7jxrUwEZWglo3tjBzDzV+szoC71wrwMs7xZltrsG2hFe0tBBbjxBnEFwKoTPs3ctJYI1Cd/BXpNuJGOoboHRn3kxupTA42pZ/Zd8UDf+5NbV3bUT8JinwfS1o6UUZObBKn752qUtz+IQbncwGrAH42FFHbrmKB5aky+DAMdMoneACK/NAykrNltAsgcZTxu1jM5wyqLqpVQzsSWgu2E4j5bR0iQqqkstHimTYnPNz/igUM2ZjijrY68a/iuUricG/optqiJWSfapT3y4uDksm1S1cKSsEQGfxPG0eht50iSfoMLK3WQWT3jJilCutu+WtGvC/nKZ66N2bexSitkz1y7KqfGF/HDfAFOtU0mfIfP26O3qFp7CUC6sqxOnYK6ld1YFbnTBz3K0iXz5ZxJkN5X1lNCscCDNxID2HL1nJ8VdvnuPpjvMzRSyab3SnWoyFExjDAv1+7XtqowI7X9OpTPoZn00pBog9elg3A3ECYZ2K14XhIAO0Mag0S/EI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?X7I8IpnEC6HWR14L+9NM4ZxSwRdIG/iNSf6LFnblWMFUHmu2YJqmNy28p8p8?=
 =?us-ascii?Q?OZM822N5cOYaQ3FShJqk8JhzvYmrY+s5lqz8Vwlr1UiHohofFcTo1F1MY4rz?=
 =?us-ascii?Q?DitaCQnbYndjuyXFb1JhPiG2gINqnmNFiwCzwzG0srDgbmJwPzDC9iAcOloG?=
 =?us-ascii?Q?8Vge6NDia3+w4LTbx9RDJRPX99MjPzq4BSyVHV9Rn+pjwuiZtz84UG90tSSq?=
 =?us-ascii?Q?iKhKo64H+D2B9MrR6x3vXuhDvTqJBFTGm//91Waef2e1FOyXDBb8n232SbTp?=
 =?us-ascii?Q?N0aYrXjRhe6/KgO5yoxhnAJiJ79eWQ176fDfyTw5b0VkCovKScMZlu2vUPzu?=
 =?us-ascii?Q?EHBPcIMOSYGVRpdXFpcxd7PU33msh7S2z+adQK2MFNvK7amPDp61yI9/4pKw?=
 =?us-ascii?Q?YWtUtm3GenC1sis4DnkbmdA/VxSIWby3S0phVLhykmgo7PxjIQUAPzAtJYOB?=
 =?us-ascii?Q?gb470KZsNaTtZU+RU50by5ycM+LzemI7WQvCkB5Uae6ICW36QIfhpWqWzdUZ?=
 =?us-ascii?Q?/lyhT5bJ3ZLhHkgLZFyjh9TDHz0rFnW33i3jqPLwdiHzW44bwNiQJBV/GuhO?=
 =?us-ascii?Q?i1QdkjA5VTUXVdvAc9go7nO2NB8+Fd3D5TGn2Clboo0N1ro/7apvos+U9XTl?=
 =?us-ascii?Q?EhJCIg2gkLSHgux1vvL3QDCNk8cLLjr2nPs1NqRGri/FQkzAP6fsX/z/NFUY?=
 =?us-ascii?Q?eAxZ495Vd0Dzp59qPLThtZPfb73xtBGrbaUHbNQ48+ZExoysRZ6nliNZ3xHM?=
 =?us-ascii?Q?7J4BPA+RRYTUd/IOnhDGdk4/xIkyl6nRAaWE5ehQdBxtfuUm9/0BXnZRmlPM?=
 =?us-ascii?Q?RbSo2IgeDLeHQ964VHQ83bmDWxe71NXP2H/ARFP6CdnLtz9lbAtbh2Ue1wrP?=
 =?us-ascii?Q?81X3c9KoY99O/14O8qxaFpIftaz4JbEH2Vps6d2DqDaA1W51h2E9JmeByRaZ?=
 =?us-ascii?Q?zhSoYieuis6b4Y1btZ+qc1SwMjwUMABgf5FbQYqC2w7yBnLL/V+d6aYL3gwF?=
 =?us-ascii?Q?RN/0JUoNlkUWuaTQNosjMaQr6XtQIweswl5aL7FOj4MkRTAhzmTy37uA4M7J?=
 =?us-ascii?Q?jlngykZII7vEkovtUR3VgeJxqRTJxCZQqcsHb/ODjF5Gie6mxNP0IbrjZu1q?=
 =?us-ascii?Q?/tzHuoxiUugESCtjddW96IDE1JhVx2gPZEVmfXPHbp0UasJe3yCwshp9qeoh?=
 =?us-ascii?Q?sHzDzQfLFk3BP4y6L6IkQVqzxXFhnoxgBTcs0oV0JzPH2ZrodX8xLU0kTS/e?=
 =?us-ascii?Q?iP02X/ksKtC0YonqrQzQAQhyy/MZV29j+BD/Fy4YYF8qyfYbfMDxZoYJmriw?=
 =?us-ascii?Q?zyKSAkkSQzsgBwoy6Bs+HU0bcSTa/Rc0Q0CzuZytuNJ34ax+NGa/7RS4LkWl?=
 =?us-ascii?Q?c+mML5LT1U3MbH2h39WLDXXjd3uIz5wygyM5ekKwKo1hY6B/eNYcLwxv8ShO?=
 =?us-ascii?Q?4gC94zJLy0A9BcNYDSgVmEJEtViokfL3t/bRCW5cwTB7WAvWr5LVE53sZwui?=
 =?us-ascii?Q?owQUQ3gcowkVdA7xZWCwcR+uEFRSOtc13tvUtlcr0/JeiNfvdOGZWIfhqE9k?=
 =?us-ascii?Q?uE9L/mhZXtQOY1uOc38mSDTdMuU3zoaNNRJCVeIcafDQlfpKva/cfgz1wQQi?=
 =?us-ascii?Q?EiX0DNRGBjC4tNGin/9gxkMonZvN3VPfMb/Y+Zl2LgbE/ZIdUkL3gCMyruwF?=
 =?us-ascii?Q?U3AEe9RTLWSkhZLXeaKTI0uPrpldo5mHZUTQSPzXPz7CPtn+dLZ/G7G3uXRs?=
 =?us-ascii?Q?DO6ZlxcLoihQ8nc811haL9PHb+HefDk=3D?=
X-Exchange-RoutingPolicyChecked: vd/m13TISoKCygtGOXeB4gxLQxl/LRHevHYFrgTUnbRnyczsJErXXtDQt/NG1s4m6RVRx50vn5DGXcoCb0mK176peY8VKcYLRBCtZ2ad77Y2n1g2UQ9Y0JqoHlyRKGq86QyVgaIJCpEMKNtqeQhIN/V1wEl7tl5rFI5OPrx0CBRnCmuuelQaTawUjQ4qBibatRn24+vjl0Vo7rhHqExR1qOMtAq3XMaqRDWX4mqLUYp5FztcDpxgV72AXGmF0g+o/TSHhylyKGo/ErhMw03UIJddZoJ5NV48X5BHTKAY+x4z4m/tCsHvioVOts3qWPaUp4xASmwbwzydZp0uDvDbgg==
X-MS-Exchange-CrossTenant-Network-Message-Id: c0d7e9a4-aefb-4eeb-003c-08de75f28de1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2026 11:22:55.8085 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CF2Lrdmkykn3qQpkZ6GirE8u20FCcCEIZ3okHK5m3QGZGUp5hQdGUfrD0A5B6FA31K7k5ftWb/ZONMWJROmOIQaRp77cUCoB9EbDlOkrmBw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7891
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772191380; x=1803727380;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=myy24GxQYnfZw+/FKjIhiLpSHYAyIc5P7fGjprHgixY=;
 b=eiMXHfJkpdoTpoJKQvhjj3654igBLFis8YI7dz/MovqzS5LFgtAmqMHY
 dktUJ60NjCKcOjYOfxRDFufSs/eMqRjL+ASMCT698NTZ82FEZIOepAsIV
 5WhLX5H70TXCpV2+Jj1PXc+mBuq6mgvHD2L4dJrUoDWLLF1FFC1t1oee0
 qvdu2qyZx7U6QiNPJjMDbrakJlGwUUGMsbZYDDYTMZ9Yy/pV7ZcLdJEdz
 aSGOi+kq4c5E8CC97FgC2KnpiD2+0QYejDTxy2dqMAsiJQLvj0aU+mpln
 uwe8xsKlDszIaTqgd5d4uh0O3ht/lOeVSOPG6GPYRcz7QPMEaefZhf28l
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eiMXHfJk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf v3 4/9] ice: change XDP RxQ
 frag_size from DMA write length to xdp.frame_sz
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[43];
	FORGED_RECIPIENTS(0.00)[m:larysa.zaremba@intel.com,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:vladimir.oltean@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:dtatulea@nvidia.c
 om,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,nxp.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,intel.com,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,lists.osuosl.org,nvidia.com];
	NEURAL_HAM(-0.00)[-0.975];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 03CE01B67E7
X-Rspamd-Action: no action

On Tue, Feb 17, 2026 at 02:24:42PM +0100, Larysa Zaremba wrote:
> The only user of frag_size field in XDP RxQ info is
> bpf_xdp_frags_increase_tail(). It clearly expects whole buff size instead
> of DMA write size. Different assumptions in ice driver configuration lead
> to negative tailroom.
> 
> This allows to trigger kernel panic, when using
> XDP_ADJUST_TAIL_GROW_MULTI_BUFF xskxceiver test and changing packet size to
> 6912 and the requested offset to a huge value, e.g.
> XSK_UMEM__MAX_FRAME_SIZE * 100.
> 
> Due to other quirks of the ZC configuration in ice, panic is not observed
> in ZC mode, but tailroom growing still fails when it should not.
> 
> Use fill queue buffer truesize instead of DMA write size in XDP RxQ info.
> Fix ZC mode too by using the new helper.
> 
> Fixes: 2fba7dc5157b ("ice: Add support for XDP multi-buffer on Rx side")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
> index 511d803cf0a4..27ab899a4052 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.c
> +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> @@ -659,7 +659,6 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
>  {
>  	struct device *dev = ice_pf_to_dev(ring->vsi->back);
>  	u32 num_bufs = ICE_DESC_UNUSED(ring);
> -	u32 rx_buf_len;
>  	int err;
>  
>  	if (ring->vsi->type == ICE_VSI_PF || ring->vsi->type == ICE_VSI_SF) {
> @@ -669,12 +668,12 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
>  			return err;
>  
>  		if (ring->xsk_pool) {
> -			rx_buf_len =
> -				xsk_pool_get_rx_frame_size(ring->xsk_pool);

ice_setup_rx_ctx() consumes ring->rx_buf_len. This can't come from
page_pool when you have configured xsk_pool on a given rxq. I believe we
need a setting:

	ring->rx_buf_len =
		xsk_pool_get_rx_frame_size(ring->xsk_pool);

> +			u32 frag_size =
> +				xsk_pool_get_rx_frag_step(ring->xsk_pool);
>  			err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
>  						 ring->q_index,
>  						 ring->q_vector->napi.napi_id,
> -						 rx_buf_len);
> +						 frag_size);
>  			if (err)
>  				return err;
>  			err = xdp_rxq_info_reg_mem_model(&ring->xdp_rxq,
> @@ -694,7 +693,7 @@ static int ice_vsi_cfg_rxq(struct ice_rx_ring *ring)
>  			err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
>  						 ring->q_index,
>  						 ring->q_vector->napi.napi_id,
> -						 ring->rx_buf_len);
> +						 ring->truesize);
>  			if (err)
>  				goto err_destroy_fq;
>  
> -- 
> 2.52.0
> 
