Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE7C94ED9E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Aug 2024 15:04:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 344424067C;
	Mon, 12 Aug 2024 13:04:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7gmDk_P3kdiD; Mon, 12 Aug 2024 13:04:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5002A406AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723467849;
	bh=wBWtN6EH4yuSKF9KDqcyy70oBbKv9RnOXy3c6N9ibGA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=B9Wjo+FLsQJKGe5jLg1w6kHt+5oeYCtOnU8jTYo/vu7rKtp7A+Pv4UZbeVBQUH44B
	 DBuKtnYHty1CsiUmSg5wdMz4gr4wDnYvU84lMIQ1PjIPkdN7k1+PK4NyGErZbPMANM
	 2UNBdTKQ/02USnptr43xd5yDgJfsoGSFhtXXNARyZsabc6KUY3zlTptizCRSvu8mz0
	 w3B4j9UyqzIaSZ3OioNOUN8fOmipBE/TVw81NFIcZJDX/foriLITFdU3Gm/Q+UYB5C
	 e6CBDv4h/OeTSet6sOq4IzEUCu2WXNZMWXp1eQnI9JLxQqasHWEor2vIO0xTBGIzer
	 B08kJm20ZuHYg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5002A406AA;
	Mon, 12 Aug 2024 13:04:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AF5031BF301
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 13:04:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9AA6E403E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 13:04:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rIH5roU9Wy1B for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Aug 2024 13:04:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6F92F40018
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F92F40018
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6F92F40018
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 13:04:05 +0000 (UTC)
X-CSE-ConnectionGUID: gNoPjDxRQhGtipRlstSIog==
X-CSE-MsgGUID: /W7xzcBqQBqoUoGXb8Bjxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="12963178"
X-IronPort-AV: E=Sophos;i="6.09,283,1716274800"; d="scan'208";a="12963178"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 06:04:03 -0700
X-CSE-ConnectionGUID: DlewEF70TquIh4+pNj6Lig==
X-CSE-MsgGUID: BcDYp3XLT/iv0DJjdaVabQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,283,1716274800"; d="scan'208";a="62386971"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Aug 2024 06:03:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 12 Aug 2024 06:03:50 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 12 Aug 2024 06:03:50 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 12 Aug 2024 06:03:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l54sRiBNW4jfEsCxfALtZTRXiY7RhDtxlUcW/P0w6LmDB4Ne4NlQCuL/rFVFaYmehyrDaF2MzcyHGW0mgkyESeni/s8U+RjDlXNk4QiJZbBKGsxsKr43iyFyf2iVNnj5hk0BqtJiZiejZB2uufq13woyaI+6gyqPOR8UNUC9DVS4UVKrGIaf5sVOug7NAHbQGRQYcUzfBdCCmDQ8UYJCmRgkvciLOBxplc5KDSAs25UC+9X44tnztfKYOobRnkHN6rDijP/trE+W7B/4vESpfY0iAdJp9CSpSxLCDH4w6+IUMJLYoN+si+ArZvM1A52KbRlRB7Ah36F/8HKPSAMdKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wBWtN6EH4yuSKF9KDqcyy70oBbKv9RnOXy3c6N9ibGA=;
 b=i/9vlkuTaM5uBIgS6Sd263IihKVaxiYgJrVuvIuYZDA+KnwLx4cmVKMIDoh/Bv2ZT92qdvW9mmyfo+d2WD26yZDweo7PJKqXuwFLa0fN2w02OuknZDQ++v+uHU9TardvBKfM1bqybZeTl32KXm70LNNeJ85qklnZsxQtFfvjgMrq6fOd9auLzSNXq4onPZVQyOq+N3s7z4XQkDZwE5z3kHWgbxte5mqlhNZJMW/B7gcHrOh1GwV0x/iWp8et5VJiMVlkDPbP+hmv/nQaHDixyiWZ4rMcWDZOhlKlvlzKxCHf5RXfP9qcIJbhtbZrsAskabCaCReZZlE53ybx5qIlTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 MW4PR11MB7152.namprd11.prod.outlook.com (2603:10b6:303:222::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.33; Mon, 12 Aug
 2024 13:03:27 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.7828.023; Mon, 12 Aug 2024
 13:03:27 +0000
Date: Mon, 12 Aug 2024 15:03:19 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Message-ID: <ZroIF3eSlQuAk9Zx@boxer>
References: <20240724164840.2536605-1-larysa.zaremba@intel.com>
 <20240724164840.2536605-6-larysa.zaremba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240724164840.2536605-6-larysa.zaremba@intel.com>
X-ClientProxiedBy: MI2P293CA0014.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:45::13) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|MW4PR11MB7152:EE_
X-MS-Office365-Filtering-Correlation-Id: 64208ac5-afed-4fd7-84a3-08dcbacf283d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?1i/wVDaWD858K7lVkvkZTT2+ZhxD/MQ8FJR+Fto6mblYYpuDudcDxEcrZ3GV?=
 =?us-ascii?Q?WVR+T4z+Oufg/oKUyl4DvonCg7BSYC62XFsCucHs0LSvnXy2mv06lNZD3NA1?=
 =?us-ascii?Q?ypNLceUpcyVEbXLzxRZQOpDrMMzPL1VHDnt5gJQsxDfFKU2ZzlFWWoznSrVS?=
 =?us-ascii?Q?7aJklN2XB5EHn59WP7JapIV8DUgsZpCESd3dgFjGISUNTdBU4LuiY0OL70k1?=
 =?us-ascii?Q?Jzuf/OPa92cRBLx8/uO1cbE0cFkP2msxq43JDum0RtxsKf3y5EB7Zyfss5tc?=
 =?us-ascii?Q?B9Mym1+J3qL6wkQ3ZRZk8cpmQhLElbAtQ06gfQttm/DKO9VhpEZ7L+JvUVwJ?=
 =?us-ascii?Q?gj5lltpTNJSTg8vinmlaj0Pe3bZ+O2FqpaoYjHwBHRtvUhNSLHtn1MqOC7K3?=
 =?us-ascii?Q?RcEyAnylTuD+FrZOT1Gg0xfSLgt5J47Bo34Gdu2bNN17/TRx377dQ9iyPIZt?=
 =?us-ascii?Q?o1QQzConteAdeuA+jcjldGu9LIo1yMdMjGvpSg7onqZYNz8MMsTl/i47bhZw?=
 =?us-ascii?Q?baRwSBuA37QXuSIkB9pan5pNQtU1zJs3UNPL/zGwYHKWaCref/bFfF+KpBSL?=
 =?us-ascii?Q?khsFljAu6F0pvQJ6SDRPRH0RBZS9aTxwsebus/eSODEsWEITHQXugfG/EV7k?=
 =?us-ascii?Q?zQLWcFa+zdRxE+VCNVRhf6btYf8ueswhs5XE7xjYTYh3YyuRtMiCodSS4B3g?=
 =?us-ascii?Q?SkUjpbhLnRbok+urPUL+sQ/ZX5vNg0G9bXmlUD4tanjoR+GWEpM99sFF8Q1Z?=
 =?us-ascii?Q?HkEk2EV21tVFwmJQDIPJVNutQRojh2YHosyzQIU4usqoes2QBM00JyGJkrRU?=
 =?us-ascii?Q?VAxYQkZp0dwTMQiMqJ5JTXPOKbYOns+Q7cliaKofdbNL1F3NRCYYJ48PgHZk?=
 =?us-ascii?Q?nRGAveJaLtEJuZlLzoqd6CqlGNVORdJkQZYgawMzCtzjf8Hu7B9VlUyyFk//?=
 =?us-ascii?Q?B9Hgb/kMvbYuBzafD4kJN7u05twzyPSlt+pYusjrV4KxGcbtkFjrF9Ruidvp?=
 =?us-ascii?Q?c609zcGkCqmWlr/tMROcVNFtlpRLBkgxSoD3X2pIiOC6ZQeEu+2AXYCEbgaV?=
 =?us-ascii?Q?nPdtgk3DaIgXIkDuFvZnewG+nsAf24Jqq0wlGHr+w2HMaGBD0Pgg8ic8EBMU?=
 =?us-ascii?Q?nby5OtMgGbXgGDLAz11VeO5Wu1grl0O9J+uM56rz4G9bwon9JqlTkcsBcwnT?=
 =?us-ascii?Q?fzo2a6t/D03BBOPhNkgLTwOxXFtA0ALzoyfsiDq/fpwBiVQu3nMBJE9HKp8I?=
 =?us-ascii?Q?bHBgLDTuPQ4pw74VWYDFNm7WoXIXpaWPLkYWo/VMjy4wPM3CCfjcmVpFEfUM?=
 =?us-ascii?Q?IJVpQ46HECzA4/bBOZZLcco/xiprgZ6bK7CilEYqEANXaw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?D3nxdxbUQNZtvTHMjL09SpcjnJzz37BqYCI4eSjHsasXeBfXbqWkK14cCaI8?=
 =?us-ascii?Q?tjwQIWvVU3rZFoHFGvETFtquwMvVBiVp/wQ6sUrPH2XBcosKos/arQJ8C/a6?=
 =?us-ascii?Q?dAyDlHiwsTRfuShboc330JptQYMHrWZU4fB5jw9DmE37mBzsewhXnf4w+zTg?=
 =?us-ascii?Q?y1qBMhFNdDMUOWUw1TQu4xR590nhUJhzkmacmnTb+d95pO1MdyshHxBk3mvK?=
 =?us-ascii?Q?aP7gBvTj13FRdJuJ4I0vqSi+jkpuLsyqzexh8DkTkRzmTHcukaIo2rnmQoEw?=
 =?us-ascii?Q?z26V9HFUDRVPSwUyo4yc6+gIC6WqQHk0lKWSbPb7LujLossJiovSbru3hEsD?=
 =?us-ascii?Q?RR52veAi5m88JU4rdG9fR3xjSetfkF6sJZjWjbGX8wK8FsqY5k5SQ1gtdFuD?=
 =?us-ascii?Q?QLwtvXrtfiM2mGh+pQLYrE09NvmCrqp73aEZ89+9EhlaYeF7pqdgqlgOWoRx?=
 =?us-ascii?Q?U8afIsx/hd+nFjrDh8nw2yoIbT5wZpt8UTzxKUJMHL2CeCEXu9k8i3Go1yCB?=
 =?us-ascii?Q?tzkOJ7mBMb4qT1WJFTTlUUtExW0Mr6fUGMdzkrF35B0xN6lRO2z+E66G9+UK?=
 =?us-ascii?Q?sWApOZiSFhgmzsaIhNtB//5PLO3KBjDWBpEcFzTTafw0dQjcpuHcVcj0hSAJ?=
 =?us-ascii?Q?q7bWP9Vs4Nzd6m6c2MhlR4x5AmpfJIkmjqaGwZB6nGFLmmYs8wvMncnP7BAs?=
 =?us-ascii?Q?wnurQjlYWpSDdVqokU9q4UFfUq3AMkxIYx4bP9EiMAw4PuamYJZ/O4K7NevD?=
 =?us-ascii?Q?1J4tEWOWIKCdq6wsUFMw/NeaH98ytwjg3Izgv8jOqitMysuNK442RztI7Rj/?=
 =?us-ascii?Q?9JfK5ZnWYhMPhu0Xewxc2KjvJTyUL4RPzjNpW3znoqtkqVLw6OmBZVwNsAXS?=
 =?us-ascii?Q?NLwWucI7WOjVpUW+TqQkFbnG0EL9EVrk1hmmPKnTGVJj+MgTGCpeZkfqjASG?=
 =?us-ascii?Q?6mGnQhdSOs6jmmjUYr+UxSN25yeaY47YHHxtljB+EQZWJ0NZK9y+tAhgxt85?=
 =?us-ascii?Q?jIaGFPkJX6X1kmnTt7SjKnz4OwTHYuFcWr5mxyiIpZ3s+V0EiZnMInq8VmTy?=
 =?us-ascii?Q?lInXU17e9CCLuK0hz7XUbRWma6Wm8cBy5ffjSgOEDdXDHGZ6/A9e3ShWPA1z?=
 =?us-ascii?Q?ybOGE5rouFSBnhC5ZR9NRBj82Xw1bk0TgSDsYbhFe9iiFwydX/PAC+yDAp1v?=
 =?us-ascii?Q?nheK11h/5f6XYJlzoCEqwtfNh/34S3ctLf3xLZluSXTFZimLk5HqlprlzB03?=
 =?us-ascii?Q?AIcRLzSOAdko3Gp70enPI+3zXaq3JwQEwCb+6i8QxWjuuWT5Pd9CawYnFA7K?=
 =?us-ascii?Q?ILA/8uk9V7/wSJaZUWllmuog6ClKU+q2jVZ5+B9/ocMmjs4gEY0wNfDhAFW+?=
 =?us-ascii?Q?HyrfYL01IAkfAkm1tuchir1f0bSFCGNOy+C29O8ny71BeZPbjvHM5ObMIhkq?=
 =?us-ascii?Q?m7uDwwza2WeBiMqARy4xTYDJxvnHRsCw2opBZr6ggPpIEGJVD09STY6juLI0?=
 =?us-ascii?Q?yKyQW5na/QYnzzFV+v4o1EuWCP1pcwK05CtW0Y5B5mtywEDjtwfcbszo43JW?=
 =?us-ascii?Q?nTN9L3rvRH3Pw2eIq8xyMWwGqfICfOPaqGvhfQi6b4ndtkGa15a0lQ/0KThL?=
 =?us-ascii?Q?Dg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 64208ac5-afed-4fd7-84a3-08dcbacf283d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2024 13:03:27.7786 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3YHe4hKh/fTO7oFySF1j+vWGIfxjQsJ4dYoCqpz4MZr40wk5xybpzodIaA89w5kZB9k8XaKgpShNMzL2g1aFZ0yEcoQkrbRF6n79EHtJogM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7152
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723467846; x=1755003846;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Zjkrh7ZgZ4Lk6X2et8DX+X0e/5EdMay3TED7wsRcraw=;
 b=A+clx/kBhuqf+PsIB/7ZJ7ZIZexRL+v+AXLrGh6NyZfWSgzpZCjmCBCF
 YmM02zCgM8HT0z4jUwZJamP5XTmnIp2/suroZdYrEv8SLTuM+fzRWoK7B
 Zy7WV5pKArp1f73e796C9Fz1na8Oav3ZAaYCw9AcUMsYY8fnGZI6MC0Qm
 Hc5i4goL5IZY/6Fo98NyB9xLyl+Otr4QhwFVV6TztecMTHo/1ir8doBlJ
 Rsv/Xnb0dI5Xglg2XXjF/CS+TPoeTNo9Ht7v8UUAahiykeUF41ND72QpD
 bRvxJOPur9ySzroTjZRVrvusOWHfnBC7dboP2SsUsV4zXULW8bvwj5avR
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=A+clx/kB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 5/6] ice: remove
 ICE_CFG_BUSY locking from AF_XDP code
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei
 Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 24, 2024 at 06:48:36PM +0200, Larysa Zaremba wrote:
> Locking used in ice_qp_ena() and ice_qp_dis() does pretty much nothing,
> because ICE_CFG_BUSY is a state flag that is supposed to be set in a PF
> state, not VSI one. Therefore it does not protect the queue pair from
> e.g. reset.
> 
> Despite being useless, it still can deadlock the unfortunate functions that
> have fell into the same ICE_CFG_BUSY-VSI trap. This happens if ice_qp_ena
> returns an error.
> 
> Remove ICE_CFG_BUSY locking from ice_qp_dis() and ice_qp_ena().

Why not just check the pf->state ? And address other broken callsites?

> 
> Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_xsk.c | 9 ---------
>  1 file changed, 9 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
> index 5dd50a2866cc..d23fd4ea9129 100644
> --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> @@ -163,7 +163,6 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
>  	struct ice_q_vector *q_vector;
>  	struct ice_tx_ring *tx_ring;
>  	struct ice_rx_ring *rx_ring;
> -	int timeout = 50;
>  	int err;
>  
>  	if (q_idx >= vsi->num_rxq || q_idx >= vsi->num_txq)
> @@ -173,13 +172,6 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
>  	rx_ring = vsi->rx_rings[q_idx];
>  	q_vector = rx_ring->q_vector;
>  
> -	while (test_and_set_bit(ICE_CFG_BUSY, vsi->state)) {
> -		timeout--;
> -		if (!timeout)
> -			return -EBUSY;
> -		usleep_range(1000, 2000);
> -	}
> -
>  	ice_qvec_dis_irq(vsi, rx_ring, q_vector);
>  	ice_qvec_toggle_napi(vsi, q_vector, false);
>  
> @@ -250,7 +242,6 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
>  	ice_qvec_ena_irq(vsi, q_vector);
>  
>  	netif_tx_start_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
> -	clear_bit(ICE_CFG_BUSY, vsi->state);
>  
>  	return 0;
>  }
> -- 
> 2.43.0
> 
