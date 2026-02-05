Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GHdxCVWNhGl43QMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 13:30:13 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 78740F280B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 13:30:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 23C0160B1A;
	Thu,  5 Feb 2026 12:30:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R5GSz-Y62njQ; Thu,  5 Feb 2026 12:30:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5BDBA60DD0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770294610;
	bh=75yYusQdvCFJr0kyvBlGJkUDXhpUvje7WrzZO83KY9I=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nd/mQRyuIdhMnqpAWRjP9sw7I2UbwdIyF83Llo3F1FAzpZpI1hmOgi+V86h6gWfNT
	 b5h0Um0gg82mVNo8LqHrS2I3sM86G8qzbTO0hSrmOTfOl+htE49rJQtEXUU3V2I8Wf
	 BAh34Sar9EEp5xeKe5KAygQuVG/EZfCGDisujNc0C3tDRXbBjRf5t9mBWd7AzNX07N
	 qF567p0AJBuG9dc3pqvxhtGxSLDANASIn7Mk/zh2zFcmL0eZQ3DacyxAe4x0YARvsK
	 YFLsABBKlf1pLoy0oytb6G4WZQgynKB+Lv5Gq4U7ciamQiPuqoTHUmS+u+IYLxPHEC
	 4+hv20gGhiEAw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5BDBA60DD0;
	Thu,  5 Feb 2026 12:30:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1342B17A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 12:30:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 00EA0407C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 12:30:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LI9ZEkQVkoEf for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Feb 2026 12:30:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.69.43;
 helo=am0pr83cu005.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 199AC400CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 199AC400CB
Received: from AM0PR83CU005.outbound.protection.outlook.com
 (mail-westeuropeazon11010043.outbound.protection.outlook.com [52.101.69.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 199AC400CB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 12:30:05 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pxPt5DKPkLe7fnlhqD6DNH3eRPqjxMTFrn/cbjeHsRD25pkEd6jorSeE7sc2FchdpbFt2pgNduBQe8RumJBNIUldoCGxiFIp7il6SblgxzvZ9RcRs+xXAAMmu7SeL4iKDfDhiswmQtExKCA+pTVsRNPRU7JY9PnsVqMOjY2jlWARiRzVd174sXMlrpz3h1AeVXj1E+/MBocyy6mcbvQIe5X8wVIB4ZKm51YkCkZ4PPXzY1ccMbmkOYZi17VUCCRCJy0ePlJ+weKPHAU/WQy44e9FkxwA6PTz5nvTS+4V3a/vmgtPCDR+zXPKjFT/sZl2X6jnz4QliERbmuVanlGUiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=75yYusQdvCFJr0kyvBlGJkUDXhpUvje7WrzZO83KY9I=;
 b=LWKPfdWCqh9aH+SkUem4e6u66/qyprg7OsodljebxEKmMj1dumz0gDdTLra6xxswtmbaGtCEHj7aB8inmDdC6Ejnj+zwkCMHNgFTQTlH+4RmYdTREKl/aVDs8CQ/pqiLXyrEitgJwznWYC78c+eOo0k99ER/BaV51KEbuBZ0o7xtMI4bn5fGTh9rATtymhJct1v/OxzSm+GWe+++N8A0lXYxFi+04S/2PbqF1wSIzDoWU6GY8ry0WjzBnRviRSOdNgfj+MFjtt1YidJ7PYWLBfK0pKc+hUyXdQelsqRa5WMWd54tGWZ7iHhEyroQtl/S0XTILnyYBOILSVgJYXVhww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com (2603:10a6:20b:438::13)
 by AM8PR04MB8049.eurprd04.prod.outlook.com (2603:10a6:20b:24c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Thu, 5 Feb
 2026 12:29:59 +0000
Received: from AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::f010:fca8:7ef:62f4]) by AM9PR04MB8585.eurprd04.prod.outlook.com
 ([fe80::f010:fca8:7ef:62f4%4]) with mapi id 15.20.9564.016; Thu, 5 Feb 2026
 12:29:59 +0000
Date: Thu, 5 Feb 2026 14:29:53 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Larysa Zaremba <larysa.zaremba@intel.com>, bpf@vger.kernel.org,
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
 Ricardo =?utf-8?B?Qi4gTWFybGniiJrCrnJl?= <rbm@suse.com>,
 Eelco Chaudron <echaudro@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>,
 Toke Hoiland-Jorgensen <toke@redhat.com>, imx@lists.linux.dev,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20260205122953.lscemcctayrvszdu@skbuf>
References: <20260203105417.2302672-1-larysa.zaremba@intel.com>
 <20260203105417.2302672-7-larysa.zaremba@intel.com>
 <20260205005901.gnju3zmqimtgeu2b@skbuf>
 <20260204173401.282899d0@kernel.org>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260204173401.282899d0@kernel.org>
X-ClientProxiedBy: VI1PR08CA0246.eurprd08.prod.outlook.com
 (2603:10a6:803:dc::19) To AM9PR04MB8585.eurprd04.prod.outlook.com
 (2603:10a6:20b:438::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8585:EE_|AM8PR04MB8049:EE_
X-MS-Office365-Filtering-Correlation-Id: deb5711e-4c4f-46ec-2ae7-08de64b246b8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|19092799006|376014|7416014|366016|10070799003|1800799024; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?muKJjtnYJ2XleOSj+sbHT2gyRdQHmigNBxXKgyaPqCIbLa4Lw73EZM99u55G?=
 =?us-ascii?Q?OScPyinZ9MFUxo5j6VrxsTEzKlStt2xzhzpGixoGSoPKRBUmZJW0PX9o45hx?=
 =?us-ascii?Q?GgzNk2gx4CBJYsKrNb6R7908cr5CGOTzkGti1F8SEzpesSG70N/9WYNSliRW?=
 =?us-ascii?Q?2okCz26aJrZ+SUodJDYB9Mcuu9Fk1CIjNXIOUr8YWs50iUXigmSNCcRL1ASB?=
 =?us-ascii?Q?8X04xUWiJZxTCv4iefls/6+SZLKB2Mw8oiwjkCwY+WS86kwG0xPvxvtnHiVL?=
 =?us-ascii?Q?GXpreJQ8wRnCOD30w7ZjivNuFKt9Ao8E3+cvEtR6wXbf7mLSakEYrUxWBtN4?=
 =?us-ascii?Q?qprxcsbyGNrcrGIaZTSktUUS5MP4/dopkAE841v8A9zTZwv6JDhlwW6Q52b/?=
 =?us-ascii?Q?76ac1I0Rnr8ziKs7NCe8/HEusGJ/VfNL2kjaanPVENrGSWCcYCRrHgbN58yn?=
 =?us-ascii?Q?ffsMilBi8FfF8YinW8evhKwFIc7fhqrhqNzOHnWN0JAuYfXG3A+M/M6qISUz?=
 =?us-ascii?Q?UM985DZjEq+xTZSSCuAaJ9SMEcPMoYE36WOPL0je0zlAEyL/csOAQmnDk/bS?=
 =?us-ascii?Q?X+Y/4IqX/fvfG1MI501PEZRRdFEsqH8WrIYMVEdW2PrXMsSuK0mkI1XNR+7r?=
 =?us-ascii?Q?RClUT4KqHByKBh0cD3KUloCkb21FUKw9jy0T4NuDFvyKljpp78hN3rRNzGfm?=
 =?us-ascii?Q?a3sdPrm4PO7Tio9pVSoXZTfBa/tqVX2YEOeA9Ppb2BBmkB67zZvkpi5EAdVn?=
 =?us-ascii?Q?x/IiYcLqlbbH8iA8QsjtIlBSzKm1lsuEnRlkkDOWnDjIXbef8Fn1B3fwZ0y5?=
 =?us-ascii?Q?peA4nrI+oBQLSUZ0V3AtiAIr9hfWnpQKjcBF3UxiLNMuP4HlwJIYxhn9p7pe?=
 =?us-ascii?Q?mPFKyxNzS9S/7I+Cv8jbM8eyJJEIH+c3aeZy6s5qExAi+zQi2I7Mpbg8JcmA?=
 =?us-ascii?Q?yej7B/Z5hEsBqJN1ErMtvjNlxTRKgW8JNdvu1EwgESwjk3l7PSECF1K3643N?=
 =?us-ascii?Q?p8Rb0Ak17qmp2rzijPYbBKFrzOJGlk23ntV65HeN7xjBAIVsQQSOHeV39Fy8?=
 =?us-ascii?Q?XvAQkpAIKDnRVrkDM3fAVS1PG1JiJ7m/dpm/+YCMVmc9KZMoZDeBSMF11Ypi?=
 =?us-ascii?Q?UBPIBrfrHooyN+BRloE5hCMFz/zbwc6FM1V5tgkoHz3w2fudYtQFsS/gJ2Xr?=
 =?us-ascii?Q?0tsSoG26MKMUZYfjxN7cwEWEtRvfnm9b4eoXyD5t2nv+1FNdpMJmue3f9db9?=
 =?us-ascii?Q?H+hQOgfFeeeORsstEPmqJaBoEFwgf4ibq0UeON2uB0Kiq0Lw5ZgJQRhQqnGn?=
 =?us-ascii?Q?LAOxWNuDT60eLJGrTNCfFYP/t73nu6JDHKKChUNxzOAibmcpkHBClN1/7NCG?=
 =?us-ascii?Q?GWXyb8fz3qhUX+hwY5e1LO7ydoe3KqRBWxF5ZB307ey4ZHL/W8TaNjc4Af5n?=
 =?us-ascii?Q?J13TABO6HCsAMf7uSAwsJ18hdop2oBjqL+YZ/Dn5o85DqbEjAvI3bDcwoBYD?=
 =?us-ascii?Q?yKRgSbdYp2bnCfPxPhUqa8l/+YKCXm9dN0OJFMEEf5Hp5CxGB5AkZjs2Zli/?=
 =?us-ascii?Q?g+MqGpMBnlSmSb5tfzE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM9PR04MB8585.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(19092799006)(376014)(7416014)(366016)(10070799003)(1800799024);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TdSz5nAHf93i4v02QINRGa2fk7HrJHyv0WH6Kv1Mo7haFfX+eKvyrpaygJhj?=
 =?us-ascii?Q?OCS3haGwZnzvR2Vaw9vBUaoMExXP/0NJvmIjFoKF2cTTmh+7rzNQyFTOKYTf?=
 =?us-ascii?Q?/WcefDEdFu3MW5upQEUGqqBOo4EkkRRU71LQbv7KOUJdDchQytz/8QHhBM5J?=
 =?us-ascii?Q?tOYxuRnoZ51B8u/Q/pEGpG3szEoBGXXtA/D4v2/GvWjFtMWXRjxQwSS5Z/wj?=
 =?us-ascii?Q?neTe1umE33++BB2l+o1Bbuuv9RBzSt1jplBrxryFVrXV3xnblib8IhfyRFwu?=
 =?us-ascii?Q?WblemQvcqAu8hP/QoFiWCDU9y0ugPFBIGWOtUtLQokobGl7yEUn7UeHQksNb?=
 =?us-ascii?Q?xfbwWTiQ8QaQMjeQU669jevMPjX8OoPgzZWkGGgoyvbpcwmt9ilPuMZdfcbw?=
 =?us-ascii?Q?PkV9Hl3X7feNcrfOlh45hjUu7LXyyw3ZuCaGym+lYMWme4YfSiO33Qz03TVO?=
 =?us-ascii?Q?FwIRcYjucn+b7jFxsS94KKhN8Nh6Y+FEIgm2+DeNc6//Z2hWtRbxWjb4nRpQ?=
 =?us-ascii?Q?s9QlSzJ525rQ/MF9sXGPyn+NQOL5OE76gRZV3v/ebg1mOkxr4/PyAeQQPv5T?=
 =?us-ascii?Q?IFEzkawJUnJAmgFQerlW07estUvPxWfigKnrGSD0je28m29tzhKkrYoajaIt?=
 =?us-ascii?Q?ZqQPNhK2u/ULXJXfzxw1YmWYyPqrtbhCFDYKGx7VC4404aJXDxLlbS7n5F7f?=
 =?us-ascii?Q?e7a1/Z6+bQedLWKilgsdXORyJVPiPduFE79VUi5DNq4VujPeo9sCosQDCCHy?=
 =?us-ascii?Q?frKqqaX+gQIWgSbyrL3v4PjIJsMfqx/+ZC9l4xPXSjSNA8jFDanf6jyGRjTG?=
 =?us-ascii?Q?f+UCnGSV+G/6SrT/Kl5KlLAbSJ1gFKCyZKqR31qYa1UfqLbuIslgB+chnfVZ?=
 =?us-ascii?Q?ENu67Z0LyL5xaRd83lWUOJqm5jbpHC4Ij8fLIpQ9GAUdwbcuZTfWUsS/+ZB0?=
 =?us-ascii?Q?DG1fhW2naoMWGzx8oz23jOXN9iLJiffIkOSm5/fxWPuj6KXZZThp076caUl/?=
 =?us-ascii?Q?I9vO8nNmDpBnuhjt8SC/YVUNAnlBWapXDYyjR4w7rh4LjqUABm8NQ6DnTIAW?=
 =?us-ascii?Q?a3KbchP3N6ulH6VY7aQMFPF5nruyRSi9Leo5RJlJww5Ounoyj69CAZeV3e73?=
 =?us-ascii?Q?ZTiH2fndOHINY9fhs7L305WQ+PEXpUJxlwBUISmbiQhTW8T7zECzD0zUVn26?=
 =?us-ascii?Q?OLm2PrraKhSMmNQdbibmDkW+n1MQXnG5veWS9K1K04wmFGh32Q7FBt0Psm7Q?=
 =?us-ascii?Q?iqCZBy+lpdZhqFjYmMrBuAVWhtgIYn0dyLPparBqcPqWlhiTUHWjGalhWHqc?=
 =?us-ascii?Q?3qKhK4WaN80+CM5ZWz2hz4wX5YcCanR9bu1YvwSsFncNH6YyfpULdthoaHQU?=
 =?us-ascii?Q?/XOGHPqqMtMplRl+2yMu1kGXsyYdllQNoLB0jLzz+LpH8+2VX6Q+PfltZk8W?=
 =?us-ascii?Q?+dsLHCvKYpkc/L7BIUsSPutI56ulZZJaEA6RFgVmkF1cV+ecrpyP3bJh1ZaZ?=
 =?us-ascii?Q?Hy1XXxbefU4/CBmZ8G/ELCqHA4k5/mRUW1dHfXfBeDmQV4dXscSbycBA9A2w?=
 =?us-ascii?Q?vfnTexBRviw5R/HrWN5TPvh5DzeVYJIfJ/E4hDs/ktQlnFzQI6WeSYy75S5B?=
 =?us-ascii?Q?JS9NKuoQ9b2whDEMlUO2ykErao39Q6aOE39XLSZJHeS623ieYuMSsUG+Z7d2?=
 =?us-ascii?Q?B5bElgbC8PLPDwsgUHdtVE2/pWKdl6X7nFtI3oJQQZMRBc9GnXc84uS1go+p?=
 =?us-ascii?Q?EzrrOdggEGMIEraBTXTqs1MRUtPaRjy1Hz5bn744qj9BdKZAvzqkyGSt/hDz?=
X-MS-Exchange-AntiSpam-MessageData-1: chMYX4JM2yeYMBH8Hvw0GZ1xtc+NZDyZ1aQ=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: deb5711e-4c4f-46ec-2ae7-08de64b246b8
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8585.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2026 12:29:58.9934 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q5HMyxDzKn4uoQ7GXNYg/Un5791lr2LKXTsykBEsgbHGsPGjJENju7WvhnoQeCWy8LjqLcCL450gj3ASkgnBeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB8049
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=75yYusQdvCFJr0kyvBlGJkUDXhpUvje7WrzZO83KY9I=;
 b=Qf+z7Q7BgdoRYVjAr3po3BPb9Reu/Btt+iFSXLo2SyWkCmRgXf53rNUIfnFskOgmr8jGz865NpQOUxNqs0Y1a4nF5jfBxF7fYdfwDVfGITSnk8cV9udx01Hirpiy5LEEeuk1Q2D+KayxxQSP98fK0dEmksNLY5yTOH2gAiYaNCMQjv+66HTM4DjzYXRvil6ajkGF7OQ+5ePnXBKcLc9yAZiU+Uy8afKY4KR+VG5An3iqMD57pKVmnfyJgTun7FYCIu0gAS99nx2xneuKpOd8gMpsreptxbzJrnfD48k6oT8o0yM2x3w7d6QMUdBwANk+aleyej5qnDhG5p/coxQpFg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=Qf+z7Q7B
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH bpf 6/6] net: enetc: use truesize as
 XDP RxQ info frag_size
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[42];
	FORGED_SENDER(0.00)[vladimir.oltean@nxp.com,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:larysa.zaremba@intel.com,m:bpf@vger.kernel.org,m:claudiu.manoil@nxp.com,m:wei.fang@nxp.com,m:xiaoning.wang@nxp.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:horms@kernel.org,m:shuah@kernel.org,m:aleksander.lobakin@intel.com,m:maciej.fijalkowski@intel.com,m:bastien.curutchet@bootlin.com,m:tushar.vyavahare@intel.com,m:kernelxing@tencent.com,m:rbm@suse.com,m:echaudro@redhat.com,m:lorenzo@kernel.org,m:toke@redhat.com,m:imx@lists.linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andrew@lunn.
 ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim];
	FREEMAIL_CC(0.00)[intel.com,vger.kernel.org,nxp.com,lunn.ch,davemloft.net,google.com,redhat.com,kernel.org,iogearbox.net,gmail.com,fomichev.me,linux.dev,bootlin.com,tencent.com,suse.com,lists.linux.dev,lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[vladimir.oltean@nxp.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 78740F280B
X-Rspamd-Action: no action

On Wed, Feb 04, 2026 at 05:34:01PM -0800, Jakub Kicinski wrote:
> On Thu, 5 Feb 2026 02:59:01 +0200 Vladimir Oltean wrote:
> > Thanks! This is an extremely subtle corner case. I appreciate the patch
> > and explanation.
> > 
> > I did run tests on the blamed commit (which I still have), but to catch
> > a real issue in a meaningful way it would have been required to have a
> > program which calls bpf_xdp_adjust_tail() with a very large offset.
> > I'm noting that I'm seeing the WARN_ON() much easier after your fix, but
> > before, it was mostly inconsequential for practical cases.
> > 
> > Namely, the ENETC truesize is 2048, and XDP_PACKET_HEADROOM is 256.
> > First buffers also contain the skb_shared_info (320 bytes), while
> > subsequent buffers don't.
> 
> I can't wrap my head around this series, hope you can tell me where I'm
> going wrong. AFAICT enetc splits the page into two halves for small MTU.
> 
> So we have 
> 
>  |                 2k          |             2k              |
>   ----------------------------- ----------------------------- 
>  | hroom | data | troom/shinfo | hroom | data | troom/shinfo |
>   ----------------------------- ----------------------------- 
> 
> If we attach the second chunk as frag well have:
>   offset = 2k + hroom
>   size = data.len
> But we use
>   truesize / frag_size = 2k
> so
>   tailroom = rxq->frag_size - skb_frag_size(frag) - skb_frag_off(frag);
>   tailroom = 2k - data.len - 2k
>   tailroom = -data.len
>   WARN(tailroom < 0) -> yes
> 
> The frag_size thing is unusable for any driver that doesn't hand out
> full pages to frags?

This is an excellent question.

Yes, you're right, bpf_xdp_frags_increase_tail() only has a 50% chance
of working - the paged data has to be in the first half of the page,
otherwise the tailroom calculations are not correct due to rxq->frag_size,
and the WARN_ON() will trigger.

The reason why I didn't notice this during my testing is stupid. I was
attaching the BPF program to the interface and then detaching it after
each test, and each test was sending less than the RX ring size (2048)
worth of packets. So all multi-buffer frames were using buffers which
were fresh out of enetc_setup_rxbdr() -> ... -> enetc_new_page() (first
halves) and never out of flipped pages (enetc_bulk_flip_buff()).

This seems to be a good reason to convert this driver to use page pool,
which I can look into. I'm not sure that there's anything that can be
done to make the rxq->frag_size mechanism compatible with the current
buffer allocation scheme.
