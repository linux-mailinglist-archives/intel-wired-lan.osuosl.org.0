Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE0EA3D832
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Feb 2025 12:19:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0731A4072B;
	Thu, 20 Feb 2025 11:19:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zl75-F9bA4P6; Thu, 20 Feb 2025 11:19:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E9D254074B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740050350;
	bh=6+rfzP3k5MpjNbLUNINqrgfuop50Nd8Yp8NOMBp2znQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=UwVgP87E0nKY5WoEEnuWDbG9Jatu/5ckEt8a/btiKPRiplXeDYfDFT4PqdDBngeJR
	 PLk72uLBtj1zALGZ2yCvoFlu1r1z3Mglh5Q4Au+MOXK2lIYAqLqFMKiGaeQiK545A2
	 /J+0odMqX82bGKrezbEUWVCDxnmA6pUCAS6Hejcvk3Yv2dZ4JXqDNxHbHeqYtPDsnT
	 +bPJHYbaquhYC1SkRia3AIcE72arXcDfiRmF0FF9dzccri69Zvsgv6fWKCk9oYO9eK
	 +9zFiclDs4f9KEyFPutz4x5ehzaHxMbv97J83QipR4KIb3RN1/uqglmK9w8tzE5SfB
	 hg8rYipBUdj6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E9D254074B;
	Thu, 20 Feb 2025 11:19:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1EACCCF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 11:19:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F3594611DE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 11:19:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Iq1ITb1nUrQd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Feb 2025 11:19:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.103.88;
 helo=eur03-vi1-obe.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EC11D6116C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EC11D6116C
Received: from EUR03-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur03on2088.outbound.protection.outlook.com [40.107.103.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EC11D6116C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 11:19:06 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bt3z8/bn5VT/RSpIyXUwfbhJv2SMsqH9Cv8619Pmw3PRyT/a6iAk90uTvEfbmmazRB7L1K3aOhYaA+UKQni60JN067oICNAtbBMWI35ccYgbF9Tvxi+BOKgWClNFX/3qg49M+c7JoSeL79h4KhE/hEsWm7j7SM5bGyjJyMtr3pPgDgEGAF8/AND5YR/fBoKfoRihV0QnBXuEzcV7CREQEhyx0Z6gNHJOoChZkbSGpI7KkS9WRp1GKQxQ7HbtzHgYvc777XK2MYH3xtbDWIEznNF3E/0a0vlrNGLZsxp4s4KknRCxaOOccTtOSAseTn1Qv4tCECjk2HcfM9/I7H7Q4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6+rfzP3k5MpjNbLUNINqrgfuop50Nd8Yp8NOMBp2znQ=;
 b=EqH2DSFyyG3GwR8ji9Sc9i42o8jtd/HATjSE+cmEaWtdHEn+P+GIQWpZIATiclKNDwF2lVaqWcXY1SnfxRbugDm2CORSe+TaIxyJJxCivHdsfPzPLQckqbe01bm7tHzfzTtMBsPyH4pKruChgXE0qisZsAlMNTrrgpL+bsYCWsKX68YCEPSm+iNqmTlg9/PvWfMG09QKVs6dGk/15FopEt2kRKcV/pJXEEhruwdzS087rqqRfFoPUow16tOCPI5haMQ/ctrZFcXhfK0vcLo+B5WsRTQaYRHsODdO7SveYgNI91DGvi95AmyLGU43OZkFsTESta8T+EVmfaLvXWnW9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by PA2PR04MB10129.eurprd04.prod.outlook.com (2603:10a6:102:3ff::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.14; Thu, 20 Feb
 2025 11:19:02 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%6]) with mapi id 15.20.8466.015; Thu, 20 Feb 2025
 11:19:02 +0000
Date: Thu, 20 Feb 2025 13:18:57 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
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
 Andrew Halaney <ahalaney@redhat.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Message-ID: <20250220111857.5ybdpr5rzm6htfjv@skbuf>
References: <20250220025349.3007793-1-faizal.abdul.rahim@linux.intel.com>
 <20250220025349.3007793-6-faizal.abdul.rahim@linux.intel.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250220025349.3007793-6-faizal.abdul.rahim@linux.intel.com>
X-ClientProxiedBy: VI1P195CA0054.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:802:5a::43) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|PA2PR04MB10129:EE_
X-MS-Office365-Filtering-Correlation-Id: e170f9aa-6da0-4527-c3fa-08dd51a06115
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?wfoiaqGJuTrrTnCQHR9E/GgiyrOqh+cWGMXtxpZUO1mt41n0qb1/f8cOqL5r?=
 =?us-ascii?Q?GVMpcTOdJuMjko+SviZGlBgiZIVN9qd9zQIpowJRUWFCt7ywm2WayNUNALzw?=
 =?us-ascii?Q?NZTCnGwcWOHKPyrCQx+h9BZ0itd8UchjCtreC2m4jNv5gNK7l0bLUmBYAQdZ?=
 =?us-ascii?Q?tVlfbCx0OUiF802XjnOX7o7vtmZhPhs5+2KmY2EcGxihTf/LfbxMYu1lPQOF?=
 =?us-ascii?Q?AGsotKtRaupmC2mu7K7KcoBeIGAlDAa98dfXH3GZlldFfIVzKrEPmwi287L2?=
 =?us-ascii?Q?A3gftYc0cjNUahpE4r8N4QYmwCcNam+vvfyK/xhWQCaq9k2EFZdUhcH9eEzP?=
 =?us-ascii?Q?PxtjGjRjcnmDYmb8cpfsO8rQcCG0gNpvXSdX0GUvGzDTgsre/20+qAi9vLEZ?=
 =?us-ascii?Q?o84fmG1Zat2GXkSyy49KoXFdF2k8Kg4u9dWGn3uoVKN/xvg20rU/RGZZNcgP?=
 =?us-ascii?Q?K/0o42azgHfSc/cN39QoJh2GODvMUwVJRJ21xzCKACGo9m6OZ4i6X4t0BRcl?=
 =?us-ascii?Q?fu9aEm5JdOJqz9259PKkVOpYWH0pGlk3RsIMLMlq8Qg/sGVtRzmjYp84UGC1?=
 =?us-ascii?Q?1iaadMpRFmuNn3G3c03v783TVLi46bwoBob9wmgXGiZhSM4R742A0BaI/bvM?=
 =?us-ascii?Q?NXaTRFp1mGE6K5f8tTbPN5g8HPqSBK/b1ZgdnPKfNZw+Ctdh157JOkxRvIy2?=
 =?us-ascii?Q?ih4WpQ94fBOq2yP+d9xt1GoFfLLfadRg6PveubGpCS2+uxiHAWfoWSxaJHC/?=
 =?us-ascii?Q?CaVZmecgmzrD6xByIDtIOJGUBRtnsabzjZFbsiNhMkqfE/TmtC/Z0tCrkZWn?=
 =?us-ascii?Q?2IYVfl9Fqh2D5qHfoJ8oe6Ji56UjLLddiH+6JUrb3YbeH10wVjqO6HgO2JVg?=
 =?us-ascii?Q?RxI7r8gPyneux7TCQCqQajc+h3Wuz8cghj1MoycME8RTr9iNnCNmMRCCUfpE?=
 =?us-ascii?Q?MnFTGDGk88eWvyWYzKeJQaXljNb+ajclrQiF139T90xX36uIjtbvmPJ7Opvq?=
 =?us-ascii?Q?2nQBuZ9ze7sU314B1ue0c3+DwJrAanAee4dluzP+MklcBmawuNdMi/JBEG/V?=
 =?us-ascii?Q?vXqlIM4SYk5iycvl71Gg7vhXnPrIV289cnIEqope37bqxlWpMDzF+1vx/Yxg?=
 =?us-ascii?Q?ud0jCMtoVTp9qiHv411l15+htHX5jX2+xDYrW13sqyFnqiDoclA6Jv4+rmwW?=
 =?us-ascii?Q?Gvll0dH0hzLfI09O34CbXPn8lTuU4Na/IL5v66j73lZsCB+XxNJ7D3duq8Uz?=
 =?us-ascii?Q?rLndBTUwQJGYL/jKdNU5uXeRbYGlmHhMBlmwYnEQzvnheGsSsacshbGeMG2V?=
 =?us-ascii?Q?kSVepPjr40Ar1ON2McbGa6VKSqYUJwnEJWlU2OQYkyi3Wj+oAUD782pSO3+z?=
 =?us-ascii?Q?GMMkFMT+NjzyKvuQ3/s0EiRlaPcC?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR04MB7779.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/RaxMmrqFcG8oGiErRtn/wXGqQL3s9JNvmelA+a/34ayxqdTPya0VbHbc6ni?=
 =?us-ascii?Q?2rQsb6bOVgJldAZ31ey5L8eKDLHgb8IaWJdcPkJM8aaB8IFosrvd4Rlz/2cv?=
 =?us-ascii?Q?V/AULPbUvcDm7VXi69R5f96aek9FqtI6MRzzCnsie20An5s+KhPNR3XAMkLc?=
 =?us-ascii?Q?bsX/pnsubhOemn39uEhybI2nfsVRKxUaM4Fs13nP5sDoWyEemF3elaADyuBW?=
 =?us-ascii?Q?3AZxoYIy1S3sn84fR/LfKqV0CMfT7TcFV9QwCdV9p6RCt6QZRz0WXZ4Uoxp3?=
 =?us-ascii?Q?u1qGEwrwUznooENHBJlwZTNVmgKxlQx89uhVR66vntpXeT0dR1x+VnW83c4J?=
 =?us-ascii?Q?KcyB4dj1YZtx66ceWUfZCwImqQ3lDqSvg3q7DiI2Q9R+tWPhm/R70GzsNUKC?=
 =?us-ascii?Q?TzTI9x3TpvPhkJ16HZsuNirEDdcYmypfxeCjkqQNla1VX4IG3ldcJ/6LvPur?=
 =?us-ascii?Q?M9iYHVO61xzIorHkxtH5d2twKDs7vKmVvz/f8Zp1fy1fx+5cFjMPDNyDGqSX?=
 =?us-ascii?Q?ILc5JHH6xCY6Pv9cVklv5KqsIwjkIhE197yAb7U/Dp1XoTZbbnyZ9A60PVGF?=
 =?us-ascii?Q?mbI1EKTpmuAC5M9r2CQrNikSzVSA7tjb0VFIC5buSz5eXHw519bnyhwbHDC7?=
 =?us-ascii?Q?jZARKrmqsg1JXisjdJJOfoDJS5o6406yWurr9QbIDIMd7V/iby3WS3c9GjPs?=
 =?us-ascii?Q?bSMSkGFvtUnvdiINV7R9h3Z3snQJ32WzkNhziOzRzrOT0KWBig8yMH+CCAI2?=
 =?us-ascii?Q?z9Yq4vduakCs79OYjq+l2sFrVnQOQ6czLZoDfTF/w+zwdYg5/ua2UOSza88H?=
 =?us-ascii?Q?DC2VNiunVMcRMso/yH4XxOOZRjELzZTwu47sPhlYfSa+kUlmY+je8rxwBRpf?=
 =?us-ascii?Q?r7lvjFoVCaHFirFlRHkzFWpxsBJ3VSDsJNKBKT3tVhC63AAhCMyh0ySutUM7?=
 =?us-ascii?Q?+Chu/P/AeCAygbZP7JQzAyZbZO40u3v5w6vFkYKBaBCn34vUJF3UQ3Z0EpxP?=
 =?us-ascii?Q?8LhWRGMGwerecjVoGsmdE5nb0+H3X1y7P9q03Z7EJjHcHvuQobuJuH3pcwK6?=
 =?us-ascii?Q?sSQb4JlMpwhjLt543Q8qomDy8PiOvMdutPwyv0Yr1eIQoW6/w4euh9CuNrSB?=
 =?us-ascii?Q?QvKfPbf+/oLh7nr9Wc/cOvZ+ErKZaSAcRAkK7XZKbS84RKNnrMnRQnX+IT8o?=
 =?us-ascii?Q?xJ6PbDgQONr7rhSOWQR7fgn4wLfGukTo1FyLnl5KxTsdTE0PCRfj/wfcsKcb?=
 =?us-ascii?Q?K6KnDsKYLTxdQKOCbbCT6oRm6UQi9s+zm2t1kiErxbdMsJtDnFsWy6kAZeh/?=
 =?us-ascii?Q?gONScWYFNe/mMM3JNEsxoQck49nPeYvti2E0euXFxrAZpp/jI45hjVx6GfxO?=
 =?us-ascii?Q?xHPDEKxhxRh6T5qdj/zdXTRw7q0R3UXoHGTCsN+9tj0lV/hRVfAwvK/cqxnh?=
 =?us-ascii?Q?SzolGjI4gbx1Qw5v8cpU21UF9ZG5JPs5CQ3DzwG0ZfkH8/VwC4quUpqXdnJQ?=
 =?us-ascii?Q?4PXkYfQJy+SnthOyGCQLzuxHeRLMjSO1Nxmn7EwErt6eCfUB7Uzn5HvR62Ff?=
 =?us-ascii?Q?LGwNgTe1EWSQR0Nog0dLqRE8Cyjhsoev3PRfSdLQ1eyoP/sqy5cswHGIQnCe?=
 =?us-ascii?Q?Pg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e170f9aa-6da0-4527-c3fa-08dd51a06115
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2025 11:19:02.4141 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IN4+IUwwR9eCUtbpDtx6X3jG6tOWgSG/T/GyQQ2WaWR6KyFBl1p3joUyyrMnzjdgd9dIs1SG4n0ZpPbWyGdTQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA2PR04MB10129
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6+rfzP3k5MpjNbLUNINqrgfuop50Nd8Yp8NOMBp2znQ=;
 b=ctXKHDZXDvc8Y87BIBA9QDTZTfZYtx9Vkhr63BxHRExMPzWSPQjm/RbFsD82dg/o0EJXqTGw4GxIPSYOA6rikqwt6//CLD5Vb1fUCYOcvgUcJQrFX+u0N7+lrHl26jRp3Jo7RsO1wF2Dn7V8wgQ5+UtayIxiOrvoRj4sDnJF99h6CKpYlMDv+IHygXXO4z7Iz9Z7vCRLcayck8B54B/2TA57Y1uOTubDxBX9bSfUQgpkwooDXg65ycPwFxadrZg0/iSE/f7BdTGHhO5szSoXJSMpelgGeKefEZ2lP2pWOnN4a/MjfjFpGqCDyyQDZcTw+wmuSZUR/P8ofy7JbWftgA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=ctXKHDZX
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 5/9] igc: Add support for
 frame preemption verification
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

On Wed, Feb 19, 2025 at 09:53:45PM -0500, Faizal Rahim wrote:
> @@ -3956,6 +3970,30 @@ static int igc_uc_unsync(struct net_device *netdev, const unsigned char *addr)
>  	return 0;
>  }
>  
> +/**
> + * igc_enable_empty_addr_recv - Enable rx of packets with all-zeroes MAC address
> + * @adapter: Pointer to the igc_adapter structure.
> + *
> + * Frame preemption verification requires that packets with the all-zeroes
> + * MAC address are allowed to be received by IGC. This function adds the
> + * all-zeroes destination address to the list of acceptable addresses.
> + *
> + * Return: 0 on success, negative value otherwise.
> + */
> +int igc_enable_empty_addr_recv(struct igc_adapter *adapter)
> +{
> +	u8 empty[ETH_ALEN] = { };
> +
> +	return igc_add_mac_filter(adapter, IGC_MAC_FILTER_TYPE_DST, empty, -1);
> +}
> +
> +void igc_disable_empty_addr_recv(struct igc_adapter *adapter)
> +{
> +	u8 empty[ETH_ALEN] = { };
> +
> +	igc_del_mac_filter(adapter, IGC_MAC_FILTER_TYPE_DST, empty);
> +}
> +
>  /**
>   * igc_set_rx_mode - Secondary Unicast, Multicast and Promiscuous mode set
>   * @netdev: network interface device structure
> @@ -434,6 +569,11 @@ int igc_tsn_reset(struct igc_adapter *adapter)
>  	unsigned int new_flags;
>  	int err = 0;
>  
> +	if (adapter->fpe.mmsv.pmac_enabled)
> +		igc_enable_empty_addr_recv(adapter);
> +	else
> +		igc_disable_empty_addr_recv(adapter);
> +
>  	new_flags = igc_tsn_new_flags(adapter);
>  
>  	if (!(new_flags & IGC_FLAG_TSN_ANY_ENABLED))

Please monitor failures to add this MAC address filter somehow, don't
let errors be silent. If it returns -ENOSPC, you won't be able to
receive verification frames, but you'll never know it from the logs
(assuming the netdev_dbg() on the igc_add_mac_filter() success path
doesn't get printed anyway).
