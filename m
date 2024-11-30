Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E569DF1F9
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Nov 2024 17:18:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7A4B471902;
	Sat, 30 Nov 2024 16:18:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ocNI3MpmoUrs; Sat, 30 Nov 2024 16:18:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69F3870CB8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732983151;
	bh=KQnAV9ciNVpSQs1aLyGbW3u8bpvwKMWP9G257k4h8lI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=V7YLj3GI6g2+FymM3ZYJKL/sCoHrnmljbFZ7BhJv6/k1aftVQNSXh917YYSxnPL2S
	 q3CP1j4/Y4MJQ67aCr3sf2dwpP3MdIDjAv6S9/Z+iQ7rLY5urrDjI3evLuDMRYxlu5
	 935BpxwO5MBT7ZVQ6mhvWswrHVq+qV4EHIyeoGc4+YjYm2aAWQEotYW/j8s04OZVJt
	 tuWWPQccUoPdxuTgbCQ2TpoC6Tyqrmj6vGW/+B+ZSZ69guLCoPLlip68WMeZ5SWlXQ
	 9V7CmqKUiO4IQOBZEShFlLxUg470aXkEIf5whXSZuisEws/Vs9eILd47/eBPvZ6uP4
	 BV9UJNGe0u3Dg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69F3870CB8;
	Sat, 30 Nov 2024 16:12:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BC7436C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Nov 2024 16:11:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A78E885A7A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Nov 2024 16:11:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Kx30Bk3Qihgu for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Nov 2024 16:11:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.103.54;
 helo=eur03-vi1-obe.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4457684A50
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4457684A50
Received: from EUR03-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur03on2054.outbound.protection.outlook.com [40.107.103.54])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4457684A50
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Nov 2024 16:08:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lmKbFyYAywVggJy9u1erV3upbJKtykdgAYcjGN8Py9EuJLG4otyd600pl8deHIFtNaGF+WSi8bUsPXzM33eAJB9SAZZ/OY20Ep9Md6pQQuhu/+QKqoJ9u8lvcDOmCmW4qSAMUCI6KZFOQGJdmUE1Zce57bqISlqrIHTkmqaRAvnl3b6aRQ2ytewyYziVHyBu1eRMveeFCVwXvGHbe8Uw4Pbt46TFdkEVRzYPZmBK77u3DLelOpDdCqvdK5OF8fCC3bEZtWx9HzvSC3DV78LQbiPPfgUGa1pPEIBBdr2eXnjZ3CDQDOWXIuc3zglEqGLHj8wN5JS5Uztw+TqrmSi/Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KQnAV9ciNVpSQs1aLyGbW3u8bpvwKMWP9G257k4h8lI=;
 b=h0nDa9OTA2zHGw5lMZOAeGlQn69mn0gJeoY3uYeqKnxMeY0c+dIQo7JW7fTkiappsT5J+9gAZmi4IkcNVqomvRxZGSIOxpjG9fv/sQH6Z7KTspez3B0mKJQnicaL2IGQs3FH7pQW/yE6lMMeWf+EagEcEOiIkaE0i+Tqkub0IkdcyNYF2zrW+MG4Ddj7kg40egT92ZGQo0DF+EibhsH0ciw1VV09Rn81iVwSVms8jfA9sOQcdMcckAHJlqSrg/82gtm1JB4wZgnEy8LHfWIBC5Zhbc9EBpMTmpfyqt/bM/HnmtXOmGZsIqP0jgN7GdGaPn0j1Gb2Q/2ikObplLvTkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by AS8PR04MB8497.eurprd04.prod.outlook.com (2603:10a6:20b:340::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.16; Sat, 30 Nov
 2024 16:08:19 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%6]) with mapi id 15.20.8207.017; Sat, 30 Nov 2024
 16:08:19 +0000
Date: Sat, 30 Nov 2024 18:08:15 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Nikolay Aleksandrov <razor@blackwall.org>
Cc: Andy Strohman <andrew@andrewstrohman.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Ido Schimmel <idosch@nvidia.com>, Petr Machata <petrm@nvidia.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 UNGLinuxDriver@microchip.com, Shahed Shaikh <shshaikh@marvell.com>,
 Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Simon Horman <horms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Roopa Prabhu <roopa@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-trace-kernel@vger.kernel.org, bridge@lists.linux.dev
Message-ID: <20241130160815.4n5hnr44v6ea3m44@skbuf>
References: <20241130000802.2822146-1-andrew@andrewstrohman.com>
 <Z0s3pDGGE0zXq0UE@penguin>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z0s3pDGGE0zXq0UE@penguin>
X-ClientProxiedBy: VI1P190CA0008.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:802:2b::21) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|AS8PR04MB8497:EE_
X-MS-Office365-Filtering-Correlation-Id: 947dd67c-c642-48c5-6e68-08dd11593505
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?JB8XYRkOfEA4X+Fx9LV4Q94pfBgyS+p3teDfcTesRLO12g/wlLlzuNFVErEC?=
 =?us-ascii?Q?ApjWGM3eyxa/J6jvwkwg+1wY7uyUmYpAeqBgJCmYIeUtNfJuFEthawegMnmY?=
 =?us-ascii?Q?gcWahVqueimApfilJ3fpdmrjyhLdbdVtZi7Or0mCYib5C0pgepcOQtcKXu5h?=
 =?us-ascii?Q?8RaRWFAfD8DjjWyVk8WQFSgObkxPzo6NdtivOqtMxvXV9Ap+v3+7RyAxJjLR?=
 =?us-ascii?Q?CkmUUSbgS7PJ4KoK/P9YIRedhzCp5UrBrnBcqvV7ZjBqYDMLP4iVUqQDDBVS?=
 =?us-ascii?Q?NVc3Bw843fiiL3nlLSAVwaWU0BjKwkUMURF/KjBnTzF8PPWSCq5NAsh3ABoj?=
 =?us-ascii?Q?DrDS5SVchpqDe5LdIjpwaYod7DuMm89GUIY8W71EKP2uECoFBp3WJmRAmZyt?=
 =?us-ascii?Q?4IMc7BY9lwjHByg8ATvUMmQ+dUNLF4JRrzAoBN0m/OQjscRguemhNzMHj5tH?=
 =?us-ascii?Q?SxfgPSCX0JFmvjHoD4fyMwZ+kkDhb4bRtfRnGt1+1ZxYMQGy9Qx8N7kFI9zc?=
 =?us-ascii?Q?32BbS2gH4x2iAvl0j6N0HNjWhst6izDPi6Li8SrJS3M+itc2maNieC38Y1zX?=
 =?us-ascii?Q?/MDROtHYbPGGa+XmwuNcPbFfwDLrA6GRyB5f410ufl82FSxqWv8GI2yWjhh4?=
 =?us-ascii?Q?N+2o6G/cQbARgCldBiQNqPOWs3drh8o6qFBGZpBDzSrWnEEomMjZva5S9T1d?=
 =?us-ascii?Q?tsl6uhvEORj7XYELyxYYnkm/CcdQoS/uWAnyhCjzq+0DlHQoNfjquOK2mSi3?=
 =?us-ascii?Q?gp5dpBBuvUVhGf/Iftu19AkNjhgh6HrUJGCU7klaEzy78NSv49u2sfLj7d/7?=
 =?us-ascii?Q?dFbxWJHBj+MG/a81dj/rHNBdAk+bZGyf7Hl+j12qrMhnoT/aV/pBvfckuKS+?=
 =?us-ascii?Q?qZXqNhs39yX/MyJcKltPQCEb+INlJ9POFyxEmtR18cBAoPfx6lAFcIXGo/NX?=
 =?us-ascii?Q?1t11e7LE4qXBIAtJglI7oYU67Vp92PO/l80/C6rOig/IBQFLDa90pHN9cYMn?=
 =?us-ascii?Q?gfGGxbLEHxkpaDZvXnTS9C2yL32Mvr6Erc9AKEc1/+IZ+RJajR4r9RrSuUEF?=
 =?us-ascii?Q?Y9Uc0TCxFrABWnaOhvcV1UpsUE5NU3ZmEM1VK0Z13n9ULu98VDqOe59zZK1p?=
 =?us-ascii?Q?rCetuQ+5epVFRNtJJJMPX8Apnf88JcspURhKD/jI7H94amhM9w1Mt0aI/8VK?=
 =?us-ascii?Q?zEx4ZnnK1G3ZEX1u1sxKFcOrQrHR+a7RIy96KPkh6AiDvpZcCx6jzFTq8AYd?=
 =?us-ascii?Q?5rTEHrHJBTUMiEKFJP1FlKvKo9PpRgxSJGzrwAQ74LCAtGlNigPxnlESYaRQ?=
 =?us-ascii?Q?63kXaiJjmGFQN1JJZLu54KX5PET/dJvwFSjeHybeMKmAqw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR04MB7779.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3dgz0qwOh0ZmqNL1B+RW+C8yQL9Wgzu3mB8drSd+RosEdq90izVJokpHRWpP?=
 =?us-ascii?Q?2R1kWWI5zonq6F8Bn+lSkFvmU8VuwNX+LLLmbYlYlfPcd39ND6MAoo9s/wkD?=
 =?us-ascii?Q?bsKlDxRyneTS0Hd+dyb9td5m3GO8SP4ddyWYffR7BbGjDhJBZGuk4Ezvk29H?=
 =?us-ascii?Q?ufTXrZ+bwKv8mCHRfFiiGhtsUxBy3oWFeGIIzpyE6CzHeZ2CgmnAjRVE+K5C?=
 =?us-ascii?Q?HnG195N/qELUnwInI3mOhDPNn3JWH4bAiEAWw4sN9DlySW9p4PyGQ/xGfqQ1?=
 =?us-ascii?Q?5jwJdsTcXJo420UiZRlC6pQJXAzk8NKFnWM7iDsjpU4kbbsxNnfiim8a8G5T?=
 =?us-ascii?Q?iKRIkc1/2xxVqQSgOd9elfh5cXZS0B/mwNsteePZtUzQrFY9IvpQxzCNeXyH?=
 =?us-ascii?Q?k62CpyiFM2fR6j2vJ6esw7FEJlBxKfQmWZDI5yw1psVvhoA006iMTWbFqIR8?=
 =?us-ascii?Q?jb7vSpgsk1kL4j8Nl/n3Hp1Uil369vusa/DoLKNE2xUACpuLbj5DnEYx1j4H?=
 =?us-ascii?Q?zggJWXDGPxrV/8Q8tZrXdbbLlP6aTV/a0uq+jsnt2wXo8LB4dAp3y3eIOpIs?=
 =?us-ascii?Q?0gYbk58BU/8yzNf32BY1Lm7G39kXkD1TBtmWvO2yAyvLADjC6rDkMd7LRtET?=
 =?us-ascii?Q?eOawPegyyhsGz213OfSLCqNItPsCGK9pD6NghqHNxSuMc7+vMyhqZRXKuJln?=
 =?us-ascii?Q?Pz3IL3/e/8xK/vTfhFQysv90SZMsHEj2pPU0bxtuJMzHt6tDJ9QMg14udEmI?=
 =?us-ascii?Q?RCNFvOdrP2sGgBHc4zjewEACAEsHzwsVyq0AvjsHE8cNHYR18Z8TopPacmx6?=
 =?us-ascii?Q?av4gEiZ+2GTMclm4gQOAmkykjNAVYuWVfEmG7nUYzjGKIWNjaOStEhWLOXlg?=
 =?us-ascii?Q?UF6sClZxfRl+oU5Mh1w2MDD+PWp5MUibwXC5a6aB02nwrzhxHRJyOCC7hZ4i?=
 =?us-ascii?Q?tXqMnkNY2kre8eHi38cpybFEr49n80U8oldf6hKVxBNm9WbIJezlHwWO0Qzp?=
 =?us-ascii?Q?HTpXHvyZMArp1QVVrccUmg8bzPD8QM+N7VYqj51fB4x9GvUhRYmMLu8xo9MW?=
 =?us-ascii?Q?90jrPiAKz/Gu6xz2gruj6YDIzYsNpqK8zTz+Xz5VOh7+sHyZMZ6ze66Mjbga?=
 =?us-ascii?Q?X4cVgq7mFB3ZjWivonEWfSDiNyUDiwgxhO5S/kDttmSG4sApuR4WEtrt3KP5?=
 =?us-ascii?Q?Gim5N20ZXtapdneYdQ7uLdmbNnw5v0Z/JzWFWkb32kjCjMCCdTn26tiR7zpi?=
 =?us-ascii?Q?i2BIER6zGliQj9QIO9Az8QATVG+v41xGR/Jsmiy9sf9ZN1CZ4Bklm7NJNzuw?=
 =?us-ascii?Q?brwYp9amh7QxkOSk2c4SfhE94ncVsLmQ2YA1CcT+EY0u5KS2+XPV0thJhKbg?=
 =?us-ascii?Q?+Reh40rC74GLh7XiUQVfDoDt4b3dQJvpSZUyfoiVJz/vHrdldlLVhGfU4evS?=
 =?us-ascii?Q?A1W40RyWo60x71/xpqevdDNKUzelksbwx2lmo3WTGJe86/fKdgKzcYJ0gawc?=
 =?us-ascii?Q?sI9avDffPZRNSmRF/wQoQ/eo3W0H6o7ULMSYSZj6chXOvJyFELhhWOyOgI1V?=
 =?us-ascii?Q?5B6faC2ZiW8TT/Cs+/KD2n6EEXWsqsj47kRDYdZVQqbUYXTY6j99roXWzviX?=
 =?us-ascii?Q?Mg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 947dd67c-c642-48c5-6e68-08dd11593505
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2024 16:08:19.6854 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zxPTX63rVHMRM9o+6maucdUDReXuKu/y0tXzM2noKXkcJgiPEndb8vlT85IPElQAfyvLJHPgxHjiugD19jfuPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8497
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KQnAV9ciNVpSQs1aLyGbW3u8bpvwKMWP9G257k4h8lI=;
 b=A62ZsQP9oQlOubY4pKeAgfqVSctHJliLbxqfhl8bW7Gq11kcJ2+8d1jb+oOn1QWSxwQg/VMTV8p+5Ph0XTn6XSzH96DycAqsRs7Fn5NEzuJ+KX4KxlMrn703e4D+BbPXaGaWQsJF5KvebiNwoMwNRHJe5T6jhmxL1hOS6CYMZ5SGZJs3iDCTu1+zGB8/dQC/suycXtrqPROSXPPMvQoJUhkSkIKMoZYvga4Zl1to8ztBQWkWpxDjLLzTQ5nL7Ze20j9ryrPvgShApxi4Zszf8VKaSmpYvnCfM+V/fEXBdcj8cF8YbYGI97wbBO9avNtCPWQWXxtimheUmH27m76ApQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=A62ZsQP9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] bridge: Make the FDB
 consider inner tag for Q-in-Q
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

On Sat, Nov 30, 2024 at 06:04:52PM +0200, Nikolay Aleksandrov wrote:
> Hi,
> This patch makes fdb lookups slower for everybody, ruins the nice key alignment,
> increases the key memory usage and adds more complexity for a corner case, especially
> having 2 different hosts with identical macs sounds weird. Fdb matching on both tags
> isn't a feature I've heard of, I don't know if there are switches that support it.
> Could you point to anywhere in the specs that such support is mentioned?
> Also could you please give more details about the use case? Maybe we can help you solve
> your problem without impacting everyone. Perhaps we can mix vlan-aware bridge and tc
> to solve it. As it stands I'm against adding such matching, but I'd love to hear what
> other people think.
> 
> Cheers,
>  Nik

Correct, I was also going to plan asking Andy what is his plan on making
switchdev digest this. The switch ASICs I'm most familiar with can learn
on inner VID or outer VID, but not both. Like you, I'm also not sure
what 802.1Q says about FDB entries with 2 associated VIDs.
