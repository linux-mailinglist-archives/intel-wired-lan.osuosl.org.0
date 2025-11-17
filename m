Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 39034C64ADB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Nov 2025 15:41:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E943360DD2;
	Mon, 17 Nov 2025 14:41:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X2eBAsu0mVjb; Mon, 17 Nov 2025 14:41:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 424BC60DC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763390476;
	bh=ZmCXDQRwDWjuOewu4A5lnGmO1J62HtrXdq9Alw71r3M=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VKHn6IW9Q5Spzljvc7/Hg4fVlcZ7s+PAecaLQBEGjqtyLkbr0Y5OuArXp00Agmnv+
	 7+r7hGQXCWPMoo34Giemwjf7skCIsh3IW9rzIag0TDeHVbBgUceGg7fLsGsroR7R7+
	 jDY0XoC++ytXwKqgKXdXmxIIL/U9ngtCOBOviAPmexRIgL14VyzWryu2nf4zZo6heq
	 YzlQefT5sieKRth6s/oc/a9DPR86Q46CKTUsABu6B9iFibljXdaMua+eSFGg2Kyl3A
	 SuBTlnxeR6F5Q0ncjgW/yIuRJTex99j25n7I6AwZK7C0eATnEy/0H04315mO/QrORt
	 cTogIijyA1gdw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 424BC60DC0;
	Mon, 17 Nov 2025 14:41:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 46957158
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 14:41:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 24E2B8247F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 14:41:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UsG1f6PEpTGi for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Nov 2025 14:41:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E227582468
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E227582468
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E227582468
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 14:41:12 +0000 (UTC)
X-CSE-ConnectionGUID: aBEgtHJqSq2BYVxzpU729Q==
X-CSE-MsgGUID: 9MmU2rnCSmKnqHvHY3o0lg==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="75990602"
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="75990602"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 06:41:12 -0800
X-CSE-ConnectionGUID: QIdbiI/oQJOnxebTf6h8Gg==
X-CSE-MsgGUID: Jefa+zrnSf2v1DPQfiOupw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="190484808"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 06:41:11 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 06:41:11 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 06:41:11 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.55) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 06:41:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QwymaChIvt7xhz6CIJEBv3TJxHqV24yo5y1ZytARgcY4Q42Z6QuBFBU7VGA6O/gT5CsYEjJxeCzSKX/9ve1RFNkOzS9fHGH6wDMewRA/Z9xj9sIRNqe/RaOijVOU6h4SCqhsJzPsruy8usWo1WGw5y/qI3+y4jnuHyFASQpcr2u/nU7v1GKsyRxRmNUjotthuVQ/XFtTakWGhiuGbY9KYlK2HP58k0T4IyUWdtKunfxIQmJsxO+Rr2ntshf2y97HwaF7K0zdx9NhSzv0qy6Ep61AhjprWeVndjPGpDvEAIo7OMaWQ0knikSGHbB/NwezM/vUKkCFT8hov2KwoBNk7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZmCXDQRwDWjuOewu4A5lnGmO1J62HtrXdq9Alw71r3M=;
 b=meCs7uXYwKw6jbkQL9Kc5VdbimchQjFiHMjaOwZZ3TiJQjg3E//8eiRVinaBj8dxKdd8FgmdzqucEsnuMvuJ6lpaLDCbsQWybL3lvbdjk21quS9NZ7TrBBK7XkMwA/mv8V81mLZAz6fqapJ2utsEo0RwRLseyATWSitO4UKEV0bQuk/1bxqjDFE6dD1t5K53BpGOxY8EdZn3k7wowtfM5X+nn0xGlJQQEpIIlEHlMy8YnQGWRm3a92MLHsFJjbbgpwsyobiaN3r32cvs9tn5NUNhHLFlVLtofw6pdJL4XzYcJQ+6N9TnvmrdwBW0aPx29ZLxYbBe7R6qLZ8nO4eulw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by BL1PR11MB5255.namprd11.prod.outlook.com (2603:10b6:208:31a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.19; Mon, 17 Nov
 2025 14:41:09 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29%5]) with mapi id 15.20.9298.012; Mon, 17 Nov 2025
 14:41:08 +0000
Date: Mon, 17 Nov 2025 15:40:57 +0100
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Fijalkowski,
 Maciej" <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, "Wochtman, Natalia"
 <natalia.wochtman@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Message-ID: <aRsz-fBHLmrbJlrf@soc-5CG4396X81.clients.intel.com>
References: <20251117134912.18566-1-larysa.zaremba@intel.com>
 <20251117134912.18566-13-larysa.zaremba@intel.com>
 <DS4PPF7551E6552A3FEB7FA0FC5D99698BFE5C9A@DS4PPF7551E6552.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <DS4PPF7551E6552A3FEB7FA0FC5D99698BFE5C9A@DS4PPF7551E6552.namprd11.prod.outlook.com>
X-ClientProxiedBy: VI1PR06CA0128.eurprd06.prod.outlook.com
 (2603:10a6:803:a0::21) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|BL1PR11MB5255:EE_
X-MS-Office365-Filtering-Correlation-Id: 50fb7308-6196-4197-84a9-08de25e75880
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|10070799003|366016|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?1q4hD0yweufTYWowDJwYbTxbhUvMA6w0ydyFKWa21RmTFp4lh8uo9iP+WqPE?=
 =?us-ascii?Q?/PRjzpIGdh5SwS8/sfLtnSorWwzJiMZDPNRXuvQCoBk9IcTyRJ+F3pWsld8K?=
 =?us-ascii?Q?m/fXXgRrImYFm3xwtsua4qUh+4FHVzFc8pVIi3vNK3QHkwSc6sVuQChYCV2N?=
 =?us-ascii?Q?Y2jZAp/+qbcn4Dm2Uq6lkQvZ/nWrbFBke6EZePudS3e/ccwJvgO7kvUB3rUB?=
 =?us-ascii?Q?HtUg1JyowyMbs/OPN2Ty+bARj2pbvxtiFf6ST0bwKO3OLwzUjK//ZsVfDc/9?=
 =?us-ascii?Q?43VruejZ/38Cp/W9ZpC+xEVDucMjLNZdru04T5UM9MKjjyuD+ECgKlW38RRE?=
 =?us-ascii?Q?em77AEYlBIbjIAiksT7jWvoW1ruEBD4WRSgKvr7+4hAXtLWOFZXiAeKv5fvu?=
 =?us-ascii?Q?pyZnCBp7ZManuSMBEcqC9VLYBsbIwVzS2/8Zzo/DeVSYYYZ6uP4cEA3CxoC4?=
 =?us-ascii?Q?geREWA+ma92OsSlMFKuTHL1uaaVhD7bsB16w84uGbtCvmF7cz1LzvaqmOm05?=
 =?us-ascii?Q?OdjqItQxAJ7wxXC01g71E1ZHDkCc6xgKIqF4u+DwbqAPRm7/wKzPRxnJ4CRe?=
 =?us-ascii?Q?/fkga9slLi21ZGRxCOT5HKmJ3t3yURGnT0d0JdRoJfW1nWKz5yHEtaanHxfP?=
 =?us-ascii?Q?eswA+xGe2RJ1IngGDJO4Qyzkfo8ykC8UGslV675hKR0pR20gAjk4fReIA5nQ?=
 =?us-ascii?Q?81VflcmD56UM9IwsF7kAEjdC335aB0SsLOxdxr4+idz/n6UhRIbeH+jqbvxS?=
 =?us-ascii?Q?nHfGPlIHFKrb9/ZyGIT8XGYNt3/yOYyLr1qIt2nAlqeKyQGzv2BiszViwBvk?=
 =?us-ascii?Q?mGAIiFhtdB30DxXn9jHtyRtq4QfANzbYtMXdQpyHmVxk0XXesOD1y62V64Xq?=
 =?us-ascii?Q?N8LC2PdqeBa3nsRTWDB8qnLVVXard3NiF8gdqzPfxV3lYc8RAgNP5a68UNtH?=
 =?us-ascii?Q?e3wmdnZiTvwXeZ+Bwgzz0wX6E49/FAcUIwGoYXm1++2EQVUHo0qw1/R07EFi?=
 =?us-ascii?Q?9rYdjrGzD3sMtYIoaHiJA/tuSH/6JWCBx1n45lx/oYnpkQ52vPAJXxIei4Ez?=
 =?us-ascii?Q?AALpkLVOFGfyiYSDhzxB9MVycCEtKKdvSJUGapsE0MlhJD/4E38ucfYV4rTb?=
 =?us-ascii?Q?K9tYsDrNGOC+iIbKAKiVfd+ANpZaqnGadw9TWpYWTTUeDfbkdGtZtaqBkU/X?=
 =?us-ascii?Q?aYmReYT3ImzDARtj+kM5SzJ03t1xC8qJQXClWaWL3LFoy4LlXGay40p1X2AI?=
 =?us-ascii?Q?Q67T227iBxvx3Gd3MqdsKUpd40DqDp8Y/isLKMpwi1dAPswVmG0z4BWE/3Gc?=
 =?us-ascii?Q?3T6cwfo3KhW4bwtPltblD/kAhesCVC10YxvYmoIWOR5Kv1G5Ss2gQQQ1kibw?=
 =?us-ascii?Q?ScIwQhgrQjxV98SiHa0RnnbfXkLss+hPlY3QyBY9WSVO39u87okn9Qhg31hH?=
 =?us-ascii?Q?39ebrP0vahGClYu804fPUd4ThukB3rK8?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(10070799003)(366016)(1800799024)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kdpqWM9bhsaWSZCEa7R+F12wtwxU79IqPm0k9tL+0r7sCavTu4ypJZ8Pe9CF?=
 =?us-ascii?Q?Ly4hrcykMfDcpjgNrdf8sdLhDi3PhMO/VlfHciG0wgU6TKO6BAH6KMeDw5vh?=
 =?us-ascii?Q?fyuqjEPDl89dxa5dB2EXtD3/j4TCnQR+6mHEQ64aCwmRY8wI/wICWBaZT87h?=
 =?us-ascii?Q?3IjUZMnVtzCODlAXpzsIvRD1Ffa1NZv6Id60/7ZRKPrJ8nWw0Wxkt6aUQMrn?=
 =?us-ascii?Q?WsKOT8cDFMFht3LfPWRf52lxey4Xv83OZlbkhVCkhuMP0jw8boQNzbfSMXuD?=
 =?us-ascii?Q?ZvYOBtok8sXpvnZjLgcLjUTil/caOIrEZr74XoH2S6gPczghGQzBQy+1mf67?=
 =?us-ascii?Q?fQSWN5lV3mEcQDbhFr7ic111RtFXGOCWGjRAKBppK2mFl+bZoqzLnp0CoqVG?=
 =?us-ascii?Q?idDUPj2hanxmsas5Ju8TQXJElaY9CLKsnGSqVCIPp/oQxtki8XruxNLykyu4?=
 =?us-ascii?Q?h5KNsNAqQWnNBIa2briNdbRiDAFhedv2wAzBICvQDGn9xgSkGcj1QIQdNzgX?=
 =?us-ascii?Q?btZ/GMLEDbTPyEe9cLllGBoKZH4sZFkTDlXspNiI/75V/ArjFo1phVQst0PA?=
 =?us-ascii?Q?I1dFi+hNLt8uujPoB7Ck98PlCgP4C+wXxgWclesI6IEMGnSvffQqa8zzsfjx?=
 =?us-ascii?Q?6bM+E4DquqKvKBR+AMdJ1oZc+aSIM9a1bxkl726gkPND3U45MZi02kQGrOo0?=
 =?us-ascii?Q?6i1JjFY+6iOH/DvbYIBGkqtKVBMEkdLpw88ZPvo8Et9xTyT0LeWL3EJ9Ysgg?=
 =?us-ascii?Q?+KH5Gq9BLCIrekQKUzFiUzBLPrpO5Af54A6vp2mUzuSRH9gvwOZt7KOIee1b?=
 =?us-ascii?Q?b2NdM/H6Phgab8PoSwJh5CRSPO54Tk2EPGEAAOqjoBdGy9cfqW6Nw5JuKBOv?=
 =?us-ascii?Q?lVECtSXJrNEzwm/ZJBY4eMZljKQwemU2sV0h2OZpAknHVcTc1pnzvnOw4f/x?=
 =?us-ascii?Q?XYspFj4ZqlWtIS5iYRWMNZDq3hscVYXxzOxFmlG7I8k5hu0DS3oEW+YA5+6j?=
 =?us-ascii?Q?Pq5KwlRRgFkodJXi/hw3SXSm1qh6KVnU89kgSo4BqEuXHp45hJK5MDojpxqR?=
 =?us-ascii?Q?aBHVKmyzyB4hdwkOHG4FcoYCcv+j9hsQevB1XqDeA8fwfUbZz1m8CI51UsnQ?=
 =?us-ascii?Q?md/UIuJK63XJiO5+3cuPUV+4UqpFLijIvfSAcw/dspzUuvt7/mHfBklqgQ6t?=
 =?us-ascii?Q?l3CFPq2/Hv0BSxc1eMoCI3DnJ8/ofTcU6xNP///N+of6FvYlba3P4dFv4ELl?=
 =?us-ascii?Q?fyUzDsU2R/bwdviGYYiMqrB7EjqClly/C1x66A4BZcNwCo2HOLZ2DkSwO59S?=
 =?us-ascii?Q?n9+y0Tx8WlIz7h311s5XAc8FAl5Xz3VKi2jrUOAQMMtodTOn23c/MKl5patH?=
 =?us-ascii?Q?CdXBKcL6DA2GjU1Pvsy8SImlhc0UuIOOn8X8ou+M7TFKk5Ch9H4N6wvFHru+?=
 =?us-ascii?Q?BXHh0X7iG+JB7tsbwG6lDvZ0Ggwvj3g3mJNqrhsRTzzicV5KNoVEqc67XSLn?=
 =?us-ascii?Q?PseSwNSlyehj9zZHN9z5m0EDe4CdPUhj01hVNfpIBEguEOpUNcjPO/81cgEd?=
 =?us-ascii?Q?G6f+Jo7QrKev/PLP35sl5isMKTGM4jMQadHfDi21+mDFRknpONdTFyKQ8Mss?=
 =?us-ascii?Q?mcM6uaufgvRe9t01ijlEvNwEDabeizPWxfAH1ZJMBkObD2p58+sgpc5l6Uhy?=
 =?us-ascii?Q?HcKc/w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 50fb7308-6196-4197-84a9-08de25e75880
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2025 14:41:08.8547 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hm5dg5pHpHiuALskOZKzJYPfxZuwV8iYlMJi4bAAuyuY9UHAwhBlxPQvAvjhEwso1AUQ6G2EPQN9XeY+ZCY9Y/vgxvvNDFnLCP8PVQZiqBI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5255
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763390473; x=1794926473;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=byf5snFGWrJ0J2Ff34Dy4bjFnviWQdmpddf4Kdy5x/U=;
 b=Mv4FpWcD7q3h7QT8t5bLKuCuK4TS67mV3CUJVcBu8S8J05MA+Ndx4S2d
 9m6jTs9zuWuLSPL1R+8wqZUSxnBFIS4y4GgQeoBR+mDTSo0llkeXwuLRc
 XjTmhTreAlI46dOgJJcB/Fyz1858LNO5/PbFlarRZ3kNAYMfXoijzqzWM
 WfBpWxNDkNHFqI69tuWej9cViomypN5nTiBD6MmFxtr7y3B+2XJB3AzhM
 7kIODDfYAlbazw0Yyq5Z9ja3E1XHh1LubnsgCDgkIaUxu9JEVRxZd3bOd
 Hf3xZjM4GEbE5XtVtkO9rjlMmRZBVFx7P+WGdPnRhbFzFH8vxScI14ubZ
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Mv4FpWcD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 12/15] ixd: add basic
 driver framework for Intel(R) Control Plane Function
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

On Mon, Nov 17, 2025 at 03:18:32PM +0100, Loktionov, Aleksandr wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Larysa Zaremba
> > Sent: Monday, November 17, 2025 2:49 PM
> > To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> > <anthony.l.nguyen@intel.com>
> > Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala,
> > Sridhar <sridhar.samudrala@intel.com>; Singhai, Anjali
> > <anjali.singhai@intel.com>; Michal Swiatkowski
> > <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> > <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> > <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> > <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> > Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
> > <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> > <jayaprakash.shanmugam@intel.com>; Wochtman, Natalia
> > <natalia.wochtman@intel.com>; Jiri Pirko <jiri@resnulli.us>; David S.
> > Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>;
> > Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>;
> > Simon Horman <horms@kernel.org>; Jonathan Corbet <corbet@lwn.net>;
> > Richard Cochran <richardcochran@gmail.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> > netdev@vger.kernel.org; linux-doc@vger.kernel.org; linux-
> > kernel@vger.kernel.org
> > Subject: [Intel-wired-lan] [PATCH iwl-next v5 12/15] ixd: add basic
> > driver framework for Intel(R) Control Plane Function
> > 
> > Add module register and probe functionality. Add the required support
> > to register IXD PCI driver, as well as probe and remove call backs.
> > Enable the PCI device and request the kernel to reserve the memory
> > resources that will be used by the driver. Finally map the BAR0
> > address space.
> > 
> > For now, use devm_alloc() to allocate adapter, as it requires the
> > least amount of code. In a later commit, it will be replaced with a
> > devlink alternative.
> > 
> > Co-developed-by: Amritha Nambiar <amritha.nambiar@intel.com>
> > Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
> > Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> > ---
> >  .../device_drivers/ethernet/index.rst         |   1 +
> >  .../device_drivers/ethernet/intel/ixd.rst     |  39 ++++++
> >  drivers/net/ethernet/intel/Kconfig            |   2 +
> >  drivers/net/ethernet/intel/Makefile           |   1 +
> >  drivers/net/ethernet/intel/ixd/Kconfig        |  13 ++
> >  drivers/net/ethernet/intel/ixd/Makefile       |   8 ++
> >  drivers/net/ethernet/intel/ixd/ixd.h          |  28 +++++
> >  drivers/net/ethernet/intel/ixd/ixd_lan_regs.h |  28 +++++
> >  drivers/net/ethernet/intel/ixd/ixd_main.c     | 112
> > ++++++++++++++++++
> >  9 files changed, 232 insertions(+)
> >  create mode 100644
> > Documentation/networking/device_drivers/ethernet/intel/ixd.rst
> >  create mode 100644 drivers/net/ethernet/intel/ixd/Kconfig
> >  create mode 100644 drivers/net/ethernet/intel/ixd/Makefile
> >  create mode 100644 drivers/net/ethernet/intel/ixd/ixd.h
> >  create mode 100644 drivers/net/ethernet/intel/ixd/ixd_lan_regs.h
> >  create mode 100644 drivers/net/ethernet/intel/ixd/ixd_main.c
> > 
> > diff --git
> > a/Documentation/networking/device_drivers/ethernet/index.rst
> > b/Documentation/networking/device_drivers/ethernet/index.rst
> > index bcc02355f828..b73d13a2f748 100644
> > --- a/Documentation/networking/device_drivers/ethernet/index.rst
> > +++ b/Documentation/networking/device_drivers/ethernet/index.rst
> > @@ -38,6 +38,7 @@ Contents:
> >     intel/igbvf
> >     intel/ixgbe
> >     intel/ixgbevf
> > +   intel/ixd
> >     intel/i40e
> >     intel/iavf
> >     intel/ice
> > diff --git
> > a/Documentation/networking/device_drivers/ethernet/intel/ixd.rst
> > b/Documentation/networking/device_drivers/ethernet/intel/ixd.rst
> > new file mode 100644
> > index 000000000000..1387626e5d20
> > --- /dev/null
> > +++ b/Documentation/networking/device_drivers/ethernet/intel/ixd.rst
> > @@ -0,0 +1,39 @@
> > +.. SPDX-License-Identifier: GPL-2.0+
> 
> ...
> 
> > +/**
> > + * ixd_probe - probe a CPF PCI device
> > + * @pdev: corresponding PCI device
> > + * @ent: entry in ixd_pci_tbl
> > + *
> > + * Returns: %0 on success, negative errno code on failure  */ static
> > +int ixd_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> > {
> > +	struct ixd_adapter *adapter;
> > +	int err;
> > +
> > +	adapter = devm_kzalloc(&pdev->dev, sizeof(*adapter),
> > GFP_KERNEL);
> > +	if (!adapter)
> > +		return -ENOMEM;
> > +	adapter->hw.pdev = pdev;
> > +	INIT_LIST_HEAD(&adapter->hw.mmio_list);
> > +
> > +	err = libie_pci_init_dev(pdev);
> > +	if (err)
> > +		return err;
> On libie_pci_init_dev() failure, no cleanup of mapped regions.

No regions are mapped at this point. If you mean requested regions, they are 
cleaned up automatically by the means of pcim_*.

> 
> > +
> > +	pci_set_drvdata(pdev, adapter);
> > +
> > +	return ixd_iomap_regions(adapter);
> > +}
> It looks like missed pci_set_master() in probe.

This is done by libie_pci_init_dev().

> After successful init, DMA may fail without enabling bus mastering.
> 
> > +
> > +static const struct pci_device_id ixd_pci_tbl[] = {
> > +	{ PCI_VDEVICE(INTEL, IXD_DEV_ID_CPF) },
> > +	{ }
> > +};
> > +MODULE_DEVICE_TABLE(pci, ixd_pci_tbl);
> > +
> > +static struct pci_driver ixd_driver = {
> > +	.name			= KBUILD_MODNAME,
> > +	.id_table		= ixd_pci_tbl,
> > +	.probe			= ixd_probe,
> > +	.remove			= ixd_remove,
> > +	.shutdown		= ixd_shutdown,
> > +};
> > +module_pci_driver(ixd_driver);
> > --
> > 2.47.0
> 
