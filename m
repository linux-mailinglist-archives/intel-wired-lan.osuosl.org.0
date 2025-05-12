Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 360BCAB3CE1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 May 2025 18:00:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D31F060AEC;
	Mon, 12 May 2025 16:00:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VBW976fcnIFn; Mon, 12 May 2025 16:00:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04E9660B12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747065652;
	bh=iT8sElKmpupguMesv4F4JH4UVOdTFv7IUDRh54sxAss=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1k2LbGhDwmvQQzUL7X5AVg9h9/CqokHoYf72Pl/z/4dEXTx5iowda1eIBNCjiIOnK
	 D1I600RdBjkR+kn82qaHSJ1532NPioeYFr43KO/zizJjTss/nrz1Gjp2qjkAzEpeUO
	 tOXzFJ+WQOFgeI+CfTepnmRayLQ7rkCRv3GIEuJG4FU9rgOldmO5LSphoMwOuI749o
	 iwc6LWbtn6k883oEQVrB1NxZ8llKxexmxP0lQR8DBaaUBXQEd/vKLb2yGOMhOzazlX
	 8zoaNQUzAR1fG22ZqCZ/Ko0TT1Mk+YzXR5jXbOKkJ4/GJWyL/gr9X0QukN4ua+d82d
	 KwJa6oXbRsaAw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04E9660B12;
	Mon, 12 May 2025 16:00:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C941517D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 16:00:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BA546606F1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 16:00:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dLS8Y-RA1qPR for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 May 2025 16:00:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.162.8;
 helo=pa4pr04cu001.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AAF316067D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AAF316067D
Received: from PA4PR04CU001.outbound.protection.outlook.com
 (mail-francecentralazon11013008.outbound.protection.outlook.com
 [40.107.162.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AAF316067D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 16:00:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A6ivAk3L9ja8+/SqZeodqHppkPes6oV21hynPVeTUbQXGlKnhU+BaXmitmnaSoY7vvDyzuWVbNnt6TFu6ZkuiRqghXvl5Gc45Tqv8aSNAWM1bNafHTXXw1yNHnTwB3qqVDiRDn1x3IFFazXI2t9aFAOWEKJZCipQO//LySSXNT9Xf+b4vkqOtaRZrQnx7Y9lPcx/Uuc1KajCidJREmbgLuLgAqJisLPU0Pledp2evBkaXtsOZfYZmWUBef3Fy4cRSbIZQ5bup1tuOJlQHHoxmtpthXZJZSOsdvlWw6LbaWymrmZlLrWbo4a1NDgDdXlZ037sju7924eFOL29WPjJMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iT8sElKmpupguMesv4F4JH4UVOdTFv7IUDRh54sxAss=;
 b=aOm0Qliu3hIgIeFS2UPLq4/5E7E01tth1dpBNNtqKLHmFNImIPfc+w35NhIi0sbHs5d/9xa3yvoKt4ZI/bXnhFY+prb25Xsw2t1vlBCUZR66q6lnoiH+ZJW9CFOab/burhOYOt08AU7o2p4fdwSKghcv85cy7dEh5r6HAIzaGj4lGHqfhrSBIu18u1ZJv/dc4XyPP8M4KJeK+qMSSkHHpHYp9s9CuK7PlwTKoCZNBAD1iG+sCNYG7RAQ+nTb2vd26Pw4vLLGPqwd7QjiLnhgFp8CAhLPyM85MsWP0yV1EKevNk7oUWjF9+Kwu7cluT0vO9RR9DjU4N+c/4EnRXysHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by PA4PR04MB7822.eurprd04.prod.outlook.com (2603:10a6:102:b8::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.28; Mon, 12 May
 2025 16:00:45 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%4]) with mapi id 15.20.8722.027; Mon, 12 May 2025
 16:00:45 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Cc: Jacob Keller <jacob.e.keller@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Richard Cochran <richardcochran@gmail.com>
Date: Mon, 12 May 2025 19:00:36 +0300
Message-ID: <20250512160036.909434-1-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.43.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR07CA0308.eurprd07.prod.outlook.com
 (2603:10a6:800:130::36) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|PA4PR04MB7822:EE_
X-MS-Office365-Filtering-Correlation-Id: dc76efa4-e3db-47b9-7cd9-08dd916e278a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|7416014|52116014|366016|1800799024|38350700014; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?4KtMj8UGaKvapdcKrtmFz6c06G1JGB9yPfQTUomtLaVhyVPpIKCDK6B5FZ+9?=
 =?us-ascii?Q?RS1WWZjGuHoU/jjQ/uqyKjBfe5zRCtgNpT4GHXdHw6nndyWX3otW/LlzyYdU?=
 =?us-ascii?Q?uP7bH7cndBPlWc7DekuINFdety7VMRxS1CmE1K+qEO3zsyLWBxZWYLWlGhuw?=
 =?us-ascii?Q?MbLNaRWmQJOBH5tkKizi8UlKa5TwIpBhXkHBKumZcmstpCSjBFRajGqV0juI?=
 =?us-ascii?Q?M9W0Nm+RAsLHyYupp3u7SN024UQwyFX002T30v8AX2QjkIjamywj3BKT3VUx?=
 =?us-ascii?Q?XG9WPTxSxDehJqqtD7xU7wCNxkGqbH4TELODgNh7Ea2YBGlY9jc1tG1Ra7zu?=
 =?us-ascii?Q?UeYLkQTTiyuPc8rHu5Qn2wppCr5d1JIjrfez1bz+NJohfaGoDT/HMT8NrSWI?=
 =?us-ascii?Q?7/8lQ+uvy4ShunShaPKFM4NDbgcIutVe/s0/3gzhWDgPw2dfOPCIZCZK6gg9?=
 =?us-ascii?Q?snX8pQfumlXcD3/JsAQEo9g5V8xRWMrkY7g19FvuWvUuz1atMvootBehe0ha?=
 =?us-ascii?Q?9qj4yLT3XLf1kuP7ltjBw4rvkYpHqSkdyV2RGTWKiIAEiSVxDpyeHFl0MNWF?=
 =?us-ascii?Q?OyGokAyXqwjphUhdXFj42CS60iXp2oELcgmsR8NpGt07issuxR5B66uu8zJY?=
 =?us-ascii?Q?BoK3gyWq6zShQxzlsZuUVEna9fAIyVge0gy0Df4ptxkwHR96EzyluqLmMpJu?=
 =?us-ascii?Q?LJXWtY+bktxJqfRK37unTKH28oQaOc/d2LwD2WwgFFrqt8Ym778UoLTdIZPE?=
 =?us-ascii?Q?Mzfja8qT+to4RkSAsJc4zvEIOatzvU+GOGPJUZvXnB5zisw88Z0P1vV+ojbL?=
 =?us-ascii?Q?eDGyf/5f/A45w/1ST4TX+Xgh8q5Lg54nEdKUWmo1B2udHNie2w/Z/r6m9y2P?=
 =?us-ascii?Q?RsOMmlM8AksSHofhxk4BxxBMZq6VWjQsdUJKng03RnCFcwvGhhNKm6WReue2?=
 =?us-ascii?Q?PB3nZ9bqHmFTpuYngfixudGoq+sDzWkH0SyL19MZcYdqUTn9ADuLCoyQSkRb?=
 =?us-ascii?Q?KYg1Spe3vTTM7UT+T2NBeAVUCF9A4SScvDr/cGZUf5dydwbztFliKNw36FpU?=
 =?us-ascii?Q?v6qdXIt1TU3+I8JsG9+9+1bAbPb4G4gR6/OpPT3yk8fJRCXSgmkLwfYRN2qP?=
 =?us-ascii?Q?YB6rU8Twa3srFD5GJqHcBv6cKhi/G20wdpKycowjN0+OIuavdoJdMPUUrTP5?=
 =?us-ascii?Q?7NIuw11GXmjrfvy5pRNuU6sBZuLAff9JsuTEMEldmlwUPk5Bm8/PAE0xxNCL?=
 =?us-ascii?Q?uU29OUa+iQGcEYS+qw4iVjka0lIJ67p11jUwABPpbaQ58y+JIhT1TYaRtGXH?=
 =?us-ascii?Q?yWJsFzRfTelI5zWAFPYa95+0mV9/iEvSJeib8uoAol6e5+JOuXtnlcTxNCCQ?=
 =?us-ascii?Q?ZIPAAeQ2P/okkHJBbKRLS9ftDpFIoeOTjWNez/WW3r4vEVjG9xm7Ve5GI6Ag?=
 =?us-ascii?Q?cLurSoVUTBKV7SGinKvlb08//tLCk5OgOVrOxqKJ24UdJAE9lVh9bw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR04MB7779.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(52116014)(366016)(1800799024)(38350700014);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LRYvVz2uYhsAPcN2JlvaPwYz/ogdG/IxUPphiogQ7hQWR+HJN04ZFytp2ktW?=
 =?us-ascii?Q?LwYxcTtWS+ssNeCHJUzpuaF0y7oqQduprwVx3PyRQMoUS7emfwS+ZCbzkSmB?=
 =?us-ascii?Q?JW5gD062bZgOwYmRrt/IsjUfNHhonj4h8Yv83SIgWojg24bid6Jy4RdcaskE?=
 =?us-ascii?Q?r4JL8LF4BlB3uLIQRi4vReh77GNoNmU+amzW7lIOVbWUMUw3kErAUKBmyw+u?=
 =?us-ascii?Q?Ws2PyD0ssXFQBNUP5gX/q/q/1su0W5NDKIWCw6H33Sumau+4Ps7QVWdlB+6S?=
 =?us-ascii?Q?gaK703RFgFpCSSrwnS4gXGM4DVnC/g1FsdZcS/iDMhpYCL10DctmTarqxCHu?=
 =?us-ascii?Q?c8hak+1DIDci6yl8aJZpN2QjpdnWMCy1eNyrE0VU1E8O3Pn03sz7o4wn2s35?=
 =?us-ascii?Q?DUaVnX64LTwOixmQ4fD+vQUlk+9tdOjKS77wb+FX8SSFH7vKavxZLZ5zsWjs?=
 =?us-ascii?Q?pO7pjPzY0EKKTyFPjsriZ54tNuCYvLGbjPvtWULLtpNURt2KSCxiMx6pY1nL?=
 =?us-ascii?Q?BXYyiJ4fXF2705LlIMEhIPT+KB1C2VtDx9AAj8e4ZQio2lhsudHBzz44l5Wi?=
 =?us-ascii?Q?98yN3lv8UzLDm3x8OmJa1fl7aEKc4PEO/sSk3YKrSqyMbv7XtIh1AiOCOcVK?=
 =?us-ascii?Q?q7gnSvgElKNT9mRhaPMSoyu15zg4c0QepLZyAArdKsYrNM529V1Jnzs0svSN?=
 =?us-ascii?Q?AfNI4rGmvgPXgA56uiex/8mKkGmbZJKN7oWaxDd/QaUB1UNEz68ihS+mK4Ap?=
 =?us-ascii?Q?43bRnB7LNzBHlC821f3uw33OB2hrSXvXNrsbQvXQPsks5461GyLxVbKyLciS?=
 =?us-ascii?Q?aO0qjIn+qgnrCh8NSnWGUotFtpHQRovoElW66NSIDXO2sfYNUWR6noYyAReX?=
 =?us-ascii?Q?Ows7hwcrLtMFTJC0+nA8DXs48tm92Z3b39gij6t0u/oDmzjdfrf4Pq0qbI0Z?=
 =?us-ascii?Q?DTw+GnP6cmyrWVf3/aQ2z2aPpTdMI+GEmp8eFNg+OX89pvan//WbfTXiK1H0?=
 =?us-ascii?Q?gskVbA6B3ITjwAnvNEOw2p9aucun7FQ0/sZjAOMr7MkPsD2pJex3BsJdf0kQ?=
 =?us-ascii?Q?F8KLFQy3Bea9iCyQTmPoyUaikkSCPaAufDtDX2SOhwZXHD3WzkO8XcMUT3bu?=
 =?us-ascii?Q?V5MTFeFmnHbnBEO3OGVD/KLgiHQAtt76IdV1AW6T1W+dUvrP7wX2jkbX05hz?=
 =?us-ascii?Q?o2x3ZKvoUoDSvUcL3PBXDL7H29Ij/sCz3ExgjG2vp8ULDI4oACJ9oTy9uqMY?=
 =?us-ascii?Q?LI82E06N6MvcpeOmaZIqNIE+SnknfiGqdYyGygUmenH7roEiiJumKFXMcBe6?=
 =?us-ascii?Q?rKYQjBmxJxm57yzgl5E7KlMXg4gjTvkGJMiwoCkglu847WZ0yqwNJR7D1fL0?=
 =?us-ascii?Q?zDExcrRnna0dyW3WxjFoz6nksnMQ0bhXgs6A8HRxdmIM2GqH7MYMw2mYnYIM?=
 =?us-ascii?Q?CW+uYtqDVtNC4UlsdyWy1yfPKX7PMqT5OgOjl7FBWznQIDi/IViwhVzDlQ7g?=
 =?us-ascii?Q?/9BkYiy92L306Zc0s1wHnSdseo9VSAnD5xiIuXs0DD1qbL2LfklMjJvTA10E?=
 =?us-ascii?Q?hOPrT0n0+vh0Wr8cYAI/2mJOjxYz2ZFAI5qGxsscHi4zbP9f+G9f4Tt0Gf3N?=
 =?us-ascii?Q?yQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc76efa4-e3db-47b9-7cd9-08dd916e278a
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2025 16:00:45.3864 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W+gpYgSRY1Kdw1QZZhma/tsEYjT0U0cCfGXZsoHK4utwOvEuLfWCZ+A6Z8/RXwMdy9bUXQCAHAV4RzgeVpz4mw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7822
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iT8sElKmpupguMesv4F4JH4UVOdTFv7IUDRh54sxAss=;
 b=nNxgdt0CnlPZhQdADJjdGnws8MEJbLad5N0Mm4BNua0QyTFEiZck2St/AMVoavJcOKF5YsvUAyWh0O6hBh46Gzqd9wV8EFfAYW4ORvz0OlrxjFuDaX86uLpG6ZKxAmOhZFQd91FiuIntBQZEewSdif2K4cijWK4Pp2aQZgoCBJ0EbhzSS3NK4ENHDjKC3WKuIauid+qimDDZCYf8Rgqn8b++ZSIZel72zcXqGf3bToGbiV7XHpRhhjzNSpvA0xZfXle3bCJfmfr/rNmgPUCSO8PWjX8+hP1uDAil5vcuLwg16cBU+NsI2LQfQ9bsp4Zhl3Y/ycoU5m7+EhSBp03fog==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=nNxgdt0C
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH net-next] ice: convert to
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

It is time to convert the Intel ice driver to the new API, so that
timestamping configuration can be removed from the ndo_eth_ioctl() path
completely.

Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 24 +-----------
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 45 ++++++++++++-----------
 drivers/net/ethernet/intel/ice/ice_ptp.h  | 17 ++++++---
 3 files changed, 37 insertions(+), 49 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 1fbe13ee93a8..674d90d6a081 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -7880,27 +7880,6 @@ int ice_change_mtu(struct net_device *netdev, int new_mtu)
 	return err;
 }
 
-/**
- * ice_eth_ioctl - Access the hwtstamp interface
- * @netdev: network interface device structure
- * @ifr: interface request data
- * @cmd: ioctl command
- */
-static int ice_eth_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
-{
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_pf *pf = np->vsi->back;
-
-	switch (cmd) {
-	case SIOCGHWTSTAMP:
-		return ice_ptp_get_ts_config(pf, ifr);
-	case SIOCSHWTSTAMP:
-		return ice_ptp_set_ts_config(pf, ifr);
-	default:
-		return -EOPNOTSUPP;
-	}
-}
-
 /**
  * ice_aq_str - convert AQ err code to a string
  * @aq_err: the AQ error code to convert
@@ -9734,7 +9713,6 @@ static const struct net_device_ops ice_netdev_ops = {
 	.ndo_change_mtu = ice_change_mtu,
 	.ndo_get_stats64 = ice_get_stats64,
 	.ndo_set_tx_maxrate = ice_set_tx_maxrate,
-	.ndo_eth_ioctl = ice_eth_ioctl,
 	.ndo_set_vf_spoofchk = ice_set_vf_spoofchk,
 	.ndo_set_vf_mac = ice_set_vf_mac,
 	.ndo_get_vf_config = ice_get_vf_cfg,
@@ -9758,4 +9736,6 @@ static const struct net_device_ops ice_netdev_ops = {
 	.ndo_bpf = ice_xdp,
 	.ndo_xdp_xmit = ice_xdp_xmit,
 	.ndo_xsk_wakeup = ice_xsk_wakeup,
+	.ndo_hwtstamp_get = ice_ptp_hwtstamp_get,
+	.ndo_hwtstamp_set = ice_ptp_hwtstamp_set,
 };
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index b79a148ed0f2..d7b04af745d0 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2359,23 +2359,24 @@ static int ice_ptp_getcrosststamp(struct ptp_clock_info *info,
 }
 
 /**
- * ice_ptp_get_ts_config - ioctl interface to read the timestamping config
- * @pf: Board private structure
- * @ifr: ioctl data
+ * ice_ptp_hwtstamp_get - interface to read the timestamping config
+ * @netdev: network interface device structure
+ * @config: Timestamping configuration structure
  *
  * Copy the timestamping config to user buffer
  */
-int ice_ptp_get_ts_config(struct ice_pf *pf, struct ifreq *ifr)
+int ice_ptp_hwtstamp_get(struct net_device *netdev,
+			 struct kernel_hwtstamp_config *config)
 {
-	struct hwtstamp_config *config;
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_pf *pf = np->vsi->back;
 
 	if (pf->ptp.state != ICE_PTP_READY)
 		return -EIO;
 
-	config = &pf->ptp.tstamp_config;
+	*config = pf->ptp.tstamp_config;
 
-	return copy_to_user(ifr->ifr_data, config, sizeof(*config)) ?
-		-EFAULT : 0;
+	return 0;
 }
 
 /**
@@ -2383,8 +2384,8 @@ int ice_ptp_get_ts_config(struct ice_pf *pf, struct ifreq *ifr)
  * @pf: Board private structure
  * @config: hwtstamp settings requested or saved
  */
-static int
-ice_ptp_set_timestamp_mode(struct ice_pf *pf, struct hwtstamp_config *config)
+static int ice_ptp_set_timestamp_mode(struct ice_pf *pf,
+				      struct kernel_hwtstamp_config *config)
 {
 	switch (config->tx_type) {
 	case HWTSTAMP_TX_OFF:
@@ -2428,32 +2429,32 @@ ice_ptp_set_timestamp_mode(struct ice_pf *pf, struct hwtstamp_config *config)
 }
 
 /**
- * ice_ptp_set_ts_config - ioctl interface to control the timestamping
- * @pf: Board private structure
- * @ifr: ioctl data
+ * ice_ptp_hwtstamp_set - interface to control the timestamping
+ * @netdev: network interface device structure
+ * @config: Timestamping configuration structure
+ * @extack: Netlink extended ack structure for error reporting
  *
  * Get the user config and store it
  */
-int ice_ptp_set_ts_config(struct ice_pf *pf, struct ifreq *ifr)
+int ice_ptp_hwtstamp_set(struct net_device *netdev,
+			 struct kernel_hwtstamp_config *config,
+			 struct netlink_ext_ack *extack)
 {
-	struct hwtstamp_config config;
+	struct ice_netdev_priv *np = netdev_priv(netdev);
+	struct ice_pf *pf = np->vsi->back;
 	int err;
 
 	if (pf->ptp.state != ICE_PTP_READY)
 		return -EAGAIN;
 
-	if (copy_from_user(&config, ifr->ifr_data, sizeof(config)))
-		return -EFAULT;
-
-	err = ice_ptp_set_timestamp_mode(pf, &config);
+	err = ice_ptp_set_timestamp_mode(pf, config);
 	if (err)
 		return err;
 
 	/* Return the actual configuration set */
-	config = pf->ptp.tstamp_config;
+	*config = pf->ptp.tstamp_config;
 
-	return copy_to_user(ifr->ifr_data, &config, sizeof(config)) ?
-		-EFAULT : 0;
+	return 0;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 3b769a0cad00..da9bfd46d750 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -262,7 +262,7 @@ struct ice_ptp {
 	struct ptp_extts_request extts_rqs[GLTSYN_EVNT_H_IDX_MAX];
 	struct ptp_clock_info info;
 	struct ptp_clock *clock;
-	struct hwtstamp_config tstamp_config;
+	struct kernel_hwtstamp_config tstamp_config;
 	u64 reset_time;
 	u32 tx_hwtstamp_skipped;
 	u32 tx_hwtstamp_timeouts;
@@ -294,8 +294,11 @@ struct ice_ptp {
 #if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
 int ice_ptp_clock_index(struct ice_pf *pf);
 struct ice_pf;
-int ice_ptp_set_ts_config(struct ice_pf *pf, struct ifreq *ifr);
-int ice_ptp_get_ts_config(struct ice_pf *pf, struct ifreq *ifr);
+int ice_ptp_hwtstamp_get(struct net_device *netdev,
+			 struct kernel_hwtstamp_config *config);
+int ice_ptp_hwtstamp_set(struct net_device *netdev,
+			 struct kernel_hwtstamp_config *config,
+			 struct netlink_ext_ack *extack);
 void ice_ptp_restore_timestamp_mode(struct ice_pf *pf);
 
 void ice_ptp_extts_event(struct ice_pf *pf);
@@ -316,12 +319,16 @@ void ice_ptp_init(struct ice_pf *pf);
 void ice_ptp_release(struct ice_pf *pf);
 void ice_ptp_link_change(struct ice_pf *pf, bool linkup);
 #else /* IS_ENABLED(CONFIG_PTP_1588_CLOCK) */
-static inline int ice_ptp_set_ts_config(struct ice_pf *pf, struct ifreq *ifr)
+
+static inline int ice_ptp_hwtstamp_get(struct net_device *netdev,
+				       struct kernel_hwtstamp_config *config)
 {
 	return -EOPNOTSUPP;
 }
 
-static inline int ice_ptp_get_ts_config(struct ice_pf *pf, struct ifreq *ifr)
+static inline int ice_ptp_hwtstamp_set(struct net_device *netdev,
+				       struct kernel_hwtstamp_config *config,
+				       struct netlink_ext_ack *extack)
 {
 	return -EOPNOTSUPP;
 }
-- 
2.43.0

