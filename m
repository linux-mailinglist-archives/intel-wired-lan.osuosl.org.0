Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 51EC0A56786
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Mar 2025 13:11:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7ED2760865;
	Fri,  7 Mar 2025 12:11:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1Dx5rMy2Ab27; Fri,  7 Mar 2025 12:11:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B77D76089E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741349478;
	bh=1mggZABp1JgUicXztc9zb8YYWZ1M5nYMn67DABoOGY0=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Yj7SPt05ADLa8u4uq5v0sfQ8korfa3jMG4pWwTFm7/d9D1mErTP4sY66N51YKH+0q
	 ZyfZeKEksABtLV0TzcQvJhBLU2suyDcDPsQDd5aFv/81EhQmcuPFgGa77OUSaEUTun
	 vhmobNbBUNCCt1GVjw9dyxHJIf2EVkrs/7IxMrl1Ay+g+D1RDZpHpnWOEFOog2fMZp
	 W+14AkTGZtMc+2ZPx50UEoVg6YL9fdrQMwx53bb8Cm5bHzwFfzS8llCtRPfpvprNXC
	 AhXL0zcAaKPPH+EYBnNVH1uZojDXwlBs+gjyxv943eNt3msu/Pk2+QJsADPLZnWvMl
	 5S0QEWEOu6zwg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B77D76089E;
	Fri,  7 Mar 2025 12:11:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 267F871F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 12:11:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 158BD60865
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 12:11:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vrCUo-iOdH6g for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Mar 2025 12:11:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 62BD76081A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 62BD76081A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 62BD76081A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Mar 2025 12:11:15 +0000 (UTC)
X-CSE-ConnectionGUID: I1VORI9VQUC/V0MxzU9ZXg==
X-CSE-MsgGUID: kDK8+HznQK6gD5+Nfu/j1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="53036706"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="53036706"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 04:11:15 -0800
X-CSE-ConnectionGUID: vpuhkLu+SYWPDPuoc0gAqA==
X-CSE-MsgGUID: C8Zz6ZbYR+2Uy5Celo0uLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="142540548"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Mar 2025 04:11:14 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 7 Mar 2025 04:11:13 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 7 Mar 2025 04:11:13 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 7 Mar 2025 04:11:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s12w0FJgbDBZDJtCykOcojET6iXAoerAck20L6hroQGPfyQLOC+CfwgTgMI7FuBOlB9ZNkZUGmKsSeiH8Pns3kLZvu6vKWG9jkl2fGcVtL0DTyPoBhQrOdnA+vxJaWThFvk7wG/YFGp8Q+TCpJXmPwFBVvNLnVM24Hv5WAQ1PMfKRe2P1bPT1vwMLPS1Gg/3e9LwjRR7ilPQnZphYe2BKM5dHIVxImd7NiOqfI4MtFX505mEO25bpHBT7eACAubKHcUq3+bryeT/7Rj+4p9708pw1dPjQ/aYjE3i7VsJv5iuCcx5RyZUVAnSsMsHlspflc3aLVhkpCTDtB6/Dctw7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1mggZABp1JgUicXztc9zb8YYWZ1M5nYMn67DABoOGY0=;
 b=Fwx/OpeA9d81Bc6mDgWQAjmUr407vPjH+OAHztqwzGJ7zq0jYLFV+kqZ7IYeUCSN/hCehEV07omjTNVXRUU7vNvIoiiKlLp/T4sUgvz0AETQna/xqplIgeSg+uFCvXG4jhfZ5LKqkI9T0gFA2id3HNiMCVYnMa+hnBd6KGX34iadXp525eMZRNQcGA/Zn3QVerAErUN0cgAddlWdNZ+8W7RW21eG/Hd05pBRwXN148lCyzpIYqtg1+biIuq07hCUSRvj7u+hABCfEES7z1DZGLdZ35/XAVeIR+chDIX8ONhc1kFlihZcZQyhdq0B0LJ5jdAN7bvQ6wnTFZgSBYvRbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 CH0PR11MB8234.namprd11.prod.outlook.com (2603:10b6:610:190::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.19; Fri, 7 Mar
 2025 12:10:42 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%3]) with mapi id 15.20.8511.017; Fri, 7 Mar 2025
 12:10:41 +0000
Date: Fri, 7 Mar 2025 13:10:29 +0100
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
Message-ID: <Z8riNXXSw/ZBrD+B@boxer>
References: <20250305162132.1106080-1-aleksander.lobakin@intel.com>
 <20250305162132.1106080-11-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250305162132.1106080-11-aleksander.lobakin@intel.com>
X-ClientProxiedBy: WA1P291CA0022.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::29) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|CH0PR11MB8234:EE_
X-MS-Office365-Filtering-Correlation-Id: f053be17-f22a-4326-ad95-08dd5d7114b3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?yE/38aJqNjEOHW+m2lRwLj+ZHwtTyXpEtlKpc6p9UJYwGAKN9+TM4t9rMV9C?=
 =?us-ascii?Q?zLZ4ogwTvDy+mjTxiaNH8RBybTq9PJ0UhFv4eYtRCU66K88xdVi2PnlBhSco?=
 =?us-ascii?Q?9WSuX8ZDLuJJ+G+BglP2mhs9+PYZm4TYyroGPyC+t1ed/OT2CAaN+WXWTyue?=
 =?us-ascii?Q?PEJ7563Xxh8HRjEaYlODqjEvnX0FwsdllEhmrIjdMhT963pxxjuTMuDr9JfT?=
 =?us-ascii?Q?ac0gwfbPbwYg+pdF6U/U9bS/YvZg4U8oV/V+v0ub7Mqrpn2Xcv1mHk46Pb5f?=
 =?us-ascii?Q?ErudCVNsLqO34AWKaMww3mc3/ctSu3kwNnwQef5ZRMFvRSKQ/Jq4o21DdVlq?=
 =?us-ascii?Q?0dKSNTDTTP+HchtmN/50MzwSNfb259/p9iG84CUUzoaEEQI0DUlvc7zigUtv?=
 =?us-ascii?Q?qRiVbmz9vfQbLmPvhBMpgUn6LFTnhlZ/ex/ZDGqYmGRnDgYZcTEi1dfBg3pD?=
 =?us-ascii?Q?XsvfM3iFUCmh6QjTNkeK8Moww13jRo4ptOcwAbxuGmwywPA3+RJsR4p0vPaf?=
 =?us-ascii?Q?/lK86n+ojvDwTKpn7qagIuGyw1iYZccw6TcN5GA4d5wSBgY8X5/mGXbNgDGm?=
 =?us-ascii?Q?5WvQ+Yd+8O2NmTGAkA8OIQgDM5tq40gtMkXnu4MdUpXR4sag7PDOxQYfCmjG?=
 =?us-ascii?Q?PXvjxLHjxkncb//f1hVH8N1j7bpk9//4QF0/KqCSntq/aI4yAsKhdLzPJh4p?=
 =?us-ascii?Q?HQnNaLzktedGeLMn9UZz30/ZmaRF5fgoiI/2mn9SpIoAPx6j6ShHDTv9eyy3?=
 =?us-ascii?Q?z5IDWGn5eR40bjqZc9z1yB65szugSgmTV4uycQG/ZoTdFyj3VavxKBNubkb/?=
 =?us-ascii?Q?38HMthQTNrq9Tv+xJ9LAFNUp9IwOcIYVbJNlghS2K4Z/Pcu6OypG3daZ9C+c?=
 =?us-ascii?Q?1L2ouY3pZ0k6L740C2zmXWNSNYTiWYQ+upGHI9nVdciKqtkr2jvdSWJeG6Pu?=
 =?us-ascii?Q?vTc7Blm0/DT3LI19YjBsJDB2sb72/ThjgN3LyLdJ2M0OtiuyUygdJ8Z14uHg?=
 =?us-ascii?Q?BSPXnrVQT9N/6/S8rQ0vpwou0QiJ91YlzGRGIZYPbIei7RksF1Qx6UbpWBFV?=
 =?us-ascii?Q?ZipCXgHhZAU9rjMHLxLQ07Qe8V4jrdMfTlSzVxebuwYRJqpUmcTxno45PHOF?=
 =?us-ascii?Q?Yth+qv1NauaY2FhTcYNoNPbsaTPzUMgUMlPN8ZjkMmT4YbJiJfoB/cAGdJ+9?=
 =?us-ascii?Q?v5SmytJvSXV24UJEeuWB8zkw1ew64zokqhnn83FgDoqzz6mcIASA5MKI2lg0?=
 =?us-ascii?Q?AmG+Zj7huvwmSlwoIt6PyXnNUAn6OBY017WR9VdSZ3RamFZ1E1Aao45jYvOR?=
 =?us-ascii?Q?ftE7lnDF0H6ynvPb7dQq93Ux58sq0ACzlm+PrUn+eeqQhYYNNV/SFQ6q7awH?=
 =?us-ascii?Q?pJ5SRqZoZcqYFcBP+QjIhepJb+Zd?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?B4bhgstGbVFojj6uU5SrZV+VfMfFS9uIPTTCWWGm7ENvSSfbXl3kxaqzJPW6?=
 =?us-ascii?Q?13ajUnjxmJjt22AJeFszgaUV2Zb7ZJaLYZGWkWH9VrnLZKVtI/EjwXW9k72D?=
 =?us-ascii?Q?wXO4W+Qp/Ai9VolRqDTgWoPucneW1zPjcvyGkb56NycIikBeYV2nyU+zkcZA?=
 =?us-ascii?Q?LjtMcNeNznaQSwbA6CvnTD4bo2dwdBHd4Yk7CSLAWknY3i7dqJqMvcW+0x8M?=
 =?us-ascii?Q?SOw+4Axghj3dIgabrlo5hZm72HxkfhuSVHca8HO65SsMhEND15gGkAplGpww?=
 =?us-ascii?Q?utr5tSKfbo9vTeKqmjSf6CWg0sZIrTqyFkN0MwwYBSEewwHaE3FDcLNaY17b?=
 =?us-ascii?Q?+cuMHPWov8oDVBbMaeaSwqfuN7b5kJOZG3vUTgpsoeCmPCAO2G/h4hsbOQlt?=
 =?us-ascii?Q?7EUJ2Nluqo+Wt39iIpkWxttDJ2aI7NR0+TxEvtRAhzLIUNHR2pt4rxtDcEZd?=
 =?us-ascii?Q?ZypRYqyn7L11cDCRw5/yjXv4j1XINcwdFu91nXk4sCpHiVEl6q3vD9cCJ7nT?=
 =?us-ascii?Q?HEQJwZpqIJZeztJ2+nMi+1K2QRaDzkXcCeVUTUDv5WfzWD0sBWxZV34xUt5a?=
 =?us-ascii?Q?aBWqeOgI91hPEC2+Z4Hy6YXL+dNJ3pvxYBXIYvRc4pO9UBE0j9hBc2q9xlSY?=
 =?us-ascii?Q?hOKSh6rQ4tUBW6xwWtY0rByuOfLAwygKH1Le2GjmCtxJEzeW9VqbX5Poiwie?=
 =?us-ascii?Q?8zkKkyB5GX+dbjqbRyNvgn/bjLtRy3wT/mqgQoqv2OEKyrwiDaHsvQnGTqmj?=
 =?us-ascii?Q?AtctOqgm6syDHtYcW5qDBkDhoz4iM5NYI74Hlx64CKS6hJ916T2m1TJDKeeJ?=
 =?us-ascii?Q?/cYIxxgQPIU5IQKwUJwiFGe63avOK4Ph4262SNDhiwXJF1d/BSxc9ItdFK+8?=
 =?us-ascii?Q?jda7u8U/z8s8NxZheI2v04COwd+vc3ChZ3kJWJgMcC1IQvy8i8wXzQrTiu4J?=
 =?us-ascii?Q?sfkozXjx1vW49+SsT/rg+YJMX1JKBt+lLnCuk/39ZuDR41XYrZrfuRBm6lwA?=
 =?us-ascii?Q?jszijkbk1uTkxbnwtYELb35U+hs9uv2vbgPrApT5+k08RjBGKsolYeFnZsML?=
 =?us-ascii?Q?urZlNaY+Tzs2g4Q5+HENeMX/XeodEb3DL3a33CrGUWajsLlEdbdwqtbV1iJ5?=
 =?us-ascii?Q?s6mpwlJ5UIHMWqGNu4LZP1YGR0B3rScHJ2RL6sXGBsH8zwsVvxktVxFpCpYp?=
 =?us-ascii?Q?errk5CQxhBqVZYHOk5xlo7DjsIjozpoJmIyKv7KIWpGPvZ8DHkjNcQwPTQYQ?=
 =?us-ascii?Q?M+VgyQc0Jfrt/IZNTvYemf4B1Xlgdz37Xy4AQKsPVbXTwwh+xGF6EXk/71Ln?=
 =?us-ascii?Q?id2VfW/OWYcKVryhWRZqekZicOzIck2XpIrgCt86ZTHy7D5sjgwa+ORUt7o9?=
 =?us-ascii?Q?s5nAkFMAVdH8+L94/ayLZ9qMlFKXIrvV0ktIzOmsUiiV+6jcAA/QetcyvbmD?=
 =?us-ascii?Q?d8nPmTm5hrNki2PX27FVhh1J1Np1wUv0NIPWMOsS7K2pJMEEkac69dtVMoA5?=
 =?us-ascii?Q?jtrh/NINDGJIo0XeYICcZ+yvRdFgD5Knjwd3/CXvjfPiROWC0j5HT8EWMdL7?=
 =?us-ascii?Q?ndYKPR07sRP7inDuO6DizbDcHYSbNrF7qv2Y35bQaduuV6OarUm+KP65EV95?=
 =?us-ascii?Q?Qw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f053be17-f22a-4326-ad95-08dd5d7114b3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2025 12:10:41.7702 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6/TFoyZ+dlB+tjeb/NMnWCOInzwTePz0h+LFkmo1+eOeF1OyAPvbQN8GswJlZ1OM03pQpi9v/BMKoPm3RxYWkVCp0d7jWQtRlIJ2JDYx3Pg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8234
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741349476; x=1772885476;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=rMmgzhegAq0gg/ML2c0n5IhLVaVzrE4XebCzt5gckd8=;
 b=Jh9r5WrTb9jbxYgVY5DqtZXDzuGP24+s5Ki4lZQG64OFQpuIwSh+ebI8
 kb/u1mxckA9THK4Kbm8FqzT74Z+ZMgtNlY5pZVwmsKcA+NNqmUubUVhJr
 W6HY2IVEe37DU6VLiAH6fo7FVrpbq+k//jLWof3+JrjBtiei3oNT4KNWP
 bQcOeIg2J/sU1cEoL7FoKkHvq0BJJa++KFfUsEvILgCpqNt+ajQH4X54x
 c97MrnaGohh86cfMO0jwRtFyDl9hUVpTxNCtgMUu+CAMZ8yX6+dbtrFDG
 T1VFOuieOxA58sKN0ynWnEzTN7GCtW8+VC3FbIUgdcO6P8N77Btjsx/wp
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Jh9r5WrT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 10/16] idpf: add support for
 nointerrupt queues
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

On Wed, Mar 05, 2025 at 05:21:26PM +0100, Alexander Lobakin wrote:
> Currently, queues are associated 1:1 with interrupt vectors as it's
> assumed queues are always interrupt-driven.
> In order to use a queue without an interrupt, idpf still needs to have
> a vector assigned to it to flush descriptors. This vector can be global
> and only one for the whole vport to handle all its noirq queues.
> Always request one excessive vector and configure it in non-interrupt
> mode right away when creating vport, so that it can be used later by
> queues when needed.

Description sort of miss the purpose of this commit, you don't ever
mention that your design choice for XDP Tx queues is to have them
irq-less.

> 
> Co-developed-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf.h        |  8 +++
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  4 ++
>  drivers/net/ethernet/intel/idpf/idpf_dev.c    | 11 +++-
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    |  2 +-
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  8 +++
>  drivers/net/ethernet/intel/idpf/idpf_vf_dev.c | 11 +++-
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 53 +++++++++++++------
>  7 files changed, 79 insertions(+), 18 deletions(-)
