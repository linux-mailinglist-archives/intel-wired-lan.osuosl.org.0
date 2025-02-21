Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D252BA3F791
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Feb 2025 15:44:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 34EAA60B97;
	Fri, 21 Feb 2025 14:44:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yYDKg_eb560q; Fri, 21 Feb 2025 14:44:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F194860B96
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740149056;
	bh=w1wt5CznjtGFJJIe7h1HZUXT71bcvhI8vV2Y3DhG2V8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5hH+ctfGbQVLmpp85Ncw+PTBp6UJpuebDZe+upbzpYi///YSQ7ItVIVFZ4D+0t9I5
	 Wv+hQTf0lUE9CQ1SOzT4TWl25/pIgHAiUi3EwIIYgg1qzGvzICApYKsv26Fw7Qd7Ko
	 w1C5h+vH8Xmz1FKrs5nNPhQbUL3hRuR3Jvm/PDECFGVDU2Vy8kPW1/a+bvLQSoGGze
	 g7kPSe6tDS5jgRk/VRaZkJ0YFA8jPnTJ+kGZyoR9Pd2WvLEgcSFO3rQGYxplXsozcs
	 CoMDXUSrgmngKTCWUi0SwjzVCVBbg1YWD82Xp0K4aPtpUaZHEVynsQXYkWXTVasIBC
	 FOBBtJKHTiniA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F194860B96;
	Fri, 21 Feb 2025 14:44:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4FFE7D92
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 14:44:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3FF8160B71
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 14:44:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xst6oPH60Lcy for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Feb 2025 14:44:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.70.17;
 helo=as8pr04cu009.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CC30B60B96
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC30B60B96
Received: from AS8PR04CU009.outbound.protection.outlook.com
 (mail-westeuropeazon11011017.outbound.protection.outlook.com [52.101.70.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CC30B60B96
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Feb 2025 14:44:12 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tha6mF0ZHn2gd46Z/1sha0NAQ+3otA9/nJpDUw5VAk3U9Q/z5NuhNoJmgmLnkYHu1cch03cD81dpmZVnLZoxfEAFHSsxhxC8srZmvKSzZtKCDaHtvdWKVwRbDgyrbIkNUHx5vYmHduE2KZ9pqFuEByKz4HPC4s9FC8r2AgkHpjcXm4tMtGoV4doHmBKoRbMYndQkmS0MnLHSLtDjwFSX172y1JIlj604Ss1XT02VDX6djpYEfw6r3kvwFEotjy8iyr8rEWpmkmzLWhywcJxd+czY4yWJujvcWOHXdRzcg3Vvef4B5Vy5+x+/hvEgRPiLpSoyJ1cI/d7VHOe7K8yGQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w1wt5CznjtGFJJIe7h1HZUXT71bcvhI8vV2Y3DhG2V8=;
 b=c9dPIzqboXpIJ/THYJNEOKN5yVW1lt1GHIepLiFqOy49R3JS5GHKf4UeAFHrMMgQr9IE3LZSEn8kteXBeMjFIHRDv/39zBRjwzkKc0kumPohkQADogff8N2JOVO2j1Q8bzQJv7CVyxRqsYZfXeXXRUTzcZtcBjXI/6rrFuOEi4EVrNNR9UI8kjLasSSesqwBNK4YqwuopbzgR6W7rNPi6eVSVwm+hyFAh+n0CIeazNwxh6BkCELirwiJLlpPByOkss3znoBjRgDY4eXchGefjGMwI3Asd4zInLAMPRVnERP9VQR6rVYojCJ45DjWLwrb9Hv0jSor+qQM14GEzw+MTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by AM9PR04MB8131.eurprd04.prod.outlook.com (2603:10a6:20b:3ed::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.16; Fri, 21 Feb
 2025 14:44:08 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%6]) with mapi id 15.20.8466.016; Fri, 21 Feb 2025
 14:44:06 +0000
Date: Fri, 21 Feb 2025 16:44:02 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
Cc: Furong Xu <0x1207@gmail.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Simon Horman <horms@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Serge Semin <fancer.lancer@gmail.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>,
 Suraj Jaiswal <quic_jsuraj@quicinc.com>,
 Kory Maincent <kory.maincent@bootlin.com>, Gal Pressman <gal@nvidia.com>,
 Jesper Nilsson <jesper.nilsson@axis.com>,
 Andrew Halaney <ahalaney@redhat.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Message-ID: <20250221144402.6nuuosfjmo5tqgmj@skbuf>
References: <20250220025349.3007793-1-faizal.abdul.rahim@linux.intel.com>
 <20250220025349.3007793-2-faizal.abdul.rahim@linux.intel.com>
 <20250221174249.000000cc@gmail.com>
 <20250221095651.npjpkoy2y6nehusy@skbuf>
 <20250221182409.00006fd1@gmail.com>
 <20250221104333.6s7nvn2wwco3axr3@skbuf>
 <3fbe3955-48b8-449d-93ff-2699a7efcd8d@linux.intel.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3fbe3955-48b8-449d-93ff-2699a7efcd8d@linux.intel.com>
X-ClientProxiedBy: VI1PR09CA0125.eurprd09.prod.outlook.com
 (2603:10a6:803:78::48) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|AM9PR04MB8131:EE_
X-MS-Office365-Filtering-Correlation-Id: cbb93053-253e-444b-149b-08dd5286318b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cGJiMTZPK1pvbk43LzlsdS9sV25QMlBsOUpwZWdTOEl1YnpIaDJpTjIrV203?=
 =?utf-8?B?L0k0RitXeDhaejFaSm00Z2Zib1hXdWZTNVBJZVdCdXFTVXQ1bnduanhxckNS?=
 =?utf-8?B?UWhVbjhRZEZ0ZHRnUDdTcGhsS2p1bnA1alZFajdTTDJxN082VlQxUm5xQjd4?=
 =?utf-8?B?ZytINnV2STFhTzhPZm9BTEhaOWh4VE9zQVIrdFloOWg1L0QzSXN5dTdhSkFn?=
 =?utf-8?B?Um5veGJUNUF1SFlLV2xtR0FNVkwxNlBWN09YZkVyWXdnYXBiZlFnaG9tNnNq?=
 =?utf-8?B?T3RoOE45dGp3OGtuT3p4bkZLSUJaczVHSktaODNod1Bmc2FMSjRVTEJmb2RE?=
 =?utf-8?B?UDVmUUtPYnlvcS9DTU1NMmdKWmVKRTRRemlQTHdDUUlUamNJSnpFYjlsWlRU?=
 =?utf-8?B?UC9PNUFrRkxHTW00QytGRGEvRkJFNWN5T2VCSnR3b2RPSEE5Y2RaeENFSzIy?=
 =?utf-8?B?cU5LVy9lRlp3VVBVMmJrVFJhUERrcHBjd0RxSVJTMVlNeEZrR1lndkpmNG9q?=
 =?utf-8?B?NklOUkN3QldDS2V6Rk5pNTZkQ3RlTUpFNDNBNEQ3dXVRclQ5RXhnK2NRWUsv?=
 =?utf-8?B?YnBTUE9ZM0oyRy8wNmhqZk5sclFJK3RHdjJ3MHRMeExwbkJLYkZaZmhrYmpt?=
 =?utf-8?B?RjdONGxJYTZaZjBMK2kzbjhBRXNQS2cvb2EwdWxFZHJESjBWSWZ2VmJJM25Q?=
 =?utf-8?B?K1ExdlNkQnFtZS9RUGpjNFBqbk1GanhZQ2M4YlBxN1Z6a09SZDRqSjVzdlB4?=
 =?utf-8?B?U1haMmMyV0VtRTg4bGFDRnVYbi8wTk9XeDBSNlV3VXM4czBWVmEzUTZ2MDhk?=
 =?utf-8?B?QTZLZ2ZwYnk4aysvQ1lralVFdFlqTHY5Q1ZoeG9jTkpXZ2hoT0h5Mko0UStu?=
 =?utf-8?B?Y3FrVWNuZ081Rm53Zk04bDIzSXlOWERsdnlVaENqbWMvQVFZMDF6aU51NHE4?=
 =?utf-8?B?SUNPVy9ET2hyM2xJTDJnekd5YytEdTFZeFRId1pkeWdqNlp3OHpDSXoyaXF4?=
 =?utf-8?B?WUY5RTY2VTZIaVBzWVlSczhhNFZjcGIzU0hYTXlrK2MyeE1uaC9DQlZUUi9o?=
 =?utf-8?B?ajRpaHVsay85Z3o3dlNkUjF1amp1R2VHS2lQNXlNR25LeEx5Ujl1TDJFRHVx?=
 =?utf-8?B?Y0Rzd0NnTVlGcjdJZlZIRWRGbmRRZ2g5SGxHdWV5OHhPYWFPb1BnTHcwZDRa?=
 =?utf-8?B?NUE3Y2VOdVo1b0RuZ0tXclpkQXhMbnlud2FvVm5aWjZTK3dDajZJbzNJeVVi?=
 =?utf-8?B?OUZYa0NhNE9NU3p5UC9LdVJzUVRFK0xxRkxLNlUvSVJpUERDQlBqRFRaeTdD?=
 =?utf-8?B?VHcxZ3AyWWNTd3J2cnFKRnVjbTUrcWtqdDJCSVRUcSsrUFJnMncxRGt5SFdz?=
 =?utf-8?B?L0JXUCtHUEdPYm8rM3JyMnEvOTJFUm83VkxjVVdJdzA5MFhycFcrTUZZdTFt?=
 =?utf-8?B?QURsRFJiOE1Gd2Z2RGhaRVJoTUtmSzJ0TnhBSk1waFQ1bjNtRFZ1QXo4MjBK?=
 =?utf-8?B?dFlyQWEwY0R1YVVtU00rWVBkUDAwdERLM2lWYzViMHg1QzVIYUxFWjZFNFNy?=
 =?utf-8?B?NzVUQVg4ekVMTEpMM3Q4ZzRkS21nYXRlblVvdlloMkIzRzkxdksrVFBiWlFp?=
 =?utf-8?B?VTVTMGxxRXVld3I5TUNXS0NTMGZnYStUcVJPcC92clF3a0tWUU8weGVyemxa?=
 =?utf-8?B?Z2wveEEzQ25xejZpV2s5NWV0cTBuTlFocHdCYzRBV09HZ3JRNmdHOHBzRW45?=
 =?utf-8?B?VWhjN1dmN1pSY1lEdFk0T3FZb1o2K1V2NEt2OW9XcDgxVVFUTWVJQzFFOVk3?=
 =?utf-8?B?UGJQUW1Mc1NZRDJQWHd3ZlBycVViU010enRBNlU2cGw2S0Nqc3Q2OTNyRmp5?=
 =?utf-8?Q?DEi7ZC7AuKuTc?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR04MB7779.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ajhtK0lORm4rM2hBTlJwRmlvaGVqcnpYYXBxSWg4SmFkL0ZWRVkrMVNxdThJ?=
 =?utf-8?B?a1lOQzVKUEE5elJMRFhrNG9wNlRGejZNSi81MGVwcGJBQWwyZ3FwQ0VQbXFY?=
 =?utf-8?B?Y212dTA4TGFyRTRhLytZUDJmVU1tNFh5c3RvN1NkemNmSnduaG14Ykp4YUlZ?=
 =?utf-8?B?aWd6cnl1MHVtZmJlS05QMlFrcDA2Rm4wUWcvSTkrZmNNU3lEL0QvLzl0c3lE?=
 =?utf-8?B?THFEaVVvdE9oODF2Tm9ZWTNFMzdtYWQ5NjBOb2UwTE5FMHdRcWRleDNYaXFo?=
 =?utf-8?B?dUZaNjVvUWRBazhCd3h6d2FOUU93aHFWc1hWb3lDdVI2MEFjZkwrcWQzUzl2?=
 =?utf-8?B?blhveDVxRWp1WXBocmdBTkx6UnV0b1ZMWk5vQy9kRjVWUzBSaU5RNk9hejNX?=
 =?utf-8?B?QVA1d3dSQllBT2xGdlVtbHdmSSt6NDdlODBnL05sMXR4T3RQdWxBWnRXY2Zw?=
 =?utf-8?B?WGc5NExFTXlESkhIa2lDUUxQbkM2cE4xVFEvWkMwRlkzMldlRnRISy9pQ01s?=
 =?utf-8?B?dHkyaUVNaE5pZzJtVm5mL0NLWk5TczJ6Z0thc2Vsc3daUkp3TDZicDF6R0VK?=
 =?utf-8?B?NGozQTNrbmVFdCtKdzR1eWowZUp0RUd0Wmh0SklnakFzbWZqSjNUdEVBZHFB?=
 =?utf-8?B?OWU0amV3RTFZZ2pqYWZYYzhrSDJjNVZEWDFSKzBLTTdwaGtjSUFXeUQyOW5o?=
 =?utf-8?B?RmEwamowdHNKbjdzdWhGYkVTd0NhTjdjQ055M0ZRSTlnR2NORURZVmxGSWU1?=
 =?utf-8?B?RDNjdHNVZkhlanI5TnJuekRJNVVCTjhtWXZUcjFqWlp6SXMzWFQrS0dnQVJ0?=
 =?utf-8?B?c3RkYjlPOXVmbEhQRWRwVHBKYStweTEzRWFScVVwK3ZIeFhHZi9rR2tFUGZZ?=
 =?utf-8?B?SDlrT2JxS3A2enNBTk0ySTZDSFkvdGlvanEveU9ReEsrbk1jWUxRZGpRM2kx?=
 =?utf-8?B?emgrK1VSMk5ZNTJ0c0hFaVVFRFRkL3JBdWkxT0l0UXdGb2toQnA1SzMwZlJo?=
 =?utf-8?B?clU2TU5pdWJJdUpSNHlmTlFldFpScnlxcTFUTmQ1cWJJTys3VU55OUpjbk54?=
 =?utf-8?B?R0xpazNCbVV5NlprdmZJWk1LSXBoM0U4T0JvUG1LVWJMbTcwb0JoUFc2UUhM?=
 =?utf-8?B?c0FySUJOM0U1ZWlyQWhqemEyYXFXSFN4TmZRaGhzcUx6K09PM2hjeGt1M0dV?=
 =?utf-8?B?S1M5WDJzakpQc0V0TVh1OTBhWjZvUnhMZFI3WlNQWjFucHNKWVdVYmdzMVZL?=
 =?utf-8?B?SkR3MFlkeGIzMUg3SUdNc01KTkdzcTlmT2ZvMXBHRWs3RHovZk90S1pWa2Q2?=
 =?utf-8?B?VksyaHpLV3RMQ2k5NEpVUW1xbWlFQnpIOURZeTNqZWZXVDRhendkMW1FSk15?=
 =?utf-8?B?dXJDR3NRUHV2c0tsd1hLWkRKMk5WWjBKQVlBQ3ZVTWZrSStRWmU1MGxuWFMr?=
 =?utf-8?B?RGV5UVJzemFMVGx5QXBWb1p2Qmg3OHdrTzB3OHgyc1ZWcHkxc243cmo4Z1lG?=
 =?utf-8?B?eFVCZGNsWUtoaFg4dGlpT1paZVNXc0M5M0p3WDlUcXBscnZCL1JqYzlZTTRD?=
 =?utf-8?B?dHl1Z3BveXF1cEtHZWdJV2hUZnZDQWtBeUNyN0pNbVJmUTFSUTJVUU1FQlE4?=
 =?utf-8?B?M09vSjFzcUxqcHY0REN3SGh3WS96Y3Bnd2k0RFZCOC8yZ0QwRW5oa3BvY1Zh?=
 =?utf-8?B?bnpaUFdMZ05yUHUydTBkbFJVOE1CR2tKd3ZHeUhFTzBuVFlFb1ZLb3Naalow?=
 =?utf-8?B?ZGV6VlJnOGpjOVppV1hwS3k5MC9vTkg3a1F1aC9TRnhlNEhnbEZRbEZjUmxw?=
 =?utf-8?B?NHl6TU1JcFhkaTJabG4yNDcxVmtWeTROZFN4Z3VoTnpCeHZiZjNWM2lMR1JI?=
 =?utf-8?B?Z3czUTNuR3hVQVljcElYai9xZG5yWVd5NWdlb2VJakZma1BMMlFiK3BDc3lR?=
 =?utf-8?B?STJLdjJySTdhV1JIOUNLdVUrY3gwMU1hYlo2VEJ0WmtFSFh2NlFGNnovUnhS?=
 =?utf-8?B?TmZvbEV1YlJaSFprU2FTU2VRTUFVWVJ2bGhlcHpvRWt1V0ZxRTFHcndWaUdU?=
 =?utf-8?B?L3R1am9xZ3JMcm1Ea0NnbmgzY3FPcjZQcjJ1TTBFNk1IS1g1SXBPam5kcmV3?=
 =?utf-8?B?RzBwU2U4UmhEMXEzTmxsckVQMkpZOUNiL0RpbkU3MXBKeHhkMG5vYXJGS1Aw?=
 =?utf-8?B?Vmc9PQ==?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbb93053-253e-444b-149b-08dd5286318b
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2025 14:44:06.8658 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9N1nqXkKTmBiljBqDfFZbzVL5py1s4vje9KsdZr1kHnJCGtzYWxhq/zx92M+P4UZVBc99B5ZgEY5A7xd2lG6Ew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8131
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w1wt5CznjtGFJJIe7h1HZUXT71bcvhI8vV2Y3DhG2V8=;
 b=f16VgNVfD+xQGUpKoAznsRfopL5qrIDi99zKXcABY3KIWEvAVPdgxicAwOx1p7IX+BgHCgfqi5zXhab3Mf5Gaaprf7Wyl7++OIhm3aN7pcsWGBrXnfV7c41yLyLul8YiWCkjiOL4w1BIMGB7MHBUCZByKoXrafZSN0Eu+Pphw5ucIA6J72kl+biAEKgPrAhjrX4j9qKiiv+HdNE3Z1z68mtH1fDn2Ghx/kl9gnVHbRVYmkHttXjJI1WFiCPpAk9sNcuOZITLKEhWxosZYwFtfnTHci049LHC/2Tmsf51YbshM0yvzQM6mLYk8ARiCW0/a4S2BKl01BOWKz3B1yMBZw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=f16VgNVf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 1/9] net: ethtool: mm:
 extract stmmac verification logic into common library
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

On Fri, Feb 21, 2025 at 09:30:09PM +0800, Abdul Rahim, Faizal wrote:
> On 21/2/2025 6:43 pm, Vladimir Oltean wrote:
> > On Fri, Feb 21, 2025 at 06:24:09PM +0800, Furong Xu wrote:
> > > Your fix is better when link is up/down, so I vote verify_enabled.
> > 
> > Hmmm... I thought this was a bug in stmmac that was carried over to
> > ethtool_mmsv, but it looks like it isn't.
> > 
> > In fact, looking at the original refactoring patch I had attached in
> > this email:
> > https://lore.kernel.org/netdev/20241217002254.lyakuia32jbnva46@skbuf/
> > 
> > these 2 lines in ethtool_mmsv_link_state_handle() didn't exist at all.
> > 
> > 	} else {
> > > > > > 		mmsv->status = ETHTOOL_MM_VERIFY_STATUS_INITIAL;
> > > > > > 		mmsv->verify_retries = ETHTOOL_MM_MAX_VERIFY_RETRIES;
> > 
> > 		/* No link or pMAC not enabled */
> > 		ethtool_mmsv_configure_pmac(mmsv, false);
> > 		ethtool_mmsv_configure_tx(mmsv, false);
> > 	}
> > 
> > Faizal, could you remind me why they were added? I don't see this
> > explained in change logs.
> > 
> 
> Hi Vladimir,
> 
> Yeah, it wasn’t there originally. I added that change because it failed the
> link down/link up test.
> After a successful verification, if the link partner goes down, the status
> still shows ETHTOOL_MM_VERIFY_STATUS_SUCCEEDED, which isn’t correct—so
> that’s why I added it.
> 
> Sorry for not mentioning it earlier. I assumed you’d check the delta between
> the original patch and the upstream one, my bad, should have mentioned this
> logic change.
> 
> Should I update it to the latest suggestion?

Never, ever modify logic in the same commit as you are moving code.
I was wondering what's with the Co-developed-by: tags, but I had just
assumed fixups were made to code I had improperly moved because I
didn't have hardware to test. Always structure patches to be one single
logical change per patch, well justified and trivially correct.

I had assumed, in good faith, changes like this wouldn't sneak in, but I
guess thanks for letting me know I should check next time :)

I think it's a slightly open question which state should the verification
be in when the link fails, but in any case, your argument could be made
that the state of the previous verification should be lost.

If I look at figure 99-8 in the Verify state diagram, I see that
whenever the condition "begin || link_fail || disableVerify || !pEnable"
is true, we transition to the state INIT_VERIFICATION. From there, there
is a UCT (unconditional transition) to VERIFICATION_IDLE, and from there,
a transition to state SEND_VERIFY based on "pEnable && !disableVerify".
In principle what this is telling me is that as long as management
software doesn't set pEnable (tx_enable in Linux) to false, verification
would be attempted even with link down, and should eventually fail.

But the mmsv state machine does call ethtool_mmsv_configure_tx(mmsv, false),
and in that case, if I were to interpret the standard state machine very
strictly, it would remain blocked in state VERIFICATION_IDLE until a
link up (thus, we should report the state as "verifying").

But, to be honest, I think the existence of the VERIFICATION_IDLE state
doesn't make a lot of sense. The state machine should just transition on
"!link_fail && !disable_verify && pEnable" to SEND_VERIFY directly, and
from state WAIT_FOR_RESPONSE it should cycle back to SEND_VERIFY if the
verify timer expired but we still have retries, or to INIT_VERIFICATION
if link_fail, disableVerify or pEnable change. One more reason why I
believe the VERIFICATION_IDLE state is redundant and under-specified is
because it gives the user no chance to even _see_ the "initial" state
being reported ever, given the unconditional transition to VERIFICATION_IDLE.

So in that sense, I agree with your proposal, and in terms of code,
I would recommend just this:

 } else {
+	/* Reset the reported verification state while the link is down */
+	if (mmsv->verify_enabled)
+		mmsv->status = ETHTOOL_MM_VERIFY_STATUS_INITIAL;
 
 	/* No link or pMAC not enabled */
 	ethtool_mmsv_configure_pmac(mmsv, false);
 	ethtool_mmsv_configure_tx(mmsv, false);
 }

Because this is just for reporting to user space, resetting
"mmsv->verify_retries = ETHTOOL_MM_MAX_VERIFY_RETRIES;" doesn't matter,
we'll do it on link up anyway.

Also note that there's no ternary operator like in the discussion with
Furong. If mmsv->verify_enabled is false, the mmsv->status should
already be DISABLED, no need for us to re-assign it.
