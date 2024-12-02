Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C7AD49DFE21
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Dec 2024 11:06:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1EDA607CF;
	Mon,  2 Dec 2024 10:06:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MzknedoYwU1W; Mon,  2 Dec 2024 10:06:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 813CB607CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733134009;
	bh=XerKtsjpv3BUWp8nrtkgV8pD8cTS2vNxa7jomy2zy7I=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5CMQfHPpKvfWGPExlRykZ/3TfJe+DxlrMNPDbtMpYm4c6+lmeSDG8jVYUEdsURxFj
	 7A6hmOag99xjJO0nknkwMUlVNPKvUg2zDH5iOxXj9uQ0RKVHv18uj0YvbEWDP+4foZ
	 VggMkjd6TBKJQRZWZJb5rWvVoIBnxXj6vSX8N2ym5H9joJn73sHHwqQuOGpcXiA/E2
	 vKnKNt5yaCV+o4nDftjW5zmpUudzoVwXuYuyfv051i/7qAj5FQ4ofJXC5Us2A2etol
	 JUoX42qVJUk7vk64QkU/Tr2daWC/ORkkCkUUBjHEKULOFO4QeJax6nsOQAnY56pCcB
	 lvcaCJasK1V0g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 813CB607CD;
	Mon,  2 Dec 2024 10:06:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8D5E31ED7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Dec 2024 10:06:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 77CF7607C7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Dec 2024 10:06:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DNvIeBJWO9Ys for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Dec 2024 10:06:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.162.27;
 helo=pa4pr04cu001.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3B13860685
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3B13860685
Received: from PA4PR04CU001.outbound.protection.outlook.com
 (mail-francecentralazon11013027.outbound.protection.outlook.com
 [40.107.162.27])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3B13860685
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Dec 2024 10:06:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RDDrnEMar6+VkIc805+0iLzKtbxmbg6nAk0mV+oZKWNDDyzREtM+ajc0kXEgu5Y28TG8qvCZ0q7ZcwuAqQvtI80WB7de8o/KTCZZS6uwEWSqWx00Fe47urqUY+ZBnvw+Xs05YmiufPcNtC6Dg6afyvjls8FfkGUBcBCNitBGDV+m8rv/E3MdQMNF47/bIYNTLoYCYWIlVXKRn4/EfFW24eA8Q68hFboKjI16sXMg1vvY3p01UPfGXuPIWPh1DgJvcEjNM6IiUFSuKs1Cu2sZPrQkF6+aLqOPt76sKNT+KU2N+JLmdWBcXjArd/g/Avv9pabX7a+e0u9CNGVMZseIMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XerKtsjpv3BUWp8nrtkgV8pD8cTS2vNxa7jomy2zy7I=;
 b=rXefeSCBONNxCjJfOIuT2IjDhmla0c6YkLHluEVlNeFYcRCYB3rcqh33bKIH/EF1eacXEXCJtrmxhOjALaYfrbGF1iApU+QUW5lwEs8AH5rBiwRmBXxJLDSDDT6oa4Q8r6fHtMwIb4QtiQGn4rvpfvaP5vIQwkf8a1fh6+jn7nC4VhAnODaEZjCxsZF3Gx715/P0e+eX0spwgwEXfN7tHQr6ssLybIewhmqxw+Nsqkl+gYBD9BZgpVaJJHfPEjO3mg5cdKullBw16aq6NAthXBKS6mK4WtkpaJmxq29pEqnN6DYbXuZ1UKIVlYY94qfE2urYwSDfxYHD+ArPwggjwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by PR3PR04MB7402.eurprd04.prod.outlook.com (2603:10a6:102:89::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.19; Mon, 2 Dec
 2024 10:06:39 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%6]) with mapi id 15.20.8207.017; Mon, 2 Dec 2024
 10:06:39 +0000
Date: Mon, 2 Dec 2024 12:06:35 +0200
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
Message-ID: <20241202100635.hkowskequgsrqqkf@skbuf>
References: <20241130000802.2822146-1-andrew@andrewstrohman.com>
 <Z0s3pDGGE0zXq0UE@penguin>
 <CAA8ajJmn-jWTweDMO48y7Dtk3XPEhnH0QbFj5J5RH4KgXog4ZQ@mail.gmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAA8ajJmn-jWTweDMO48y7Dtk3XPEhnH0QbFj5J5RH4KgXog4ZQ@mail.gmail.com>
X-ClientProxiedBy: VI1PR02CA0043.eurprd02.prod.outlook.com
 (2603:10a6:802:14::14) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|PR3PR04MB7402:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ff05c0b-fdd9-4852-442c-08dd12b9039b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?RIOXEroDTsZyN23B0cQv2bhqIfOy2Sf6VhGLYUY6UdAbERML/FmW4+aZciih?=
 =?us-ascii?Q?fb/ZWs2QHC7tSiSgEjMcqshHHLviGPzAMRuU59ki6LtN8jHyh+U0rjUJtv4s?=
 =?us-ascii?Q?KD4wmZuoc65m+EorY6Tds/+ZHgBmkBtKue2s/tsFcHQt2edTe9V1PaMjKbsL?=
 =?us-ascii?Q?aw621Zh4VF/AOyR1VrWk9ROv03V15aKoS8Si8KLt3K+1oU2dOBTpEAIBRGdt?=
 =?us-ascii?Q?eKEQVNg5MtXWBg3uQfkS+bAnM+bW3eCr7p4i45/EoSrCmz6TPpeGFkgxpera?=
 =?us-ascii?Q?QQmPOgfB0EsEQ2kulBmlwRQy5T1dqqyaPgn5qk+l21LLSErqOdcht2RlLsZ3?=
 =?us-ascii?Q?Nze/rey4k4p8wPp3LiLnUcuIZsKVX16wPidnoCm4Uby9N1VZGjiwxuFUUBql?=
 =?us-ascii?Q?zq2jGhqIa9LfJ/jWiwzwYjFn6cp6fixaSeLWeORuCkhqsGIRAJ7JmXflqLXJ?=
 =?us-ascii?Q?XG4yJd9Ie99ZSXEu/aGiqBCYqe28kDdVLmewMfLezsncAjPQAJmcZdf5yNAm?=
 =?us-ascii?Q?pc2kw20EDeqpI87hoQVi0y4WZNeMUkxoJ6E5GFlq3TgJzi92jmWqcNaFaP3q?=
 =?us-ascii?Q?LwCNuD1GXU5X074RzHoYN7gLXvJeNTs3rKNwU6tGaoo6jFFYFr+a7Zx4jCbI?=
 =?us-ascii?Q?2oaqsP1VU8drmWFEI5Jw4TXU8NEQRKKHlVM2HPe0qDHYc41fC6U3En2Fhp5c?=
 =?us-ascii?Q?puOf9fLAX7VDXyXtyUKuXmtCJsRNZGJcYCpaSQoZ1W03QnKaXdjaTzNpNFg6?=
 =?us-ascii?Q?N04kYRqfxvjLVRMGK3odVqawb3qWRfII1wamH/i+H2zZwRwahI/nc9V6jcGI?=
 =?us-ascii?Q?wjCcIPgMrynnFEJDQv5k1p6n2WgoqRvuq35+MUMzKJJ7lLKlCXyzoABy9/Eh?=
 =?us-ascii?Q?Nv0VN+uxS7xbsMszS1tzVTlaJl3c+MS8j+p57eq3i5HWVi/saEsydYQw/Kiu?=
 =?us-ascii?Q?Mp4JmzunaTzb94gICZI3X9LqA7sLOwpTi2Po4pxPNgPuMK4XDCfoc/7kQ08D?=
 =?us-ascii?Q?m1EboVC/E+llM0xl0ymSghxsokJWK9kIh3j19JTuSvNPyUpaUk3blOBhMKdm?=
 =?us-ascii?Q?kQeuGUh72ep35uSa13kOn8tt+djbLvPcO40bnjlKii5+NCGc41faQTyIrK0s?=
 =?us-ascii?Q?t9Gz4RzrvIwRESk/mxnZ4kwJ1uSQLO8ecP9cNFwtcFsBgUo4Qjcnqa9V716m?=
 =?us-ascii?Q?Io9/WyvdWl0+K088micWc0HkXsRETMvYxdNmD5cptXqK/9+JY03vdG/GdHSS?=
 =?us-ascii?Q?tX+6c0ork1MUMcU1B6vsYT0+FcGtbPTnT/5naKAO2ca//lgljXGifbFXJJz3?=
 =?us-ascii?Q?1Tk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR04MB7779.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4LxuaHrEq8bjJpbRCOEgquyJ0rB7eCjLXP1z0J7JVJPzHlbVLN1wP7qHGME2?=
 =?us-ascii?Q?F/pP1w2I0g4BjQ/oGDSzfWeS4qyaAzkRtosFumOIiSugIVUV5We/9y8+YqRG?=
 =?us-ascii?Q?8me5Rpe9FjcEDqVb6j/OgKScUx2xt0wgGHsAOtjbYxXkDxImUGrLGOhOwm4v?=
 =?us-ascii?Q?ykO421FF+ZspiIGLMZzUP+cZtsnLKNWKg4lovRFrWf5BbAUGFyyBdtFHINjU?=
 =?us-ascii?Q?3zFfJ65WfKCDiK+z2gH6Ou9jl0R0Ihu5VPXnDTTlx4R39me2U8U2d+Fzti7F?=
 =?us-ascii?Q?RxU9Lq6m4qKQEpJTBREt+E3Gpzuba3tWbLLliANIxRFZu8579Dm5UoBEQKGf?=
 =?us-ascii?Q?/+OY/JcRb0AoeZG1HN+Q0qGqaMLv2hBIuBMCUwE4muPMQZcE47DwysweFgoD?=
 =?us-ascii?Q?XsOz9xTqDZxIbSPPDkUm0XdQrTLbMVgsfx26eMZ97ruyrPCRi1UWUxZfhFC0?=
 =?us-ascii?Q?5yyOnq44tyaog8S+t8ygUko/HWFGtAsB707mhOREXrFLfhwkc2z/AqfCHgDv?=
 =?us-ascii?Q?Q/h8QOKTc57P/y/S4xA5i9ukDoKNT+aHOycDeICi5rScD1X0/K7a0WuCqhgq?=
 =?us-ascii?Q?lfZhDXP/2bhEd9D12qDeiQqmCsBPpXIjJC251PjnizJrvxMW5UT77Uk0B75y?=
 =?us-ascii?Q?8Klsy97dr8o/9FxR5dJQSev/fa5ZA4ClJwri/UZl7VkUhq8xAgYqQt6wWo9v?=
 =?us-ascii?Q?p7cum6+jF7jNVpr0/6Skf6LiZlpcwNQ5xYo1dfqHa6nYdP5ETx/7wBY7S1VX?=
 =?us-ascii?Q?Co1UivBBZI3wFPDgyzeMGCsK9vGQkC0fZnPk09/il9XV+hnCUN5pQhSlqYye?=
 =?us-ascii?Q?uFROb2AZO+I0xRpQDyYJXhegGAjn+u1R61/u5EhUha9isy4uk67FPeT5Db5k?=
 =?us-ascii?Q?XXJV+q0jECqt5lysaBVFBS9uV+lIHksWChqLj0DU3oaGXm5HFH5pWvL/fUbY?=
 =?us-ascii?Q?iLDpMVRVm0RS7Z/FlhnHvVEmOydna4LALc2Xu6oWKfy0QUfJ/85YzUEaV8OX?=
 =?us-ascii?Q?VK0PckHu6xZpcJgoS20B3f3/O9DQph4iKHSabYvJtQprbf9fIQY8mbYDFcg/?=
 =?us-ascii?Q?kcL5JBZEji/lZJx5xkyixdtjRkYyt72+YmmImOeTis8OEwG65eEsCSXz3MFy?=
 =?us-ascii?Q?9bP/XUuYGm3g4MxNfXqHRx2qZGZu0wj2E6wFndjR9mbl8oHHuysZbWlXhnvh?=
 =?us-ascii?Q?YjPcmSXuqolYk0IcOZQ+okXvMfyPQrWOWZs/TVdrARZ760k4Qz04xNCirpfV?=
 =?us-ascii?Q?h5qldm3HgBlhoceLHK8/T+/CHOLPnF0tTpkHxTzcKUdrWhjCw8U1LLiNYQxy?=
 =?us-ascii?Q?kDn+PBHL+5P/+4wXcs4cOZuya26DUfjGyaIeJdmD+IKxr1zE72AgwenMdWYf?=
 =?us-ascii?Q?mb5ihl/UOkLTlO4UL+hIzhA8/fgoVKOiDhSTqUfhs2sBBuwR8wDldiesZXJn?=
 =?us-ascii?Q?aduOCzzVHurgmsFvaKHRxkA0ZA/4xzvW0nZpo7bzOvSepGH4PW4ANYQ2jX+P?=
 =?us-ascii?Q?tE6cPg2rVu/LdwvfP9OppIvg7Nd6vyXPbyj+joXU1IkwYv5UicSEslSlLaGj?=
 =?us-ascii?Q?hKSdGKCtl0jncI3Qi707EIZFYvCdFQzDOdE4cPiNhB+TPbdddo8+HA6AvaWZ?=
 =?us-ascii?Q?Pg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ff05c0b-fdd9-4852-442c-08dd12b9039b
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2024 10:06:39.7141 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VZnn7qyaMDSdXpOEs8ty2qPaftd6Nz2LjoVBEK6VUesk4utYJPpXk1ZxnLl36wKucqdEbctpY+PXcaHBi48wjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR04MB7402
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XerKtsjpv3BUWp8nrtkgV8pD8cTS2vNxa7jomy2zy7I=;
 b=k9jur4wjtSBGzxlEcqW1DJQK54gZB38hbQ3NoLVwMjanCg51OlbOogxlSZi1WdKKuHHdpmIsR03nGBgRPkXCmygnT5r21BK7EcoxRM4n4sw4mar8zkPRX3mw7jkPAoRSYOLh3w54zDQe8qJuyDEv625VqogGoXdzlOiNMphqoak8W2R0+3tCrmdcEm5BhNgTclb2eUiaNRZlKpbCv4b+8vwPIMuVOaZQLqsoB0pXecfW5oJiaNw4c1MrRLFBWrFjbCK0TjOWtsZztT0L9cqPXv2NJaqDrNGDaQZ3l4WoljBFQsWDir22+dWZvCGp8eepm23UPfQvDkG3ADYdnT9YMw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=k9jur4wj
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

On Sat, Nov 30, 2024 at 02:28:34PM -0800, Andrew Strohman wrote:
> My personal use case is about simulating ethernet connections and VLAN aware
> bridges, so that I can test networking equipment that provides VLAN
> functionality with IVL.
> https://github.com/andrewstrohman/topology-sim/raw/refs/heads/main/docs/Topology%20Simulation%20for%20Mesh%20Testing.pdf?download=
> describes it, if you're interested in more information about it.
> 
> https://docs.google.com/drawings/d/1FybJP3UyCPxVQRGxAqGztO4Qc5mgXclV4m-QEyfUFQ8
> is a diagram that shows what I'm thinking about. This case is not about
> duplicate macs, but rather a frame being bridged in a way, such that it passes
> through the same bridge twice via different ports depending on the inner
> VLAN. In the commit message, this is what I meant by the poorly worded:
> "L2 hairpining where different VLANs are used for each side of the hairpin".
> 
> The diagram depicts a network where a layer 2 segment is partitioned by a
> L2 (bridging) firewall. I admit that this is contrived and not a typical
> way of constructing networks.
> 
> In this case, my testing system would use a 802.1ad bridge to simulate a
> VLAN aware bridge between .1q #1 and .1q #2. The problem is that the .1ad
> bridge would get confused about which ports hosts A and B are behind.
> The bridge would see them behind different ports depending on whether the
> packet was heading to, or returning from the bridge mode firewall.
> 
> If these nodes were connected with an IVL .1q bridge instead of the .1ad
> bridge, this topology would work. So it's a scenario where connectivity
> failure would be due to my testing system (topology-sim) instead of the
> networking equipment being tested.

What stops you from changing the 802.1ad bridge port pvids to unique
values, like 3, 4, 5... instead of 3, 3, 3, and making each other
j != i bridge port be a non-pvid member of port i's pvid?

That would keep the MAC address isolation per 802.1ad bridge port, and
would offer the same level of communication using 100% standard and
available tools.
