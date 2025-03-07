Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DE9A56A27
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 15:17:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B6E141521;
	Fri,  7 Mar 2025 14:17:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KCytpf_vLkzD; Fri,  7 Mar 2025 14:17:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F50341523
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741357043;
	bh=BBA3ivlbMdqinW+890NW/al+XOOGHKFkeYzbbHXNCCo=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VUMatogOITB0JlS4s7but/EwsjepxFKmbGMtb0dMQpr+lC47fq0S9oWSqUvCv2LOB
	 wUQdGNeoNAHfGwHzhVqGkO+0MsJNtXH8Qvf2PD+LZfJvwyktSthkEAIwgAQ+V13HU3
	 y2sfOmES5QRYP0il0ipZr2X7Rw9u2SErvNLsd3+xODdZhwHLtH5BxWThtjCJptz6WF
	 5aT276W24qSskRzV4KBvFoSeZYGCh3amgBgbzYGcYDwRZGhiSpzci+307gfMihXRPw
	 j8n0LBTDwaDpeY7g7snlDw6TqYCEjXBLA5EcAjxC2Tgi7D2gwgaAFj9WIsAQfr012M
	 KWhzfrd8u0tzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F50341523;
	Fri,  7 Mar 2025 14:17:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 597C1944
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 14:17:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 48C738052C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 14:17:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T0dYvx35kUkS for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 14:17:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 67C8D8418E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67C8D8418E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 67C8D8418E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 14:17:20 +0000 (UTC)
X-CSE-ConnectionGUID: VjIwOJLlR1K6Ogx4PgOvJA==
X-CSE-MsgGUID: bhkOLFOuRnyzB2Or0GTN2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42635316"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="42635316"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 06:17:18 -0800
X-CSE-ConnectionGUID: xFGOBmmmRDK8vYzf2KLeww==
X-CSE-MsgGUID: eLPfKGqJQTSUP+wwS0H0EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="150128267"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 06:17:18 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 7 Mar 2025 06:17:17 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 7 Mar 2025 06:17:17 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 7 Mar 2025 06:17:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NZsXUt3mjpyS4ywTSDAYErLK7oQ1tV7YLNRCM+qhhlP+KH543RQCEmOuWMdCXJsc5qUlT8MUwkgntYfPRLcAjNbjeTrlCUvE2x20eMSZ70LfePiZzucagmmNvmCqBYNoG7hO5/4xabSctGQQb8qq2ghy/tFBiUHdV/8GCz2SgxE6FGr07ZzmqRdd0k2aTRRmzzAX5sUWBM2oImLn8SBH8rfqojidyUHaGeQIiqbetx09YTdRiAbMlsWrtyJxGiThIHxRBOTDJjS4ww7jsHvtChhJH0TwqA6j/+y3MM3puLY9+RES6i45d10UR75BF/E6SyVK3PW2SP6HKmV3fvUZCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BBA3ivlbMdqinW+890NW/al+XOOGHKFkeYzbbHXNCCo=;
 b=yHEV5EhGX1KjODW5Bt4RCRIcJU2jw1j3e/yzHyTpAsx34Recyu+bTgPPO8YUZe4olblA/5fn/xlK934kG3nX/EBw6WgDJBPfPiQ9lPMkl8pJOE0pbtC0+g0IVl10gpp+F4rc5W8A6sbplbBufZdDX+xo1ug1xQG4RS4j84GSGdMRqabEaLF904fYBftZbBwk1P5Wx/o7MWO7ALjA2IjkDix6Z/vEjtwdnc3uaQeVi0hBGAPwQQ3I+cm/EadXeVT0x/w6q3KA3Bh3zhMrP5gH33kOVOh7KhWdisSnacs90m2LzWKz3Wrko/OsSiTIelxl5/NgHlahRkDrQ9467oZOnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 PH7PR11MB5767.namprd11.prod.outlook.com (2603:10b6:510:13a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.26; Fri, 7 Mar
 2025 14:17:00 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%3]) with mapi id 15.20.8511.017; Fri, 7 Mar 2025
 14:17:00 +0000
Date: Fri, 7 Mar 2025 15:16:48 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, Michal Kubiak
 <michal.kubiak@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, "Przemek
 Kitszel" <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 "Jesper Dangaard Brouer" <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Simon Horman <horms@kernel.org>,
 <bpf@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Message-ID: <Z8r/0NOkovItGD1E@boxer>
References: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
 <20250305162132.1106080-13-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250305162132.1106080-13-aleksander.lobakin@intel.com>
X-ClientProxiedBy: MI2P293CA0013.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:45::8) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|PH7PR11MB5767:EE_
X-MS-Office365-Filtering-Correlation-Id: 25b1d813-0027-4958-c4a3-08dd5d82b9fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?WvdyHPImVLHzVYc12Tlo9m1G7jNTIMggcKbQGSIV7/IJKS6KfJnbPDj1oYPy?=
 =?us-ascii?Q?yGtExNxNsMkAPEbO9DsKgsGBqmns63phtlAtahNCqNKsPYKI3cUr3ld+eERF?=
 =?us-ascii?Q?eJJXLhLJUlVR81p9a/0tcxwQarBUmxitfpS+I3ujCbeJAUwU7hUn5o7fcKjy?=
 =?us-ascii?Q?JcpWacTvTfdrsP60KzkNvnpZHyjubmueUfpb3GgqHDpWOHT9i4Y/xulnZf8x?=
 =?us-ascii?Q?MeVvKkZjMLVbo5tp3h9GY/pOJwDhD/LGFp1OsZ14Mm84+/SrCE9/3Wcjh525?=
 =?us-ascii?Q?onMKO5fggu3DgmPZd77bWabel/XsHvB9lQJgPpt88TXRbRYOjrcUsjfDSTYg?=
 =?us-ascii?Q?Vj/QdDYtb5tBiONRNemj3Xu5ioWzS3lp9wu2itziwpS+iaGm7IUEpKreEIp6?=
 =?us-ascii?Q?qFBfKt3y1VP76/NOuF7zhLmBeuDbv9aUuvH2k+gtjUactVECR1NYATlml8FS?=
 =?us-ascii?Q?Uo/k1/31T7AL8708ksQJDZC8pYHQQH5kVBmK2H78o8pOW2YvvOe1CXr9wwtk?=
 =?us-ascii?Q?8Ne+4jGt7sFH6UBNn+PeTUwGDcNvE62OxB+L07dPmQSvzRipeZzX/tGZIe2/?=
 =?us-ascii?Q?CQzc24keDhngyaZEZbZhY0U+ffcFGD3tF8GABSCoYe+2t+u0kewaBOiepeza?=
 =?us-ascii?Q?0nCitaYgvw2VZCFM78lUZmAgeNdfqG5zHknTV+68333t5/jxuMkSmVJCmycO?=
 =?us-ascii?Q?i+1FJdaajlOeDoeH6xxp91c5S0xKD4B2poSuZw8Rbnm6NfocUS5+VHCenWt2?=
 =?us-ascii?Q?GgK57E9v4KWAO7fnXH8l8zJ8Xa1xY9LaVGJh4s83Tj6zxOTI8SWqZ3uoASLx?=
 =?us-ascii?Q?+S13Pyflt4/gssa3srdyAec24U8cmhpMlJo0pSTY26yFrO1vbG0f244fiGcV?=
 =?us-ascii?Q?7zwmlWRJ+O2pZE1wAqwU04ruPY3eVyxoS2y7bLTgkIeyaJNsAoT/zKwsWb6x?=
 =?us-ascii?Q?eT8IjzSWFNHqQKsgS3j8ISLWx2UHBAtCIgJY6G9Hyt9lRdTzfbWc+NaD+frr?=
 =?us-ascii?Q?WUVe78Uy+tWIXA65tt//f9KzJqm4qqj1y/khk2I3cVFhEo318Pl0gMpIXPDT?=
 =?us-ascii?Q?CTfCrhs9Loog3brCWq2ym6jnHGHL9BLm/maZ33A4GtuKxBbAfQAZFpnrH9/z?=
 =?us-ascii?Q?TutP5PjAN/aNcJWRDSnF/x18d1alY7iI52/9DswVHBTVHOXHbcnOLNeIaQAk?=
 =?us-ascii?Q?677AEzSwak5vNsmKLPci865QwnLnflEKtbJaqi3AVmt1U0kt29qlVbY4sIlD?=
 =?us-ascii?Q?uC2yDY6rcAnzkYdnN4LLwCektHSVNiosnRGmd+KuCPCnGcL3lKzOisUIlqiz?=
 =?us-ascii?Q?diXXqD/KiZDzvBNCy/5SnSWXPzZhpJRuzeqi+LDDwOuU6O/OAuyHDxyVEz8/?=
 =?us-ascii?Q?V2y9qKLC3jrsh8J5UOcwyFi7OmEb?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8juRHiH0iW1qr8muRYLDhbXgyp4wLijc8Gu82qaqoubUv/iQigPmOBENcYw5?=
 =?us-ascii?Q?v6U3swUvCKKfjBpFVK0dQwsGv5IlGargK5YYy1RvZJ0ayEds6qtRUrW1z0oP?=
 =?us-ascii?Q?UVwr9XnzDikLBPQ15fRV66Ap8UZrm1DqmnzhPvGweW1uVyPb3vBBtiUYqRCN?=
 =?us-ascii?Q?BuXZsg3m44rbpBNTL9x6J6qd0rgeu4zQtx1h1dC88hDW56bZRQ/58pcvXxpX?=
 =?us-ascii?Q?kpAy7y6n3vxIml2tye69Mp4twQKLjyBYuAGeLUrgwDBDCZaNkCZnWodvhI5m?=
 =?us-ascii?Q?Tq478b2qEQdVuhZIWJq/bY1hwu4RoD83uPjo/Bl2mg0uCNysLbTt3Bn7Unji?=
 =?us-ascii?Q?VvWNdPcNE10L1Wd9woQUAWvNHemgy0mvZmYEJ3XqEmlBCjFFmn12DDMA14Z/?=
 =?us-ascii?Q?i6KRzfqm+aLkmSIlK/sv8couGK7dKObqbaIz3rtaYteAUl0IlP+o8Upz0/zy?=
 =?us-ascii?Q?q1kQs8eVgl/pT38P47ppfG5m6cwrVqXMnMn+I0mUhOLKRCwLgjniMAZmXTzW?=
 =?us-ascii?Q?s91R96MNHcTsZ3a3cKd4zkd0f1EyyxcYgMy+Jaoi/5ZOXort6RC+klaYujJt?=
 =?us-ascii?Q?wsMnShQTfp8hzrL6zmampHt11PXtQolb1OhE8YDNe434qBcuTqSQxSpxVDVs?=
 =?us-ascii?Q?TWskzXIvnenXoXxm86RYgKzGIg9Uloi2ZLdlwtTxAE5D8PBzdkn4i3LpFBiP?=
 =?us-ascii?Q?G0CszpbHfbSNNuPICFlYQBrCTpW0RvU6lf1cTIodzWclg3d2eak1d3zArYR0?=
 =?us-ascii?Q?+RFYg8TM8X2gnHi7rPHC99jWegYDbF5lHzRqOIXoeBqsBngqEhdgJfF7wgtL?=
 =?us-ascii?Q?ZJ7PSNyEtTpu+QcwDPhsbZZ0MteTdP1tY0IoHfBY3D+o/6EVyI2ps8IllPKW?=
 =?us-ascii?Q?EGxsxNED9aUSAOCAT+6pRPWlQUJTXWfI0BauSgfi8JfAvZb2MSfM1/vdgwng?=
 =?us-ascii?Q?lwA9EFco5dlFRA5LT5nrGvhslTyZFESjCJkHtjZ5YSo6G3Q0BMheUCr7VhP/?=
 =?us-ascii?Q?vFlNAw2Rk5a+rdBzlb/WdTxjLzgAlbzHpqKPCH+3qwkHR0F0Jtm4JsBivnEh?=
 =?us-ascii?Q?j9bYStBiHpKPXxRFpB9QH6BNkKTBm2SE/CL9rWsjBZz5pK3wgEorfo/L6h7H?=
 =?us-ascii?Q?0iENcwxNckrJd6yexBAl7fOC+32MKVXj47cv3tqDQzE++IV7xbcTG3oTxcq2?=
 =?us-ascii?Q?+Rpo2IvR21QaT8zjzoAU08CiZG0EX64iswpNnXLOsVEw6NqT9K21ByvAVSu3?=
 =?us-ascii?Q?ftdqllfu2AgHn2JUr3lVkxMrGkwgO2MZIMj65LTxDAYNL5TLnSJ/3iwyKv1S?=
 =?us-ascii?Q?DYnHtBarriiQbJop6+pBEzhFySQLMHcytGSbPUOyT19TFAaIIXTB6jcqZ7AP?=
 =?us-ascii?Q?f6B9NgtI5fM55M9Tr/rxslLTqmZ9yB0v5J+3XcR4JW+f0J8G2Oj0tcH3/Fw/?=
 =?us-ascii?Q?74URq4nvVuOttHwWBDf5IHwVX28H03UtEeKn9rtMACwxTPDB3/2LUiaSOnJ8?=
 =?us-ascii?Q?Qa4YiQYkW6X7N9RAwwwwDT/ONihHfGjW/5LnHVPiTH8CIaSpY8dPva+T3dMJ?=
 =?us-ascii?Q?sx1n6Yzr0jl5UCxqXj3ttEkirPCj70mkzU0gkAwNZxmhBV8DeYQicDg6+73v?=
 =?us-ascii?Q?AQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 25b1d813-0027-4958-c4a3-08dd5d82b9fb
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2025 14:17:00.5283 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vVTfhm15YyCclxfVnul7zjkQ5CAUuJ8T0velhOrpZXFbOtY//p6vZ94kseiLQ402kqumFc2k0CahF5vtZaG2ViDh5gCWjUxZdWh02upcVEk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5767
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741357040; x=1772893040;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=xXXiOyPLcxzItsODz1kxZwxWFcDOXEva6NniCIUH8VA=;
 b=ORB2E9QktT+Azlgbe55VMabq3GviZ3D0dZVvIc1iZt1DWHoGkBW629nR
 hS/9M146gukPplcsgbcr+CZGL+DVlhFrJLJqNCTDCUQ/PoAboablnfhcm
 T4AFouX/fGx+ybOBhPK52UcF1rIFpNZD2WbrBb4SFozUPilGkAX4WUydM
 SUOYtAgWRvV38aGMCivqva6FVJL+a65cFJPJ5/42R7dDEgb472VQsIPVI
 3WsdnmgA3/9W+bKucDSVZqq1PljunwVSpF+po5zSBE2Z1DEbt6898VKC7
 JkCMzsBEWDQf1AffGyrfCj7B5FPM5YpiDg82fgTjSgG7m+zOotYI395RQ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ORB2E9Qk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 12/16] idpf: implement
 XDP_SETUP_PROG in ndo_bpf for splitq
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

On Wed, Mar 05, 2025 at 05:21:28PM +0100, Alexander Lobakin wrote:
> From: Michal Kubiak <michal.kubiak@intel.com>
> 
> Implement loading/removing XDP program using .ndo_bpf callback
> in the split queue mode. Reconfigure and restart the queues if needed
> (!!old_prog != !!new_prog), otherwise, just update the pointers.
> 
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h |   4 +-
>  drivers/net/ethernet/intel/idpf/xdp.h       |   7 ++
>  drivers/net/ethernet/intel/idpf/idpf_lib.c  |   1 +
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c |   4 +
>  drivers/net/ethernet/intel/idpf/xdp.c       | 114 ++++++++++++++++++++
>  5 files changed, 129 insertions(+), 1 deletion(-)
> 

(...)

> +
> +/**
> + * idpf_xdp_setup_prog - handle XDP program install/remove requests
> + * @vport: vport to configure
> + * @xdp: request data (program, extack)
> + *
> + * Return: 0 on success, -errno on failure.
> + */
> +static int
> +idpf_xdp_setup_prog(struct idpf_vport *vport, const struct netdev_bpf *xdp)
> +{
> +	const struct idpf_netdev_priv *np = netdev_priv(vport->netdev);
> +	struct bpf_prog *old, *prog = xdp->prog;
> +	struct idpf_vport_config *cfg;
> +	int ret;
> +
> +	cfg = vport->adapter->vport_config[vport->idx];
> +	if (!vport->num_xdp_txq && vport->num_txq == cfg->max_q.max_txq) {
> +		NL_SET_ERR_MSG_MOD(xdp->extack,
> +				   "No Tx queues available for XDP, please decrease the number of regular SQs");
> +		return -ENOSPC;
> +	}
> +
> +	if (test_bit(IDPF_REMOVE_IN_PROG, vport->adapter->flags) ||

IN_PROG is a bit unfortunate here as it mixes with 'prog' :P

> +	    !!vport->xdp_prog == !!prog) {
> +		if (np->state == __IDPF_VPORT_UP)
> +			idpf_copy_xdp_prog_to_qs(vport, prog);
> +
> +		old = xchg(&vport->xdp_prog, prog);
> +		if (old)
> +			bpf_prog_put(old);
> +
> +		cfg->user_config.xdp_prog = prog;
> +
> +		return 0;
> +	}
> +
> +	old = cfg->user_config.xdp_prog;
> +	cfg->user_config.xdp_prog = prog;
> +
> +	ret = idpf_initiate_soft_reset(vport, IDPF_SR_Q_CHANGE);
> +	if (ret) {
> +		NL_SET_ERR_MSG_MOD(xdp->extack,
> +				   "Could not reopen the vport after XDP setup");
> +
> +		if (prog)
> +			bpf_prog_put(prog);

aren't you missing this for prog->NULL conversion? you have this for
hot-swap case (prog->prog).

> +
> +		cfg->user_config.xdp_prog = old;
> +	}
> +
> +	return ret;
> +}
> +
> +/**
> + * idpf_xdp - handle XDP-related requests
> + * @dev: network device to configure
> + * @xdp: request data (program, extack)
> + *
> + * Return: 0 on success, -errno on failure.
> + */
> +int idpf_xdp(struct net_device *dev, struct netdev_bpf *xdp)
> +{
> +	struct idpf_vport *vport;
> +	int ret;
> +
> +	idpf_vport_ctrl_lock(dev);
> +	vport = idpf_netdev_to_vport(dev);
> +
> +	if (!idpf_is_queue_model_split(vport->txq_model))
> +		goto notsupp;
> +
> +	switch (xdp->command) {
> +	case XDP_SETUP_PROG:
> +		ret = idpf_xdp_setup_prog(vport, xdp);
> +		break;
> +	default:
> +notsupp:
> +		ret = -EOPNOTSUPP;
> +		break;
> +	}
> +
> +	idpf_vport_ctrl_unlock(dev);
> +
> +	return ret;
> +}
> -- 
> 2.48.1
> 
