Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4GacHIKMcGkEYQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 09:21:22 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E35D1536B8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 09:21:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 085B940506;
	Wed, 21 Jan 2026 08:21:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FGecXNTUyD9N; Wed, 21 Jan 2026 08:21:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 371464050D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768983674;
	bh=VKFVaYW1oXP1D+ewbVbme54fbyp23qQrawiQpdQIWyw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=F66kEhU5dPlUjjeCCaVQQX1s7fsqVGGSxs7iI7WY1ykRyuHaRdCywX8a35ce5Roqm
	 +jvfB17aYtmPKnzTVcPy08ayNn/sB348PoUwFlTds0R1uwSGiOZmeEhrxcCgK+mSmV
	 RkYxAcb24EFPRyEIU8MdlseLYSa3A3SRsdFNMQQ12Nkatxzu7h612f5PDhIjUf1x5y
	 ju6Wr3kAtqml9GM9fcQORR43A0e5CDRnc68p10mfUm9Od6BZGdw/GVUfJCDPge6R6k
	 zU4mR39ua9uhFUHe7aHAH1YwcdXjjExZPN/JNg1q8s/kZ16PGCCEIKTt6JYmYCuvfq
	 6l77EVU4va5QQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 371464050D;
	Wed, 21 Jan 2026 08:21:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 560A7169
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 08:21:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 35BD840BA1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 08:21:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wTB3FoVusXNI for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jan 2026 08:21:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 26F6240800
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 26F6240800
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 26F6240800
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 08:21:11 +0000 (UTC)
X-CSE-ConnectionGUID: jgZQ4lGaR5abPrxBsgMFoA==
X-CSE-MsgGUID: hMynwmm6SFmd9OPVlDQ8OA==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="80509456"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="80509456"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 00:21:11 -0800
X-CSE-ConnectionGUID: wleWaXTdQ/2Po+rYbofLHg==
X-CSE-MsgGUID: X87xhaOIRyyM5kM1MAvuPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="206800837"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 00:21:09 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 00:21:08 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 21 Jan 2026 00:21:08 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.18)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 00:21:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UX6yya+G94YOp47M8rHCUKw1HhQR8WA3vHOUstAtl7NzEahCd+ZTh6++2bZHtrDVxWCq0HafI5yvCocigPv+l1GOx4OXCAu9jimgMumk0wg5Te4Ko4g7MeGJl9bztkB95Wgk78nd9OVjKjcAXSd35Fn72hOU4HeCZZFsV85h3dRrGj9vU36mmOHEAeiC9tiUGOrC60wHMnJphMY4n6UODUDzw1FuCeAxGy2t7b/T4UK28ILQ44L6OyN44PniQV+T1YW2pwkFJWjJdctzvhNcyM7IEp53QAKMPhByMrZfQqddFJ88tjeV0mn76rlwt9m/G8AzV4xASaWRClBMHuS8tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VKFVaYW1oXP1D+ewbVbme54fbyp23qQrawiQpdQIWyw=;
 b=GB3agtDZwKwQhIIp1/eu3cFnBe7eTRriGIfZ1vfF5Uvw5Mc/Otw1/+wCj2xDbfW7xPkCMbVzP/HLpl7oNPJHnAOdRR2XSwB40Ei4wJ+Ntntm1p9SF6Mw78aYr3+Op2MZE43nuIvdxFZlj1qY4tqRwPHTrSN7xGvuyp6bCxh5ph8BR59XtxPfWi4sPGVgyQgEc9kxGjwtwwmICwMJMm9DhoOHLvyVb7TcuBUuElSSTTvjSh/uck0Ejb3R9/YlNrpp1IVvANrD23H53TveTQWNPJVcrWePCe3Byau6SBoiVkXmYmxBrJTO+RPvPPhf2yY8hwobHtLhMohKy5bqFgrCbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by CY5PR11MB6210.namprd11.prod.outlook.com (2603:10b6:930:26::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 21 Jan
 2026 08:20:59 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 08:20:59 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Aaron, Ma" <aaron.ma@canonical.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ice: Fix PTP NULL pointer dereference
 during VSI rebuild
Thread-Index: AQHciqrT3PBxCXi+00WqPyJfn/jyhLVcRpow
Date: Wed, 21 Jan 2026 08:20:59 +0000
Message-ID: <IA3PR11MB898667FBC0C4394FF41B003DE596A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260121075106.401770-1-aaron.ma@canonical.com>
In-Reply-To: <20260121075106.401770-1-aaron.ma@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|CY5PR11MB6210:EE_
x-ms-office365-filtering-correlation-id: 14260eaf-4e90-4672-d69d-08de58c601ef
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?tN4mq26tZXFNbZ3x2e4D0ssqwtPYX/z+QPC16VNZite4yXSr9lnf0wfaXFlz?=
 =?us-ascii?Q?bbaHgnTu1YLp3/+kDBkaRAJrAuZbfLZHYfbTqW2AybT12U6DC0z2jm4F6sPr?=
 =?us-ascii?Q?H4i95EdnsaoL/rPQpivWCsWRPpXlJJVA1GOuadpuJY+Ok5qLRmf8flcuik/2?=
 =?us-ascii?Q?412SniYHsdSY3vx+7fQ8gmm2eSs6XKvloUE+AvjgEmXRR/CU0EdVyyWXgaFW?=
 =?us-ascii?Q?E5EtzMcAL6ALlGESynCojuCDPMY/Ua3e8OgOTU6B38qanfhcXj5GQnXo5uWu?=
 =?us-ascii?Q?eRZ9yVT29Bs783M4P5XpSKNKalCBlT8LQvaXO9bZzgupMLVA/ubfrz5OHvgp?=
 =?us-ascii?Q?lfyBdCftLKo5tUXHZUqL5j+64XXEVNk+W+BjVDpPGjjFzvVWCq3VpB/R+jdg?=
 =?us-ascii?Q?U3YoyE8/TdUQ0otrEbcvXsYRwIiMYppx9qw5vneCwFXAU98DjfUdkW77vcfU?=
 =?us-ascii?Q?QUDxLaUu0M/oanqZMinUcXBp0EvQY7f5nG1vld6vNR66LPaN7kWASqlGoRhz?=
 =?us-ascii?Q?Lr3S5sAUBDkDXm0RrtgGGkmb0GNktLBolsORPRiiL6xZ2+sRQSFhX2qvi2dr?=
 =?us-ascii?Q?fJgtkMW3hbQwOqLSSch97213DPA4DCJjND/aJRK2Ux4fcXUG0oJnB+XI3+os?=
 =?us-ascii?Q?T7zBDpPrvbtinFyORHhtUnMksATzTNJZJsZV/8gSPFKBk4sFPfDWkoojM2Lq?=
 =?us-ascii?Q?JesTNgJX0WKYg1wY2FIMRkEGJ0AzjGFWEgYqpNBAU5whtTnMmrEkn0pfQaw/?=
 =?us-ascii?Q?0pcvrSpbWULj8MxRi3qPoF/VjWPllCG4/J3+DODU6lKsBKH0hsUoVcDq7NBB?=
 =?us-ascii?Q?cVa1ELcg2L4pYEqc20jGAumeFQzuA6emXTCpDQwYWc0/Oy5wUjQHtVP4Idm1?=
 =?us-ascii?Q?khSHpVM/CzNaD5gMRX2x5o/n+oCtNwraLv8I5CUIY9KcQWpeaIWK/SV45b4W?=
 =?us-ascii?Q?q11KC6cgj6deDoThPSTeKEbjdYonZNZyXQV7uEaFxC4aldCkJyXsQ1Xb+dBm?=
 =?us-ascii?Q?ZiQnr6hPo+ltslaC9IKkyPrZPx9pysblYMhjhUfIIe+QoFdTVm7HZg46UUyk?=
 =?us-ascii?Q?/DFJntuaXSm5pSrf5LQIpVcWKtBIEVurpgtZymz4D3PVrmjrX3ngipvMAMJH?=
 =?us-ascii?Q?g7XHKMEJCdxR6g+BLEr9Dm0H9gYeRyaPQrd2aomdcANuLvt7ZUb1GcLWOA6I?=
 =?us-ascii?Q?LroUZ14ueEHNTLKCtB3PfDObiTRibxHkKVDBGbXdE44JllEvu+Sgxuc6z+Nz?=
 =?us-ascii?Q?hblRJM1aZHnmHpFTX/QOSY7L64OSY9RW7B0l+QwXE5zO0f1/4iHCw1WaiImI?=
 =?us-ascii?Q?3dY4o9JXN2eVqpKz0nnaVR8ZTvOaqfddfclMgPDxHeKe+43771QGKXLBqO8G?=
 =?us-ascii?Q?D/Ergf4Ul8BRsHrXVU2E1+7LPldKrJ6j7vCpfajjxts7PuGQ3YpCfhMfu5eV?=
 =?us-ascii?Q?r20TmrVmuiL8K+Y474+AZGXw972Gf07BE3PMl6farigCWdmpEmZ4TUGTaxMQ?=
 =?us-ascii?Q?SF3qw6A9GmO7pKZc8w00VSNfnW7aoZqL5KPv647YnQpIjxs9ApJ/XM+l05xA?=
 =?us-ascii?Q?9CVCJR9SWEfl9ljmcl0NwGU2Ey07srKpp3dHymU640Gy8++dshm68Sj6eI1t?=
 =?us-ascii?Q?nfe8K3XsOXFM5t2JOnp1Gt46MI32Bs7RJskujGM16UyL?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DVzniXCjmYtFiW4J+JgSyszsW3KfDRkX1vtbORWKrlj9F5N4vMLngEJqnS87?=
 =?us-ascii?Q?w48Y4+JSo1VHHHWdoygZ3E9QhTkpQfRk2lE9rWJpl29YcVlxUNYgV1eSe5zp?=
 =?us-ascii?Q?IYAKs9KQZsdmzbHIu9OYXYkpABmYJ+5lYSzlPhJCbwfvg9kn4nMronUaBCu/?=
 =?us-ascii?Q?d/3c+HOCzB9+Iwf4B/KGVwkuIPmnl5xbWol0JpOYT5jWnWaLgEDomKSJm3hn?=
 =?us-ascii?Q?MV9pXkNUB4FpEwRt1BqAenhCB+lw8rzk6ij/9BS5fLMfgmXgUAX5z8KXbvOF?=
 =?us-ascii?Q?q0OVLaGoSgc5FxOjCjt5fVPopAOo1+VedIuGfvjrUf5AGVDy8zMHe33Km+kE?=
 =?us-ascii?Q?bIsZI4sQ8AvwujZ4ke/WhI6GxhKt+utxjL6JVOPbng6ReZtJU+/jA1JXQ81C?=
 =?us-ascii?Q?Os+2ZIz1d53wWN0vmJ50vr+TgOgk9YKCCxwgWiWVFaJBF6UlGwhLiDSgaur8?=
 =?us-ascii?Q?HIIkyRVWn57ZB1/rXQsCTDIxpvjMAuau7YKPpyOdVzVKVkiVoJzj8h0/FaSt?=
 =?us-ascii?Q?VhrXoL2B4K+IsGksun3FnK1B7f/GI+mQL+oo2TUgAOywUd8jRJuk2f3HA9+T?=
 =?us-ascii?Q?3HC9oV8MIYimxmKvWeb6ilB2rF38gFHfFQYFZV7smeLi4UAhMyrlzxRYAAGS?=
 =?us-ascii?Q?4HpDfO+uY7uyo7paeA9QlaWqoM+YEqOElwknbiIdBGIGjHQhFb4knJbPu+lk?=
 =?us-ascii?Q?nN10frLrgdXNiyvSZrX+b5auW3oNgkNCEeBCbNJ3ISx2pz9lRmpLf4uqm4Xp?=
 =?us-ascii?Q?n2YqBLyR8E+nK2A7ufgIk5aMCo398DVFthEVhjRXVfLWgTbKwBJXyyyUMzAY?=
 =?us-ascii?Q?gaPMLil4KTYwAPnUH8/DOmUwb8ZxCXLKTOH9LFKTM2wZdihPRJFHCgVIt8HB?=
 =?us-ascii?Q?Kfyq8rfN7PMaYRbA+jnj1hGtp7hPn5a5gdEDvuyayR+7ORuzf7Kto4JdHXiU?=
 =?us-ascii?Q?P0DntzMM5+P8tAEhloV586MBMobxwXWHxFRifDvq7Xnh/yrSYSgzaGxxhtzz?=
 =?us-ascii?Q?XaPp1RavLmR4qKIEYFwfDAdaV/+P1edR2B12aBl6YX2uvBaY+vsgCeziqhf+?=
 =?us-ascii?Q?lB66Efi8TEF81xwf1h77Br5d8lvHGAYx5GTLWNG0cBf1yAEigZzEza/tQGif?=
 =?us-ascii?Q?goefRU+rmGcXTHSdqjvkXsTEM3hFAbhqXfuQaXcwEzsYu+zWKy2F/Cb5gH/p?=
 =?us-ascii?Q?7rE6fouJkkx32n8zW950cTqaTFa0ijWWcCghX5QoTo2Tg2lSA56gdHJoW2U8?=
 =?us-ascii?Q?5dVw9IzHCmcexDp/ZUvGewL0X3qHp8xl8wFYT3on2XpHeh7S+wQsirOpl66X?=
 =?us-ascii?Q?1Vxgl/pv9JMNyM0Omo0LZiSbfIK4rtqZQXHpyr44Fveow4THLxt59LqFvPDG?=
 =?us-ascii?Q?e8vw1QUI93lPHTYx6JaUb+nbFSLKo0rpNOMhrnB3S81Wed2umT8W5qWXpmPn?=
 =?us-ascii?Q?5bsXePASHpOrI8g6leB4ktRxQ7WU/q+d4XYrQHZhrXqpPhnzbKwF/CUF/ciP?=
 =?us-ascii?Q?qIplps9wZr5nGn0gGOAvwNz3ohbmObOUNMkOLzNv3ITBETWf+C1pEqfO5v9A?=
 =?us-ascii?Q?GFfsqzzUpcl/wlmWeP86NiivU3Aqlbu3eDHF4wr61C7kgJFoAl/CD7iDG6+x?=
 =?us-ascii?Q?NbliUvHLKWJb7FbukppLygITd2q82vJvt7gv4t4q438ypKKdfjTRpWH8Kdlq?=
 =?us-ascii?Q?KbX8lgcJu+TH97AyHGr7wCAQoYbAOlQOEHVP+Ib7QjglUlDmzAuiXw9yzhmy?=
 =?us-ascii?Q?S5YhPMxiGMnl23lBtASGVQWErmMvkS4=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14260eaf-4e90-4672-d69d-08de58c601ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2026 08:20:59.2424 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WoB19eR8NKjMSsmSvYdmRwxdZkmKRWOFWZV6qUBVP3oUCHD3P568hn1oiGvRT3JWSzi5xBFNeWaVQFypcVUYxZLtgoLH9tVsyYB++mOII+4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6210
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768983672; x=1800519672;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=V+WrHf30hu/60BlOkwaQMjkDC0tSlqAC4nay0w2/wBk=;
 b=kuEScU7VJiyKbqInndL752p405liIgGHpyQJqdwImA+wBIMlv+zF5Xgb
 XcGJie/bnpbv2J9s4KOkGxfzRUiLMlcqmo09wd2DFZy0TgpuhTTrojyw/
 Rx5wQFm3yUpENHy1tLwpRI1qjO0wBUGk3QHNBlcJwtmhLK85asKbW9iZ4
 K08Q/dAKlpt9AZ15h7ToOWFh68KIZgenLTHMebLA60Fs2tYnyXwnaYwLr
 +mabj+D7ZqXKTHL469eEsaaDvOnyLhonqP6bsnucZwe1hiEoyuUB7UczR
 dmABjvYf82k51j4jaLy1YQ4lBqwv1JDtH3qOT0pMFAUY+AkzkNU4JhVny
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kuEScU7V
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: Fix PTP NULL pointer dereference
 during VSI rebuild
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aaron.ma@canonical.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCPT_COUNT_SEVEN(0.00)[11];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[canonical.com:email,intel.com:email,davemloft.net:email,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Queue-Id: E35D1536B8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Aaron Ma via Intel-wired-lan
> Sent: Wednesday, January 21, 2026 8:51 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>; andrew+netdev@lunn.ch;
> davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> pabeni@redhat.com; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH] ice: Fix PTP NULL pointer
> dereference during VSI rebuild
>=20
> Fix race condition where PTP periodic work runs while VSI is being
> rebuilt, accessing NULL vsi->rx_rings.
>=20
> The sequence was:
> 1. ice_ptp_prepare_for_reset() cancels PTP work 2. ice_ptp_rebuild()
> immediately queues PTP work 3. VSI rebuild happens AFTER
> ice_ptp_rebuild() 4. PTP work runs and accesses NULL vsi->rx_rings
>=20
> Fix: Keep PTP work cancelled during rebuild, only queue it after VSI
> rebuild completes in ice_rebuild().
>=20
> Added ice_ptp_queue_work() helper function to encapsulate the logic
> for queuing PTP work, ensuring it's only queued when PTP is supported
> and the state is ICE_PTP_READY.
>=20
> Error log:
> [  121.392544] ice 0000:60:00.1: PTP reset successful [  121.392692]
> BUG: kernel NULL pointer dereference, address: 0000000000000000 [
> 121.392712] #PF: supervisor read access in kernel mode [  121.392720]
> #PF: error_code(0x0000) - not-present page [  121.392727] PGD 0 [
> 121.392734] Oops: Oops: 0000 [#1] SMP NOPTI
> [  121.392746] CPU: 8 UID: 0 PID: 1005 Comm: ice-ptp-0000:60 Tainted:
> G S                  6.19.0-rc6+ #4 PREEMPT(voluntary)
> [  121.392761] Tainted: [S]=3DCPU_OUT_OF_SPEC [  121.392773] RIP:
> 0010:ice_ptp_update_cached_phctime+0xbf/0x150 [ice] [  121.393042]
> Call Trace:
> [  121.393047]  <TASK>
> [  121.393055]  ice_ptp_periodic_work+0x69/0x180 [ice] [  121.393202]
> kthread_worker_fn+0xa2/0x260 [  121.393216]  ?
> __pfx_ice_ptp_periodic_work+0x10/0x10 [ice] [  121.393359]  ?
> __pfx_kthread_worker_fn+0x10/0x10 [  121.393371]  kthread+0x10d/0x230
> [  121.393382]  ? __pfx_kthread+0x10/0x10 [  121.393393]
> ret_from_fork+0x273/0x2b0 [  121.393407]  ? __pfx_kthread+0x10/0x10 [
> 121.393417]  ret_from_fork_asm+0x1a/0x30 [  121.393432]  </TASK>
>=20
> Fixes: 803bef817807d ("ice: factor out ice_ptp_rebuild_owner()")
> Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c |  3 +++
> drivers/net/ethernet/intel/ice/ice_ptp.c  | 26 ++++++++++++++++++-----
> drivers/net/ethernet/intel/ice/ice_ptp.h  |  5 +++++
>  3 files changed, 29 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index 1851e9932cefe..2f5961573842d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -7814,6 +7814,9 @@ static void ice_rebuild(struct ice_pf *pf, enum
> ice_reset_req reset_type)
>=20
>  	/* Restore timestamp mode settings after VSI rebuild */
>  	ice_ptp_restore_timestamp_mode(pf);
> +
> +	/* Start PTP periodic work after VSI is fully rebuilt */
> +	ice_ptp_queue_work(pf);
>  	return;
>=20
>  err_vsi_rebuild:
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c
> b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 4c8d20f2d2c0a..8e5d93acaf108 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -2817,6 +2817,20 @@ static void ice_ptp_periodic_work(struct
> kthread_work *work)
>  				   msecs_to_jiffies(err ? 10 : 500));  }
>=20
> +/**
> + * ice_ptp_queue_work - Queue PTP periodic work for a PF
> + * @pf: Board private structure
> + *
> + * Helper function to queue PTP periodic work after VSI rebuild
> completes.
> + * This ensures that PTP work only runs when VSI structures are
> ready.
> + */
> +void ice_ptp_queue_work(struct ice_pf *pf) {
> +	if (test_bit(ICE_FLAG_PTP_SUPPORTED, pf->flags) &&
> +	    pf->ptp.state =3D=3D ICE_PTP_READY)
> +		kthread_queue_delayed_work(pf->ptp.kworker, &pf-
> >ptp.work, 0); }
> +
>  /**
>   * ice_ptp_prepare_rebuild_sec - Prepare second NAC for PTP reset or
> rebuild
>   * @pf: Board private structure
> @@ -2835,10 +2849,15 @@ static void ice_ptp_prepare_rebuild_sec(struct
> ice_pf *pf, bool rebuild,
>  		struct ice_pf *peer_pf =3D ptp_port_to_pf(port);
>=20
>  		if (!ice_is_primary(&peer_pf->hw)) {
> -			if (rebuild)
> +			if (rebuild) {
> +				/* TODO: When implementing rebuild=3Dtrue:
> +				 * 1. Ensure secondary PFs' VSIs are
> rebuilt
> +				 * 2. Call ice_ptp_queue_work(peer_pf)
> after VSI rebuild
> +				 */
Shouldn't we resolve all TODOs before merging?


>  				ice_ptp_rebuild(peer_pf, reset_type);
> -			else
> +			} else {
>  				ice_ptp_prepare_for_reset(peer_pf,
> reset_type);
> +			}
>  		}
>  	}
>  }
> @@ -2984,9 +3003,6 @@ void ice_ptp_rebuild(struct ice_pf *pf, enum
> ice_reset_req reset_type)
>=20
>  	ptp->state =3D ICE_PTP_READY;
>=20
> -	/* Start periodic work going */
> -	kthread_queue_delayed_work(ptp->kworker, &ptp->work, 0);
> -
>  	dev_info(ice_pf_to_dev(pf), "PTP reset successful\n");
>  	return;
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h
> b/drivers/net/ethernet/intel/ice/ice_ptp.h
> index 27016aac4f1e8..428f7f79343a7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
> @@ -317,6 +317,7 @@ void ice_ptp_prepare_for_reset(struct ice_pf *pf,
> void ice_ptp_init(struct ice_pf *pf);  void ice_ptp_release(struct
> ice_pf *pf);  void ice_ptp_link_change(struct ice_pf *pf, bool
> linkup);
> +void ice_ptp_queue_work(struct ice_pf *pf);
>  #else /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
>=20
>  static inline int ice_ptp_hwtstamp_get(struct net_device *netdev, @@
> -383,6 +384,10 @@ static inline void ice_ptp_link_change(struct ice_pf
> *pf, bool linkup)  {  }
>=20
> +static inline void ice_ptp_queue_work(struct ice_pf *pf) { }
> +
>  static inline int ice_ptp_clock_index(struct ice_pf *pf)  {
>  	return -1;
> --
> 2.43.0

