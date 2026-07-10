Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AkXDF3nFUGpU4wIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2026 12:12:09 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA037397D7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2026 12:12:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=COyyq6jJ;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 505FB4091F;
	Fri, 10 Jul 2026 10:12:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mpqyneiHmdzq; Fri, 10 Jul 2026 10:12:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 97CBC40925
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783678326;
	bh=uodAMCsWQSpnqhu5rd7+bBZkbHwZhWmvP7GSt1+63cA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=COyyq6jJeuo7rmApn9s7qNWahJMUfaWdGhsMmqpvqFXYwh+XcK9CQtX0/ee5TJJSc
	 bWtHfyqTui6Hf4x9ex3dD2vpRzfYoSXnOH0q5N3XUaemkPc5S7XUf5HIVfOzJG0XFa
	 d3e7FU3CiijOq93xoBlDEax7quOrurH9Kk07cJIrGRulrEAvM2dMd+hMdE3bUCQH/T
	 g3BNK2HejuqAbrVxmCrudKe6r2EZn0VFtj6TyhLPuDCfD4Odi5tFTDxklMfza0cdc/
	 R/ib7yU1pXsJk5DU8CGCDqSmlJdZRK0f/SyKQnxzgNa4lR5+q2ISnlIqHo2OFIwgxP
	 qP8GHUzeMvFhg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 97CBC40925;
	Fri, 10 Jul 2026 10:12:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E9B41320
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 10:12:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DB8C46068C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 10:12:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nlaarsE4o4Sd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2026 10:12:04 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C4D2360685
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C4D2360685
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C4D2360685
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2026 10:12:03 +0000 (UTC)
X-CSE-ConnectionGUID: DvN0L2ZlQnGCOn22TBcL2A==
X-CSE-MsgGUID: CNXocXISQI+0pg0ErSWmvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="88060286"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="88060286"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2026 03:12:03 -0700
X-CSE-ConnectionGUID: wxY4vwSfQ8Wyw9J8KEdo0A==
X-CSE-MsgGUID: ujB29yQDRR2OKNkiaRTX1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="293047642"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2026 03:12:02 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Fri, 10 Jul 2026 03:12:01 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Fri, 10 Jul 2026 03:12:01 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.14) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Fri, 10 Jul 2026 03:12:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mUCCHqQQaIejfUmrz+tUNWweZue77PnBUQfoFhWx7LvsNf0BuX4HkBf7aCUYEx031gZ/A1PUZxZ80sLbjVp96OXoxCCRolrvxh8LdR7yck17IrAre2KftPgsV0xS38q4/vHFW1alq4EoPupEeAShq7ISgwMfp/Z1b+vv2X7GvqVeKpexWHGBRI2McCoUviSgA2VwleIIDYRZRyJ0XPcR2pf3JBRmmnFylNUgnmAXiHWCqxHUVL6QuPk9i+siL9o0nWpaM/KOidHSHIqbLOi/hoTqQOEnyRFqHEltaR0CQnBnAU+MRTdc7HYfN6ENlaG41353XNZiO9vyQVPWA2zQXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uodAMCsWQSpnqhu5rd7+bBZkbHwZhWmvP7GSt1+63cA=;
 b=WgwaPCGTqPseBgO+hNAbIDorSOxWyoPBP2mYs0xGX7G8Sv6CmQjOJCMuTXLr7OhKf+CsgRJBOtvxVALcUbLx2kL5Huq7lyi5fRmsdxDys0gLZ8y+GC2ho6WadWO1k/Qa4Fm61kr3T6P2tU/eefw2CGSfzvGLShcwRlY7JWdgPRvxZBKzHgqLMZgK9JaV4Hw4hv7xhne2M379Db81Q0lqmrKlhHyEDTaVxYCc0T3ldlBDdR7zyK7wjplYAv8S8SV/FadXLsZu0dc2ZZARldqUSioX4YA1I4xb+LCo2t+pec5HK0gL8eNpe8n0gIuiO1ulZ/lhUJadhk9FCHH/EAksvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by LV8PR11MB8509.namprd11.prod.outlook.com (2603:10b6:408:1e6::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Fri, 10 Jul
 2026 10:11:58 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%6]) with mapi id 15.21.0181.014; Fri, 10 Jul 2026
 10:11:58 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Vladimir Vdovin <deliran@verdict.gg>, Lorenzo Bianconi
 <lorenzo@kernel.org>, Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski
 <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann
 <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, "John
 Fastabend" <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, Andrii Nakryiko <andrii@kernel.org>, "Martin
 KaFai Lau" <martin.lau@linux.dev>, Eduard Zingerman <eddyz87@gmail.com>, Song
 Liu <song@kernel.org>, Yonghong Song <yonghong.song@linux.dev>, "KP Singh"
 <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>, Jiri Olsa
 <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>
CC: Jakub Sitnicki <jakub@cloudflare.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>
Thread-Topic: [PATCH bpf-next v4 5/6] selftests/bpf: Add
 bpf_xdp_metadata_rx_checksum support to xdp_hw_metadat prog
Thread-Index: AQHdDxlVGeC1ogq5gkCN+YqiGnc+SrZmisrQ
Date: Fri, 10 Jul 2026 10:11:58 +0000
Message-ID: <IA3PR11MB8986D5C5AB72EA2F33632933E5FD2@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260708203410.45121-1-deliran@verdict.gg>
 <20260708203410.45121-6-deliran@verdict.gg>
In-Reply-To: <20260708203410.45121-6-deliran@verdict.gg>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|LV8PR11MB8509:EE_
x-ms-office365-filtering-correlation-id: 17ae1168-f5f9-4084-c2bb-08dede6bad53
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|23010399003|376014|366016|1800799024|38070700021|6133799003|56012099006|11063799006|921020|4143699003|22082099003|18002099003;
x-microsoft-antispam-message-info: SBvV6FzZMEwvU4Xp0BMCsI6Bx4rItV1efd55uuqgIG1NTPiUT5uCVRLpPcCFhoNuTMGHVk7vXNEWdtmzhAnmBO9izBK71TJ63eFX5FyV3Ah9Q0ssACBo7ig4db96r9MgpXtiCg8BmYCpchkPzn6wyViLr/d2Omekj+pe8wxVJX2zsoBZ2m+GYIy3id9WGEPkEW2OpzU9sYTm1WuJJt3rVZQPFHxy8oq61ZgZIy851PbkGAPHu8ehUKGFSUwampH9NJ3zavkQJWmFRyQSAA4G0NRO8iFwJSJKLZK98tkGVf3S36Mq5BlkOCxkGzT60TUXlOdj0C4NCyPb+qTosI0+hXet0TjCXNboNRHdfrUn47EK40mPDx78La/Wb66i9TXh5mghY8EYPdYRey0w9wh9T/FR+hehwhYlGqX1ueuofpu3lXqKcn5fwVxF+I5Bm33G8RxUtzc1qfGYboWlGgPNw6FXFmRYFMtZlxhxg5FN68DycXm3I1ex5Ioz5KWFjNIo4sK/dNqmZyRG5EzTowwPQ2QaQ2pb3dFBhaGIY//Lhoo2Rg/Rn8Pst29K3wcvRDv6HutPOs/XZTbqHik/z/YLF7CdPviu0XX9AN98iqjtoyTNQSQlWJC8wttRd08TwG78b2VyOTrFa6l0a5+uU3qXk2a2I/SjwCy7FUzY49LRoRH1Jdrr+L8VdjqWCybnC9docPN9bbUHNTo8fkaoCnqKx5qQZkrtxhgih9XL0F+QefF8HGE3ECDkz9YcQO9CRk8A
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(23010399003)(376014)(366016)(1800799024)(38070700021)(6133799003)(56012099006)(11063799006)(921020)(4143699003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nxCBa5nxGAcUWvXL0F3aMrOpTOvGWn3we/AL2v1wo7Ch+A8W0PVNVHYpcNMu?=
 =?us-ascii?Q?NzVwm/cNBczRxfUvw1o9ltMI+C61MLd1AfZ+So5ZfPlkqUEvoy/BNSr17cx2?=
 =?us-ascii?Q?wqWpm3r9Kc5GYu1AAsQWzW3/BXfNWaAfi+UuivB6QzoX7PLI25zAljs+PkH0?=
 =?us-ascii?Q?gqAD2ZBibTm2zYjmt34wdj13hNpdSqD8AnSbvm9ANstG4BCF7+cGg0Vbv0yX?=
 =?us-ascii?Q?FjNhWsjA5S4d8Cw54GFSN/fi8boETx5nZ3hb6/JsMOXk1lFho1OOYbP8UVmr?=
 =?us-ascii?Q?7Dsc0Yw1TSNPRPQE2r9P5OcSS4WEwb3P4V/DeDHSfvX/FUdhWvdChHfEGvKN?=
 =?us-ascii?Q?Ky5QMMDrnD1lCz7wd/7PWQXyzaG7J4MQISKlJOYSVMtjv4c0VsVduJr+FMYx?=
 =?us-ascii?Q?589EQ6LNMZqWZ2idOzdsRn6k8LcvAxED7oNQURRn15qbNuuOeBP3Z0ssj/Mp?=
 =?us-ascii?Q?LoxmaL5g5ynYcfQLqtfIlToWGnWP76rIXx01u8lnoX/OjNm3aHuFoaQImCbq?=
 =?us-ascii?Q?TDbjYRezMkCkaEZ+a4wT16DRdptciIVuKlWm4RocuWqb+LVAsIeUX9xv+5J+?=
 =?us-ascii?Q?DcOBPhVtW+tiZxlb7aAsCdkX/RV+uUFS/Os0x9BY3nhjLRsFr4cTe03+KDYy?=
 =?us-ascii?Q?E5+qjMcK/GzQ/vmvVkTJqPHahKXiSbXZn2x8lWkW76yU+dWbXI35V5d320y7?=
 =?us-ascii?Q?MZP07tu2loz+wU/hILa/kb8Erc21Ag80kNKpAXjuwDZU3yVglUz4kxQCDXPE?=
 =?us-ascii?Q?C1PTdoBPjFyZIwJcNGGO8IfLh6sQr7onw5xN5qEdER+nmhlVwF4C2XpY9GrD?=
 =?us-ascii?Q?+ZJkjSPpfliVOJ0i7OUZA1mQ6/ftuDMYQxQhl4G819AKGKihwxljoksaSyVz?=
 =?us-ascii?Q?WFpgUJFV8JluaO6XzFKuwMNJtHhKO8Rt2/hqhep0Fmd9Maw6qY3WpGIcThiF?=
 =?us-ascii?Q?/kd/AHfiO0G2sQnNXdSY2AxwHttdeH4LCFpxVa6D9sGfIsxWP261Z3bd2UwO?=
 =?us-ascii?Q?Vn13mYy4ua8wOGFpZ67YCQMmCsBEi5q7TEw7Xnm5u51eS3ZtJZit830/Mx2F?=
 =?us-ascii?Q?+u6Fc11VwM36PUxWfBxZT744vApYIxvQrxa2RRwXyVLfld4qwnulMtTvFsXD?=
 =?us-ascii?Q?b/ALt4wIS1mMcInY6oNym4Bf0dvjnOuApZcG2I9YU8tDTzuLNZ25OXL+IT9/?=
 =?us-ascii?Q?8SKmqPuObetjkCXNOd9Iyl9ugV0N/+Kc4/Y+9Kzl4QY6LlDme6xOK5j4Xyxs?=
 =?us-ascii?Q?HKT9bbb51T8zn0d/FjaWe+P5IWpHLVXamDyQclhHj+7Vh5iFIbV+/Wfy7/pK?=
 =?us-ascii?Q?J7xKxBIxD7Z4IoXS4mdXp8iYmyx0m7e6m8IzQO5ajzhXVe5bZLcNd5e3bdqk?=
 =?us-ascii?Q?aK3zcwZDciwiS5pg61IQqjP7timY3odAvhE4aOxeUkdjbjRMBo/D78E+7eP/?=
 =?us-ascii?Q?jFpVH9KrZ0cCWnGyerD6nBmf7wLkGEMXMRXiyuscyu61Xb9VH6XdFdYBLOMM?=
 =?us-ascii?Q?8iwUSk1nxLg1TV3bVJhuCRSUlS++iFwzVLpiraVIZtP4slSZdNthzCJAuv7s?=
 =?us-ascii?Q?Rg3/T56voGXtApXNcEwO+U2uJm3Sa6SzPZijTO62KrMZPpTdApHyBsk0CYJD?=
 =?us-ascii?Q?sdtXrkd1fgJXNGOZSAa4LP8U4TkhSetcWFdTJ2L5EhchgPTu5vi+b6d7QTG1?=
 =?us-ascii?Q?CyGYQsrWrVBhq2Fsz5ZqfXpWLSqyy5qeG/flifxi+2rzZgQe6AtiQNEhz2Cf?=
 =?us-ascii?Q?cKweqUB6eg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Jm9u0ca1naURMqZMGsHNt5AaRAiaY9lWVql8Zwb86hSuhtJyu0nuyFBkYXjKgvgt8F8LGsCh/KAnoiMZm6zpw6xjQoDQavVpGP2jsnb1PQCpy52djXfbg4cRug1wz4y1eLlHNbbEzAMp4nYQSegrg1oVHD8FIvWtkjBQvMlpTkUZtCyB6tEME4+Vbt9iGYa2u8KXB382bYVDNugx4GMCzC5WxnD8dTEV7xn2xMisPkF73qcGZFLo8sGRh64Bk/Fcd1L7nRCALe0ovmLiM2Iyximl9KtjVvqfE72/RrGC+IHAuaDa7DmPqP7GO9B3XZfb3emOPrfnfn9tD224ZodBhA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17ae1168-f5f9-4084-c2bb-08dede6bad53
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2026 10:11:58.3604 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pMy9ZeZ4P+Dq2G6YatDedvNYFzilO37YpL8D+yADZgFlcr+3YiVo0PAEfls3BdHM87YTwbNuLaOMaVb+DtD4znHvGYWvNSpNAcsvP+ocU4g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8509
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783678324; x=1815214324;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B5wDbAcMvqvVsLuHRg3ULuKUtJSkVm+fHx88xXY9rgo=;
 b=K9OMPYroOws8xmeLWSj2l/hOmJ+BHtC/wOJ6NbSs7UmHytZgafcWwb4d
 9CJrkv+XjiR83RSARynuR3upKEIZ9hmMm3vNwK7CeuXiwAYM3K7BpWc40
 VWS5p5SqH/t/5krR42ThHrVexO0UJcoZlY2ltTMMcshSsiYyZXkzkSxPP
 6UyFicjCbuwYcOL06PVBS7MMUi9EU6pjQ1AeYHHiw0evQltiUH9Xt+9VO
 S1Zmb4dI+hLT3ojG/CNdJI+eiQY/sW3z2diN3owpHWhKdR0m6TnxCtHPS
 ZL0d2ZjFUUy56jWrdxtBYl1NPYCVju7P8+3+38wyLSE43aALHPCIu+NAq
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K9OMPYro
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v4 5/6] selftests/bpf: Add
 bpf_xdp_metadata_rx_checksum support to xdp_hw_metadat prog
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:deliran@verdict.gg,m:lorenzo@kernel.org,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:shuah@kernel.org,m:maciej.fijalkowski@intel.com,m:jakub@cloudflare.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[verdict.gg,kernel.org,gmail.com,davemloft.net,google.com,redhat.com,iogearbox.net,fomichev.me,lunn.ch,intel.com,linux.dev];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9EA037397D7



> -----Original Message-----
> From: Vladimir Vdovin <deliran@verdict.gg>
> Sent: Wednesday, July 8, 2026 10:34 PM
> To: Lorenzo Bianconi <lorenzo@kernel.org>; Donald Hunter
> <donald.hunter@gmail.com>; Jakub Kicinski <kuba@kernel.org>; David S .
> Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>;
> Paolo Abeni <pabeni@redhat.com>; Simon Horman <horms@kernel.org>;
> Alexei Starovoitov <ast@kernel.org>; Daniel Borkmann
> <daniel@iogearbox.net>; Jesper Dangaard Brouer <hawk@kernel.org>; John
> Fastabend <john.fastabend@gmail.com>; Stanislav Fomichev
> <sdf@fomichev.me>; Andrew Lunn <andrew+netdev@lunn.ch>; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Andrii Nakryiko <andrii@kernel.org>;
> Martin KaFai Lau <martin.lau@linux.dev>; Eduard Zingerman
> <eddyz87@gmail.com>; Song Liu <song@kernel.org>; Yonghong Song
> <yonghong.song@linux.dev>; KP Singh <kpsingh@kernel.org>; Hao Luo
> <haoluo@google.com>; Jiri Olsa <jolsa@kernel.org>; Shuah Khan
> <shuah@kernel.org>; Fijalkowski, Maciej <maciej.fijalkowski@intel.com>
> Cc: Jakub Sitnicki <jakub@cloudflare.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>; netdev@vger.kernel.org;
> bpf@vger.kernel.org; intel-wired-lan@lists.osuosl.org; linux-
> kselftest@vger.kernel.org; Vladimir Vdovin <deliran@verdict.gg>
> Subject: [PATCH bpf-next v4 5/6] selftests/bpf: Add
> bpf_xdp_metadata_rx_checksum support to xdp_hw_metadat prog
>=20
> From: Lorenzo Bianconi <lorenzo@kernel.org>
>=20
> Introduce the capability to dump HW rx checksum in xdp_hw_metadata
> program via bpf_xdp_metadata_rx_checksum() kfunc.
>=20
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> Signed-off-by: Vladimir Vdovin <deliran@verdict.gg>
> ---
>  .../selftests/bpf/progs/xdp_hw_metadata.c     |  7 +++++
>  tools/testing/selftests/bpf/xdp_hw_metadata.c | 31
> +++++++++++++++++++
>  tools/testing/selftests/bpf/xdp_metadata.h    | 12 ++++---
>  3 files changed, 46 insertions(+), 4 deletions(-)
>=20
> diff --git a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
> b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
> index 330ece2eabdb..5eeadb7e27cf 100644
> --- a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
> +++ b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
> @@ -110,6 +110,13 @@ int rx(struct xdp_md *ctx)
>  	else
>  		meta->hint_valid |=3D XDP_META_FIELD_VLAN_TAG;
>=20
> +	err =3D bpf_xdp_metadata_rx_checksum(ctx, &meta->ip_summed,
> +					   &meta->cksum, &meta-
> >cksum_level);
> +	if (err)
> +		meta->rx_cksum_err =3D err;
> +	else
> +		meta->hint_valid |=3D XDP_META_FIELD_CHECKSUM;
> +
>  	__sync_add_and_fetch(&pkts_redir, 1);
>  	return bpf_redirect_map(&xsk, ctx->rx_queue_index, XDP_PASS);
> } diff --git a/tools/testing/selftests/bpf/xdp_hw_metadata.c
> b/tools/testing/selftests/bpf/xdp_hw_metadata.c
> index 6db3b5555a22..c63a70a54075 100644
> --- a/tools/testing/selftests/bpf/xdp_hw_metadata.c
> +++ b/tools/testing/selftests/bpf/xdp_hw_metadata.c
> @@ -8,6 +8,7 @@
>   * - Metadata verified:
>   *   - rx_timestamp
>   *   - rx_hash
> + *   - rx_checksum
>   *
>   * TX:
>   * - UDP 9091 packets trigger TX reply
> @@ -219,6 +220,30 @@ static void print_vlan_tci(__u16 tag)
>  	printf("PCP=3D%u, DEI=3D%d, VID=3D0x%X\n", pcp, dei, vlan_id);  }
>=20
> +static void print_rx_cksum(__u8 ip_summed, __u32 cksum, __u8
> +cksum_level) {
> +	const char *cksum_str;
> +
> +	switch (ip_summed) {
> +	case XDP_CHECKSUM_COMPLETE | XDP_CHECKSUM_UNNECESSARY:
> +		cksum_str =3D "CHECKSUM_COMPLETE,CHECKSUM_UNNECESSARY";
> +		break;
> +	case XDP_CHECKSUM_UNNECESSARY:
> +		cksum_str =3D "CHECKSUM_UNNECESSARY";
> +		break;
> +	case XDP_CHECKSUM_COMPLETE:
> +		cksum_str =3D "CHECKSUM_COMPLETE";
> +		break;
> +	case XDP_CHECKSUM_NONE:
> +	default:
> +		cksum_str =3D "CHECKSUM_NONE";
> +		break;
> +	}
> +
> +	printf("rx-cksum: %s, csum=3D0x%x, cksum_level=3D0x%x\n",
> +	       cksum_str, cksum, cksum_level); }
> +
>  static void verify_xdp_metadata(void *data, clockid_t clock_id)  {
>  	struct xdp_meta *meta;
> @@ -254,6 +279,12 @@ static void verify_xdp_metadata(void *data,
> clockid_t clock_id)
>  		printf("No rx_vlan_tci or rx_vlan_proto, err=3D%d\n",
>  		       meta->rx_vlan_tag_err);
>  	}
> +
> +	if (meta->hint_valid & XDP_META_FIELD_CHECKSUM)
> +		print_rx_cksum(meta->ip_summed, meta->cksum,
> +			       meta->cksum_level);
> +	else
> +		printf("No rx_cksum, err=3D%d\n", meta->rx_cksum_err);
>  }
>=20
>  static void verify_skb_metadata(int fd) diff --git
> a/tools/testing/selftests/bpf/xdp_metadata.h
> b/tools/testing/selftests/bpf/xdp_metadata.h
> index bca09b94af26..f864d4a8bd8c 100644
> --- a/tools/testing/selftests/bpf/xdp_metadata.h
> +++ b/tools/testing/selftests/bpf/xdp_metadata.h
> @@ -28,6 +28,7 @@ enum xdp_meta_field {
>  	XDP_META_FIELD_TS	=3D BIT(0),
>  	XDP_META_FIELD_RSS	=3D BIT(1),
>  	XDP_META_FIELD_VLAN_TAG	=3D BIT(2),
> +	XDP_META_FIELD_CHECKSUM =3D BIT(3),
>  };
>=20
>  #define XDP_CHECKSUM_NONE		BIT(0)
> @@ -52,10 +53,13 @@ struct xdp_meta {
>  		};
>  		__s32 rx_vlan_tag_err;
>  	};
> -	struct {
> -		__u32 ip_summed;
> -		__u32 cksum;
> -		__u8 cksum_level;
> +	union {
> +		struct {
> +			__u32 ip_summed;
> +			__u32 cksum;
> +			__u8 cksum_level;
> +		};
> +		__s32 rx_cksum_err;
>  	};
>  	enum xdp_meta_field hint_valid;
>  };
> --
> 2.47.0

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
