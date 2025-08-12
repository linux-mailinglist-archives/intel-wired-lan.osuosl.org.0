Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDA2B22BD7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 17:39:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD538428D4;
	Tue, 12 Aug 2025 15:39:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pOUKbBgYWdcG; Tue, 12 Aug 2025 15:39:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E71A427EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755013150;
	bh=zHFB0ek1pYMQn2y3OjoFkNC4sgQYw8h2xvScYQY2sHw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JN7C1tdoB1x5iSHcEYDx/cyU+3ndvkQ7J+AqnRD1hB5xLskRLqjDxDQRAw/nSgmSe
	 D5PlclzLArA/3aKPT3AtweDi23spg0D1rKnMdkM90SA5N8pHdJvPgdRDDrhFCCnu8w
	 M6ISVfBXHFJL4lGTMVJXELqvP2QSTTVYfVOYt7eUznvSjrzL7ZWe7mMI2fwRlFBwFM
	 ulbiW9/dMEq4XRpdr6ySLDIwU3l2QI0gP6us8lEmWRj9ORir8Hol29AmcD9K2DqXDB
	 ZnsHAB2VdR0KBBhhQP8yFp7fFjJEAF+UITaIh2k0FwETtwxczyyPsjUiYIurmju3j/
	 KE0KRbDf6s4VQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E71A427EF;
	Tue, 12 Aug 2025 15:39:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 75CED158
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:32:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 67825427FE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:32:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R9zGuY0sMUuh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 13:32:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.75.30;
 helo=os8pr02cu002.outbound.protection.outlook.com;
 envelope-from=rongqianfeng@vivo.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6299C42797
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6299C42797
Received: from OS8PR02CU002.outbound.protection.outlook.com
 (mail-japanwestazon11012030.outbound.protection.outlook.com [40.107.75.30])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6299C42797
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:32:51 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GxQcwCuATqHX+QA0JUY6qkX42QmMAcG2GzMoTii2qTQ/zIUKdG1euErx9aK7mTlzbwo/Y7dm7cP//7RTTG3WHIMBshNsbOVxzCEdXakAfTmmn7XNplZRmNSF54u4GNnzpJdaNqolBKCSbpzt7ay1gffd/ie9inq05Vfpqo5/9aXfQRxUGk4hBqMNVl4pgf4FYciO0JzqXNDw3hI4ukwnRGm9X6h7SSZgtnYTFUD8cfsb59zYar45DRu0u34PNR6uKWtVv6QoAn3zXYKjc35Zp6NEmRJA0hZhHe7NzFuT4av13DnO5AQlnqy1RptOaMqftnNhmUha1KPZU08GZMZDtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zHFB0ek1pYMQn2y3OjoFkNC4sgQYw8h2xvScYQY2sHw=;
 b=XOkVNg5RJ8GtAoRMfMWHr7Yv93JoB5QXf3HF+MSMpWI4LoNC8EiSlTt3yoPj0k9seYhzRk32xAuIErJ8MNhDOdDEuOFT3lsfbk7DgA6bIjuiKe4lzHwGGvr4HGJWrpq2a5LCky/eC/F6iGh0lriDoPgzq2oY4rUH52ldy5f0mx+T1VFUgDRbWE+avP/h34LLtZTUzerqfJrJLd0ZYjw5MdBt1ltgML2KmPeZQl9g3/kfjre9Ls8b6af+j3IVA6R1nRq2G9gEBRY95jf09NjAA4n1Hm9Fddom7oWgrYPhopG01qd0tH2c2WqMkp6izZ8i0abmIv5yiuyMweqpFnLsTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
Received: from SI2PR06MB5140.apcprd06.prod.outlook.com (2603:1096:4:1af::9) by
 SEYPR06MB5040.apcprd06.prod.outlook.com (2603:1096:101:54::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9009.21; Tue, 12 Aug 2025 13:32:48 +0000
Received: from SI2PR06MB5140.apcprd06.prod.outlook.com
 ([fe80::468a:88be:bec:666]) by SI2PR06MB5140.apcprd06.prod.outlook.com
 ([fe80::468a:88be:bec:666%4]) with mapi id 15.20.9009.018; Tue, 12 Aug 2025
 13:32:48 +0000
From: Qianfeng Rong <rongqianfeng@vivo.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 intel-wired-lan@lists.osuosl.org (moderated list:INTEL ETHERNET DRIVERS),
 netdev@vger.kernel.org (open list:NETWORKING DRIVERS),
 linux-kernel@vger.kernel.org (open list),
 bpf@vger.kernel.org (open list:XDP (eXpress Data
 Path):Keyword:(?:\b|_)xdp(?:\b|_))
Cc: Qianfeng Rong <rongqianfeng@vivo.com>
Date: Tue, 12 Aug 2025 21:32:14 +0800
Message-Id: <20250812133226.258318-2-rongqianfeng@vivo.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250812133226.258318-1-rongqianfeng@vivo.com>
References: <20250812133226.258318-1-rongqianfeng@vivo.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TY2PR02CA0005.apcprd02.prod.outlook.com
 (2603:1096:404:56::17) To SI2PR06MB5140.apcprd06.prod.outlook.com
 (2603:1096:4:1af::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SI2PR06MB5140:EE_|SEYPR06MB5040:EE_
X-MS-Office365-Filtering-Correlation-Id: 625f4224-d03f-46a2-7ff6-08ddd9a4ba74
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|52116014|7416014|376014|366016|1800799024|921020|38350700014; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?fs1Uap9yvRwdZSXpuo9OIDjkeMH9Yewv+hGx7XDFFY4cHCy1LVzU/S8tr/Tf?=
 =?us-ascii?Q?/VVy+v86ovVm1f8kko7lxsPCuiOY929BZjdUST+5BpXF2nlzc+PEIb/1cpQQ?=
 =?us-ascii?Q?P4HARzg2nM32czBL05yM2XKh5pd7HFTZxaI7gItD3fJmW/F2fgnSrJVHth5z?=
 =?us-ascii?Q?Zm/ZkPsgwV0MWYVdKRfE1KQy8lzM5MsXuVAz0fmS7+nt2WdIjSiDTP2FGlIa?=
 =?us-ascii?Q?jgdDz01V5zUdEfNUyDt06oOpJgiUTdxKRrp/Qiu8WjvcZYqF3FauqksaorPu?=
 =?us-ascii?Q?1I0z5aAjvQgqnRAtg5KMwwJ7nH0iAmSbV5SP7LBVateaBTLn+PXPfmZ6Psph?=
 =?us-ascii?Q?uGObUUNEDA46r3KgmMcX3s5DqY7NBjy0zBqrFEVnMW92BSgVXk4qgO2gV5QQ?=
 =?us-ascii?Q?ZQ5xG2iaXkWiaG0Zd0FQhsUdMdNm4cn/Iit5jBd0KncTKY2GCTq9gSI1Z2Qp?=
 =?us-ascii?Q?hiQm4TI05Dz6xdhLVT1RBs2+JR6wUaIKNf+FykMBReyahJXAPSITtDdlWrF3?=
 =?us-ascii?Q?iY8QEQtD+i7g/zsx9rD2WjlSDVtuxXkDeEYw+jRn2ZeQ9ZW/gvQuV4yhxE63?=
 =?us-ascii?Q?SwSx1wG/FcxCZBdZ8crkbYFx5e5h1M/oMQFG5JuuOF0kNFF/OUMs+mOLlTkY?=
 =?us-ascii?Q?XwzGXjLzFufxAfNadCFZi15hU2zSvcKZN0J9DqIP6J/+so4YFoClLP24C7lk?=
 =?us-ascii?Q?EVsxEwNqOZd3sMT6CWmfSdQYhwa8dIcW1IiJS2Y2BbTgI1Jjeeg8sH4ozk6p?=
 =?us-ascii?Q?Vo8EyfbCXujnbowuifhfVmNi9kIL68tw2NGVqLelkvbNk2Ks6nSwj39X9yk2?=
 =?us-ascii?Q?gFX19h3meW3zs/IuJOWf2d76a//4BU/x2NYBabdavIAWZ+T3aYdsmBZo5p8Y?=
 =?us-ascii?Q?A8Bb5WsQv/r9C43k3cjlrXnaOTRZkqdBUdhPwssehd740dAWMcaWdNRqRLPx?=
 =?us-ascii?Q?kZdIWDec5wAFY8A+hoyQTI528IZ/heoHQrE9DmEditpa8C9+Jdf8sI1chUEQ?=
 =?us-ascii?Q?SOgYLHgt2JqPO23JA6uV3vl6Om6YPOjmuPR8sh/jfGHeRcW5R4U01sHcgo/J?=
 =?us-ascii?Q?yK2eRGoDSu+o9F8ikY/jk/cc8nt7iugxMa8qfDnX5JnvuZPeHhrj/qgCuNpK?=
 =?us-ascii?Q?fmMeOpPR3+g4qnsz4Jpiug1jgz6N7fvqPNsSA2Vsolhxa1GlVltL04vTMglH?=
 =?us-ascii?Q?aLPfJ25bDmDKRgL1d9SBi7JvP09AfiT6znPNpMdp5bwi63s9Onw5nIkAsP++?=
 =?us-ascii?Q?mu5jgh2prAP5jdxp1JztRw583QzBtB4fZD3gBvzctEOOPWefxaYnnLwZxXGN?=
 =?us-ascii?Q?j4CbIxdrwDioH3ah91gPTZzPnGY4LYS2eBKYcPmV7RVwINUET15eTaELRSle?=
 =?us-ascii?Q?QOELA+UpGAIUGj8KtMPGvW/qBzFof0ZQh6vkYdtE5sIy1nAKiLl5auJix+ww?=
 =?us-ascii?Q?GRW9zjPHN5SlH3ZAGNBzwdTVLBIt//Dx8yFL7y2k12NEpqN0vH/STfiCPkFh?=
 =?us-ascii?Q?zw0B+H1RfM8AH0c=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SI2PR06MB5140.apcprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(52116014)(7416014)(376014)(366016)(1800799024)(921020)(38350700014);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YhmX0Hpi79Y5dzOkLsjFGz3KO6Zagbd7gezFC9Nv5iFcm4qxM+Mj6PpO7FFK?=
 =?us-ascii?Q?DgambO3avqSYHsZP/wsKi1Wc4gGEu3sJv7kIUwxNAH9nibSbycW9jHxEesUX?=
 =?us-ascii?Q?eTlXJANYhQJ0X/B0WRS2Baql6aP6ua46stAcaAtQaqiTVfU7FW3WQW2HV+J8?=
 =?us-ascii?Q?lAo5GY/3ywx5qjH8tksPlQcp9tE0rc2qxuL2VNB+aMIe4Pq1yLqHjO58Clzr?=
 =?us-ascii?Q?kKVzvDTlv3l3yf+7W+q5PJN7dGtUC+XVsNfx4j/jINKki2fqfCUdVETgl3/D?=
 =?us-ascii?Q?dOtreZuOO2ORiMb8gXwqssMbQLXdoVqHmk688Uyt5U5oJmKyFL6FThfJW21v?=
 =?us-ascii?Q?wZAZlIZ1IDBEMEtZQVYYrP5eEokapvx+VqeIC8U1hdCWIZ6lKYnae204IELD?=
 =?us-ascii?Q?EUrVWRCV85Ch2dDRXKu22sZ8UJX4C+XskmF5/NcbQVvDphW+L5TFzlfnTGpd?=
 =?us-ascii?Q?8N6/0RinEKv3LIoV7UxA32lZsTBQXbhfMCD74g2sD4RP2T2ZvX4iUWcsOZxO?=
 =?us-ascii?Q?sJpG/g9hkNBEELNxZ4aBO0/0ygt6J5yWXS1Ul3co2LYsypgrYJLPbcTT846r?=
 =?us-ascii?Q?L/1lgjmuo34l1/UK0iHLgCri8tt0yKiyl8qVGnnc7ekGnDr/3brrIlxVXyd/?=
 =?us-ascii?Q?FHzFYfd+dWqwW2Hic4eU9i1kcO94Ar6QlqJPIaPn5GZUzGc9ru0ZBoHFDyr9?=
 =?us-ascii?Q?Rp7uM1JaDKpgofiTD7OFoWB6zbjxFiMF0bueVga0IkE+h2Ni4NWbfv0rtdbz?=
 =?us-ascii?Q?d6Z9tF92FdwOP7Dwh6r1yFpP8Dj3FjLNmSsGSCprit6opf/WCV67NY2I4s2K?=
 =?us-ascii?Q?cFqCX40o8mCSG3yskURiwoEYCHP2Dsx5DAPEdqIG793F7+xilwQOK3KRlUve?=
 =?us-ascii?Q?P6kCm+YTI0ohCsN5OFDP7HaxGJWX2G0bKysEloOY4iuYMY6nLNaRquxfBiyx?=
 =?us-ascii?Q?QGAS1pUIxoOcaCGwuQN6mDSD/ZWz5ZBHi7WYmpaRrvXQVHb4MdZi4FnJ5MXC?=
 =?us-ascii?Q?4genb9laoC+AkN89lyUwB6X610VZwNiFbOW8OkomlIs/M7g30aK+MWTC93NZ?=
 =?us-ascii?Q?jM4hT0p1Cb3B35FVclS0i2Z+0xOLvyO/MTZ9ADrwlNKCNTRcSALpRwDvQO2f?=
 =?us-ascii?Q?jS9NQA9uRaNHtfP5o/TUqk0q9gKAnBAewrgi8uJfaGCW6TylKETaL67RR0Q7?=
 =?us-ascii?Q?AAzYQDdNSvDCAFVfoQY3F7Z1VrpQ/ghKk857zgsDTcNYFWJeQCMehpNhA+Ub?=
 =?us-ascii?Q?Ckr501AW/Pr/eImt/4UqfgQ8HpxEEfAIXeZvZw7EGVaVmyW22LdwuTKuiw16?=
 =?us-ascii?Q?j0Ad2GCM7d76F7/55QS87JQi9uBng+ssl4aRF8E2pheo/7w50Rtd5YUaASB/?=
 =?us-ascii?Q?fV6XqyZcHkrgCtAZGP5e+YGsrwYGKhcmlQNEexllP3bZOTv1Z1ryhjY00fUq?=
 =?us-ascii?Q?v9JYFi+l4ryqEdD+rxzkNoJSlmYbJEz/ViMDgxUVfodDuyRmilRVyFI2uVVB?=
 =?us-ascii?Q?YlUj3+UHv0FNTX9dxTXhs6RU4xayc6kAg2vl2MLuUd5lSib9awQvw/g7u/Z9?=
 =?us-ascii?Q?nbLDcfBdQIkq6Vz4aR7mRFhmiOjKb8tt6RdxOsYI?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 625f4224-d03f-46a2-7ff6-08ddd9a4ba74
X-MS-Exchange-CrossTenant-AuthSource: SI2PR06MB5140.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2025 13:32:48.4293 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8D6WyfSiKl/lPAaLhj5RDFSIgKAr6oChBR2SbegkYf1UWVZZ0c/aUW3T3t3XBRyUF01dO6SnXocvbY0X/mh7og==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR06MB5040
X-Mailman-Approved-At: Tue, 12 Aug 2025 15:39:08 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vivo.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zHFB0ek1pYMQn2y3OjoFkNC4sgQYw8h2xvScYQY2sHw=;
 b=qFKmYuuf2zDVs0WAvMU38gp73I56sJ7S0dass2f8xTuR83TAABVLQmHZqpAHxXjJRKPr6EezAe260Vc5xSwHxPdpWs769N+5hjs+5z6FRoZJQjlifyzLXBNadXvPrLtZIVlh1h/8Jh9Sx9fLM82qtWhj6mJnQUoGClg1jGe24NuGyALssdu8F3AG8NfUuZSTpU9STpqr7ZghAC9kmRsEwexQdy5ESnf/5sQeyLOxFBKIrJ/nM3lBA8jI7dfAE/jkuL3kClZl+HVnoCkcjIrUJm6a5FFH+xtaBbFHopVUepieerruwEzLqP9i/De/BL3X62vkLfM4ZgPqZ8Buqg15XQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=vivo.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=vivo.com header.i=@vivo.com header.a=rsa-sha256
 header.s=selector2 header.b=qFKmYuuf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Subject: [Intel-wired-lan] [PATCH 1/5] ethtool: use vmalloc_array() to
 simplify code
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

Remove array_size() calls and replace vmalloc() with vmalloc_array() to
simplify the code and maintain consistency with existing kmalloc_array()
usage.

Signed-off-by: Qianfeng Rong <rongqianfeng@vivo.com>
---
 drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c | 2 +-
 drivers/net/ethernet/intel/igb/igb_ethtool.c     | 8 ++++----
 drivers/net/ethernet/intel/igc/igc_ethtool.c     | 8 ++++----
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 2 +-
 drivers/net/ethernet/intel/ixgbevf/ethtool.c     | 6 +++---
 5 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
index 1954a04460d1..bf2029144c1d 100644
--- a/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
+++ b/drivers/net/ethernet/intel/fm10k/fm10k_ethtool.c
@@ -560,7 +560,7 @@ static int fm10k_set_ringparam(struct net_device *netdev,
 
 	/* allocate temporary buffer to store rings in */
 	i = max_t(int, interface->num_tx_queues, interface->num_rx_queues);
-	temp_ring = vmalloc(array_size(i, sizeof(struct fm10k_ring)));
+	temp_ring = vmalloc_array(i, sizeof(struct fm10k_ring));
 
 	if (!temp_ring) {
 		err = -ENOMEM;
diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 92ef33459aec..51d5cb6599ed 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -920,11 +920,11 @@ static int igb_set_ringparam(struct net_device *netdev,
 	}
 
 	if (adapter->num_tx_queues > adapter->num_rx_queues)
-		temp_ring = vmalloc(array_size(sizeof(struct igb_ring),
-					       adapter->num_tx_queues));
+		temp_ring = vmalloc_array(adapter->num_tx_queues,
+					  sizeof(struct igb_ring));
 	else
-		temp_ring = vmalloc(array_size(sizeof(struct igb_ring),
-					       adapter->num_rx_queues));
+		temp_ring = vmalloc_array(adapter->num_rx_queues,
+					  sizeof(struct igb_ring));
 
 	if (!temp_ring) {
 		err = -ENOMEM;
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index ecb35b693ce5..f3e7218ba6f3 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -627,11 +627,11 @@ igc_ethtool_set_ringparam(struct net_device *netdev,
 	}
 
 	if (adapter->num_tx_queues > adapter->num_rx_queues)
-		temp_ring = vmalloc(array_size(sizeof(struct igc_ring),
-					       adapter->num_tx_queues));
+		temp_ring = vmalloc_array(adapter->num_tx_queues,
+					  sizeof(struct igc_ring));
 	else
-		temp_ring = vmalloc(array_size(sizeof(struct igc_ring),
-					       adapter->num_rx_queues));
+		temp_ring = vmalloc_array(adapter->num_rx_queues,
+					  sizeof(struct igc_ring));
 
 	if (!temp_ring) {
 		err = -ENOMEM;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 25c3a09ad7f1..2c5d774f1ec1 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -1278,7 +1278,7 @@ static int ixgbe_set_ringparam(struct net_device *netdev,
 	/* allocate temporary buffer to store rings in */
 	i = max_t(int, adapter->num_tx_queues + adapter->num_xdp_queues,
 		  adapter->num_rx_queues);
-	temp_ring = vmalloc(array_size(i, sizeof(struct ixgbe_ring)));
+	temp_ring = vmalloc_array(i, sizeof(struct ixgbe_ring));
 
 	if (!temp_ring) {
 		err = -ENOMEM;
diff --git a/drivers/net/ethernet/intel/ixgbevf/ethtool.c b/drivers/net/ethernet/intel/ixgbevf/ethtool.c
index 7ac53171b041..bebad564188e 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ethtool.c
@@ -276,9 +276,9 @@ static int ixgbevf_set_ringparam(struct net_device *netdev,
 	}
 
 	if (new_tx_count != adapter->tx_ring_count) {
-		tx_ring = vmalloc(array_size(sizeof(*tx_ring),
-					     adapter->num_tx_queues +
-						adapter->num_xdp_queues));
+		tx_ring = vmalloc_array(adapter->num_tx_queues +
+					adapter->num_xdp_queues,
+					sizeof(*tx_ring));
 		if (!tx_ring) {
 			err = -ENOMEM;
 			goto clear_reset;
-- 
2.34.1

