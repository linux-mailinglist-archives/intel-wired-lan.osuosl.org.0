Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7481A35B75
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2025 11:22:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 59E6260B67;
	Fri, 14 Feb 2025 10:22:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aTOzneoQZdbR; Fri, 14 Feb 2025 10:22:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5362A6F804
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739528536;
	bh=EQ2qge8tIHMz9ALRLNQ4aojG1aGgoFU28SRdXRYfg6s=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mJdWbAsCVGTWhqPlMt7Z4fn1RxOFz6C7PNbE7ONen7h1eBMEfX6/gea4M3VSYK3bn
	 nv5oNZxG15E7HekUb8QORAHcMFmeHppSAmxnDQN4A/Rr8l4xyI/fZOWjrNd+MZBNnq
	 MS0xpUiY1XUCyMbem7o4GUxJ4fBNjn/D+HiQxOUA4eedR6XcEIayDDt0OP0yz2SUdE
	 T5diTB4ZYY4wGquy5gQNyj50cvVovVCnEuusPu7WohJoe0l5WTJ/extaRfOr4cJ+Bp
	 y1uYP8UcHl7Ki0puCUA4kmzJr9keizKSji61FSa6K6EK6qn3ODVErqRNzyTUwYoh3l
	 /eJa+y5Jc1FiA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5362A6F804;
	Fri, 14 Feb 2025 10:22:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B8E991C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 10:22:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9CD8F84729
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 10:22:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XFsVSh5MkvJY for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2025 10:22:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.105.46;
 helo=eur03-am7-obe.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9E4A084725
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E4A084725
Received: from EUR03-AM7-obe.outbound.protection.outlook.com
 (mail-am7eur03on2046.outbound.protection.outlook.com [40.107.105.46])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9E4A084725
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 10:22:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bUDodQuS+iAEk7CGIBV75WElL80X5IurAG4MdGSAogHkYJ9UPXG+DmoQOZfVUkfNrBYL1nnje5m00gR3Zev4ggs09XTCXO805LKNQc7fd1KGlgAiy5t9fFJX/AFlbhh60rxg/+rjv/286mEC9KV84WtkfRaKM5X/yqQ7m4AcS36HT2qO9M3GaOcmvTjtgDWjEP4jODObOmvXIKhAUQyusgbj6x8BScXV//hE0aFQCzMtSa5vGhwF3u4ZncSgIzh6aMosutEc1ypHn7lm3/OXuKiyoqwmktzFWl0CSnDWuR34kEFC3O+MdznGkGCNfdXizvvDBbdR1jbhkQn8G1/B4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EQ2qge8tIHMz9ALRLNQ4aojG1aGgoFU28SRdXRYfg6s=;
 b=ROBWI/XqfCCibIQgBLca3YTq4X5vkhRTWZvY34wor3Fu6cSKbqHlHss3QOapi7f2cSOjEMFf58kPIA8y8DrSg1osqt9ffM7ILNEYiDRM6A9nhJSxPIT6jQ+FzOrK/JCCH4+vk6NF+A72zSoI+TJmslCDsXrVSM4Y16S5sekkO2Z51T4vVx29wxwvpLcoy610UOY1ECf8VnLvDSgEPjwMITmGw+DiUYei071T8zCv0bXgDi6mAvto5/NcEPOW5GdHw0h0zkiAzY6STOEtygCT7X2/5DsEU4LtPLApYhh7tcWSmS/ihQUoRgNNrmBryyQ6ZwMZ1bucgp3f/w8lBNDv4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by PA2PR04MB10507.eurprd04.prod.outlook.com (2603:10a6:102:41a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.17; Fri, 14 Feb
 2025 10:22:10 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%6]) with mapi id 15.20.8445.013; Fri, 14 Feb 2025
 10:22:10 +0000
Date: Fri, 14 Feb 2025 12:22:06 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
Cc: Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
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
 John Fastabend <john.fastabend@gmail.com>, Furong Xu <0x1207@gmail.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Serge Semin <fancer.lancer@gmail.com>,
 Xiaolei Wang <xiaolei.wang@windriver.com>,
 Suraj Jaiswal <quic_jsuraj@quicinc.com>,
 Kory Maincent <kory.maincent@bootlin.com>, Gal Pressman <gal@nvidia.com>,
 Jesper Nilsson <jesper.nilsson@axis.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Message-ID: <20250214102206.25dqgut5tbak2rkz@skbuf>
References: <87cyfmnjdh.fsf@kurt.kurt.home>
 <5902cc28-a649-4ae9-a5ba-83aa265abaf8@linux.intel.com>
 <20250213130003.nxt2ev47a6ppqzrq@skbuf>
 <1c981aa1-e796-4c53-9853-3eae517f2f6d@linux.intel.com>
 <877c5undbg.fsf@kurt.kurt.home>
 <20250213184613.cqc2zhj2wkaf5hn7@skbuf>
 <87v7td3bi1.fsf@kurt.kurt.home>
 <b7740709-6b4a-4f44-b4d7-e265bb823aca@linux.intel.com>
 <874j0wrjk2.fsf@kurt.kurt.home>
 <641ab972-e110-4af2-ad9b-6688cee56562@linux.intel.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <641ab972-e110-4af2-ad9b-6688cee56562@linux.intel.com>
X-ClientProxiedBy: VI1P194CA0056.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:803:3c::45) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|PA2PR04MB10507:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c2d547d-aedb-4edd-135f-08dd4ce17124
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NEJ2YmZBTUxyeHpZL2JGcVlOUndjakQxK1psMzhXWGlUVHJxUFVPMk5LOElI?=
 =?utf-8?B?STkzRXZPMFdDVkR1aWhvRHRVaUhIMDVvcldYSU1WSitTeVV6dUMyS3FldWNq?=
 =?utf-8?B?aGpUZWtDZjVpVlF5Mys4eHVoa3hSMXhFQ0ZTSnhXb05HeXdPUlRldVgvSlNy?=
 =?utf-8?B?OEthUHZYNVlPd2JqSzlUdTZFNWI3WHBXSzNuNmhaSmozV2g0UFg4WVdoR3Vu?=
 =?utf-8?B?L0tmVkF2aWZjUUhBZlZwbnYwMlk1US9pd2N2Sk9MZTBPS1pYWHFEZW1ySzQz?=
 =?utf-8?B?RkJaU2hGem16ajJvK1FWMEdNbXhaNEpPZGNqMi96bDlaZFg2aDVUQTViRGM5?=
 =?utf-8?B?OExVRXl4YzZ6QWtSNzR4OGJBNGdlTEQvOU1naERuREFJcE1MUG9HZ1drWmZS?=
 =?utf-8?B?Y3hXd1NvNTVWMEt0elhhYmU2dGc1T1pGdGtBY2hnK1VYbnliZjRYRTZlazI5?=
 =?utf-8?B?UVBib2VqSmg4R0J0M0VXbzMxWjlld0NrMzdNK1RQRU5QSER6SHpIZDRYSDZZ?=
 =?utf-8?B?Z3BZNE9vWUR3ZkQ4eDMxV3lDVnh6ZGhKNUtmU09xbnZTcVBYYWM5bGRpSWtY?=
 =?utf-8?B?eHFmSHdTdFZwZHZTY3FHZzhjYUc2elpWbnFvTjVYVS9nWFAvbW4xOWZveXIw?=
 =?utf-8?B?dlFYNlY5bzVQT3BZSXE5b3BGeWRWSzkrS3MySGt6dnpzVGNIeUpZd2xnQVNS?=
 =?utf-8?B?TlZOcGFSK3J5VUdBQm04clltdTVUcEIrY2NoUkFoaHBxazYyWUFjdjl4YzFi?=
 =?utf-8?B?MEtmZkdJNkdDQXpob0VZMDNuZWVIT0UyWkFEZXZ2S1JnZWtVOE1tVEdRV21V?=
 =?utf-8?B?TUNzZmYwNVJPc2dFMzI4V0lwT3ErZTd2c1J5N2kzVzQ3ZzZ3QXdQeG5OazYx?=
 =?utf-8?B?MlNOeVNwcXVMZXorWndGdEluQU00U2VGcGl6SUs1UUFzcFpYbEpNTkp4YXJa?=
 =?utf-8?B?YzRBdjVTakJGMmo0MWNyUnhTS1RuaUlKMUJ0eWpud2tYRTYzdnljLzFUSStP?=
 =?utf-8?B?Q25CaVd1MkJ1UG5xM01uMzFQVGdqTlVWMXc0NVJacDdyMDAvd2FtU3Z1V1Z5?=
 =?utf-8?B?YnJUbE1MUzk3UmMzNVhPMnY0MitJaUI3Tlh5MVZ6STdIWlordkdYb2V4RVk1?=
 =?utf-8?B?MmVadGxJUG1VclpFb2puR1JBUEM5aTdSclhNQkN1a2VFRURaUFBWNlRWYUJP?=
 =?utf-8?B?eE9ueDFpallyNEQ1WXZlbWZ5T1lSL3pWRVdPZ1ZUSW9QWG5xM2J5UlYxRHRE?=
 =?utf-8?B?MkJ1Tmw4aGFKMGlHaU5ERU5hRFZ3TTZ4YkRqVlZNOVZjRzZZSjQ1RTRsN1Qy?=
 =?utf-8?B?TnFkR3duSk90Tk5yZVlzRHZoS2RkMmU2TUJtSnAzNXZsS2o0Wk5zbEw3UFY2?=
 =?utf-8?B?TTRTemZyODhoRWJvY3VFSllwcFZHRmtCbW9rc2tZcnlqTWVUa2JvNjVjeHFp?=
 =?utf-8?B?MGptWTg1b1JkVFJISi9KdGd5dEJoVUVGZDRYSlFqWlk2bm1PemptUHl0UitN?=
 =?utf-8?B?aW5XTGloVWZuYTlmbm1YTXh2VHQrOUphdW1sQjB3bHFUbmlVOTR4MDhaZzZQ?=
 =?utf-8?B?WVd5dDIxR0MyVGJaN1RMZ3lTTUpybjdzSFRjVDZzVnp1dmRkejlWODdXbWpS?=
 =?utf-8?B?U3RJazg4QjVGdkpRaXNhZ3Z6cnJpNWVmc3pJUXBIeW1CQW5qWVVidWYwRW5m?=
 =?utf-8?B?NE4rTHJlT3h1U1lEVm5ONWdrNGVPQk1YV0VBWkw1OFBJVDk3VE5KaG04WDd3?=
 =?utf-8?B?N3UvY2E4MWl5WmZtRHNFNzBDTzlJazhqajhPSE1BeWNUUFMrbXBVUDQvejZi?=
 =?utf-8?B?MFdKOWNOSXhKazQ4WEhTbVNlVUJRRG9sZGJYc2ZleFp2eW5ibGdnclFWcU9U?=
 =?utf-8?Q?qnxy+Qpn0uBiQ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR04MB7779.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ym1FemVhM0VlaThnNGVNK2dWd3ZBZnFtOG1mWjFnOG4yaERsVVV4NEV4Qnhh?=
 =?utf-8?B?UklMMkRaa3JwWHFiTEZOdllaa3JJdStsWmdlQzV6NmpWa3hnQXJwVTlSUVM4?=
 =?utf-8?B?RGE0bzdON0dqQmtvV3JOTGc2TGUrbkVTT01yVlZKVUZaUXBtbWpxS2lvMkJD?=
 =?utf-8?B?d3krc01QK2V2aDNjd1NydldWMGxlRWpIU0w0YVE2djYwNEoraldtdExnOFhj?=
 =?utf-8?B?NGVSdkZrNVVrelMxU0I0Z3NXMWVKNUF5S1hxbzNaSElqZWs1RmMzNDZZZEZI?=
 =?utf-8?B?K05aWmFoK1JiME40aDRYc2FnMXZaUFBhN0N2QUJiQUFxdXZLVWthWFdBUmRN?=
 =?utf-8?B?Mm1OclhnVkpaUklTT0tPczBUbE5ZRlQxYnNPZ0xZZFZUbXRMUWtET1Fud0Qw?=
 =?utf-8?B?STdiM3dYL1pkMWd2TWFBajB2ZTZ3KzVhbGRBUm9JdXpsNjkzNjN0a0xXRmds?=
 =?utf-8?B?aUp2dVZqZG1LbGZPOHBxbGF1QVdVaFJpczdJbkNkN0pVZmRKKytyOTQwUmZ5?=
 =?utf-8?B?OTVpbWpaUlNybDZPRk9Pei9VZHZFTFB6UStqN1JTcllsUE1RTjNzL3NUWmJp?=
 =?utf-8?B?L0RVOFcyUVZyeit6aFlMQUdXc1JJcE54c3p2anI3emUrTk5WbmRNZWdyOG9t?=
 =?utf-8?B?dzUrOCtRVjhtZk9BN3hBS2NqNFNxQ1RQelR4dUhSekFUR3p3N1FIdkIyeUpt?=
 =?utf-8?B?YmxaNjEwQWhQbFBnSEhKdXJHZW85OXhEUXg5WWNGdmtnOXBkZFprS0dRSTZT?=
 =?utf-8?B?aEZIMTJEK2pHejRncnU1ZkNGY0VrT3lRcyswYVhUdjRsNnZJU09idVlHVEtT?=
 =?utf-8?B?bmp6MkpBb0JiaElJOGJQSytBZXBkZEMzNnpLNG05SGNPZXJjdXUvQmwwMkFs?=
 =?utf-8?B?UzFTNlJ3Q3dNMld1eldiWVhSNXh4blpJUFZyS3JDQWI3b2xxWFh1bEJxTStM?=
 =?utf-8?B?VHlvSVYzZ2EwbWRKV1Fjd0JqZWR4QjU2RmY0bUQvNTVja3BxS05PMUZZVW05?=
 =?utf-8?B?ZWJFcU13L0pLZ01ZMlV4V20rT0JyS3Y5NzFsUTNHVXRKeFVYOGtIVTZRT0Ji?=
 =?utf-8?B?bHgrdlQ1TVlocjRrOC9LNXN3UkpxR1BSTldBWHJtcmk2Q3JHSTNJNVZpMitP?=
 =?utf-8?B?SEdSRmJwdFlSQWJxNTQwNjZlZVdaZm9RTW5ZbWMwc0NEb3VlbFJKVDJpWDgz?=
 =?utf-8?B?RjBsWnBpQ2dxNXRqQXBzam5Ga2tKUERSWHpiWnBqZ0xWcUcvU2hiaWFVU1Ay?=
 =?utf-8?B?SXg1dnYyMW1RSDYyNFR3S0ZiRGNpWHJtUWNkVW52TzRlTTMyaTVyd083aDd5?=
 =?utf-8?B?R0V0TkxhM0VhY0cxSUcrUnlFdjM1QnYrZzREUzFDRXBDM280anZ5UFhGUnFX?=
 =?utf-8?B?MWN3SUxwUEVzZXArSDAxd1R2WHExS0UycWhzTWhESkNDRmZVdWpOS0pEL2lW?=
 =?utf-8?B?WTY2bnZ3ZjZlT2lVUExKZzhWQXh3RnM3M1E3Y1hvUWVwaEtSWnFmV050bC9p?=
 =?utf-8?B?VTFxb2JIZEJsQ24wN1N6aDhSalNIZFhuMFpSZTJzaE1FMmhMVnJSVVpmWjBu?=
 =?utf-8?B?SlpMaU1GL1ZWY0swR0hlVE1TcXVlZmpYcG03MzJhYnlqTm8wWmVjRGt5Yitq?=
 =?utf-8?B?dFd6azllOGhaTlJMenNMdlhHdmNnK2VxUTlNcWszWnJiVk9wYVI2bkFQTHlY?=
 =?utf-8?B?ODNNL1Q0emhPa3F5ZUYvdjc5eFlVODdLbDJDWnhzZXQvejQ3SXJ5YjRGNWxD?=
 =?utf-8?B?eERZMFpSYzZCQkY1UEJkbFY5cWRRclI1cEZaZnQwN3R5WlNIZnZTRWpFbmUr?=
 =?utf-8?B?NmVTSlRvWWExZndpZHd2STF2cmJNVXNCcDIvR0Y2VTd2N0F6MzY1OE5KMlhW?=
 =?utf-8?B?OWtiN1A3dE1GZWNUSXFwNmNYZWRjcW1adWcwUGt0Wm9TSUlhWjdLb2x3Nnk4?=
 =?utf-8?B?NmFNYmpDbnJVQnZOeDZoS1FxbmFiZExJQ3J4TmZKajljYjA3QlRVZU5qMmJQ?=
 =?utf-8?B?ZXlWdEkxRFJKdE5QNS9nVmpYL1NFMUt3ajlOUEJqNWJ6NGtCSEJ5OWxjcVRE?=
 =?utf-8?B?TVNDVS9HcjdjSnBRelB0OVhUU2NlNkNia2hkN3JzZmhQK3hmKzcrbEVMQ3VQ?=
 =?utf-8?B?V1NsUTFFMkdackFXK0tScndOSXBaY1BjV2hWdkVuOWZZTVpwNUZIVGtTTlVH?=
 =?utf-8?B?ZWc9PQ==?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c2d547d-aedb-4edd-135f-08dd4ce17124
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2025 10:22:10.7618 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Or3r8+niS6Z3kBod8DNdddfMwajuwv2mW7+xkGlEZA4pV6wuMDl9QjD6ixwyvsEr7+3GSD3c+5MRtJe3NBFgug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA2PR04MB10507
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EQ2qge8tIHMz9ALRLNQ4aojG1aGgoFU28SRdXRYfg6s=;
 b=Gkz5E9wxootroJJ8eGxdNCjK9CG3Hmbzd4zJsZTa5+PvGWRNpluJkM8BI+r+Ccb1wgywZAEE5+A6DeSL1czQue0THt6RxBJTmIYH+ugubxCYU0O4xfpZaHnhUcvzGGk8G+zu5HB79AOTLlQO/Tw250VsKRkLToJTLJo97805Jc7SCjjvYdf4YcyVTMYNLb76z191kP20+8MFJW9jnoLKnnkeg6CEACH1hg0/Rft5ZLaI6O/c1rbhPdhvQ1nnDhsf6sC+Ab6pHeZgL+5UphXUb0pJIFUDpHQnSd3bHyKRtRQzQ5OaUztmNITe9eVHUeHIjckvLmzg1XZ0hBq/nDVCfQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=Gkz5E9wx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/9] igc: Add support for
 Frame Preemption feature in IGC
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

Faizal,

On Fri, Feb 14, 2025 at 05:43:19PM +0800, Abdul Rahim, Faizal wrote:
> > > Hi Kurt & Vladimir,
> > > 
> > > After reading Vladimir's reply on tc, hw queue, and socket priority mapping
> > > for both taprio and mqprio, I agree they should follow the same priority
> > > scheme for consistency—both in code and command usage (i.e., taprio,
> > > mqprio, and fpe in both configurations). Since igc_tsn_tx_arb() ensures a
> > > standard mapping of tc, socket priority, and hardware queue priority, I'll
> > > enable taprio to use igc_tsn_tx_arb() in a separate patch submission.
> > 
> > There's one point to consider here: igc_tsn_tx_arb() changes the mapping
> > between priorities and Tx queues. I have no idea how many people rely on
> > the fact that queue 0 has always the highest priority. For example, it
> > will change the Tx behavior for schedules which open multiple traffic
> > classes at the same time. Users may notice.
> 
> Yeah, I was considering the impact on existing users too. I hadn’t given it
> much thought initially and figured they’d just need to adapt to the changes,
> but now that I think about it, properly communicating this would be tough.
> taprio on igc (i225, i226) has been around for a while, so a lot of users
> would be affected.
> 
> > OTOH changing mqprio to the broken_mqprio model is easy, because AFAIK
> > there's only one customer using this.
> > 
> 
> Hmmmm, now I’m leaning toward keeping taprio as is (hw queue 0 highest
> priority) and having mqprio follow the default priority scheme (aka
> broken_mqprio). Even though it’s not the norm, the impact doesn’t seem worth
> the gain. Open to hearing others' thoughts.

Kurt is right, you need to think about your users, but it isn't only that.
Intel puts out a lot of user-facing TSN technical documentation for Linux,
and currently, they have a hard time adapting it to other vendors, because
of Intel specific peculiarities such as this one. I would argue that for
being one of the most visible vendors from the Linux TSN space, you also
have a duty to the rest of the community of not pushing users away from
established conventions.

It's unfair that a past design mistake would stifle further evolution of
the driver in the correct direction, so I don't think we should let that
happen. I was thinking the igc driver should have a driver-specific
opt-in flag which users explicitly have to set in order to get the
conventional TX scheduling behavior in taprio (the one from mqprio).
Public Intel documentation would be updated to present the differences
between the old and the new mode, and to recommend opting into the new
mode. By default, the current behavior is maintained, thus not breaking
any user.  Something like an ethtool priv flag seems adequate for this.

Understandably, many network maintainers will initially dislike this,
but you will have to be persistent and explain the ways in which having
this priv flag is better than not having it. Normally they will respect
those reasons more than they dislike driver-specific priv flags, which,
let's be honest, are way too often abused for adding custom behavior.
Here the situation is different, the custom behavior already exists, it
just doesn't have a name and there's no way of turning it off.
