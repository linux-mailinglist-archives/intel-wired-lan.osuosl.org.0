Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A5620A53F5A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Mar 2025 01:48:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 49EF182F76;
	Thu,  6 Mar 2025 00:48:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VsiEXNb7YsNZ; Thu,  6 Mar 2025 00:48:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B69C82FF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741222099;
	bh=i8JXVRFzGmJLqyLTET1MjvVu2GGv0KVTvbA5W52dQcQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4/R0h+KS1avsLexg4bQgLTtHVRMEBJ0sk0yDy8anDbV1UiyudTbB/ckVrlzchzPCa
	 TntEzJJaoM5gd+POsfDHCsvrySv1TkMieFQxTKxGhTiVjIZ55LaPiZroDZ6zjz3qNu
	 15tJ4P5/qkTZIiNa3BhDaOoVg38LqRKy/+iCMow00/pMLC+BRvIUVhlTbOUNHOK1yA
	 dtgviSRdAHn6eskny0xIufFxwfFFgPw65hI5mlxoxi5f5JT+De0jpVRZpXKgTlsP7m
	 pmoxD29rCxEmM3yRLixy8oco06+WbB4O/cTHUwnRsfy9gMfVKrIhMhdnxWMRVvrps/
	 PNRpfzDBsyoPw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B69C82FF9;
	Thu,  6 Mar 2025 00:48:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 38D36194
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 00:48:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1CBA440C9B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 00:48:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bH4i78wnMrvD for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Mar 2025 00:48:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.162.12;
 helo=pa4pr04cu001.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F153440C85
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F153440C85
Received: from PA4PR04CU001.outbound.protection.outlook.com
 (mail-francecentralazon11013012.outbound.protection.outlook.com
 [40.107.162.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F153440C85
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 00:48:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pSpfUPlEwbJ36/HG0XCtgxYTR69LX0oYxdPGOCBhqENwOxe5inlQpYQMpFlmSVyEWGzoylaY4ldxBXWPDaT6VVZZffEFlsOJ03VQMm7HZS3sP01+T93a4dJiYAeNPQXnCZ1w7pjn4jHLE6BXLHIDw69fqtYl0DHSHrct4ieKYUQPf+5nwMAZZYk/ht+fpZwL3ezkKkQ+OeqtlHJ+E7QQgWshBsENXWIpJ96SSAKfxc24Za1Xhx+EaddS+I933vB6KyW3Ja6QurEowPq5t0UpN/yz/hgLnokHSFiCoRmTWG33g+wfGaepZA8eMoE8G8nft4W8Ljb6QjJAqPIZIkIzzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i8JXVRFzGmJLqyLTET1MjvVu2GGv0KVTvbA5W52dQcQ=;
 b=vEwPpjZmPa8+dR7pK2x30eZlzgBi6rlpI7YZgpybqmVJneGnSgi6o76oE52XYrTjvjAI9mpCG9JHEWyIAUaRb2p4PHdwHzUaOJ/4gM433hZhgzIXEOyNHcnhHUpgzVSLq7zYMssjfcMskVCFFMKLZ2gpBiZY7k7CMnS1IUnqMVLrtMRzhfWV7b2L5kQwvCcTHwV5tVg5t6M6s4RUFCzFpA9xap+H430zdW5RsMMxeYk4vfhuHSJXwNbS8Lzm2PEcwmrVCRIVo3wsiQMhMOeqUITbnnUgRHElehFdaQTLHIHLY5s7aplfUgaouduAqy9y2y8jjVdbStFLvPjvzfMhFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by VI0PR04MB11071.eurprd04.prod.outlook.com (2603:10a6:800:262::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.25; Thu, 6 Mar
 2025 00:48:13 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%6]) with mapi id 15.20.8511.017; Thu, 6 Mar 2025
 00:48:13 +0000
Date: Thu, 6 Mar 2025 02:48:09 +0200
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
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Chwee-Lin Choong <chwee.lin.choong@intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, bpf@vger.kernel.org
Message-ID: <20250306004809.q2x565rys5zja6kh@skbuf>
References: <20250305130026.642219-1-faizal.abdul.rahim@linux.intel.com>
 <20250305130026.642219-1-faizal.abdul.rahim@linux.intel.com>
 <20250305130026.642219-12-faizal.abdul.rahim@linux.intel.com>
 <20250305130026.642219-12-faizal.abdul.rahim@linux.intel.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250305130026.642219-12-faizal.abdul.rahim@linux.intel.com>
 <20250305130026.642219-12-faizal.abdul.rahim@linux.intel.com>
X-ClientProxiedBy: VI1PR08CA0254.eurprd08.prod.outlook.com
 (2603:10a6:803:dc::27) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|VI0PR04MB11071:EE_
X-MS-Office365-Filtering-Correlation-Id: 11fadc86-599f-462e-0de1-08dd5c48934d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?KRdiYSQ0RfW149VNnqst0/KT3SNjQ99tWbGD9fSIp6bcFfhPQeK8jq7/Qxpn?=
 =?us-ascii?Q?HhAJQzp7z/SPJo/lbw3ZFuy+ppcf/eq/vcrBsUix9Kbcy0c4cO+l6wxkwwpS?=
 =?us-ascii?Q?TiUYOlhH7ADtNBrdHZYrscxQ7hXr9thMoY+nciY8GsVetCncZlRROKL6MpQK?=
 =?us-ascii?Q?hkaxkZWrIN78l1sbsKYgk84gDcd/HncLys9CiJgt9ybm31wFLsY9g845ojFV?=
 =?us-ascii?Q?H+gbUxPH7yB0nWsUpEfjEBcE2SBXCsHELXaUTPPln4U5Nmd+jF091vAKgXYt?=
 =?us-ascii?Q?mv9lg7tx0vLNkAc7xxzsPmeTzJCW+LVzyP6hN8pMrrROox3lBQRBxYu7VJ1f?=
 =?us-ascii?Q?A5VvatUEFQP5W/G5c5gOXLz8rFXDZjzC1V+oQR9fzOqQO03TErxTanMFbfRL?=
 =?us-ascii?Q?xd+IJoQ7XeZChq5Cp7NH8UqE6hkgr2ymy4shaTZikuSS2owIM63Rbl9ioj4O?=
 =?us-ascii?Q?ZEoTcw4+AVbDFQQ6ZzycT4tnPWkXnBGdEPFdT1u5V9HXxN3vlNitQwTw9YQv?=
 =?us-ascii?Q?A9hn5ymS7EtSB97eFFyTLFk4NclY2+BU2FBdofmEdCfVIPHh2g6l6RaBap+P?=
 =?us-ascii?Q?oGffyimRDtWDNFXWIiF8IyPihrP2KhYHKH57ruqkNYGsfr/3ZDwdCoMNY3zO?=
 =?us-ascii?Q?K6Ihpq3jUsGhgKylA3mEtB6Pbev6VLLzAAQ6X1IWRAk3Mousrw2zthR+4bi8?=
 =?us-ascii?Q?qZmSsXQalfoihc7OfVdPzjSOZFX/yB+T86ex8f/lRKSQnK8MLt0AIqqK8wwj?=
 =?us-ascii?Q?Z8HRoQP14UcMWxJM6hGr/ROgNZNN1C1Gq93ZfW983/p1qBC+MuLnN2xrJJ6a?=
 =?us-ascii?Q?O08+YHujcCvywqaOpX1AI3UdFqDeblVk5KxzjzkMsUGwV2E2Q+Kgd5+yVqsX?=
 =?us-ascii?Q?B9ofDN0hKVZQbxrlBJ9PNDt8alAZ7/Y4eZwarE9eIAtoLUTniGmihNzFzchZ?=
 =?us-ascii?Q?orVIDMd6ykaTJM0ftudj3nBitKIyOXhwqu9t3bPm6icpqT3/H0tNGjM0F/f9?=
 =?us-ascii?Q?E9RXOOLIgIRhK87jJJVun1G5haurU1N8c+9PUfuKVi8GDWSe84TB8croYuKw?=
 =?us-ascii?Q?YiuIymrEBEktJnJcop6c+BRovAlGAgbmpmEd2BJb+HxmnWpVolljqWmG03ms?=
 =?us-ascii?Q?cMBAA93tVkboME+ZZftHOKwhmEdAyuE9pCCRFb92bqSIHCVoikWwCfH/QXon?=
 =?us-ascii?Q?0gynZt4gLSO58nFgNCsyuZeQq/+B/VQo6OXjgFgH9TuhewJddaRHyMz+mQd4?=
 =?us-ascii?Q?og4Sb+GBcp576RKNlygFx4rey8rP3jIOCXXPTvJaijTbf34h0TTbSUxHeYIH?=
 =?us-ascii?Q?0V8gIP1nKNijxqLRMOcWCOLRODhO+wfrErUf4h5jwT2nbA87bo0y7l38c7Rr?=
 =?us-ascii?Q?aMLR5r2z7dZjSQ7q9IX5tEkHmsG+?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR04MB7779.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zfqtzMaIFhVtCoh+CBUbpBicbJT75my+SG1ltlqA/dXgFRcVHi0a7K7JIH2k?=
 =?us-ascii?Q?G1Tm0HI3ZVjjFQCqgJ9OknszdjfC4jR3cMn7Cp1+WSr1f29wEyeLN2Zb5vqY?=
 =?us-ascii?Q?8pUUK553DZU8TIy6Kca9VOEppFizyTCuVilDJ5+EB0lQCC0R996R954lrzud?=
 =?us-ascii?Q?cwW0kJQwgDQOKuGx/WDibCH3liu3U2l1P7IEZnut22z78+XagEGHIaXzz3T+?=
 =?us-ascii?Q?eiNDC6uFC2k/rfMHJhUBB2OEAjxUK55or/RfZmz6sJ0FBZpHqu30eUycxI2o?=
 =?us-ascii?Q?A6wLsUCaouuULOVUeKFpEv2srJMGgDImnBKiXrbQ/Alf0zYZBPFlLI5bZbog?=
 =?us-ascii?Q?K6Sewk1l6ZSEH2rK3A4SupU2XBgJrI244/BVi7/OaC1SCD3doYeelfwZTVQu?=
 =?us-ascii?Q?CZdlZmad//WfaxgSAs/xpFL4L9pEW6l5YgHsz9NWWKg25yOQKYOjNNYx1NUt?=
 =?us-ascii?Q?01zK+McgS4cnfG4raPn5hcX3qKWU95MjoGoriV87HWOen/c/BSdVWn9tRxY1?=
 =?us-ascii?Q?0+nlcFszWjnM0UfzGt0wVz+EMNY7d5BOHprJ6b4tTzypuMrgr4UXDEAJIghi?=
 =?us-ascii?Q?vq8v+WYX5FtZUrCpMZSdsowv9pddT0XZUznoQmvvWEvmy/1dVIhnfMSJVbHo?=
 =?us-ascii?Q?p3UcGIIAVE6EFNMSl6t1WXwTA02+Th8BjwUOqucM3hAichZ/uIHVaiJGHRBG?=
 =?us-ascii?Q?KJO5ZMEUpk1Sw9E1dPPxLqII7vpfU3F7TmxwvucUeC6QbExF/htkK2PjGItE?=
 =?us-ascii?Q?wITW+oxv+OrXOer1q+Cx4u57hvnJrRQoiz91YfkiHSLw5K+E+7YoEPrpTpov?=
 =?us-ascii?Q?YJFNH2usEcQO2KEWt6/P5YWMvbcEELNrh0W9k8OdbHLTIYMCxnmyyK17e3sb?=
 =?us-ascii?Q?TwPWWlsArhRO5gpTVYwpHs08uU5PWal0bEKQF62K31WrN7E1ltN7+UY/ePzI?=
 =?us-ascii?Q?HePvEtXYrwE17GDPFqQbeUqiaiY+4TZaP5CQdxgQ5LqL7Ytxnq91cxdihhyz?=
 =?us-ascii?Q?LVrrnUPRWEKQA5XUt12LS9fHodLAdAgJWP9LHMgzGz26vxJwONDh1k1Xl/uJ?=
 =?us-ascii?Q?72CjkNdILKuxFFdatdbVS13TcdhGoW7ernV/GY9v+E9p3Z5pkQ/s5Puppod9?=
 =?us-ascii?Q?lVeMGkp+TAB6tkuVK5TFzqnCZ7Qdrb/Pjf4aj3Mle0pIeZqOYnsea1hcwzS7?=
 =?us-ascii?Q?rrljB2IrZYw8MM/xtFT6ycVJC9NGilyDOUu3t8KdHRl0IcxfOI9pr3883Po6?=
 =?us-ascii?Q?U4ABUENv95a027//P9c9+PrY6lCJxgd40sz6f0HMS1RAxGICAQ04vdpcEF/+?=
 =?us-ascii?Q?8m0eKCzT1dxl4hUoX7WS3sfWb7HiB0aZcRP/5ihahpMvq3I9MZAFwJ//NB4O?=
 =?us-ascii?Q?kR5meouLg3U2j7Q5UYUYTCt72W/9CVpLxyoTQYI50Oti/c/S+7fA524cRKQN?=
 =?us-ascii?Q?EUfVnuSw1GaixUvxt0+Gq896Znxvx+s7CkswqrQx8yKxkrTPtu3KarcZ2Hp9?=
 =?us-ascii?Q?i8gKFKwOx/IySLNmiwKM6d5XqBIZTapbIApOdec9eKR+Hm5ZE7tQD3ZC1xlK?=
 =?us-ascii?Q?HoXNWLm3ucZ+ZDiVDdG4YfpJ8uHRtWLnnndY3CpM32u5oqVuyYvIPT3yD729?=
 =?us-ascii?Q?BQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11fadc86-599f-462e-0de1-08dd5c48934d
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2025 00:48:13.6851 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WdMc/Fef4rmhdGM5i+BCIYK02Gt46h5iyqudFQL5frT1qgy+nMi41I1kluqZBXfQuGWa8e9mcUTBNPI1kG2XxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR04MB11071
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i8JXVRFzGmJLqyLTET1MjvVu2GGv0KVTvbA5W52dQcQ=;
 b=HYaOs9e8UCN5pk1zryP3tOH9HIp1u1r8rqe92kmS97rz1tQiOa+3kvJT4EWsFwR/taJk7OUKHSrhh4Rr+iidHod0492AR35RA7Uc8uC+HzMqRmpD2HUAuHF1aS5+MdMid+Uy/U7ijT+44V7J7gqdMLnqs63ndShQ/398jdQRMYGcsmpM9/mRZTnXyJ/yAB81WqfVWdGNnoxTMulgENx1ZpN0uEieOvoc9pGHkzcdaMXDv9JlDG48OX9oI1YZOKyhFy/7oUV5lzaH9fcFnozGKzYWxxXUK1il7OWf/3QjNugin0F3A6EXWQ06LdxL7HSSdC4s+e3V2Nbe4h8+B/4K3A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=HYaOs9e8
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 11/11] igc: add support to
 get frame preemption statistics via ethtool
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

On Wed, Mar 05, 2025 at 08:00:26AM -0500, Faizal Rahim wrote:
> +/* Received out of order packets with SMD-C */
> +#define IGC_PRMEXCPRCNT_OOO_SMDC			0x000000FF
> +/* Received out of order packets with SMD-C and wrong Frame CNT */
> +#define IGC_PRMEXCPRCNT_OOO_FRAME_CNT			0x0000FF00
> +/* Received out of order packets with SMD-C and wrong Frag CNT */
> +#define IGC_PRMEXCPRCNT_OOO_FRAG_CNT			0x00FF0000
> +/* Received packets with SMD-S and wrong Frag CNT and Frame CNT */
> +#define IGC_PRMEXCPRCNT_MISS_FRAME_FRAG_CNT		0xFF000000
>  
> +/**
> + * igc_ethtool_get_frame_ass_error - Get the frame assembly error count.
> + * @reg_value: Register value for IGC_PRMEXCPRCNT
> + * Return: The count of frame assembly errors.
> + */
> +static u64 igc_ethtool_get_frame_ass_error(u32 reg_value)
> +{
> +	u32 ooo_frame_cnt, ooo_frag_cnt; /* Out of order statistics */
> +	u32 miss_frame_frag_cnt;
> +
> +	ooo_frame_cnt = FIELD_GET(IGC_PRMEXCPRCNT_OOO_FRAME_CNT, reg_value);
> +	ooo_frag_cnt = FIELD_GET(IGC_PRMEXCPRCNT_OOO_FRAG_CNT, reg_value);
> +	miss_frame_frag_cnt = FIELD_GET(IGC_PRMEXCPRCNT_MISS_FRAME_FRAG_CNT, reg_value);
> +
> +	return ooo_frame_cnt + ooo_frag_cnt + miss_frame_frag_cnt;
> +}

These counters are quite small (8 bits each). What is their behavior
once they reach 255? Saturate? Truncate? Do they clear on read?
