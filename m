Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF8AB25371
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 20:57:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36E6283C96;
	Wed, 13 Aug 2025 18:57:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qUjQf8pOO8to; Wed, 13 Aug 2025 18:57:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 771A783C8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755111437;
	bh=MNN/6e+AJSxVIWquN8UVMvimWWMzFfsxXSxW0WMrrxg=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mkFr2R1KEFWITxGpWWtRqKk6KQmEnH5WTlgSK/C+4xVOPocjauZ+gV1PyAohKVKyA
	 CMOEvyMaZWhTdHAyRBKIeA2pG28v3NO9H3YdiKmz5qdtungcyUMFp8R7PMOaBYVDtt
	 aiBuPuXmDKlkImx7gt6Znyz/lO+9kaWsITz5Lc5rbCczqu2YO/FV8lFfAvDNsfwaCy
	 hz9+wcuzjXtGg279t5ioOcQ/mQjs25mim/dtbI9AuacBbYj07zobG8IsFkAZobNzz3
	 FdVWt9lXZOgwPsmPsIDKLTKL8n/8Pkr8wdw+5W8lIE4mnRTSqUI5MPLSRgNZXsRwHu
	 uMn0A7nDdA7AQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 771A783C8E;
	Wed, 13 Aug 2025 18:57:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 003871C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 18:57:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E5CB383C93
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 18:57:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8JoQTRz0IjTg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 18:57:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.223.60;
 helo=nam11-dm6-obe.outbound.protection.outlook.com;
 envelope-from=tariqt@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F3F7E83C87
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3F7E83C87
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2060.outbound.protection.outlook.com [40.107.223.60])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F3F7E83C87
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 18:57:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P6k+d+oyhG2lekJAQj0i+mkDiOX+BKVTS1IrjSzL82P6rUFVw/gSy9fHGMQv/sgAQBrRcS4h81TnPXgKI77P7oSQUNPskkGod0q2sFHQzxs0pyCFjgRnX/aVuIQ93hJeLoH1bBTliy7k6usmkgltrfTJKHze9u/Vl+YSaDZlRGNwPE9zPhhs4bnX6bhoQo6emT90Psmm52Wd3AtR3pIVUPdC2FEXPLmdBiNFAAoUgjnbdvTTm5dquicQ3b/5PBL0XXez27FYz9TqIcJgFg1vX1Ctk+lmLvO734RRQfeiaiAc6FMa6uSk1apglietaOUTnhcP2d7mOxcrsbepKwhJJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MNN/6e+AJSxVIWquN8UVMvimWWMzFfsxXSxW0WMrrxg=;
 b=JOgZPnnLJKILkEghavWa7tpFpwpG9xsYQvOxVWvdbDVA3h1MQ0aUg/w0pXGkRCHZpfczPDLPSh+yXerxYkq2g1haEYGRWYYCKtAwzlyzpGYNDpfTFBcSHj5gqp8tR8Cce1zI1Qmxgn7oBAe6vJ7w1JFusXMDuAMoyc+TzOaDPPWM95Zd2DBo88q2ZLZG3+WDgt4wkVknPPBJOq2dOsCM7ebaf787SjuthfUVDIwzJJ/Aw6WPtX9URy+ngWdPcs1slGLMab5bscGEuqF/GU/wRXwp2aXYH05+0Y7w2tCUaGA+A0mwGfBv1YZVJ+COwrL8UPyrHKbu0qPPsXpvA/dUYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 216.228.117.160) smtp.rcpttodomain=marvell.com smtp.mailfrom=nvidia.com;
 dmarc=pass (p=reject sp=reject pct=100) action=none header.from=nvidia.com;
 dkim=none (message not signed); arc=none (0)
Received: from SJ0PR05CA0064.namprd05.prod.outlook.com (2603:10b6:a03:332::9)
 by DS0PR12MB6533.namprd12.prod.outlook.com (2603:10b6:8:c2::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.14; Wed, 13 Aug
 2025 18:57:10 +0000
Received: from SJ5PEPF000001F4.namprd05.prod.outlook.com
 (2603:10b6:a03:332:cafe::cb) by SJ0PR05CA0064.outlook.office365.com
 (2603:10b6:a03:332::9) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9031.12 via Frontend Transport; Wed,
 13 Aug 2025 18:57:09 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 216.228.117.160)
 smtp.mailfrom=nvidia.com;
 dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=nvidia.com;
Received-SPF: Pass (protection.outlook.com: domain of nvidia.com designates
 216.228.117.160 as permitted sender) receiver=protection.outlook.com;
 client-ip=216.228.117.160; helo=mail.nvidia.com; pr=C
Received: from mail.nvidia.com (216.228.117.160) by
 SJ5PEPF000001F4.mail.protection.outlook.com (10.167.242.72) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9031.11 via Frontend Transport; Wed, 13 Aug 2025 18:57:09 +0000
Received: from rnnvmail203.nvidia.com (10.129.68.9) by mail.nvidia.com
 (10.129.200.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.14; Wed, 13 Aug
 2025 11:56:57 -0700
Received: from rnnvmail203.nvidia.com (10.129.68.9) by rnnvmail203.nvidia.com
 (10.129.68.9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.14; Wed, 13 Aug
 2025 11:56:57 -0700
Received: from vdi.nvidia.com (10.127.8.10) by mail.nvidia.com (10.129.68.9)
 with Microsoft SMTP Server id 15.2.1544.14 via Frontend Transport; Wed, 13
 Aug 2025 11:56:49 -0700
From: Tariq Toukan <tariqt@nvidia.com>
To: Jiri Pirko <jiri@nvidia.com>, Jiri Pirko <jiri@resnulli.us>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>
CC: Donald Hunter <donald.hunter@gmail.com>, Jonathan Corbet <corbet@lwn.net>, 
 Brett Creeley <brett.creeley@amd.com>, Michael Chan
 <michael.chan@broadcom.com>, Pavan Chebbi <pavan.chebbi@broadcom.com>, "Cai
 Huoqing" <cai.huoqing@linux.dev>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Sunil Goutham
 <sgoutham@marvell.com>, Linu Cherian <lcherian@marvell.com>, Geetha sowjanya
 <gakula@marvell.com>, Jerin Jacob <jerinj@marvell.com>, hariprasad
 <hkelam@marvell.com>, Subbaraya Sundeep <sbhatta@marvell.com>, Saeed Mahameed
 <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Tariq Toukan
 <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>, Ido Schimmel
 <idosch@nvidia.com>, Petr Machata <petrm@nvidia.com>, Manish Chopra
 <manishc@marvell.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-doc@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <linux-rdma@vger.kernel.org>, "Gal
 Pressman" <gal@nvidia.com>, Dragos Tatulea <dtatulea@nvidia.com>, "Shahar
 Shitrit" <shshitrit@nvidia.com>
Date: Wed, 13 Aug 2025 21:55:47 +0300
Message-ID: <1755111349-416632-4-git-send-email-tariqt@nvidia.com>
X-Mailer: git-send-email 2.8.0
In-Reply-To: <1755111349-416632-1-git-send-email-tariqt@nvidia.com>
References: <1755111349-416632-1-git-send-email-tariqt@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain
X-NV-OnPremToCloud: ExternallySecured
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PEPF000001F4:EE_|DS0PR12MB6533:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d3cb27d-c35d-45ee-c6ca-08ddda9b34b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|82310400026|376014|7416014|36860700013; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?N2sZPYyRDJnSXSj40nQXciVk67RagSDqYj+BFNqoJ/8RRHryvXuSjxKCwUFH?=
 =?us-ascii?Q?P06gCK2IDrxuJbft/HJ7tG1GKZ9MnX5b7TPuAfwxY/7aFq4EjA6337OtHx3m?=
 =?us-ascii?Q?yXB/ET1j37W1F5g0Um7Zz1lj/tDUzD97e3cE+qfTk5tnn6HMnmhm7tuH+R40?=
 =?us-ascii?Q?g/5h81zSw6l/v9VuMaf6YuqWI4JGxb0t2XegWNNy1gPPHyWyn1iJpmvSr2Yo?=
 =?us-ascii?Q?J94QhHhzjfD1YT1bVlVqL5Vz4Lt73nObawld2VsW8cavytHiJbXgvEp6jy9x?=
 =?us-ascii?Q?WE3fYvl29IhVMhW6W3eoDwqtrIaK2SBhmItiC1f67d2Fix3IoRVwfsVd8xlV?=
 =?us-ascii?Q?uApC79job3fC1r86ytGmzDy2bJn5h+4rAqDrZqNyxRMC8kNumikwAYSZgWpn?=
 =?us-ascii?Q?ohY/W1Sbt1d0RJd4StQJiOGAUhrdnGK9VVDqxL9sJgDQkZa8T427s6W4HsOC?=
 =?us-ascii?Q?xy7E8wbV6R/iYhOYVtRtWUCdWkd7cG3+CbbhDcYykIBfMNJJRUrZEAC70RnW?=
 =?us-ascii?Q?GIhHdBHW00LkPAnRj3P0d41tuqiLYFvQGNyL1hdn0p0tvz5anUUE4AaSUYT5?=
 =?us-ascii?Q?OZuJvLYJ+gz+R6rFwN3HsCHFKSVtHmdGFbY2NEMxRaIHxEmc+EqFSclRAqV5?=
 =?us-ascii?Q?s7RBDTwDtJq2eiYj1Kc81hPa4KaPVQu5cy38wjApqLch0pLH//qYj8i1hb4A?=
 =?us-ascii?Q?hEW8SnhfU5Xf7/IWAA12f1BCGeEIo3Cg2DIZEhdhoT50sc803ZfOE8BNoBnG?=
 =?us-ascii?Q?zVWiTQHGJnHLTDqF1nTayIRaFKSbXvLEt09TRKDK7gfnQWFlsPFG/EHKcndy?=
 =?us-ascii?Q?G0if75GiiiD3xw3RnRJNjxrNbDhfCdL/Udsw9awFKh7VY92bSTXh3vt9lHSW?=
 =?us-ascii?Q?REMqKgaatPiz1K8T9VVsMKepBJdoyb5w+ZU8B62EgynsX15kpZyQCHbjJEes?=
 =?us-ascii?Q?SgNUrKBc0BbAl5MuWedjrZ8PUnv60rt5Ge5UbOsDlgE2qS90JNld+tMrIIaF?=
 =?us-ascii?Q?ZYbLJhzWQejKqiX6NSig4JZ998hEFQmVun8JVaQcfKvrd+N/c4Jkmc5VihP8?=
 =?us-ascii?Q?+F6qMS7PyFs8Gb0ICmYx2hb+yYgvFogKCzc48HijheumfTK8dr24Mtbfz7h4?=
 =?us-ascii?Q?qlA4SsDgBWBSh+dh9jvEfChkSmTWZ6xnmLh9qKVlfHwsDdXcKzYn+RjJoTge?=
 =?us-ascii?Q?nR6YQ6yFcbC6wuvS1d5EAAyNJjDUH3xxCTcXBspsgNfRCz1uJwOtH9/l14Qg?=
 =?us-ascii?Q?nrggqcfQbMXFBnCi8F01JI44q5kD6W3tOD2V4pV6PE4KsudzBDjPXRxM5n3s?=
 =?us-ascii?Q?2dRudkQDKKOrUh5gvVSX82Xnih0qmGKOBmz0hLcBgjm1RdqWL5RVQKrjGdDr?=
 =?us-ascii?Q?bxOHMxYLKt1MdrNqYUngURAZEpFsgFk7hBuw6fTRL+Nd+mCalTiw+xJLURTg?=
 =?us-ascii?Q?o0XlsYPQOgQS3UvETyjU7z5fOyLlZAeKmGMJpHeEo8LgSSk4u5IyxbbfJLE7?=
 =?us-ascii?Q?z6LESGoZYDgxT0yoIf9RkjXYKWqU8FSUIWiP?=
X-Forefront-Antispam-Report: CIP:216.228.117.160; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.nvidia.com; PTR:dc6edge1.nvidia.com; CAT:NONE;
 SFS:(13230040)(1800799024)(82310400026)(376014)(7416014)(36860700013); DIR:OUT;
 SFP:1101; 
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2025 18:57:09.5118 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d3cb27d-c35d-45ee-c6ca-08ddda9b34b2
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=43083d15-7273-40c1-b7db-39efd9ccc17a; Ip=[216.228.117.160];
 Helo=[mail.nvidia.com]
X-MS-Exchange-CrossTenant-AuthSource: SJ5PEPF000001F4.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB6533
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MNN/6e+AJSxVIWquN8UVMvimWWMzFfsxXSxW0WMrrxg=;
 b=Gc8akc8VIU5e05yJw9lUlGsLwejgSO8kMuwmnatBxPVAAF6etBHJ39QiiML8CRL4g13J+xkUFRQsGn3lf3FaU4CRPJBfuo0PifGCrH7hP2IIpMPmfw61gySwOYohYgRB0RbXxkfgy5Rt/TVTFNDdpmWD7CMOxflaBqdJz/s3HKn3RzJn/IGFSEvpZqlvsDTpk7Ep9VNcAGKMIJyzxcre7jXpRTQydN4L4ZLX4Qnzbomm8N3Mix55FrgPX9bQCmx7z5uda+2/kW7ksVICj2yZkjM09PD4zS0HBwUf79tTf8QVu+Ms04OsEon9Lnfd28pcRanwp+x8PHCTMgGQqQqXxA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=Gc8akc8V
Subject: [Intel-wired-lan] [PATCH net-next V3 3/5] devlink: Introduce error
 burst period for health reporter
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

From: Shahar Shitrit <shshitrit@nvidia.com>

Currently, the devlink health reporter starts the grace period
immediately after handling an error, blocking any further recoveries
until it finished.

However, when a single root cause triggers multiple errors in a short
time frame, it is desirable to treat them as a bulk of errors and to
allow their recoveries, avoiding premature blocking of subsequent
related errors, and reducing the risk of inconsistent or incomplete
error handling.

To address this, introduce a configurable error burst period for devlink
health reporter. Start this period when the first error is handled, and
allow recovery attempts for reported errors during this window. Once
error burst period expires, begin the grace period to block further
recoveries until it concludes.

Timeline summary:

----|--------|------------------------------/----------------------/--
error is  error is    error burst period         grace period
reported  recovered  (recoveries allowed)    (recoveries blocked)

For calculating the error burst period duration, use the same
last_recovery_ts as the grace period. Update it on recovery only
when the error burst period is inactive (either disabled or at the
first error).

This patch implements the framework for the error burst period and
effectively sets its value to 0 at reporter creation, so the current
behavior remains unchanged, which ensures backward compatibility.

A downstream patch will make the error burst period configurable.

Signed-off-by: Shahar Shitrit <shshitrit@nvidia.com>
Reviewed-by: Carolina Jubran <cjubran@nvidia.com>
Reviewed-by: Jiri Pirko <jiri@nvidia.com>
Signed-off-by: Tariq Toukan <tariqt@nvidia.com>
---
 include/net/devlink.h |  4 ++++
 net/devlink/health.c  | 22 +++++++++++++++++++++-
 2 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/include/net/devlink.h b/include/net/devlink.h
index a65aa24e8df4..0c7b41cbb0bd 100644
--- a/include/net/devlink.h
+++ b/include/net/devlink.h
@@ -744,6 +744,9 @@ enum devlink_health_reporter_state {
  * @test: callback to trigger a test event
  * @default_graceful_period: default min time (in msec)
 			     between recovery attempts
+ * @default_error_burst_period: default time (in msec) for
+ *				error recoveries before
+ *				starting the grace period
  */
 
 struct devlink_health_reporter_ops {
@@ -759,6 +762,7 @@ struct devlink_health_reporter_ops {
 	int (*test)(struct devlink_health_reporter *reporter,
 		    struct netlink_ext_ack *extack);
 	u64 default_graceful_period;
+	u64 default_error_burst_period;
 };
 
 /**
diff --git a/net/devlink/health.c b/net/devlink/health.c
index 9d0d4a9face7..c4a028e37277 100644
--- a/net/devlink/health.c
+++ b/net/devlink/health.c
@@ -60,6 +60,7 @@ struct devlink_health_reporter {
 	struct devlink_port *devlink_port;
 	struct devlink_fmsg *dump_fmsg;
 	u64 graceful_period;
+	u64 error_burst_period;
 	bool auto_recover;
 	bool auto_dump;
 	u8 health_state;
@@ -123,6 +124,7 @@ __devlink_health_reporter_create(struct devlink *devlink,
 	reporter->ops = ops;
 	reporter->devlink = devlink;
 	reporter->graceful_period = ops->default_graceful_period;
+	reporter->error_burst_period = ops->default_error_burst_period;
 	reporter->auto_recover = !!ops->recover;
 	reporter->auto_dump = !!ops->dump;
 	return reporter;
@@ -508,11 +510,25 @@ static void devlink_recover_notify(struct devlink_health_reporter *reporter,
 	devlink_nl_notify_send_desc(devlink, msg, &desc);
 }
 
+static bool
+devlink_health_reporter_burst_period_active(struct devlink_health_reporter *reporter)
+{
+	unsigned long burst_threshold = reporter->last_recovery_ts +
+		msecs_to_jiffies(reporter->error_burst_period);
+
+	return time_is_after_jiffies(burst_threshold);
+}
+
 void
 devlink_health_reporter_recovery_done(struct devlink_health_reporter *reporter)
 {
 	reporter->recovery_count++;
-	reporter->last_recovery_ts = jiffies;
+	if (!devlink_health_reporter_burst_period_active(reporter))
+		/* When error burst period is set, last_recovery_ts marks the
+		 * first recovery within the burst period, not necessarily the
+		 * last one.
+		 */
+		reporter->last_recovery_ts = jiffies;
 }
 EXPORT_SYMBOL_GPL(devlink_health_reporter_recovery_done);
 
@@ -599,7 +615,11 @@ devlink_health_recover_abort(struct devlink_health_reporter *reporter,
 	if (prev_state != DEVLINK_HEALTH_REPORTER_STATE_HEALTHY)
 		return true;
 
+	if (devlink_health_reporter_burst_period_active(reporter))
+		return false;
+
 	recover_ts_threshold = reporter->last_recovery_ts +
+		msecs_to_jiffies(reporter->error_burst_period) +
 		msecs_to_jiffies(reporter->graceful_period);
 	if (reporter->last_recovery_ts && reporter->recovery_count &&
 	    time_is_after_jiffies(recover_ts_threshold))
-- 
2.31.1

