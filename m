Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B13AB5146
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 May 2025 12:12:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4ECA481026;
	Tue, 13 May 2025 10:12:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AwcuqgMgji8i; Tue, 13 May 2025 10:12:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7EDCD80FA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747131123;
	bh=G8wqz2DvTUiZLtnmShxzRl9VX//aptDE4weZq+TtNgw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vrvtC0EjNPC9ro+SHx1qYytlz7Vl4f+SJSFkhzpbv/3V1Eyp0SbfYSJBFjwcw363q
	 l22fj3Or1mRLw7l36xQ4Atw/lbsOq7fTIRZ98ESe4kk9I2Leq+aSyvkeclJLDuyyHT
	 0QMv3ha56JGRqu3wW6JxA8Z5TkRXsOvhmSLYk68W14gHhw+KwuOyglzBiOwWxbUn41
	 IngNcYnsqTZOEtQH0MVi2tCWcK03hxWRHuUUHnlzKnWjmqh90xl7XhZuvpqKTZ38Tn
	 BPc5Q+M50T6n7jbG4EaoaVQt+eQL74VcxGS+Kb1xLcPo9pghYEsWxod1QlHIZUwKiA
	 1CSixZQdN5GuQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7EDCD80FA6;
	Tue, 13 May 2025 10:12:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1C47612A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 10:12:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3B36F40597
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 10:12:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IAP_4EWpvuMz for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 May 2025 10:11:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.21.73;
 helo=eur05-vi1-obe.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4AFAF40543
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4AFAF40543
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur05on2073.outbound.protection.outlook.com [40.107.21.73])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4AFAF40543
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 May 2025 10:11:59 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=csRtBafdaImcS7ArLgCqqxmHfg35cYC19lFQhsP3bgwKgOGKb7j0nrOu9AVDKK9b7b+KxiGCXYXjlxOohzSFtbpEM5g9W/jRmLiydEiX9YMx/XgtmVuXpFemrBvSp7tXIDuNcm0WAQrszt2cIEFWT4wvIsnWCARI0rEQFiEuR6lLZejB48ZGxdSFPACe6z+MsG3dDTEEYTMEIp1vOxKK86waNMRrqMtVfx6w7tRbrDuNeupjjHYoeONHnOsSBnnL/2XmrvbsZesHCzur8x7VNIGSoMFWboYHBLhgU2jVoAFy2cIjLAsD61cGjmqnvUDYtNZ8vhMWwGlOYRBMcVwHpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G8wqz2DvTUiZLtnmShxzRl9VX//aptDE4weZq+TtNgw=;
 b=PUqamtg7uKwmkCMgkqTIEWsYa/EqkgYNWFgqtBm+Xl1Ds2bq0GSAhgx8hH6jTKpqSfSv2YTcXFAL4wDb9eVR6yfU0Bd3zjYS7mHZUuRFCDHeXdlwVerHprTxlCKFpRccs7w5Zpri7Hn+Mx03uF3RBJSvfq0FVE0IXG/tCqR6b1lwqtH9RbADESimvMV0NvkDKm02QyR3Gqo17JLfJKwYBLaFAnaXgQ8rUijE2elOwo97cNtyB7NLs/cbWTUv67qSX8WlQCnNU0pKBk9s4oYfLfnFpPLkTIYA/KMkVt29Vz5cA+7iZ48E3oXFHdRjz5qY9LGPfwMGstX11FW6FBM6ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by VE1PR04MB7342.eurprd04.prod.outlook.com (2603:10a6:800:1a0::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.28; Tue, 13 May
 2025 10:11:54 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%4]) with mapi id 15.20.8722.027; Tue, 13 May 2025
 10:11:54 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Richard Cochran <richardcochran@gmail.com>
Date: Tue, 13 May 2025 13:11:32 +0300
Message-ID: <20250513101132.328235-6-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250513101132.328235-1-vladimir.oltean@nxp.com>
References: <20250513101132.328235-1-vladimir.oltean@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR0502CA0019.eurprd05.prod.outlook.com
 (2603:10a6:803:1::32) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|VE1PR04MB7342:EE_
X-MS-Office365-Filtering-Correlation-Id: 088b06cc-6ce4-458f-47f6-08dd920695f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|52116014|366016|1800799024|38350700014; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?LSFj9dKzcV7fIkxaz2WzlS3oDGH8pJyeMfw5QHahkPOnV1DVLIvsE9deJmNR?=
 =?us-ascii?Q?gqxlq7bpBE4Zdrb31tSm/iPu06OyXTBJNkUZm/mKuOneE9lI+6UkZwhf6yHB?=
 =?us-ascii?Q?2MthHbSaFCm4Enp+WYtWAhUeqtsliOb1yjxFmdd8B1CJqDxDFxiBnuRNvRVt?=
 =?us-ascii?Q?6uvlruVOqbaoS5rQPti98qUWGnsNQiCgq5mw5ObUHZZ2p8mrhePa9q3rVDbo?=
 =?us-ascii?Q?/yzAZeoopU6mkFGEbDbA3BbyAXJS3kchid/Qp74Va5cRyUqMEFfnqogWcgnk?=
 =?us-ascii?Q?5r4rec1k3CWo4gp3vMK4+9ZlH+qvz/a9XPkrKwXc6n48Wz3A0a3N3EXPfvkj?=
 =?us-ascii?Q?pgFcQw0+tW3+T6pcOnosl8QU2Md4ipuGYzNkkVQaUvV9C5gsHmo79taTeKXa?=
 =?us-ascii?Q?13OvUpuFq16BF8pNK0Izy/cIuADPQOXtte/KiUCMOeHO2MDR0UX49LwsZIEx?=
 =?us-ascii?Q?Eyxn5SgQZBcBq6nl5EDcnwqtMU1jhxq3/Q1Zf/HfY1SWh8lyoO8oN5qZDNDB?=
 =?us-ascii?Q?MnY9Ih9jOr5+OHps1aH/u1+WcTvPuxBddUZ886v1UNzMfXnEiZ14QYcEoWJI?=
 =?us-ascii?Q?q9VUTbZDmO5Fb9czaqztMVouKxI8KMmwodhFwpKU0V3OXl6AjJH7JdwDDOqT?=
 =?us-ascii?Q?lwKGh9zY3VUS0rqffGoHGf9/cVMLJt748puURHmsH+c9MTrT239JuXvbfCDw?=
 =?us-ascii?Q?0cy+a2X3bZX/gXbDy1mkjxUFjObuQnGUVQ0RQMu6qMLpcVAsxAZcgZHqP8Fw?=
 =?us-ascii?Q?Rsu46FFheXFLk0DyBdEVTdiZBFFHFbO8o7el0xBOVwuJcMUFZgVwYwMJ03Kf?=
 =?us-ascii?Q?s6hGjeYBTrTKvyf6K/bIJHyx4oVY37PJWUG1M3Cz68eY37xGmkNU5TR5KwbU?=
 =?us-ascii?Q?LF1EWq1SlALKqXlgi628CKtpvf1pl1UhsOdjQ2541bGU9LZT/5FRny84rTM/?=
 =?us-ascii?Q?Xhu1Tm28glyAKs3mgW1yAPkyGfXGpwQnZw0MT7FzoTEAVvocLuPDzOpGWsxv?=
 =?us-ascii?Q?lzipFePciXe6b754AcT5cvTJ3U1YQcblEAFrca1Eb96GJDjbQ+xVWcgIPVIH?=
 =?us-ascii?Q?sDZQjACRQ+JMMrUydowJ3PBQnbai7LDwzzob2zxPLd5PvFZZSKS/40hp2A2O?=
 =?us-ascii?Q?97mjF7iPJ1Ul6Z16kaEttU0Maxk8xE7ymI6mcKO3kR7JdAZcXApfgFC1PqHZ?=
 =?us-ascii?Q?u0DNEZx7mCTJcjXBDzhHycBnhCxykd6N7vi12cqwg0CI5zt6ppyRlHDUSg/X?=
 =?us-ascii?Q?bdr7SRFg58uc2im4Ee2ni2fLE8PTE3TmkS975T4NupAOhM7BU+B3jXTQsKlh?=
 =?us-ascii?Q?olkMH6G54hZMmw5DjvVRS4bifJIb9M5Yx5TXAaxnGhLgoAoOLTZsZuLL7P4Z?=
 =?us-ascii?Q?MHy7e8H5UliR7BcfTYUY3S09+NmEMXU1rdsvnS8dpFTw/M6QqQE2EJpFAl22?=
 =?us-ascii?Q?sGqT/L3Xn40RMvEajvlqtXrFhLaN0+E2cFxDcB1w9a3jyDCgriJMsA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR04MB7779.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(52116014)(366016)(1800799024)(38350700014); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0AomS8r8jqKCxh+8TI5f9hh+nUL9iSi3WR8yEX/JKkRJ1HaAmg+eS9Yri7mu?=
 =?us-ascii?Q?PkJOLJOC4OOI7pQIzvQdK+8PgewfVtkuusnxKf4wsfL7izJBHg95KDL38fKX?=
 =?us-ascii?Q?QMJu1Txd+lSHa0uavKqs5KH0vNftVqK/flUIc9xxBYcn536y09SgLHzVEXQ/?=
 =?us-ascii?Q?JCHRg1ktpuekMgBv4wYWkDyDq6gsEH3iHKNalkrIHWlCttcXftKzlmbAvjFx?=
 =?us-ascii?Q?AFXxo+gSZ6KX0xqo524IFhSayOKS/DG5bMs6k22qOReQPgroZ0HIDcsCaJzr?=
 =?us-ascii?Q?3p/3Cu3ish6D+aONR8ysVM9jtEG6+zBphG8WXbflnBFa4s/xiw1zHyBwfB0L?=
 =?us-ascii?Q?2UfPatq992e4+dkqNuOYrplLXgOuDyuOUUYx9xiCDeK8z1QO6Q+e/65ROXPY?=
 =?us-ascii?Q?cbydxQKDBK2fQ3S2VUBUZlZOHEGJ5yCnOvX869gfMMwk5JeTgwzXmBnw2pw6?=
 =?us-ascii?Q?aovr0j0LB3EIyH3dE2xTT1YeQRN3WVlWhmvLALVuFUMDdqS7pAUbLdYxofid?=
 =?us-ascii?Q?hvAlUKJj3Tpse9csqI1R8J0cvv71lP41Ut4x79uf1mYVUsFF2MSaEbFvtdn6?=
 =?us-ascii?Q?SmpQ90BIQkLwANsU8iuqpTOY28/FM9qqIBs+nQweAVhFtCop+ZGIX2HOxqkv?=
 =?us-ascii?Q?O05naxlg29oKYSQnO+Nywro6HBcoZv3pXEJptJK/O/aWDY2HMSKV2LAiQdFY?=
 =?us-ascii?Q?TYwPbbw3XVWTyetCTL+NRe9ZRzU+4/uiZUgOK12qbiOqf3/dYqeKgfgjaSLp?=
 =?us-ascii?Q?3m3HcY0lAoZO/Xf9s7cozsU93+3nP1TNZaJ2ZGbG7FwsoOIeTrDeLjUUJVyy?=
 =?us-ascii?Q?+B1LJAW+XIFDrW+e6qWnuTAAXkxXilg94U8mEJ1FnNyE4CX1yqgdmu1HisDF?=
 =?us-ascii?Q?HFnMI/5rt9xhZ4JbqdP2uyYbmN4+63fsFcRK6u31ZaAKWXmh/EuJIqgsTZ1F?=
 =?us-ascii?Q?hgZk5msIMm9ps/A8u4UIoX0wOycRcu+hs9AHp+6IqEHyfjXgbCPjD0ktmHQq?=
 =?us-ascii?Q?IutNJHsVlarcyF1ENohBh86h0+Cn8CwGJ5CfAZSpIAFy1eNuS7HIDoV/gjra?=
 =?us-ascii?Q?Z+yI84aCVt34vMuMdD0P8DvnEGOhVQAL8LETsR+NKe0QIjGOtV1OCHwpZjqw?=
 =?us-ascii?Q?Ne5T6vURdOxIdNLjMIHeW3AhZ/qds7Ohn1Q4amMtCyBXjIQzQ0BvTmCAce7Z?=
 =?us-ascii?Q?EWco8x6yzyB6KaC+wmMhyE8V11PXsZ85nM9FrnvUN8JcGVyqzvip2nVrNo4F?=
 =?us-ascii?Q?oDxTr1mJT9n2yooD8N2F9ukuUTmAfEjZzPpgBpQBLjYgrMRwkhCer7GBkgII?=
 =?us-ascii?Q?4tOrsp/dNJ9nQXNjeRn+Dz4sZCTV0V2Ozt79wT0yhNvfR/miS2RRtxeCFagU?=
 =?us-ascii?Q?fOfP6boWh8uiEYL0wlPRTXF9UM0uYapItVdOTJAfo7Ehb0OffEY/QY15i43Y?=
 =?us-ascii?Q?GCqIfN956kfiRMIlLeBZOqvo+vvqUf9J+vof2p65TEqtKnPfwsBmBd9TyPex?=
 =?us-ascii?Q?NpmkmxXTYfI7MZFsWGwbeZzi5D+Uwg590cXwAAjwsEWWnGm8AVqy/CF4wsSU?=
 =?us-ascii?Q?i8RDvuCYBSs6Kn6n52RV1HRFxWMZO95FPl0E/4qwcGZvWVbZsxpfTlEBuntJ?=
 =?us-ascii?Q?bw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 088b06cc-6ce4-458f-47f6-08dd920695f1
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2025 10:11:54.1205 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HtBYjGJm5fSJXTLQvpTSBtMiyosV1K4qWp+9qCLbdKJilfZUo4I7YPtV1RBugvCKHA4Px/z7n+kna9sic+fiDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB7342
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G8wqz2DvTUiZLtnmShxzRl9VX//aptDE4weZq+TtNgw=;
 b=My+aaTti3lcO8APA7eF/61o4V25nh0XQQz26inbBWXSk0qA3kFodWDUXzQ2oqFFoQ4jAzdnEQEPbjy5EpvDAi5IA/e8kIKux5YzkZBk/jRbh9GmV7zqU1P/kae6VMuzua0xQ7837QDulNq6KqEOuPXGVS3eXOWJD86tJ7KsJiDVMH4wU4Rtcv88CyUTmQBqN9a9qcayfRqiE9Gzqc7GlnNOy3QfJ4N4LweMN/9P+McZb1ERZMHuQpg6stgEzMuBGxSRYd+1ZWArv+gX9anKg9MVDvRVM3RtKYrbW17IS8TnzKHae8aB6oEc4+tWsrieSYp2GO3IRoxpd6uBQnAJd5w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=My+aaTti
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH iwl-next 5/5] i40e: convert to
 ndo_hwtstamp_get() and ndo_hwtstamp_set()
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

New timestamping API was introduced in commit 66f7223039c0 ("net: add
NDOs for configuring hardware timestamping") from kernel v6.6.

It is time to convert the Intel i40e driver to the new API, so that
timestamping configuration can be removed from the ndo_eth_ioctl() path
completely.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h      |  9 +++--
 drivers/net/ethernet/intel/i40e/i40e_main.c | 24 +-----------
 drivers/net/ethernet/intel/i40e/i40e_ptp.c  | 43 +++++++++++----------
 3 files changed, 31 insertions(+), 45 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index c67963bfe14e..6250f5203c15 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -660,7 +660,7 @@ struct i40e_pf {
 	struct ptp_clock_info ptp_caps;
 	struct sk_buff *ptp_tx_skb;
 	unsigned long ptp_tx_start;
-	struct hwtstamp_config tstamp_config;
+	struct kernel_hwtstamp_config tstamp_config;
 	struct timespec64 ptp_prev_hw_time;
 	struct work_struct ptp_extts0_work;
 	ktime_t ptp_reset_start;
@@ -1302,8 +1302,11 @@ void i40e_ptp_tx_hang(struct i40e_pf *pf);
 void i40e_ptp_tx_hwtstamp(struct i40e_pf *pf);
 void i40e_ptp_rx_hwtstamp(struct i40e_pf *pf, struct sk_buff *skb, u8 index);
 void i40e_ptp_set_increment(struct i40e_pf *pf);
-int i40e_ptp_set_ts_config(struct i40e_pf *pf, struct ifreq *ifr);
-int i40e_ptp_get_ts_config(struct i40e_pf *pf, struct ifreq *ifr);
+int i40e_ptp_hwtstamp_get(struct net_device *netdev,
+			  struct kernel_hwtstamp_config *config);
+int i40e_ptp_hwtstamp_set(struct net_device *netdev,
+			  struct kernel_hwtstamp_config *config,
+			  struct netlink_ext_ack *extack);
 void i40e_ptp_save_hw_time(struct i40e_pf *pf);
 void i40e_ptp_restore_hw_time(struct i40e_pf *pf);
 void i40e_ptp_init(struct i40e_pf *pf);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 120d68654e3f..73af81e0c229 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -2953,27 +2953,6 @@ static int i40e_change_mtu(struct net_device *netdev, int new_mtu)
 	return 0;
 }
 
-/**
- * i40e_ioctl - Access the hwtstamp interface
- * @netdev: network interface device structure
- * @ifr: interface request data
- * @cmd: ioctl command
- **/
-int i40e_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
-{
-	struct i40e_netdev_priv *np = netdev_priv(netdev);
-	struct i40e_pf *pf = np->vsi->back;
-
-	switch (cmd) {
-	case SIOCGHWTSTAMP:
-		return i40e_ptp_get_ts_config(pf, ifr);
-	case SIOCSHWTSTAMP:
-		return i40e_ptp_set_ts_config(pf, ifr);
-	default:
-		return -EOPNOTSUPP;
-	}
-}
-
 /**
  * i40e_vlan_stripping_enable - Turn on vlan stripping for the VSI
  * @vsi: the vsi being adjusted
@@ -13622,7 +13601,6 @@ static const struct net_device_ops i40e_netdev_ops = {
 	.ndo_validate_addr	= eth_validate_addr,
 	.ndo_set_mac_address	= i40e_set_mac,
 	.ndo_change_mtu		= i40e_change_mtu,
-	.ndo_eth_ioctl		= i40e_ioctl,
 	.ndo_tx_timeout		= i40e_tx_timeout,
 	.ndo_vlan_rx_add_vid	= i40e_vlan_rx_add_vid,
 	.ndo_vlan_rx_kill_vid	= i40e_vlan_rx_kill_vid,
@@ -13650,6 +13628,8 @@ static const struct net_device_ops i40e_netdev_ops = {
 	.ndo_xsk_wakeup	        = i40e_xsk_wakeup,
 	.ndo_dfwd_add_station	= i40e_fwd_add,
 	.ndo_dfwd_del_station	= i40e_fwd_del,
+	.ndo_hwtstamp_get	= i40e_ptp_hwtstamp_get,
+	.ndo_hwtstamp_set	= i40e_ptp_hwtstamp_set,
 };
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
index b72a4b5d76b9..1d04ea7df552 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
@@ -912,23 +912,26 @@ void i40e_ptp_set_increment(struct i40e_pf *pf)
 }
 
 /**
- * i40e_ptp_get_ts_config - ioctl interface to read the HW timestamping
- * @pf: Board private structure
- * @ifr: ioctl data
+ * i40e_ptp_hwtstamp_get - interface to read the HW timestamping
+ * @netdev: Network device structure
+ * @config: Timestamping configuration structure
  *
  * Obtain the current hardware timestamping settigs as requested. To do this,
  * keep a shadow copy of the timestamp settings rather than attempting to
  * deconstruct it from the registers.
  **/
-int i40e_ptp_get_ts_config(struct i40e_pf *pf, struct ifreq *ifr)
+int i40e_ptp_hwtstamp_get(struct net_device *netdev,
+			  struct kernel_hwtstamp_config *config)
 {
-	struct hwtstamp_config *config = &pf->tstamp_config;
+	struct i40e_netdev_priv *np = netdev_priv(netdev);
+	struct i40e_pf *pf = np->vsi->back;
 
 	if (!test_bit(I40E_FLAG_PTP_ENA, pf->flags))
 		return -EOPNOTSUPP;
 
-	return copy_to_user(ifr->ifr_data, config, sizeof(*config)) ?
-		-EFAULT : 0;
+	*config = pf->tstamp_config;
+
+	return 0;
 }
 
 /**
@@ -1167,7 +1170,7 @@ int i40e_ptp_alloc_pins(struct i40e_pf *pf)
  * more broad if the specific filter is not directly supported.
  **/
 static int i40e_ptp_set_timestamp_mode(struct i40e_pf *pf,
-				       struct hwtstamp_config *config)
+				       struct kernel_hwtstamp_config *config)
 {
 	struct i40e_hw *hw = &pf->hw;
 	u32 tsyntype, regval;
@@ -1290,9 +1293,10 @@ static int i40e_ptp_set_timestamp_mode(struct i40e_pf *pf,
 }
 
 /**
- * i40e_ptp_set_ts_config - ioctl interface to control the HW timestamping
- * @pf: Board private structure
- * @ifr: ioctl data
+ * i40e_ptp_hwtstamp_set - interface to control the HW timestamping
+ * @netdev: Network device structure
+ * @config: Timestamping configuration structure
+ * @extack: Netlink extended ack structure for error reporting
  *
  * Respond to the user filter requests and make the appropriate hardware
  * changes here. The XL710 cannot support splitting of the Tx/Rx timestamping
@@ -1303,26 +1307,25 @@ static int i40e_ptp_set_timestamp_mode(struct i40e_pf *pf,
  * as the user receives the timestamps they care about and the user is notified
  * the filter has been broadened.
  **/
-int i40e_ptp_set_ts_config(struct i40e_pf *pf, struct ifreq *ifr)
+int i40e_ptp_hwtstamp_set(struct net_device *netdev,
+			  struct kernel_hwtstamp_config *config,
+			  struct netlink_ext_ack *extack)
 {
-	struct hwtstamp_config config;
+	struct i40e_netdev_priv *np = netdev_priv(netdev);
+	struct i40e_pf *pf = np->vsi->back;
 	int err;
 
 	if (!test_bit(I40E_FLAG_PTP_ENA, pf->flags))
 		return -EOPNOTSUPP;
 
-	if (copy_from_user(&config, ifr->ifr_data, sizeof(config)))
-		return -EFAULT;
-
-	err = i40e_ptp_set_timestamp_mode(pf, &config);
+	err = i40e_ptp_set_timestamp_mode(pf, config);
 	if (err)
 		return err;
 
 	/* save these settings for future reference */
-	pf->tstamp_config = config;
+	pf->tstamp_config = *config;
 
-	return copy_to_user(ifr->ifr_data, &config, sizeof(config)) ?
-		-EFAULT : 0;
+	return 0;
 }
 
 /**
-- 
2.43.0

