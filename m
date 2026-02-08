Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iMDsAciIiGmGqgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 08 Feb 2026 13:59:52 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 00771108ADF
	for <lists+intel-wired-lan@lfdr.de>; Sun, 08 Feb 2026 13:59:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A964A60711;
	Sun,  8 Feb 2026 12:59:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pDsxRhTrL4el; Sun,  8 Feb 2026 12:59:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA11D607D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770555587;
	bh=rr/XIC2d6FGoYwy7L7vsitxwYPjosV0yjsxLuIsaA0k=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tcC8bXcV12BDvLzrjW3aztDpEVACO0zySwnotmxWjZZNS4LLD7jVRlVCPKiY8jdh0
	 hJb6o85RNbjO0gCtR++kbuQrQDomyDYYZRmNoCdN9lUpJAxgvnyZjJCCQVVisrbDa6
	 5QjKmVmGC5SS4vt90iEC5g3RRJ2IQkAfNXsp1w2HKRbqDgf38l1jaZYYNgo/RS4x5Q
	 UxQcxQMJ7mHq8GgQO/s1xtrJd5TSGK/Xpf+e+vsf+ecA8pr2/Xj2B1fgpqzC1/YNhJ
	 qvTGYW9+77TryWO65p0iB1xGRLnjfYfg+YonPPV0dKkNdjg/qUCOhnPqA8M5QRLPC9
	 VXxdIp8tuKynQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DA11D607D1;
	Sun,  8 Feb 2026 12:59:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8674F2A2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Feb 2026 12:59:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 627F980F27
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Feb 2026 12:59:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GHGohf_AsyCq for <intel-wired-lan@lists.osuosl.org>;
 Sun,  8 Feb 2026 12:59:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.84.65;
 helo=db3pr0202cu003.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2F41080ED6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F41080ED6
Received: from DB3PR0202CU003.outbound.protection.outlook.com
 (mail-northeuropeazon11010065.outbound.protection.outlook.com [52.101.84.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2F41080ED6
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Feb 2026 12:59:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z7218mSPAu+UuVMaPMzOeXK6AQaixBBL/uD0Wj5CHKm+wyFngzYKdQXLMSnqRt3srINqKAHE/8JTQa6xuTzIgiNehH3yAlM6Jv4UdH71qmHToRaodbnnLX44g1F0Gi3ZFj0QpnYca+Y5xwc0IEo7MWVPNRAeuUfPUj55etCQZIdvVlh6r4IBCRIYHk/5H3wkwShVJEPvGxbELyqQRGSIPdJaMS1bsgL4JskT1ub9HWOF6tSMEtHDyFmvV4xQeYgYDonhjBJuy+w6bFuKzGcHMUt6VVZIPf3XhFE4akwp0GEXgjRGOk0fWdGHkZA+nEgYa96LHmjyzwq3lYZM8P1htg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rr/XIC2d6FGoYwy7L7vsitxwYPjosV0yjsxLuIsaA0k=;
 b=T9VsBko9WpliLS4mA/PdHRApX7biUQRrfsTSe8goADtRSr8UKKHvX6JzPK8ekM+JnxtCeqyapm96ZZ0VijsKbnNTSnlHTFy1DUOh6GRsAPDuwuUt7SQ0un8bvgXJN0CLqooV6SBVKBf3KSFJ7H31aMCChENL92V4B5CBBwIxBvL3NOIY1zJKETUHZoaMaUKiE2hkp9W2GewrRIx+6O6NkU739A2lPNZx89kHKBVqEgHTGUf7R5YC8vA2ah3rgZbV1oFWrxU3qtljQAre7n53+bHR9fUJQswfl1lQ/e+J8xNtZVFA6QMSherIj6E6h1wVri7n2Q1GNs1/QGhGzVHm5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by DB9PR04MB8106.eurprd04.prod.outlook.com (2603:10a6:10:24b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.18; Sun, 8 Feb
 2026 12:59:40 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::f010:fca8:7ef:62f4]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::f010:fca8:7ef:62f4%4]) with mapi id 15.20.9587.010; Sun, 8 Feb 2026
 12:59:39 +0000
Date: Sun, 8 Feb 2026 14:59:34 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Larysa Zaremba <larysa.zaremba@intel.com>, bpf@vger.kernel.org,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Wei Fang <wei.fang@nxp.com>, Clark Wang <xiaoning.wang@nxp.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Andrii Nakryiko <andrii@kernel.org>,
 Martin KaFai Lau <martin.lau@linux.dev>,
 Eduard Zingerman <eddyz87@gmail.com>, Song Liu <song@kernel.org>,
 Yonghong Song <yonghong.song@linux.dev>,
 KP Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>,
 Jiri Olsa <jolsa@kernel.org>, Simon Horman <horms@kernel.org>,
 Shuah Khan <shuah@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 "Bastien Curutchet (eBPF Foundation)" <bastien.curutchet@bootlin.com>,
 Tushar Vyavahare <tushar.vyavahare@intel.com>,
 Jason Xing <kernelxing@tencent.com>,
 Ricardo =?utf-8?B?Qi4gTWFybGniiJrCrnJl?= <rbm@suse.com>,
 Eelco Chaudron <echaudro@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Toke Hoiland-Jorgensen <toke@redhat.com>, imx@lists.linux.dev,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20260208125934.f4n5mri2pit6s6gn@skbuf>
References: <20260203105417.2302672-1-larysa.zaremba@intel.com>
 <20260203105417.2302672-7-larysa.zaremba@intel.com>
 <20260205005901.gnju3zmqimtgeu2b@skbuf>
 <20260204173401.282899d0@kernel.org>
 <20260205122953.lscemcctayrvszdu@skbuf>
 <aYSP344FT-JlylwY@soc-5CG4396X81.clients.intel.com>
 <20260205124638.hxzvjiocephzlrk3@skbuf>
 <aYSZw4wbd-nvLTuD@soc-5CG4396X81.clients.intel.com>
 <20260205134046.pggwyosutj7ggi4i@skbuf>
 <20260205175408.30ab72a1@kernel.org>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260205175408.30ab72a1@kernel.org>
X-ClientProxiedBy: VI1PR0102CA0104.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:15::45) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|DB9PR04MB8106:EE_
X-MS-Office365-Filtering-Correlation-Id: 5f87fcb2-3396-4b0f-c469-08de6711eaea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|19092799006|10070799003; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?2968HSiAeGXhzrc7hbhRzB9MjbsSFesdzBOBL32LzSAcuUNpnBJuSAV4MtNQ?=
 =?us-ascii?Q?+DGuEAQyPio8kSwYXUfzD+NLEsWyEfj89XTqjQhY0qltU+grlT50BWaJrtIv?=
 =?us-ascii?Q?7ARhJT0R6SYwPtgjnpm73UkSAfZZx/179b/1QPBLn24KxuHPoUglvYRlj4KB?=
 =?us-ascii?Q?TARGXUeM71BIJSfzPce1iwm+C9N8rq7A2T0TtwmbTIkuLJLDEZefl6GdA6Wa?=
 =?us-ascii?Q?O6jYdfz2GPX9RAImBhoN/Yi+6W6I1vexl3xBRBdQg0cpRQSG0GURTc2UVAAa?=
 =?us-ascii?Q?iwKmJ6i4pbjeS8HTVAZC+h0JcWqxXZkKt+b0QJsOXJawlYSv5kw1cEBjNifS?=
 =?us-ascii?Q?uLM65O3C5WoOknHsSxvF3B6LuNQmhOSMc3ev5hWuLtV9VjQxx02guuLfTsVy?=
 =?us-ascii?Q?l7nD70aY7SxgMJIrvy7FUU/goYRZoQ5XAA13OghJU6Epj7o5BVSOvjhWgoNK?=
 =?us-ascii?Q?FE+wRWO7aJbzAG3aVrJ3xbV8SKdTPRFY+y2o3uFyIBD46d9DcFw2/LG3ClOx?=
 =?us-ascii?Q?jNPa3TXRNKcMrKVKqSlXJ9vqIwqgWN4FfB+hgiOT9xMmkrjvR+7acTMfvxrf?=
 =?us-ascii?Q?gqVjH4CIBgH5m3LWJ57upewrLhDiN8HQFLT/I2ekVBloC2j2nowZ9obRqwsk?=
 =?us-ascii?Q?zr5rHccm+9ahwdRcnYpjMrtmsBr7jZPWLWJT4EFO5ZONIOLHVW4vqoRiRJU+?=
 =?us-ascii?Q?IoA4Ielch/pn7JoONqpChVh/7zY0dMJ3u45XJBWEdO93ezPdDV7B9XsEgw7C?=
 =?us-ascii?Q?OOOqlyJ2RgJLLS4ZiFvxGp07nFSWPZqeGzL36Ry2XU8OmJOVZ5o3WGQV4EJe?=
 =?us-ascii?Q?HXmeQlHEsp9irkXEFsdAPoITZPG1UKU0uLniqoz1jHuii43Rj/4p2fGUCVlO?=
 =?us-ascii?Q?Lgh8YvUma6V8z8UIZbcHrUmN2EtB3lzplfd19ExsBZou49CpewQKe8JS75hu?=
 =?us-ascii?Q?Plhb0gUh/Cpls7upcp6TKXRw18Xn9fw4ygukakClJnUlrHUeGrY/ePZNkRCn?=
 =?us-ascii?Q?x54zn9/8XenucwqE/rVPbRfYxwXW76YmiPx6hEuYxyVwmWiW4xxTRSWunIBS?=
 =?us-ascii?Q?6ff+YkIB/HKc1rEbbmjmN/oBOEpTK9dx96/2auRFp08IEqpfiLL25ie6eUB1?=
 =?us-ascii?Q?UgM/s46feo47mglAt+V+pIxM4zvrNaLJEKfkbUNvD3WborVTfULKxaODdqzZ?=
 =?us-ascii?Q?TZSg2KIPS6fuGn0tfvmmdXB4ogcYNU5wLOdW+AczJtv0b+y47Xkc0fisBO+I?=
 =?us-ascii?Q?3eOyyALSeyZ38XrEqXnVlkq5nb510bD7+axkc39E3nfeThSLV8wp9M3eCp+z?=
 =?us-ascii?Q?W67Rq4BP+PHafKWTzEbcLIepkfPpQiZM813I+EY6fdIGo8i1qJp/ZaRivWoe?=
 =?us-ascii?Q?eqXQWcumPbHgEgR62VW12KI7khhl7lETMxqkciSRk5J0UJrtXhUXuh+LILSK?=
 =?us-ascii?Q?zl6n9I6IsGHbB7+BnEm3584dybqaemHjq/whxnT2Xid0Wpeg7Ly+wdz0py+a?=
 =?us-ascii?Q?E1yof72cfuR9veiTPcps6F1ySc0843YX4TNaCFSK/2mPk+MivsQzop8YlRhg?=
 =?us-ascii?Q?hdIvVQRe8w+9opeomPc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM9PR04MB8585.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(19092799006)(10070799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?efqqSRQPcEpckUSyfJtq/zS2v9/81RnU+m6th5sZTgHiJzhY0e5X8tv/faCh?=
 =?us-ascii?Q?65CP7KtGsMGbRNVyFJHfUfCK3b3KCJ9AtTPi5og6EAl9gpxuSaPn8AENywte?=
 =?us-ascii?Q?k0sv8SZEeFO9brjE7wXl7IHW3+SWzoR+k89MFF0+0OYfv5ZubZZhn90bLEOf?=
 =?us-ascii?Q?wOQkN8GIf9SShHIkHoWDYaYnYpGNIrY5QPw/E38xsY8qwN9Pb5HiIXAsW4Tu?=
 =?us-ascii?Q?fb5JQtH9BWq+JYLt4uTUglI5o6Sx5aYuPGY239GkTTsrIpJEHYPfOBo66NwT?=
 =?us-ascii?Q?fRCT8I43eT5f/aH2yvF5n5Yljrw91KIW1rQnBl/LWZV2CyAfGSELNZOp1FrK?=
 =?us-ascii?Q?snvyiGo3sv2PDLBKEDdnYqKybSCCvGSyU4aaA/IsIRc/VSQeYMv/Al3DZq+G?=
 =?us-ascii?Q?yxi36UPq2DDcvYMmqXJV/704XN6pqtifHDZw+2huWFalc0hSOgG8tnXEJOQ3?=
 =?us-ascii?Q?RL4C+JPixXWH6tA3Zs89bsj4LGp9dsnhPUl69aJA8iID28ascs7qEmDS0qtS?=
 =?us-ascii?Q?lMKwLZaRR+E/4jJLlH9n9brJAA4UuQR90aO3xcTA0pS0nBs5dCDOX+vghIBV?=
 =?us-ascii?Q?t9c6W7jl5T8fn73FPK+yn1A8g7uFxDg1SnkvuHDTgQlFiUzIk1jb4DrVp6L1?=
 =?us-ascii?Q?1JEs0ekYVCxz0smQV2PNGVgG1hMUrzvlyn7PZORebnhviFJ0EhY5uDjghZwu?=
 =?us-ascii?Q?Ts89bMHdghJzPyov5R5BugfvHjYSA4xUeagap0hcTz7LurEyFjv2uo/DWGsl?=
 =?us-ascii?Q?yQMB2yhfm3MjHIkoJBOPAzfH5vwgJHvbEy4Tlf0+wFYyBrsX5gl94WaEdvld?=
 =?us-ascii?Q?G5nexlZh0Zzgrgr/bJfiinPh7TXgbnVdSrxSV0cFvyOszwUBOgHRTqbAI783?=
 =?us-ascii?Q?wxPm24w1DfGerLON0myLeeL8dnyKMYT1hVgcioGv45m4y6MgUuDTssgXa3cz?=
 =?us-ascii?Q?CEAsE66ONVD63OR/sLqiNz45Av0ZrkCcU+pTv2oARJJLxJDNuG+p1WEdsLob?=
 =?us-ascii?Q?kB7kTy9AwaKV5d0jWy+1d8NsRvbdf2xjjeblom79VtVfLYlHtQ+ayOb7May5?=
 =?us-ascii?Q?DcXnzCo5VYB/8R+6MK9/4aiFmXZrtbHURzv/Rkb5ItADtTrk1DruGaHLvFoc?=
 =?us-ascii?Q?gFF8aIVi7YB0L8l0kz59YJPnKCwMhDOifHV/NCzDh8RLY32tz6uwt9tLTBM7?=
 =?us-ascii?Q?ooojYxp5SNSR8MLKNYGFU0QqRu4c+VchK4pt/i7OeZs1WbelncQsKwYtyQCO?=
 =?us-ascii?Q?3+1wvIaNdWbnzWDgUaOgB/g2d/2Euoc6LnxNURTHT7X2xtYtJgD1SSbsFSMf?=
 =?us-ascii?Q?+dSxFjF3ug5xH7G6T/gLRjcj1w+XcelLzQRYaccZtpXFWShsfEmHhQl9XVwo?=
 =?us-ascii?Q?8H4em7JWkQqiBbfN/XwH5s6NxT52Ib2lFlO3nR6z3M8Oypj+5TL2zz25NVCI?=
 =?us-ascii?Q?yaPn4pmKfXCWyaZzYZszP8DGbgFBvI5e7zj4scUALB9o6z4TJ/KSLMNJDSMt?=
 =?us-ascii?Q?2wD5PoRDEUFiLnKqIHxNijxz6waiGTSpQeMguKENa3iJTqraSER1+2gNQSa8?=
 =?us-ascii?Q?BvTbtviPD3ORODbW81ZHHOuvcJ8EWe266W29aTo1juq8XBa0LXc+RcDxDqe/?=
 =?us-ascii?Q?ffNG+CHN1zxgXtM7SzptoLZ8sD1Ey8/pooH0RaX62oUWL3X+AxAykH1RwCvO?=
 =?us-ascii?Q?qircJ176UAz0waLScMvQsnYj75ehBqBrMiPcMbwfPh0bxRYQbamcNb4xDYUM?=
 =?us-ascii?Q?LNhMPNHaeh5zewA8OUuNSyR+huvtX38yh4OVbwslgbGEHNz/V8/HfCKyA9A1?=
X-MS-Exchange-AntiSpam-MessageData-1: MAATTmjWMPcIPKFTlkpcBs4+ha7YVLbSZ14=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f87fcb2-3396-4b0f-c469-08de6711eaea
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Feb 2026 12:59:39.8414 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eW9b9Zp8zGViC8jU7UXVDyupvl/WPHoZuTizgbM2ujFz+4eIEGlaZHoTtYwwjMJSMw3PRLd820gOBaTJmL2uMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB8106
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rr/XIC2d6FGoYwy7L7vsitxwYPjosV0yjsxLuIsaA0k=;
 b=kDEuVQYU2LKFyOglhtQJpGPY97muxxMdWxRK82T2WFQ7MmxNRldrdB/snTmi9GA4I2VGfvHwFMkII73VksGIfSC4YKKwuI0K/pPc1XtMM3ZQt3O8cZsq7ClGk+ti2lLvLpSvL/6N2ZuFvfLVCSHh4rOaC4daHfHYcVtiO7Ggsy62Gf4eY8ZvFkeZDNbyXuHKyBGHxt5vq9x5hfGTJ1ZNyrNYJPWM1oaHPzdwyyUFKxk3H3eaZFEga+bJrMAfV8w1pKKkEhRwB7l3R6jMYBLK4FDqLYKJKoMbnwLOs9JguUXhqhmuSFcJ/m9m48bp+e/qOU4wlz6KLTR6dezTnLU44g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=kDEuVQYU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf 6/6] net: enetc: use truesize as
 XDP RxQ info frag_size
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[42];
	FORGED_SENDER(0.00)[vladimir.oltean@nxp.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:larysa.zaremba@intel.com,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andrew@lunn.
 ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FREEMAIL_CC(0.00)[intel.com,vger.kernel.org,nxp.com,lunn.ch,davemloft.net,google.com,redhat.com,kernel.org,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[vladimir.oltean@nxp.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.976];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 00771108ADF
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 05:54:08PM -0800, Jakub Kicinski wrote:
> FWIW my feeling is that instead of nickel and diming leftover space 
> in the frags if someone actually cared about growing mbufs we should
> have the helper allocate a new page from the PP and append it to the
> shinfo. Much simpler, "infinite space", and works regardless of the
> driver. I don't mean that to suggest you implement it, purely to point
> out that I think nobody really uses positive offsets.. So we can as
> well switch more complicated drivers back to xdp_rxq_info_reg().

FWIW, I do have a use case at least in the theoretical sense for
bpf_xdp_adjust_tail() with positive offsets, although it's still under
development.

I'm working on a DSA data path library for XDP, and one of the features
it supports is redirecting from one user port to another, with in-place
tag modification.

If the path to the egress port goes through a tail-tagging switch but
the path from the ingress port didn't, bpf_xdp_adjust_tail() with a
positive offset will be called to make space for the tail tags.

I'm not sure about the "regardless of the driver" part of your comment.
Is it possible to mix and match allocation models and still keep track
of how each individual page needs to be freed? AFAICS in xdp_return_frame(),
the mem_type is assumed to be the same for the entire xdp_frame.
