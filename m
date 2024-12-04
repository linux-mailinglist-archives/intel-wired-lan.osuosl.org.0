Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F6D9E3802
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2024 11:57:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ADA3F41430;
	Wed,  4 Dec 2024 10:56:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JPQjFfLGqRf2; Wed,  4 Dec 2024 10:56:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8574C4143E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733309817;
	bh=VdLFICiW1dM/2xjA1yPh5suYxdPWocDI6X//hd3MFVo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pT7w4e2ns5KSc78E5hCAtBLCfJDyuhaKxEIhBIgEZOp7euYlu9wwXGikRDltgjXpc
	 lg38vGTdarc6U42/0z9d/H80IrG6GKpNGfEDtSVlspnDXdUCO7/hzvuUP/6hs4rniO
	 HsagvtHfndo3SC2NGiZT1Yb37Q95DAa9duJoT5LX9qjHJykHzimI/zNuQxZHgfYhyE
	 Vr4HlHJt7+ITIS/Fs2v2/3g0Go33KBM028bzjdUca+9iKk0FvQTNk8o0m9xBynxbqL
	 GW71b84vBaau7fqV3ImHMJER3MBMqBSgwiRClcHs9UYPMTslPcZ1O6GOKO+Bkrihyy
	 kdLMuGqeIq5XQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8574C4143E;
	Wed,  4 Dec 2024 10:56:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BCB371DD3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 10:56:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9D38F433D7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 10:56:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3h-8rBMGv1VG for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2024 10:56:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.20.55;
 helo=eur05-db8-obe.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F2BFE433BB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2BFE433BB
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur05on2055.outbound.protection.outlook.com [40.107.20.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F2BFE433BB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 10:56:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ek3k3jP9ipbitqYWS2pfTCFFUvklx++ag1ko84zy+dt62WQ+Nl5voC9IzzDerkOS5A3emEjM/pJVeLOUBhgQoHCIDx6ak5/YKebVhBapKEyKozrN7GqJ+U4eRSO1n1fPu7AUZONzAjIqH0mRpLQ3kM8EfyKj9u1p986wSha5aeIgOdEdp1sXaDFSFQ6AiQMrmmaD9e3mHmvIFPXllH7cjfjPiKnn1dqzFzcC3PpaEUWpdqC13oXm5l0v/zaO88PVzlWRGfuTbqMM7eFHrUa3ym4dPqgdPPZn435vnm3D97iwJ3Ja/WMAndg66gnkPEmO8CT8WFLaJrcuVeyUW/UvFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VdLFICiW1dM/2xjA1yPh5suYxdPWocDI6X//hd3MFVo=;
 b=frnX57qUok+UDWIQd2OjBLyKyf+TciWxz1GAYLWG0vickMzQrU79Baft4C5GHTBnRYnMnAj7aEQC8xJ0d86Gxd4SsOZCjZgl+JuXdWsg6muj1bTKRxVaJHa01pc7f5w6FKyQuXFqL40u6/y9VIhm8Vu9iTX/ZDS6WSi/xOzDbb7IKSKhgMenuBCahMieh9a99wDMTiR1D7HJMb7LmHvDBPRfl7+f4k4b601ULn3BgfayCiCTjiHtSjNYj8ke2PTulq1bJ/8Z0OIbOtK6KAhmRwf8RhUV0YEtYzYIZEsvC6zpuvk4aUKjtMguBmrecHsgW+m3jw0MWB2oKYhH7OcFMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by VI2PR04MB10220.eurprd04.prod.outlook.com (2603:10a6:800:229::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.19; Wed, 4 Dec
 2024 10:56:49 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%6]) with mapi id 15.20.8207.017; Wed, 4 Dec 2024
 10:56:49 +0000
Date: Wed, 4 Dec 2024 12:56:45 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Andrew Strohman <andrew@andrewstrohman.com>
Cc: Nikolay Aleksandrov <razor@blackwall.org>,
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
Message-ID: <20241204105645.vwhnwyp3gyq5av4m@skbuf>
References: <20241130000802.2822146-1-andrew@andrewstrohman.com>
 <Z0s3pDGGE0zXq0UE@penguin>
 <CAA8ajJmn-jWTweDMO48y7Dtk3XPEhnH0QbFj5J5RH4KgXog4ZQ@mail.gmail.com>
 <20241202100635.hkowskequgsrqqkf@skbuf>
 <CAA8ajJkPzpGRXO6tX5CkgX7DjGwR6bPyT4AXjZ0z8kXBk8Vr_g@mail.gmail.com>
 <20241204084817.g7tort3v3gwdzeic@skbuf>
 <CAA8ajJnRPB=KRcDpQiAJww3Apv6ZGqWaAg5stSjOE99BOmkCjg@mail.gmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAA8ajJnRPB=KRcDpQiAJww3Apv6ZGqWaAg5stSjOE99BOmkCjg@mail.gmail.com>
X-ClientProxiedBy: VI1PR06CA0203.eurprd06.prod.outlook.com
 (2603:10a6:802:2c::24) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|VI2PR04MB10220:EE_
X-MS-Office365-Filtering-Correlation-Id: e46ac2ba-00b2-4ed6-10f4-08dd14525a50
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ljtrgZ7F9kxOjW0GGzkDnrTetncq86ikfer62fQlJGCCcDN2dqmLYFUdAnfQ?=
 =?us-ascii?Q?DJp/67zgBEWn5vsDh9794iQbG0gh0/fWXQAv+dEA0ppHfCVh3pfGzU3xxR98?=
 =?us-ascii?Q?nB/wEfnusMQ1cnrBiPmg4V+53U8LoSMHMsGqzij+6Tadskoj3oMcgcfcrKd3?=
 =?us-ascii?Q?Yu0UAou9cc8Qjst9g+8u5P3Q0F/jlYWJ8SjOLskAaGZxoZK1IYz7wTFNLKzT?=
 =?us-ascii?Q?KCSN2bC71NQklHU27Ncynn6GilIkxb59IvgfJv+ATyIZP3wUb3a4/nfaWueH?=
 =?us-ascii?Q?PXrhDC/wE/YjROwds6AhgJszbuG9Og0PuqhjG5Z0c2T10bzNdbPgx/F7ey9I?=
 =?us-ascii?Q?+rDjAFc9LJdhMzU02zdsdJpnUB3tLWCAVKS9N4Uc0Y+7SDeGjbeBOEJCZGGt?=
 =?us-ascii?Q?VLidTdD7aKPrn4AC/3pxc4ZGsQyYLXZODSJmSZNmOxD0Y6k0sEktUBhKgPZg?=
 =?us-ascii?Q?1rXCwCtYV7RJyiyhk9JhQ3yUpso+LHIVfuQWi/MBoFexieM9NkfIh9i3yptu?=
 =?us-ascii?Q?93przt8UkOeWiqfvblZb/4x5QjfqCq8Un5fzIGWDvN38wnOuEpJjYdVpWP4p?=
 =?us-ascii?Q?5jqQmNQ+UjW4GCoxZVtzYqKjW0ezs5TOEqtR6gjXuORgUVsVHXG0J7SMl0Oy?=
 =?us-ascii?Q?9xs+lOANYTyCdDxjVh9ElTr8mpEf6Tf4vfrNLbM/KoaQzCUJLfR6T8jGxk3T?=
 =?us-ascii?Q?GdWBgdjxijzq2ZQArLot3K/CZNmvveQPsXdt0u7yTgoU3Vq9jzi6qAQ6J+JU?=
 =?us-ascii?Q?aNGY/K6Vh3i9gSK8szvsSk/bmEVOZqLYBx0cc4uZa4X0NyQc/4yBhCK0mU86?=
 =?us-ascii?Q?mm3IbE10Ba//CnSX3jzBaMJd6fsghDWFZQQkWdClqhwCKQG4dSLZNAyoy8LJ?=
 =?us-ascii?Q?PMfbkFIIV6ZeGdOemUJNytJ7R1TFnbqiBaAwiBMPlEpS4QNEbYJjfcerFctq?=
 =?us-ascii?Q?VI43LGDZxWiTiX9YOLL5O7cA7VXHJKOKv+OBehoQMlVcegpGI+T0iSOIfYzY?=
 =?us-ascii?Q?vNXWw4n0Aq4nBDwxNPT6t6SI9KEG7sB3IkUJOlFKcny5Z7bzrUVj4cWNde/B?=
 =?us-ascii?Q?WfmwuK1p5XOT8PqGp6TdOvW5Hjy1uyqoURp9Fj5FjTbHfgFXsY8pTHRnu9jY?=
 =?us-ascii?Q?kQBy85e5PgazQ0y6H62rW5dA+gbwiymUmfFp7AwS2bi0qsnovM2EC6E6vuar?=
 =?us-ascii?Q?Bg8Q56gnkO2vw3817UDkAQa3xGFoXyH0yNE9GAQmEWeat72aWRuFWkQbgP5K?=
 =?us-ascii?Q?/unoOY7lt/qTQFQ6V4Mz32w8hGn/vm3FiDF8AQheBMpFYcYB4BXWBuulqRf/?=
 =?us-ascii?Q?7Z8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR04MB7779.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cYFu8I6+8gDJPelfql3D9OUZ2r8j7bdy76y+ROfwynOxfyPgRJQta9j6gEuC?=
 =?us-ascii?Q?GnQHTrWPBNmaPpQWlUMNB3X/VTq6c1vpTIVtrCxFjLGIp/jyzRpblR21zzGd?=
 =?us-ascii?Q?ddQQpSMfkj/O37c1ViatBopRIsm5tr0vuzhwn36dTqWNRgAbLv4fIpCiI6ku?=
 =?us-ascii?Q?HeGzjdVGpjbsgA+h4AoHJaxNE2DyE7IY8wpx8ug2bKyKRzOMfUM7CmCfWyDH?=
 =?us-ascii?Q?1PR5pXF+mE+IwuNVZMMZc0sgzn1NOCrTrUY6UvV19WsyQgx7O43BuWFWgb9i?=
 =?us-ascii?Q?slzdLgEsV6ypymsNdvObJY5s+lpy+1Xfba2DQgzcRMOxqs7Yh1ExzwMhJesq?=
 =?us-ascii?Q?vY1UyuL/1TM3EMxwHdP0xMH82GY37anIk30anVMAJHnHaZhM4+4kmWPD3D5E?=
 =?us-ascii?Q?VctbG9IO0V8S5aFwFBP/ZzCl14qEvFn9isVlmOb3wc5N8Zo2oewjrNZMIC/e?=
 =?us-ascii?Q?6vYdqBs4TWojnvaG11uUsg7GtxJRpFYj0HAZLPdxVv1YkFeh1MDQ269UQHx7?=
 =?us-ascii?Q?COAqcDpg3teKMpDSYpxJS6D1pTnxIGgWP2708z+WDZh7oXnWyjRq6cfX3QbS?=
 =?us-ascii?Q?Ocj/KTXrJZ+UxqlKd9hXfrBdiPlVhX5+7N1nWKfgTU/rWR0DixZK2rVjW53B?=
 =?us-ascii?Q?A/i/2u4VceBinCgziuBbb/EFxmvKt/y+cQ3XNKn68L+QmLNKb2VNZP9qaPv2?=
 =?us-ascii?Q?RNk9hZbYW6TmxLgPY6CMtcTy78wGRf/20qCbCziUOXiF+ZO8zg0ud5qmnkP1?=
 =?us-ascii?Q?fGhkUPVA1EEx0dOGDvHo8lXXsOytmvw9RkcxtlRUXS1VIOu0I1ViiKzN3jKx?=
 =?us-ascii?Q?y+aP5XrqAe+f0qWC9MdL+WsBfY6fxjIlrdqxuYFAVq1SeK/cD4KzIdGohITV?=
 =?us-ascii?Q?3Zyv0JwO/9gte3Or9wKEQ32ALCmvdorz3tvC15yOGV53zI5kwSNuvmcsmaP3?=
 =?us-ascii?Q?4dNEbYFvAaYmAsMYv8EaBfIA2rFlIDygR5/2VM2JOqeOGVIzPBUdYMKQmwhD?=
 =?us-ascii?Q?2mbi7OMf//U75K6px099YwvUkXAzSKRVxgZFN9ruiYsu9Rpnr4Rr2bL8dyGb?=
 =?us-ascii?Q?JMs8mUsNoM7NvYaXtBh5y0ttdkQIMRwNuzScskZW39c5sBQLRodXPW9VZTXk?=
 =?us-ascii?Q?X78pnmWfiiyHpDPsv31ieokk6orbVxw0pJ1Dhk4DUMweCjgDmAroxyWqhX8B?=
 =?us-ascii?Q?epn0FmvntNFYqIdQfDUSOq1mLEDXVNVlm7vxniLot+s/kM8GgmbEabeZ3+wy?=
 =?us-ascii?Q?9PiuOu9XnFWNkMzRVxjNAOyMogBNDG+s/andLLR8l3lEQATjECDnH2vXpSB3?=
 =?us-ascii?Q?HDx56EJMLCRmS38XagXyhFnJ57Nhptzpx9+FVJM3FNW6ENIk3uUn4aG2n9a5?=
 =?us-ascii?Q?vC5gGAMbMi2D24BZjqihMsHbk1sFF6K+2BBVM8QLJhwUf9//sZ7E0yo7eLWR?=
 =?us-ascii?Q?Fjp9CyKzUmVnRzpO2FufRCUsvkPHixmt+9nLMEYfhO1EyJQhpVFaGKhgVr7i?=
 =?us-ascii?Q?Biqi+pM/3BFIzy+jzTa428P3IVp6HsiuP0XN3JyMRHBpj3AiOrWklaqWdh/Y?=
 =?us-ascii?Q?HCGynNAqeqHPn/F2afWXOo7t7vieEQA2X3z6pqQ7bGXMyDA74wmanfqwCu9F?=
 =?us-ascii?Q?wA=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e46ac2ba-00b2-4ed6-10f4-08dd14525a50
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2024 10:56:49.3050 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P6c/cdx2g1XkK5yOflLY7xuJ4DYA8htWrUokAka6O5E1QsUTGoiqsUfB7Y45ayDvf9BTdrMgPzwHaA3Xd9xF/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI2PR04MB10220
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VdLFICiW1dM/2xjA1yPh5suYxdPWocDI6X//hd3MFVo=;
 b=kggWprHZqXYxXE++cgpkeQkiZ01qL+nohJ72Wvo+ggkNKizgS9FgyIMkTYPBobRLR3r3gFCH/j/ycGvm+wxotkxO3BgojOiZJG36lw2oxACKcKRq//rd7ydm4CoiEIfGBkxNPlDQ34D5A7fkurPWHUT1/yE0MOyWEr5Y3hHgtcB5LwTONfCXsQ+ucfPGDjsZmYhH3Jt0Sd91AIspvvLJO2rXLbx90RzwM8aD2yBhXPBfCNPDXl8uSdX3mSvIoC1osRbsPAHc1pfT/HFT5x72ClNpakc+SYm6eH/MWkw6iC8TwptxiyRL1V/9iCNS3u5As9E06cR7fIWUtODqg01Ggg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=kggWprHZ
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

On Wed, Dec 04, 2024 at 02:12:18AM -0800, Andrew Strohman wrote:
> > I didn't say "tagged". I just said "not PVID". There are 2 independent
> > bridge VLAN attributes: "pvid" and [egress-]"untagged". I am suggesting
> > that packets in VID 3, 4, 5 all exit the 802.1ad bridge untagged, but
> > every bridge port has a unique PVID from this range.
> >
> > bridge vlan add dev port1 vid 3 pvid untagged
> > bridge vlan add dev port1 vid 4 untagged
> > bridge vlan add dev port1 vid 5 untagged
> >
> > bridge vlan add dev port1 vid 3 untagged
> > bridge vlan add dev port1 vid 4 pvid untagged
> > bridge vlan add dev port1 vid 5 untagged
> >
> > bridge vlan add dev port1 vid 3 untagged
> > bridge vlan add dev port1 vid 4 untagged
> > bridge vlan add dev port1 vid 5 pvid untagged
> 
> Thanks for the clarification. I think you meant to have the second
> set of three commands affect port2 and the third set of three
> commands affect port3. Please let me know if I'm wrong
> about this.

Yes, it should have been port1, port2, port3.

> I gave this a try:
> 
> root@OpenWrt:~# bridge vlan show
> port              vlan-id
> lan1              3 PVID Egress Untagged
>                   4 Egress Untagged
>                   5 Egress Untagged
> lan2              3 Egress Untagged
>                   4 PVID Egress Untagged
>                   5 Egress Untagged
> lan3              3 Egress Untagged
>                   4 Egress Untagged
>                   5 PVID Egress Untagged
> root@OpenWrt:~# bridge fdb show dynamic
> f4:a4:54:80:93:2f dev lan1 vlan 3 master br-lan
> e0:3f:49:47:9a:38 dev lan2 vlan 4 master br-lan
> f4:a4:54:81:7a:90 dev lan3 vlan 5 master br-lan
> 
> Like you said, this has a FDB per port. But I think
> I need to have a FDB per inner/outer VLAN combination.
> 
> Connectiving works as expected in the above example,
> but only because of unknown-unicast flood, which of course,
> is suboptimal. The switch is acting like a hub.
> 
> For example, ever time the host behind lan1 sends a frame
> to the host behind lan2, the bridge is not able to find an FDB
> entry for the VID corresponding to PVID of lan1 and the MAC
> of the host behind lan2. The only FDB entry for the MAC
> corresponding to the host behind lan2 is associated with
> the VID corresponding to the PVID of lan2 (which is a
> different VID than what the packet arrived on).
> Hence, there is constant unicast flood.

Yes, I understand this is the implication of my proposal. I just was
under the impression that the behavior (complete segregation of stations
in the 802.1ad bridge into multiple FDBs) would be equivalent with what
you wish to achieve with the Outer+Inner VLAN lookup. To be more precise,
I thought that you want to keep the outer VLAN into the mix for FDB
lookups for exactly that reason, thus the suggestion to make the
isolation at the 802.1ad bridge level directly. I didn't look with
enough attention into the FDB dump, to see that in your example, only
the inner VID gives the namespacing that you desire.

But to be honest, looking again, I don't understand why just modifying
the bridge to perform FDB lookups based on Inner VID + MAC DA wouldn't
be sufficient? Why does it have to be Outer VID + Inner VID + MAC DA?
I guess adding a bridge option to classify on the inner VLAN protocol
could be easier to swallow, both for the software bridge and for switchdev.

> I also don't think that this solves the issue for
> https://docs.google.com/drawings/d/1FybJP3UyCPxVQRGxAqGztO4Qc5mgXclV4m-QEyfUFQ8
> . If you like, I'm happy to explain why. But before I do, I want to
> make sure we are on the same page before going further.

Here the same thing. The 802.1ad bridge has the same PVID on all ports.
Why does the FDB lookup have to be as complex as to take 2 VIDs into
consideration, instead of just the inner one?
