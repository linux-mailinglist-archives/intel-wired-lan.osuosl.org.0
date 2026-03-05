Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MINQFdynqWlSBwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Mar 2026 16:57:16 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 40690214F6D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Mar 2026 16:57:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC68B81213;
	Thu,  5 Mar 2026 15:57:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nnfdoqWa2a7d; Thu,  5 Mar 2026 15:57:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 377E7812A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772726232;
	bh=GiD8QosHTo1pYhsdB2T4PoPERyG1vEN0yuWZnLtNRE0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=A4u5l5j/Vr73WlYng6FJ5T1pEXYlhaGbFBMJiWFTzUYDIRKHExDRRdFC7WKez9U6o
	 CDwx5aWMY1fD9t0aoBa17dEgV7hxS3QGmyqwFsmEWQWdcg+YihQRQa5MXFyNN3DJjS
	 DA5W4rxSHV9IIMZl3jmaVItf+z/wwx7KrE4JTq6Cil8OhRqTS1tBxgbLOkZfmVEevz
	 fCbwJ2HKTav5mi89HZw6n3tbQo5K0ImwIakSHTV3hFtlc/p7d8K0N6i6alyW055Uai
	 +p5NmmEvEMHc+vABgrnQ5Dk+9/M7/na8WdRWmMc2d3NJTNeuH72gvwAAj5vsppwPj8
	 ZZVQaiE4pAO6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 377E7812A5;
	Thu,  5 Mar 2026 15:57:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 099A125B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 15:25:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EF42240BD2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 15:25:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id voU7SCpBtrQl for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Mar 2026 15:25:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.69.27;
 helo=am0pr83cu005.outbound.protection.outlook.com;
 envelope-from=frank.li@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0B03A40B9F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0B03A40B9F
Received: from AM0PR83CU005.outbound.protection.outlook.com
 (mail-westeuropeazon11010027.outbound.protection.outlook.com [52.101.69.27])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0B03A40B9F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 15:25:32 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IMQ7dPrKnNAadCvJ/TRWNxhleL6YmVWIgWpPmunZ7P6ZWPsiFIhVVNuFCCZ/YHJJ6/NDg6dhaT7hq/SZ2o9fYR3/qerHdF35arW/EdwGjraosUmACdQG1qPZpxPSSWHfUC2tqjnhA69gkqwDGUshgnb3XjtUoxig5psVN5LmQX9SBtU9xKpTJWeWbyhXhsZ/xYeMthLZDKP3ZjrrcBbE5xC7kw+jq75BLpXhYtJdbfKLJqEkSINBOR7ikcybDIQHBi/vqEg5wmc2TxA+Vi3O+5AjzJ3rOiEL9Qdc0PQ3yMFct+SOwA5S0X+MaS19HkxYORPZzdcZKBIe+pmsY9sBHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GiD8QosHTo1pYhsdB2T4PoPERyG1vEN0yuWZnLtNRE0=;
 b=mM3IdEwWOSM0AV3g12PsWQjnjCvfDeUBkNXLe57/kaE4QJlHWbvxAVBDQ3ZXHd3tVpBImIn54s1WRjRNBy9i926k34irMyIVrw2ExjXqZReXDAUBbwixYTsFr9moRqdzO9yFgZlSQKNxjGRYMDxxMgNs1CR2iKRf7Xln4CMETPxRZDYc81wMy77Dfun3ngFAaFWAPlq+lzy69LZJF7m498+khJjYFUmQ7t346Xxc0UEHN7ZAoOuKwf+NKROrb65wKQKA4/t/IDw5AHoKMFAHSCOvifbSZIYj2tD5lvq0N9zgzFuwJPVgZ4C7utESBa6IfESc09BscOojpr219oeoRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com (2603:10a6:102:2a9::8)
 by AM9PR04MB8438.eurprd04.prod.outlook.com (2603:10a6:20b:411::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.17; Thu, 5 Mar
 2026 15:25:27 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%6]) with mapi id 15.20.9654.020; Thu, 5 Mar 2026
 15:25:27 +0000
Date: Thu, 5 Mar 2026 10:25:12 -0500
From: Frank Li <Frank.li@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
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
Message-ID: <aamgWISV_4FkxHag@lizhi-Precision-Tower-5810>
References: <20260305111253.2317394-5-larysa.zaremba@intel.com>
 <20260305111253.2317394-5-larysa.zaremba@intel.com>
 <20260305150858.3910822-1-Frank.Li@nxp.com>
 <20260305150858.3910822-1-Frank.Li@nxp.com>
 <20260305151828.2zvcp7nemmt45iqa@skbuf>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260305151828.2zvcp7nemmt45iqa@skbuf>
X-ClientProxiedBy: PH0PR07CA0039.namprd07.prod.outlook.com
 (2603:10b6:510:e::14) To PA4PR04MB9366.eurprd04.prod.outlook.com
 (2603:10a6:102:2a9::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|AM9PR04MB8438:EE_
X-MS-Office365-Filtering-Correlation-Id: 87b89c9f-f0bd-4a22-9ea6-08de7acb6d8a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|52116014|19092799006|7416014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info: kYETtvjEOb6lmG7A7V/IXP5P0/R0WEb4Iv4RxH06IWPnTovvrYMGc9W/sTfhY4kNbpbvEjGwIDhQuwtJe/2XGYbqL76lTJsjIfBPQjcUJGmLHEWdsomWF9MI0UkRmrT8N2r8hxcx6VWmUEa8EZq631q7IiyNesAGsWiTGvxSaspYYxRg6xBE/IvmEI/AkzKXnroTnf54DKqQRW2SDWE1DyjKiEP+TBiVdWhhU131OtMEbroX0sooi812pZvFVZzyZunmr0XIlsuP2cMIS59zVKR6EeWUX5JaHi4sqQLidDdiJDMYUO7wgc5EoCao7Rj7+EJVfawrDp+5HnPYNWpNTFiGzCP1crfhzGRGYgFbJh6IG+c6L4FdEckN69CTOMSKNbtarICTmmT02vSxB1Q9DqZikIgnQvp6kY1kOpW5KxGlkzi64oDTmsYurIKYAmm5UYQW0L707csh3Jy+snu6Mdu7eY3TDS2ETAwIHvbBdyAqtqTgXcF5adIE79ARMKT2UZESfhGfZN9vTDYSJzlGzp97aOce173jDVqZXknQfOkeJX1Mv8iAobzX8Zg/AtgdqdpsH0iwV4iOHkPbuXFWgV+X8v2pdn+dHhSFThuE2Dbuq7SqsI1vL1jWvlG83ss8EerLptJ/svgnm0svweSCc96x39DK6dMC6cIY15nmS12Xl0rMhWIdQesZkFwSBrhynYQVFEqOelhQxWRS8NKK8FBURsjUshsNDlqlw+8c7fzyNl8hIZX3sC0x16p3RHN0p0NPP+ygZI4/6SXE3DawkxFdgNFSWvUTzxaNkil1UhI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PA4PR04MB9366.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(52116014)(19092799006)(7416014)(1800799024)(366016)(38350700014);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Xts4ZihOis0B6+BUquxfc7sjN2a8Lh7LQqiurPhHPI0TyU2M8cB3RjPZrG0B?=
 =?us-ascii?Q?s97xQGixT2QcPg5280l0gC0YPdyOo+zyrqo5uMv+0dElabSHqG3Ncok/vTrm?=
 =?us-ascii?Q?syJ7+Nh2TuvCoPER+g/QzR1aguvCFpCgFHKMu8h4gHiMxh7Mexmtb4Y1SRCd?=
 =?us-ascii?Q?Cl8WBntNW1VDUn575IT/6KlnfF0ER99T37mk/NKPTqfJ688VE4J37Ob6Fvq+?=
 =?us-ascii?Q?iID05WABjaMCi4dQH/b0IeicesiU42MALcp1WmN6gAMXpItkL/6/uZ13KJp/?=
 =?us-ascii?Q?Ea3E/BffxgahX3wlrsz3I07+BQJPsEVGUTyk5HQxe2z4bWpgEXzjb67SArv4?=
 =?us-ascii?Q?LIieNXSv0kNDOTDmf3YZc0zmKrWJVwHWnr0zQorAyJipPT35JFJXzZHSsfVf?=
 =?us-ascii?Q?w+bU3RXE6U1DCiQKM8LachU65nO6TDT5ZnQ2+UEh96H+WFYqoz6S4/zWnUYJ?=
 =?us-ascii?Q?AVO8m1bynJpaG12sJXYKvfjSkB2XqKStRRep3/E0o3DdZHVx1TjoHQjo+I2u?=
 =?us-ascii?Q?2wkVxtPkyNrA7sjAg0aTBg+a6p7Z8NsVryG6+LMhkQOdcu8Z2hAVhM5nsStl?=
 =?us-ascii?Q?O/Qa4xGW36e79D+MS+bNnbnfpFTFHnXEZf7UK5qJuB3jgLMP77r24YInrLVd?=
 =?us-ascii?Q?4d1yb0NDO8XbR8AC1TP7M7DFrGPV7cQJtRGOGeBClDKxV+b60Tyr8k8EsvbS?=
 =?us-ascii?Q?SY9vk+kThdVByqQNXkh9kxC9Mcmc5JppEiO6X71w/OeHFX6sC3yH88wxoAi2?=
 =?us-ascii?Q?Drby4S+ZMnWeSiQ20UB35K/5IisuhmffA9YYl+Qv1nL40YeIO/EOBp+PDdKQ?=
 =?us-ascii?Q?RaLAIsrmi2jVQhVplJtNXULWUAryutaPV4aoH/Bdssb9d6dVXQshU/pGweuB?=
 =?us-ascii?Q?8RTLqVlU8niSBYJ8wD3zgkmWdigOjeQBBsQ8NjQ6Rwdv+x0ZcNs2+iYo9BmJ?=
 =?us-ascii?Q?aGOyZpe7OOkm+8rVDRxq8lzZGoTgfZQBRsOauJ+eJr+AbY+Tk1qZJj8Nj+LO?=
 =?us-ascii?Q?b7YgoelFSzEOu+Lsx5Ct7L7mbZJNyEzMmAi8uICDYHT7nR9tJgI9ZvpNY5FF?=
 =?us-ascii?Q?HQGKxDc/H0ebVuW/P8ZeY1QMGuAs73yAzh5HTgZjlEj0cjl/LWs37UR+eHV4?=
 =?us-ascii?Q?DgexBuZdl9oAWvS6g0/T1Icc/MOgwiWuHlz5s4IVUAlRZ+drtYKB3V9HFYNT?=
 =?us-ascii?Q?EbyQG8vcsF7xnObX/J52GFJP2tq13U6tllmqxkdAf09/T84VIGNa3cvAUqYb?=
 =?us-ascii?Q?R4MfS7MfNE4v76sitFmZPshVPuP0jay069yfcXa3LG8sPWL97jtFroAN0JXE?=
 =?us-ascii?Q?kVSXE5GwKoYOaCHrNsrIBrzisxZqCKys++eg8Lfm6tCUtIQ/hdK/sXBi0uNM?=
 =?us-ascii?Q?LuMrr8lSsSQFN2AhottyUNa1k3uz4uZ5gqDL/V70p0eGFiRn+eVpOfxgk7+d?=
 =?us-ascii?Q?xCq1rmHa0/wuY5xuUWNQZ5EJAn4DvDQctAjyB9GAPX7vrWgyxg7woxn073h4?=
 =?us-ascii?Q?dtcW+9KkRQO5Rq+c+a/MbZ0pwzY7kI7GLHAmf5tyOFi4JtkEJ5Y0bGZbzgVI?=
 =?us-ascii?Q?z3LR8reG96smeCar9RxClnycmjRBoTL5xUL4noYH3e9hYRLaVJPLARsATWIU?=
 =?us-ascii?Q?JYb8WumFKT//gjyqzVmI3nhlmQD/QZZQguSVONhBp1Pg4VqTWXVfZSmhtVRU?=
 =?us-ascii?Q?XYt9HXugxkvqHKhwlU7F7s+reps1EFFywKN5fZPkBgbl+NpS?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87b89c9f-f0bd-4a22-9ea6-08de7acb6d8a
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2026 15:25:27.5133 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EhoImfD+wNsNesSvS8w8vmC+RUpwkWvlrl5zcQTKQzbB4bIcwFzsYgDa/GMvjX9exXXgRejY4TNCkGpFhQYK/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8438
X-Mailman-Approved-At: Thu, 05 Mar 2026 15:57:10 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GiD8QosHTo1pYhsdB2T4PoPERyG1vEN0yuWZnLtNRE0=;
 b=R0zKqeA2WtZxOT+to0e63bEH6REjMKJm4l65INhU+q1fApkMO5tCp2p8dPVMAYqyfdQKiLYwROdOFMaeGsTdoaFa9YyEWJ9EQ4z7MywUS2SXzodXRdXFc6X+KSYu1Ap3nuaIayhycC9FN/st4JVBza+/u1JIxK0WecPbj0x6AEp69dyGIm/dBdj3upXSYVthFO8SvzA9wxpx7OvpZWjjcJGDwbmC8q7f3m8dtUF3e0pVfvM+rFmOfsfA56FB5ucurIY8IluA+LXTAQcWw8NJ/IO7Xye0A+kLZXH9Zz3D3SgDk6d+nwnbNPMQJzOe7iv6AL/W8m0R8KjzfwByz2zYDQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=R0zKqeA2
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
X-Rspamd-Queue-Id: 40690214F6D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[Frank.li@nxp.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[45];
	FORGED_RECIPIENTS(0.00)[m:vladimir.oltean@nxp.com,m:netdev@vger.kernel.org,m:bpf@vger.kernel.org,m:kuba@kernel.org,m:larysa.zaremba@intel.com,m:claudiu.manoil@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktiono
 v@intel.com,m:dtatulea@nvidia.com,m:magnus.karlsson@intel.com,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[Frank.li@nxp.com,intel-wired-lan-bounces@osuosl.org];
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

On Thu, Mar 05, 2026 at 05:18:28PM +0200, Vladimir Oltean wrote:
> Hi Frank,
>
> On Thu, Mar 05, 2026 at 10:08:56AM -0500, Frank Li wrote:
> > From: Frank Li (AI-BOT) <frank.li@nxp.com>
> >
> > > 		if (ring->xsk_pool) {
> > > -			rx_buf_len =
> > > -				xsk_pool_get_rx_frame_size(ring->xsk_pool);
> > > +			u32 frag_size =
> > > +				xsk_pool_get_rx_frag_step(ring->xsk_pool);
> >
> > AI: Variable declaration should be at the start of the block, not inline.
> > Move `u32 frag_size;` to the top with other declarations.
> >
> > Although it allow declear varible at any place now, still perfer AI's
> > suggest here.
> >
> > Frank
>
> A "block" or a "compound statement" in C is the piece of code encircled
> by { and }. We _do_ have them, so the "u32 frag_size" variable _is_
> declared at the start of that block, as a matter of fact. There is
> nothing wrong here, the variable placement is not arbitrary.

Yes, sorry, I missed think "-" at patch when I am reviewing AI's result.

>
> Which AI tool signalled this?

Cody, backed should claude.

Frank
