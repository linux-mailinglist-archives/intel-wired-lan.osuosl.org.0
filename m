Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oOcvB9SeqWnGAwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Mar 2026 16:18:44 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0491A21457D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Mar 2026 16:18:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4BD9240400;
	Thu,  5 Mar 2026 15:18:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zAm3UeAOxvLF; Thu,  5 Mar 2026 15:18:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C17FB40C30
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772723920;
	bh=G4wzpP/45eN+GF8P9ILbqb5k11Y/5669qUeSiq2cTQY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hPLHSggmw56Ev8lwu7rWwh+q2ohA/fR9BioBUNEbmxwnqtZ5Ht3r/LbZXCsjRNeLM
	 Csk+icFqUWYbjbtiXC55IQ14XdFIp4SBpMtGaGhYVpNj9wFec0GcQpe/hCULvpZxCX
	 zNsSHBot1vreoY8QurC2DxCzz3icYK9MzRWoqvq+1l45EjAj3FIAmWnF02YqqISnHl
	 JaUmD7jT6BHcdzR+dJ1pJ9kUWfksOb1pZp8e5zQYf0DKFexCa6CG3+ZrKVZbbYC6sF
	 nardfMXXCHHb7LGVmZYhyrahHLk0uF6LDfv4CgvmjkB6KrR+NkJGZyXtxnNlZ8tlGh
	 uiZwk8hLfTE0w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C17FB40C30;
	Thu,  5 Mar 2026 15:18:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C38C525B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 15:18:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B5147821DA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 15:18:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ztNyJG_5P01P for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Mar 2026 15:18:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.72.57;
 helo=am0pr02cu008.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BC78F811A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC78F811A0
Received: from AM0PR02CU008.outbound.protection.outlook.com
 (mail-westeuropeazon11013057.outbound.protection.outlook.com [52.101.72.57])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BC78F811A0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 15:18:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CJ9cf4fr4r5M8VDq2iIgSXphFuYcFLLfbK+tERxbe6cAYCjNzHJJMPpq7r3KRUveGKcfiKYoMa3yr5ZdcoxoGt/B81X7ClxXsXSi47YPALHun9s0DCJ+5XpGyMrJ93qtWjN3UIBniCYBkEVjSel590JGLNyHgt58Mf51QFUxZsWPgHY7U+qTkYpEDCiCs76s8JE6lMfylJSULOO3M/Ptk+ZG6gNrqY0XctdXExikaITF0y96L71G+gF+iIrzCgu+bw6vSZQYX61uKdyAwhECZB2dADftSBybdgsjivMBC4QC8my6OYM86/3FwZ4VTwJhLOgV99VyjJHO4hdkJ7a2Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G4wzpP/45eN+GF8P9ILbqb5k11Y/5669qUeSiq2cTQY=;
 b=u3EmiWLpwsVPnWqgqZL4RbkWXECGC7D0K0ak23pKw0PeDqbQI5a5LvSJABifat7PacvL5Lfw4IBrUhFu68bcy8b6ZEQvCt9CMo/HRdRmxcRuIdKKB66u1Nv0s/Og7uWwwhF8XWzgXpO1p4/lWFCo1B9ahn8pDya8ctCHVNYZzs8Svha5JaA5DgbDuqXQmpdumkcX6bOacQNwXmiRFApUivCbFkm8xhvQ9gaxyVhp2eSEkKiZu1WxS6Shs1btbmPB78kTqEqaioYKdElvJR+OVj77QZepPLn9tPncWSpOVY+VBdp2YMbzLt7lDxK5hufuhfGImGI8MieCMI/9+4GUYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by PA1PR04MB10360.eurprd04.prod.outlook.com (2603:10a6:102:44c::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Thu, 5 Mar
 2026 15:18:33 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::f010:fca8:7ef:62f4]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::f010:fca8:7ef:62f4%4]) with mapi id 15.20.9678.016; Thu, 5 Mar 2026
 15:18:33 +0000
Date: Thu, 5 Mar 2026 17:18:28 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>,
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
 Ricardo B =?utf-8?B?LiBNYXJsaeKImsKucmU=?= <rbm@suse.com>,
 Eelco Chaudron <echaudro@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Toke Hoiland-Jorgensen <toke@redhat.com>, imx@lists.linux.dev,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kselftest@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Dragos Tatulea <dtatulea@nvidia.com>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Message-ID: <20260305151828.2zvcp7nemmt45iqa@skbuf>
References: <20260305111253.2317394-5-larysa.zaremba@intel.com>
 <20260305111253.2317394-5-larysa.zaremba@intel.com>
 <20260305150858.3910822-1-Frank.Li@nxp.com>
 <20260305150858.3910822-1-Frank.Li@nxp.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260305150858.3910822-1-Frank.Li@nxp.com>
 <20260305150858.3910822-1-Frank.Li@nxp.com>
X-ClientProxiedBy: VIYP296CA0011.AUTP296.PROD.OUTLOOK.COM
 (2603:10a6:800:29d::16) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|PA1PR04MB10360:EE_
X-MS-Office365-Filtering-Correlation-Id: 8fee2a84-e600-4eff-b07b-08de7aca76c8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|19092799006|10070799003|366016; 
X-Microsoft-Antispam-Message-Info: EGWGZJoGxvVcWHB0P3y2+SoBzsKDI+sXc25LTQLY1CmeclMbLj6ONKlwfH43jp5aJCBHNNDApBVK7lpL2bmbTqFh7PNo/r2u1Vs7bXvH8h5HKWYWBs0Yy/ssfS4h7XAq3gz6iVhJi+PDwBrk0Nm3mWjx1+IrZQrssntX9ETlADJ9eR6SHpgL31MvVW44LpFpwh7q2MOPVbA8WO0DuVk3wFGn3JP08nj7vLoJr0yJm9Ms0Jt+m+72OZk42R+aTDkqtfzf7ig86gVG9hkNyC51RytBsP4rMs7B7bXcIZ6pHv1ZEBBQTF3QeSHNaFlAX45uW2+H+49E3zHPvgW3Jqb5Ag33dfGtn4oEVs3J+WQmcgx/BFAGGjdUinny87XiR1zRv1ncTdq034Ah7uHR5fPeepsd9pb4p8+BqaC7eVTWg74+26T/Q9lf11M5m8CVbEddn3a0zkTpMAQWhBtunQAFsCXsIjLPmdz+1NjzNwxET10GstVvG5O49xTj5Ar2KAOSf1Gxu4mG+NA5gvTm0NNDL1YDtX1EJ4WwVqIN4AB53StNiXF3ZBzOs0J4ACo8Km55bB6OaXoXqHQetHeVldBDss4dDdqTvhJrG4F6zA7Y282WFZVMJM48npmJyaotwtn1bWaPgeSwSCPmgZwRsI+SUvnRl6P1LToBdd2TSH7/+B1HTvPLQ3eMhEg20Win5m6eQqRjvk5hCznGoLY4HFZGzjWzuo719KpmHOjdZwJrEz4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM9PR04MB8585.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(19092799006)(10070799003)(366016);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3wEoZ2D7LaTSk3yu7/+LcQwpnY9o0FkbWFnhnNbH5IxhHLtIb4ezMaZv9QtT?=
 =?us-ascii?Q?xavSDRKWZ3drJ3xXOe63KpQQWhcTVXg5PTUGsPWhN5K/TOwVfmN/N1hWsX8K?=
 =?us-ascii?Q?lcw6Lhdez3Ru2wwzE1lKoujG6clJ32U2Bu13EiV+AZQskrDeRHN1k5SSYa9F?=
 =?us-ascii?Q?fWieCpg4I0fJP8qyRXe2kjDH9iDiBDnXKz02vstBMuz0Oj7NT9SNmdmhYGl9?=
 =?us-ascii?Q?tmBZHwHhBJMgIkfC4yVUyXP/HOD2Ktr5seBn0gkE4H3rxboCXVf/vSDFRoUo?=
 =?us-ascii?Q?XOSO3NQr+DKBSa1cDEge6hMRVbxVqHF/dUQRnI3PXfP1jHZVHB0ybTRhEdH3?=
 =?us-ascii?Q?OgA/nzC34sjSrCyRNrHAaUMPJn0Pwy1c/hyRYq2W52R157/KdpxmAGSJ11Oj?=
 =?us-ascii?Q?8V737z/0L9ZmovAse+Oalals005HwpdaxT6ZZzC7Kv4pq08pud13SNYjbkpA?=
 =?us-ascii?Q?cSYj+gEaVh5mpft+1kHPvduj3eP93Bh3/HFIdeUmhF4sploQDXIwbY5gGYRW?=
 =?us-ascii?Q?Y7UshZVnifcaG/Sj21b62qWb4WMvC6qH1fGAMKH4g4xs9LG4otmdohYFfaDl?=
 =?us-ascii?Q?OBbitynI7zw5/bKywsiUaRbn7s7FjqpcKwlW81NVAwjyhMNnWSdHuNiwoqCl?=
 =?us-ascii?Q?X5WDHvtde3Ro924+Zq5iI8a8nedxDFF0K/Rb9y+SRL8HpJ0Fi7Y0CH291ewl?=
 =?us-ascii?Q?skY9HILNBnsENIVdAaJx2zjGM5Vn065d7qDBIXFXY++BSuOPru/rstP/DF64?=
 =?us-ascii?Q?xDRbuC5B68Va02fiJPmI7SwWcUBB4ci6lWUIO0bmc4iw0VjSik1enBYekPlr?=
 =?us-ascii?Q?PI06u0CHe62KqDNBcPndBf8sF4BX3a2Z3cmYoVeAXODAvt+H6O2sofZDrf02?=
 =?us-ascii?Q?KeorY4u/soAW3M0zXz/gIfbpjo9p4dO6Nl+zpfSN4dCSSyWStPEV41+kZ70w?=
 =?us-ascii?Q?g+Z6Ak5SmIo0Ucc+eo9z9p66mMpq1/1Wba+Pd52JxXf6NGkY42aBszdIXKDd?=
 =?us-ascii?Q?rg7BvyCH6iyKnjVXHLXX38AbQbmMCpNs243JR06uMk6vfFxx8isB7b/onEMg?=
 =?us-ascii?Q?UFdPPckHbCLzgcdRWrBfKu5+U+Bk/l6kHQGhmrVBRVYwZK+b2L4BpvPLTcxa?=
 =?us-ascii?Q?CUQKBqyUsLjJhIDKL1r/Oh7D6gf868aGalYNnogHTsCPnevt1n0hT54qfWyw?=
 =?us-ascii?Q?+CoFaMQdhMsv2yHSuxpi8AKnZS4CtFuLSuUhK6fH98UKVZyIPmbFnRHHsf1k?=
 =?us-ascii?Q?1nZ+3Rqo2gEyO7YjGU2zEJU1LnmpoP2qhTK+D+49Ng4IliOLPQKE3UNsZjsn?=
 =?us-ascii?Q?V4bz3UTwYI5+XQv/cwrTdg/YZFV35lnzf9gjcEyz9mcRhuwe5QNffFZd4hh9?=
 =?us-ascii?Q?XkJzve9Tgw+qp/pQoc/DkJkak47Edi1Bc7wGnHS8/rl2o9eeP+l+bqufzezK?=
 =?us-ascii?Q?k8b5A78z+NGWcDVfaPwOsm6FkeJGszNO4k2lfrsgBdG+2V0ZrQnaAhe0MLqK?=
 =?us-ascii?Q?cDHFgX8sslfTHnj/+9vHFEGiaEEcIFD068/epQL9kqz08UkPRxaz9dEc5N17?=
 =?us-ascii?Q?SOX2RsAa4kgYO6qdnPI+BqWANk3duhohZTk1e7DWhrQmDq/gWA4AOdohEW2Y?=
 =?us-ascii?Q?41rDeQE6erVIC7p8YHERtA4O6QKPLX/CNon7vvI3F07mRYpDGSCvr8Qe3w0K?=
 =?us-ascii?Q?i1XIkWZeCGXCsRt/cRWU0f4H2bk7OYBiCCVrHZWj+3hAP6Nj1h0b3ZPp17im?=
 =?us-ascii?Q?/7cJ+aBIxoI/TRhAL7E24XeDtNfCr4q7up9YkYQNLxV4xNrcWzCP/MIwssVs?=
X-MS-Exchange-AntiSpam-MessageData-1: LN6Dq8IkfusKIJnE5W/PCDdkCwidRrZd6Yg=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8fee2a84-e600-4eff-b07b-08de7aca76c8
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2026 15:18:33.2917 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WqR4ebIK4HgEiHs5uUyg9aEmrVIlIU9mAKGzpZnP4xZooNJ+Ft5mLpVZEsg0cFkZnUqQxKoAcpWR9o/MLzT5ig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR04MB10360
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G4wzpP/45eN+GF8P9ILbqb5k11Y/5669qUeSiq2cTQY=;
 b=DaPp0uBSIu/CzZUggTZs5Zy0bCS2WtSms4btumLf/navBGczOoD/Fnz9AMt0Kki+NDQgC5w1Eh7rxLzjbTJtEO22nzd2DZGfIHM/S5/HwhYLsbDISCKaS32Kg0ZMVbsTe+8hE57bQJfaXVaFoi3vYVtIp4QwrgB3/v1ni2Qtse58G/B+ufk3ak6Uf2h52wtUx+BboCMRLJUng/tSUN8Q3ncd+rwvtplhqvENpXcBWIGT7lq44/NT3cHBSPVJQ22eWwJOFpPSRVk78LHTwBpGwmiSM7yX/6BhGN/TiBriSbJz6ZEtPOQuVm60SkjVPXijxgFBqCjiuADYMmmW+fzwUw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=DaPp0uBS
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
X-Rspamd-Queue-Id: 0491A21457D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[vladimir.oltean@nxp.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[45];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@nxp.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:kuba@kernel.org,m:larysa.zaremba@intel.com,m:claudiu.manoil@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktionov@intel
 .com,m:dtatulea@nvidia.com,m:magnus.karlsson@intel.com,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,osuosl.org:dkim,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[vladimir.oltean@nxp.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,intel.com,nxp.com,lunn.ch,davemloft.net,google.com,redhat.com,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,lists.osuosl.org,nvidia.com];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Hi Frank,

On Thu, Mar 05, 2026 at 10:08:56AM -0500, Frank Li wrote:
> From: Frank Li (AI-BOT) <frank.li@nxp.com>
> 
> > 		if (ring->xsk_pool) {
> > -			rx_buf_len =
> > -				xsk_pool_get_rx_frame_size(ring->xsk_pool);
> > +			u32 frag_size =
> > +				xsk_pool_get_rx_frag_step(ring->xsk_pool);
> 
> AI: Variable declaration should be at the start of the block, not inline.
> Move `u32 frag_size;` to the top with other declarations.
> 
> Although it allow declear varible at any place now, still perfer AI's
> suggest here.
> 
> Frank

A "block" or a "compound statement" in C is the piece of code encircled
by { and }. We _do_ have them, so the "u32 frag_size" variable _is_
declared at the start of that block, as a matter of fact. There is
nothing wrong here, the variable placement is not arbitrary.

Which AI tool signalled this?
