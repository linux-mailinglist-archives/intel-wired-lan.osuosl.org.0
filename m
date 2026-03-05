Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KWFD9ynqWlSBwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Mar 2026 16:57:16 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4E3214F6E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Mar 2026 16:57:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 901FD4056D;
	Thu,  5 Mar 2026 15:57:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BUMPCTgf06Os; Thu,  5 Mar 2026 15:57:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2A8E4059E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772726231;
	bh=xYrbe9JwLaxyBIOCausiiQ2WE9g4C2fiaIkarIPgLto=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=crzbpC5w6Dq+1gXeUrW+GGbxhAeFaUhoAp9277jCEmR2wc4UetwQeqLZ09Nhf/gP1
	 4yvq5ZUA+zi7gYV3+GfYYTP0j3RguyUPqYpWtRSNey71ciXrCcjZxE7epC7HhkhYXM
	 OkH2+OqcVoUUpdxdivC4FKwy+CLSqrdksnLnBieVTOSGQU/KmUPahBs2MdRexgeC6G
	 8jJlndrRxpqefNdRcAkpiytztaOaLqQtW4YfxPFD8fza8QrFB+MyXaXLRWUdYCugCU
	 +Y1uKllHM1yatzNtMva3KSvFQJg69sZOQP2cmW4+Z7kp30v7wPUIGOrUd5i19UVr+m
	 K4tozOPXujKIA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2A8E4059E;
	Thu,  5 Mar 2026 15:57:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C1790223
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 15:09:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B051D8221B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 15:09:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oKEgT4-mXGdp for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Mar 2026 15:09:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.162.5;
 helo=pa4pr04cu001.outbound.protection.outlook.com;
 envelope-from=frank.li@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 99BAE80E48
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99BAE80E48
Received: from PA4PR04CU001.outbound.protection.outlook.com
 (mail-francecentralazon11013005.outbound.protection.outlook.com
 [40.107.162.5])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 99BAE80E48
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 15:09:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xky7/AV14awUan7E/CPk7lJ0MU54VmL1/talTB4eWQaGONTU55jxbnoq2IqLNdN8Y/HVGGcm30auI1EQaJN3wufPLmREJNbo0cYHz/KWBbwW2dCnUhCvwDAr+Pm2tUorQTOuZiVz+SJGVXeCulknjJsnrSv950b+u3vJCDhKvk1+CScNG10a3r4v9aw+Z0pQgrX+2xbFn7y6bEeLqU4T4Y79bkhkBYDSSWhGetK+f22YkaXoqt8TAKiyufTp2eg11RWUJpT3XjfmguQFFDyOINKl347/GjW7Kv8ApptjNrszys5ZIRfpAcIv7KgglNAy2aaVIdYxZ/rysikiYTssbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xYrbe9JwLaxyBIOCausiiQ2WE9g4C2fiaIkarIPgLto=;
 b=f1CZKpDpE/lXoyu44s1iqO4Gub0+D7Eq2Dn4YOUPx1zPz8ezWBfDBsBpfJiD86MolprakyQ7uG2unro1KeGEYDX5m+t0TRO3XyoXOZel81r3xbRPcQ84nvgD5vXRZOXLdmZQ0b2Vf1eVJiGzWNUHk2s8EcvRYjfAKEt5Iad23R1wp7zDSMn2gMt8ssl0KrAUfS4rFg46ktmUTCRaLx1ebEOH+9R+jZAcwRBx8s0QoKZ5YBihKBZpcmz0BAdlwrFuTy72rnfDmJgyT9vo/IoEejYrmeMRZjOFc2GPmvVhZFJugER9oY/h3eYIrfmnVpmTfmCLcYf47RprgQM/1SAxTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com (2603:10a6:102:2a9::8)
 by GVXPR04MB10563.eurprd04.prod.outlook.com (2603:10a6:150:221::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Thu, 5 Mar
 2026 15:09:26 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%6]) with mapi id 15.20.9654.020; Thu, 5 Mar 2026
 15:09:25 +0000
From: Frank Li <Frank.Li@nxp.com>
To: netdev@vger.kernel.org, bpf@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>
Cc: Frank Li <frank.li@nxp.com>, Larysa Zaremba <larysa.zaremba@intel.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Wei Fang <wei.fang@nxp.com>,
 Clark Wang <xiaoning.wang@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
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
 Yonghong Song <yonghong.song@linux.dev>, KP Singh <kpsingh@kernel.org>,
 Hao Luo <haoluo@google.com>, Jiri Olsa <jolsa@kernel.org>,
 Simon Horman <horms@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 "Bastien Curutchet (eBPF Foundation)" <bastien.curutchet@bootlin.com>,
 Tushar Vyavahare <tushar.vyavahare@intel.com>,
 Jason Xing <kernelxing@tencent.com>,
 =?UTF-8?q?Ricardo=20B=20=2E=20Marli=C3=A8re?= <rbm@suse.com>,
 Eelco Chaudron <echaudro@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Toke Hoiland-Jorgensen <toke@redhat.com>, imx@lists.linux.dev,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kselftest@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Dragos Tatulea <dtatulea@nvidia.com>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Date: Thu,  5 Mar 2026 10:08:56 -0500
Message-ID: <20260305150858.3910822-1-Frank.Li@nxp.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260305111253.2317394-5-larysa.zaremba@intel.com>
References: <20260305111253.2317394-5-larysa.zaremba@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SA9PR10CA0001.namprd10.prod.outlook.com
 (2603:10b6:806:a7::6) To PA4PR04MB9366.eurprd04.prod.outlook.com
 (2603:10a6:102:2a9::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|GVXPR04MB10563:EE_
X-MS-Office365-Filtering-Correlation-Id: ba478947-745d-452c-d5f0-08de7ac93023
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|52116014|19092799006|366016|38350700014;
X-Microsoft-Antispam-Message-Info: fGNTZp2H4dIf8+v9ScEmN1XWDWOHlXO4+1i8SYoTVZOuZ/SkUsC6iDg2OhSpUnMv+PdC31RwBB/iSzYEDsK79qOhC9OiZvppJnyXTyTPtNi7kmFzfA3NCpGB7amhCpX1qloAGT5ax1O+9t2xxafbz0WPbAd8OhtrgV2xYwbVPdVPCObStbIC4ePlaEQpB748ZOmc5mlD/RfrdtXotkmlWPUOGOt3WfnXbLq5bHVwzUGXRnoQOwL0C4AaPBYMcH/BBQo5lCHr3Aw875UbJlAJPc8r/CHhz1O/on46GSLrXE5Dn2PotLBMQQHAkWGmbnVZ1uPkI6vEdlamPByeC88dmHgxG3QqKzuCVP4Nsyr0gVmCXh7ewrguna6xP4+bDnq98J8HyvaqDvuxB90tddnQ8WccLxi0H7EfDU8hXGjdVEj71xwFyE/4LrToTGBA3YbAKG0YQoutBmBmgxNyhm0seCleG1HAunkxINnvbHEK7wPqHf4iijq0qEVH0YgCgP/P2BBcCV0GNV8mB0VjT3jSNVAJtm0hGemGVCEgInQIoEw6W0YyyJYyb2t3eoVUGCeDNaw1rlQJqLsv6QLV37VujFCgCaLa2cd7MxAX07BllHSALdi3AnxJ4ZI7zzK12PAAJDq3BRWzuj7SXauT+JA2DJLvz8ZUsuPOWzE2ivG9EBryBC3O7QWROWVPwrHLtNFlGgrNW0N8Ia4U+ujunyHdMgT6suzGuNN2JTWQhMnqwNMWhR/Y0l2x+HV+DTNCeL7Fgx7DAWbsV5QrTJmJ9Q9eKnqQAKV5DtQL9g5EKLEPF04=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PA4PR04MB9366.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(52116014)(19092799006)(366016)(38350700014);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KIb9JUbFBMocWYasXygHlNjr9nQEPuh18VD4j8Huaio2GMmlz23YJSDBSpeD?=
 =?us-ascii?Q?M8FjTEF/s4YS8BHTCPgB0r9IS82h4HtG9rnns9kDVBJCNLFAbwYmTTGeYHnv?=
 =?us-ascii?Q?r08fwe51boAfinhljZlRRowCuoy8HzfTLMVXkohFXeVx+yXajSizlimf1csd?=
 =?us-ascii?Q?G7drVOw0F90nbYOKXcpghoKXZLiAPhio8mx9LkKaMSLU3SaKQs7V9hNvRyk9?=
 =?us-ascii?Q?QRvhOCxZ120HTuywCJ2PWM7k+KXQoK0W8JnH2JG4jTYi/ZdHNytWdZzfWsUW?=
 =?us-ascii?Q?499FxxhWmiZAlGAHA7WqZJDFRHIA2shoOLVURQp7frbErWYUXsyO1iqc0vPX?=
 =?us-ascii?Q?+tPVY9l3nETcYJklxwrqteKBiZ+N28SKPwbCyRatRltQetXSREUMIkaocn/s?=
 =?us-ascii?Q?qw706OMYhKJMwdBOdE1BsMqKTdoyyQ+aLyGcWDajkC1lcvurz26OpPLxH73s?=
 =?us-ascii?Q?Kkn5FtCUKR0yHlfVqqaBMy9iex1/8VB88K6H4zXB2ZO7xm4vcGRRLONWfmad?=
 =?us-ascii?Q?rsQCLp2vTaSwSl6czgYAlYA+dmlByuYWm7a7i71KbAU2uLgBAswIbZ04nL0P?=
 =?us-ascii?Q?2TRRea1Zcugdkft2iXedOh3B2iANH+g9F6r4jTkd99pHDFmXvuaFZxkUeP3k?=
 =?us-ascii?Q?63hZ5rJuj8C6SuIuflLDk1SRh+5nzb4hpT2auiOBvNY37YaLcAdNXOyFMpZC?=
 =?us-ascii?Q?QJ6Hkksyt6b83zen3knt/dN/F6cCXk9ZfqT+ida4zniVoWBBBL51zz2SBXRx?=
 =?us-ascii?Q?+03U/5vqPORmpbMMoW2yaXlCW5qeyP5W7y+aqh3yn/rX9G0Aer8icRTdTQVN?=
 =?us-ascii?Q?s3W5HM9P+DpmK3AIYS3fkB55urO9Ugj0pWLhbathaRID4pSN+3A3+xNvkXOa?=
 =?us-ascii?Q?k/2LAjEmiOQS0r3DydgAnqxvnq8LsqtKxf6RUQUh3ygCqMZmmSzDqRtAFeKW?=
 =?us-ascii?Q?G1HbJ8iD+xm66KqoOwMwvnuyP8jJ1Mg+cked3h533xL2qgjSkqspGgRsPG5/?=
 =?us-ascii?Q?e31C4vFwz/pcoF6jf1dVGIZXYjXYov7fyp7oECSNJiO02EeGf5qvQdEvQPjh?=
 =?us-ascii?Q?TaP3ldYajBjlv4V1TMm2FxiLvBGLyukBPAEbpIb+6gV4j9vPIE9bt+uDU6lr?=
 =?us-ascii?Q?srch9VzeN3YDAwV+a/E3WEC6UvL5O6Kz/NOdU+Igk0X++VMYzJrJMeqsR0eq?=
 =?us-ascii?Q?1eIRJv/PGSC4j4rmd2RFSJixjtIx5LYazL6HT3ZrFX+isQdM2/wk19VUzeYs?=
 =?us-ascii?Q?lQWjtgmhKWCH2qrHhsE+5iIpSeHhADRxk3DNU67+MJnKqZf26mhj/46FJCrm?=
 =?us-ascii?Q?8VMchpqx6EkQkCyAbYAzzDPM5g4eYoTj4qtyXjol4i8PHe1BO8W7ESfYGhyb?=
 =?us-ascii?Q?zJ5H393lkO52EECVzeA35vuu682WjtXEuWrAmBuUQvn2tXFdJByJS/G86xY5?=
 =?us-ascii?Q?ZVtftgXNmcSOv02uuxkcwYO6m602jkCgzFbmkEzVcbF4imqTQPX2TYVAv+1c?=
 =?us-ascii?Q?ROL3/+/Yco78GKmemRMx0yrDlBscMj5QNOWd3QtC1jGZxAT4taw2vW00Sdu5?=
 =?us-ascii?Q?bwkxVq45XTth2egOU/nQ/rAcznGFq9NRdPIBVQ9asCfwIvzC6fHVkUr7gTPa?=
 =?us-ascii?Q?uVfHk2/2NZCkzXdJUy7GYjwzRUqZH/d757TI2dWgCszA1GpNOSrEMONz+oTe?=
 =?us-ascii?Q?3Cylw0sOlub+A3v3S6vz1b9oKw3lSL8LMW9+ySAPUbYjN5+AELIlyVYY1ntb?=
 =?us-ascii?Q?Oa+AkhYdvQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba478947-745d-452c-d5f0-08de7ac93023
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2026 15:09:25.5166 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KN0h1fTucAuGnrTZIXiV11M3jkSxQQ4q3OUKOcsyArllUSRgqbeFZ11BJU2r0gNcwzNiB2hpMJipiCQccZAmXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB10563
X-Mailman-Approved-At: Thu, 05 Mar 2026 15:57:10 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xYrbe9JwLaxyBIOCausiiQ2WE9g4C2fiaIkarIPgLto=;
 b=ClPGH7ogqkUQpoOhBjFxScU3jcTQSUcjL9xnxu70grWqJVgHR60voAOqzOxVs0ZYFVHbvFwoDISj+klfijSiM/KZ+sfds4gW1OusvXD0cYjaeZgFDReo2pqA0qU8ffjdngYwL33yEUzvRqV6pDCA6ob4s6rrHMNklbbc9YcdD1jjsJ/OFpBV/qabCpEa5+Lsc4O6r6u0AFvznLmqIZlzUzbE8VBAZFU2ERAvY3aWwh++y6hwug1dtsGOpifc9S0PjLDhmYtgchMFPOejM1+3VkPyN1M4P5OboqbKiEMhqvxwIqnHLdi03TZfYXojAezFMaJApNV7Xc7jn9yNFvqYmw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=ClPGH7og
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH net v5 4/9] ice: change XDP RxQ
 frag_size from DMA write length to xdp.frame_sz
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
X-Rspamd-Queue-Id: 8B4E3214F6E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[46];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:kuba@kernel.org,m:frank.li@nxp.com,m:larysa.zaremba@intel.com,m:claudiu.manoil@nxp.com,m:vladimir.oltean@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m
 :aleksandr.loktionov@intel.com,m:dtatulea@nvidia.com,m:magnus.karlsson@intel.com,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[Frank.Li@nxp.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:mid,nxp.com:email,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	FROM_NEQ_ENVFROM(0.00)[Frank.Li@nxp.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[nxp.com,intel.com,lunn.ch,davemloft.net,google.com,redhat.com,kernel.org,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,vger.kernel.org,lists.osuosl.org,nvidia.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

From: Frank Li (AI-BOT) <frank.li@nxp.com>

> 		if (ring->xsk_pool) {
> -			rx_buf_len =
> -				xsk_pool_get_rx_frame_size(ring->xsk_pool);
> +			u32 frag_size =
> +				xsk_pool_get_rx_frag_step(ring->xsk_pool);

AI: Variable declaration should be at the start of the block, not inline.
Move `u32 frag_size;` to the top with other declarations.

Although it allow declear varible at any place now, still perfer AI's
suggest here.

Frank

> 			err = __xdp_rxq_info_reg(&ring->xdp_rxq, ring->netdev,
> 						 ring->q_index,
> 						 ring->q_vector->napi.napi_id,
> -						 rx_buf_len);
> +						 frag_size);

